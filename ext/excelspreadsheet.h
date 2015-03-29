// /home/craig/proj/decc/decc_2050_model/excel2go/summer.xlsx approximately translated into C
// definitions
#define NUMBER_OF_REFS 31
#define EXCEL_FILENAME  "/home/craig/proj/decc/decc_2050_model/excel2go/summer.xlsx"
// end of definitions

// First we have c versions of all the excel functions that we know
#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <math.h>
#include <locale.h>

#ifndef NUMBER_OF_REFS
  #define NUMBER_OF_REFS 0
#endif

#ifndef EXCEL_FILENAME
  #define EXCEL_FILENAME "NoExcelFilename" 
#endif

// Need to retain malloc'd values for a while, so can return to functions that use this library
// So to avoid a memory leak we keep an array of all the values we have malloc'd, which we then
// free when the reset() function is called.
#define MEMORY_TO_BE_FREED_LATER_HEAP_INCREMENT 1000

#define true 1
#define false 0

// These are the various types of excel cell, plus ExcelRange which allows the passing of arrays of cells
typedef enum {ExcelEmpty, ExcelNumber, ExcelString, ExcelBoolean, ExcelError, ExcelRange} ExcelType;

struct excel_value {
	ExcelType type;
	
	double number; // Used for numbers and for error types
	char *string; // Used for strings
	
	// The following three are used for ranges
	void *array;
	int rows;
	int columns;
};

typedef struct excel_value ExcelValue;


void reset();


// These are used in the SUMIF and SUMIFS criteria (e.g., when passed a string like "<20")
typedef enum {LessThan, LessThanOrEqual, Equal, NotEqual, MoreThanOrEqual, MoreThan} ExcelComparisonType;

struct excel_comparison {
	ExcelComparisonType type;
	ExcelValue comparator;
};

typedef struct excel_comparison ExcelComparison;

// Headers
static ExcelValue more_than(ExcelValue a_v, ExcelValue b_v);
static ExcelValue more_than_or_equal(ExcelValue a_v, ExcelValue b_v);
static ExcelValue not_equal(ExcelValue a_v, ExcelValue b_v);
static ExcelValue less_than(ExcelValue a_v, ExcelValue b_v);
static ExcelValue less_than_or_equal(ExcelValue a_v, ExcelValue b_v);
static ExcelValue average(int array_size, ExcelValue *array);
static ExcelValue averageifs(ExcelValue average_range_v, int number_of_arguments, ExcelValue *arguments);
static ExcelValue ensure_is_number(ExcelValue maybe_number_v);
static ExcelValue find_2(ExcelValue string_to_look_for_v, ExcelValue string_to_look_in_v);
static ExcelValue find(ExcelValue string_to_look_for_v, ExcelValue string_to_look_in_v, ExcelValue position_to_start_at_v);
static ExcelValue hlookup_3(ExcelValue lookup_value_v,ExcelValue lookup_table_v, ExcelValue row_number_v);
static ExcelValue hlookup(ExcelValue lookup_value_v,ExcelValue lookup_table_v, ExcelValue row_number_v, ExcelValue match_type_v);
static ExcelValue iferror(ExcelValue value, ExcelValue value_if_error);
static ExcelValue iserr(ExcelValue value);
static ExcelValue excel_index(ExcelValue array_v, ExcelValue row_number_v, ExcelValue column_number_v);
static ExcelValue excel_index_2(ExcelValue array_v, ExcelValue row_number_v);
static ExcelValue excel_isnumber(ExcelValue number);
static ExcelValue excel_isblank(ExcelValue value);
static ExcelValue forecast(ExcelValue required_x, ExcelValue known_y, ExcelValue known_x);
static ExcelValue large(ExcelValue array_v, ExcelValue k_v);
static ExcelValue left(ExcelValue string_v, ExcelValue number_of_characters_v);
static ExcelValue left_1(ExcelValue string_v);
static ExcelValue len(ExcelValue string_v);
static ExcelValue excel_log(ExcelValue number);
static ExcelValue excel_log_2(ExcelValue number, ExcelValue base);
static ExcelValue ln(ExcelValue number);
static ExcelValue excel_exp(ExcelValue number);
static ExcelValue max(int number_of_arguments, ExcelValue *arguments);
static ExcelValue min(int number_of_arguments, ExcelValue *arguments);
static ExcelValue mmult(ExcelValue a_v, ExcelValue b_v);
static ExcelValue mod(ExcelValue a_v, ExcelValue b_v);
static ExcelValue negative(ExcelValue a_v);
static ExcelValue pmt(ExcelValue rate_v, ExcelValue number_of_periods_v, ExcelValue present_value_v);
static ExcelValue power(ExcelValue a_v, ExcelValue b_v);
static ExcelValue pv_3(ExcelValue a_v, ExcelValue b_v, ExcelValue c_v);
static ExcelValue pv_4(ExcelValue a_v, ExcelValue b_v, ExcelValue c_v, ExcelValue d_v);
static ExcelValue pv_5(ExcelValue a_v, ExcelValue b_v, ExcelValue c_v, ExcelValue d_v, ExcelValue e_v);
static ExcelValue excel_round(ExcelValue number_v, ExcelValue decimal_places_v);
static ExcelValue rank(ExcelValue number_v, ExcelValue range_v, ExcelValue order_v);
static ExcelValue rank_2(ExcelValue number_v, ExcelValue range_v);
static ExcelValue right(ExcelValue string_v, ExcelValue number_of_characters_v);
static ExcelValue right_1(ExcelValue string_v);
static ExcelValue rounddown(ExcelValue number_v, ExcelValue decimal_places_v);
static ExcelValue roundup(ExcelValue number_v, ExcelValue decimal_places_v);
static ExcelValue excel_int(ExcelValue number_v);
static ExcelValue string_join(int number_of_arguments, ExcelValue *arguments);
static ExcelValue subtotal(ExcelValue type, int number_of_arguments, ExcelValue *arguments);
static ExcelValue sumifs(ExcelValue sum_range_v, int number_of_arguments, ExcelValue *arguments);
static ExcelValue sumif(ExcelValue check_range_v, ExcelValue criteria_v, ExcelValue sum_range_v );
static ExcelValue sumif_2(ExcelValue check_range_v, ExcelValue criteria_v);
static ExcelValue sumproduct(int number_of_arguments, ExcelValue *arguments);
static ExcelValue text(ExcelValue number_v, ExcelValue format_v);
static ExcelValue value(ExcelValue string_v);
static ExcelValue vlookup_3(ExcelValue lookup_value_v,ExcelValue lookup_table_v, ExcelValue column_number_v);
static ExcelValue vlookup(ExcelValue lookup_value_v,ExcelValue lookup_table_v, ExcelValue column_number_v, ExcelValue match_type_v);


// Handy macros

#define new_excel_number(numberdouble) ((ExcelValue) {.type = ExcelNumber, .number = numberdouble})
#define new_excel_string(stringchar) ((ExcelValue) {.type = ExcelString, .string = stringchar})
#define new_excel_range(arrayofvalues, rangerows, rangecolumns) ((ExcelValue) {.type = ExcelRange, .array = arrayofvalues, .rows = rangerows, .columns = rangecolumns})

#define NUMBER(value_name, name) double name; if(value_name.type == ExcelError) { return value_name; }; name = number_from(value_name);
#define CHECK_FOR_CONVERSION_ERROR 	if(conversion_error) { conversion_error = 0; return VALUE; };
#define CHECK_FOR_PASSED_ERROR(name) 	if(name.type == ExcelError) return name;

struct average_result {
	double sum;
	double count;
	int has_error;
	ExcelValue error;
};
// End of the generic c functions

// Start of the file specific functions

ExcelValue sheet1_a5();
ExcelValue sheet1_e5();
ExcelValue sheet1_e6();
ExcelValue sheet1_e7();
ExcelValue sheet1_e8();
ExcelValue sheet1_e9();
ExcelValue sheet1_e10();
ExcelValue sheet1_e11();
ExcelValue sheet1_e12();
ExcelValue sheet1_e13();
ExcelValue sheet1_e14();
ExcelValue sheet1_e15();
ExcelValue sheet1_e16();
ExcelValue sheet1_e17();
ExcelValue sheet1_e18();
ExcelValue sheet1_e19();
ExcelValue sheet1_e20();
ExcelValue sheet1_e21();
ExcelValue sheet1_e22();
ExcelValue sheet1_e23();
ExcelValue sheet1_e24();
ExcelValue sheet1_e25();
ExcelValue sheet1_e26();
ExcelValue sheet1_e27();
ExcelValue sheet1_e28();
ExcelValue sheet1_e29();
ExcelValue sheet1_e30();
ExcelValue sheet1_e31();
ExcelValue sheet1_e32();
ExcelValue sheet1_a34();
ExcelValue sheet1_e34();

void set_sheet1_e5(ExcelValue newValue);
void set_sheet1_e6(ExcelValue newValue);
void set_sheet1_e7(ExcelValue newValue);
void set_sheet1_e8(ExcelValue newValue);

// Start of named references
// End of named references

ExcelValue intermediate_output_p188();
ExcelValue control_e5();
void set_control_e5(ExcelValue newValue);
void set_control_e6(ExcelValue newValue);
void set_control_e7(ExcelValue newValue);
void set_control_e8(ExcelValue newValue);
void set_control_e9(ExcelValue newValue);
void set_control_e10(ExcelValue newValue);
void set_control_e11(ExcelValue newValue);
void set_control_e12(ExcelValue newValue);
void set_control_e13(ExcelValue newValue);
void set_control_e14(ExcelValue newValue);
void set_control_e15(ExcelValue newValue);
void set_control_e16(ExcelValue newValue);
void set_control_e17(ExcelValue newValue);
void set_control_e18(ExcelValue newValue);
void set_control_e19(ExcelValue newValue);
void set_control_e20(ExcelValue newValue);
void set_control_e21(ExcelValue newValue);
void set_control_e22(ExcelValue newValue);
void set_control_e23(ExcelValue newValue);
void set_control_e24(ExcelValue newValue);
void set_control_e25(ExcelValue newValue);
void set_control_e26(ExcelValue newValue);
void set_control_e27(ExcelValue newValue);
void set_control_e28(ExcelValue newValue);
void set_control_e29(ExcelValue newValue);
ExcelValue control_e30();
void set_control_e30(ExcelValue newValue);
void set_control_e31(ExcelValue newValue);
void set_control_e32(ExcelValue newValue);
void set_control_e33(ExcelValue newValue);
void set_control_e34(ExcelValue newValue);
void set_control_e35(ExcelValue newValue);
void set_control_e36(ExcelValue newValue);
void set_control_e37(ExcelValue newValue);
void set_control_e38(ExcelValue newValue);
void set_control_e39(ExcelValue newValue);
void set_control_e40(ExcelValue newValue);
void set_control_e41(ExcelValue newValue);
void set_control_e42(ExcelValue newValue);
void set_control_e43(ExcelValue newValue);
void set_control_e44(ExcelValue newValue);
void set_control_e45(ExcelValue newValue);
void set_control_e46(ExcelValue newValue);
