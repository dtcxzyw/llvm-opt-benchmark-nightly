inline.NumInlined: 2672
inline.NumDeleted: 626
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::locale::id" = type { i64 }
%"struct.fmt::v12::detail::singleton" = type { i8, i8 }
%"class.fmt::v12::detail::uint128_fallback" = type { i64, i64 }
%"class.OpenImageIO::v3_1::basic_string_view" = type { ptr, i64 }
%"struct.fmt::v12::detail::format_handler" = type { %"class.fmt::v12::parse_context", %"class.fmt::v12::context" }
%"class.fmt::v12::parse_context" = type <{ %"class.fmt::v12::basic_string_view", i32, [4 x i8] }>
%"class.fmt::v12::basic_string_view" = type { ptr, i64 }
%"class.fmt::v12::context" = type { %"class.fmt::v12::basic_appender", %"class.fmt::v12::basic_format_args", %"class.fmt::v12::locale_ref" }
%"class.fmt::v12::basic_appender" = type { ptr }
%"class.fmt::v12::basic_format_args" = type { i64, %union.anon }
%union.anon = type { ptr }
%"class.fmt::v12::locale_ref" = type { ptr }
%"class.fmt::v12::detail::iterator_buffer" = type { %"class.fmt::v12::detail::fixed_buffer_traits", %"class.fmt::v12::detail::buffer", ptr, [256 x i8] }
%"class.fmt::v12::detail::fixed_buffer_traits" = type { i64, i64 }
%"class.fmt::v12::detail::buffer" = type { ptr, i64, i64, ptr }
%"struct.fmt::v12::detail::format_arg_store" = type { [8 x %"class.fmt::v12::detail::value"] }
%"class.fmt::v12::detail::value" = type { %union.anon.0 }
%union.anon.0 = type { i128 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%class.anon.42 = type <{ i64, i32, [4 x i8] }>
%"struct.fmt::v12::format_specs" = type { %"class.fmt::v12::basic_specs", i32, i32 }
%"class.fmt::v12::basic_specs" = type { i32, [4 x i8] }
%class.anon.22 = type { %"class.fmt::v12::basic_string_view" }
%struct.id_adapter = type <{ ptr, i32, [4 x i8] }>
%"class.fmt::v12::loc_value" = type { %"class.fmt::v12::basic_format_arg" }
%"class.fmt::v12::basic_format_arg" = type <{ %"class.fmt::v12::detail::value", i32, [12 x i8] }>
%"class.std::locale" = type { ptr }
%"class.fmt::v12::format_facet" = type { %"class.std::locale::facet.base", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::locale::facet.base" = type <{ ptr, i32 }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.1 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.1 = type { i64, [8 x i8] }
%class.anon.7 = type { i8, i8 }
%"struct.fmt::v12::detail::loc_writer" = type { %"class.fmt::v12::basic_appender", ptr, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.fmt::v12::detail::digit_grouping" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.fmt::v12::basic_memory_buffer" = type <{ %"class.fmt::v12::detail::buffer", [500 x i8], [4 x i8] }>
%class.anon = type { ptr, ptr, ptr }
%"struct.fmt::v12::detail::find_escape_result" = type { ptr, ptr, i32 }
%"class.fmt::v12::basic_memory_buffer.8" = type <{ %"class.fmt::v12::detail::buffer.9", [500 x i32], [8 x i8] }>
%"class.fmt::v12::detail::buffer.9" = type { ptr, i64, i64, ptr }
%class.anon.14 = type { ptr, ptr, ptr }
%class.anon.23 = type { i32, ptr }
%"struct.fmt::v12::detail::dragonbox::decimal_fp" = type { i32, i32 }
%"class.fmt::v12::detail::fallback_digit_grouping" = type { i8 }
%class.anon.24 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.25 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.26 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.fmt::v12::detail::dragonbox::decimal_fp.27" = type { i64, i32 }
%class.anon.28 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.29 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.30 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.31 = type { %"class.fmt::v12::basic_string_view" }
%"struct.fmt::v12::detail::big_decimal_fp" = type { ptr, i32, i32 }
%"struct.fmt::v12::detail::basic_fp" = type <{ i128, i32, [12 x i8] }>
%"class.fmt::v12::detail::bigint" = type { %"class.fmt::v12::basic_memory_buffer.33", i32, [4 x i8] }
%"class.fmt::v12::basic_memory_buffer.33" = type <{ %"class.fmt::v12::detail::buffer.34", [32 x i32], [8 x i8] }>
%"class.fmt::v12::detail::buffer.34" = type { ptr, i64, i64, ptr }
%class.anon.37 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::big_decimal_fp", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%class.anon.40 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.41 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.fmt::v12::detail::thousands_sep_result" = type <{ %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"struct.fmt::v12::detail::write_int_arg.13" = type { i128, i32 }
%"struct.fmt::v12::detail::dynamic_format_specs" = type { %"struct.fmt::v12::format_specs", %"union.fmt::v12::detail::arg_ref", %"union.fmt::v12::detail::arg_ref" }
%"union.fmt::v12::detail::arg_ref" = type { %"class.fmt::v12::basic_string_view" }
%"struct.fmt::v12::detail::dynamic_spec_handler" = type { ptr, ptr, ptr }
%class.anon.49 = type { i32, %"struct.fmt::v12::detail::dragonbox::decimal_fp", i32, i8, i32, i8, i32 }
%class.anon.51 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.52 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.57 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::dragonbox::decimal_fp.27", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%class.anon.60 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.61 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.62 = type { ptr, ptr, ptr, ptr, ptr }
%class.anon.63 = type { i8, i64, %"class.fmt::v12::basic_string_view" }
%class.anon.66 = type { %class.anon.62 }
%"class.fmt::v12::detail::counting_buffer" = type { %"class.fmt::v12::detail::buffer", [256 x i8], i64 }

@.str = private unnamed_addr constant [5 x i8] c"V2.0\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"{:c}{:c}:{:c}{:c}:{:c}{:c}:{:c}{:c}\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%Y:%m:%d:%H:%M:%S%Z\00", align 1
@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], align 16
@.str.24 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, align 8
@.str.26 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.32 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.33 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.43 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.44 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"
@switch.table._ZNK3dpx13GenericHeader17ComponentDataSizeEi = private unnamed_addr constant [25 x i32] [i32 0, i32 4, i32 1, i32 4, i32 1, i32 4, i32 4, i32 4, i32 1, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3], align 4
@switch.table._ZNK3dpx13GenericHeader18ComponentByteCountEi = private unnamed_addr constant [25 x i32] [i32 1, i32 8, i32 2, i32 8, i32 2, i32 8, i32 8, i32 8, i32 2, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 4], align 4
@switch.table._ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 4, i32 4], align 4

@_ZN3dpx6HeaderC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN3dpx6HeaderC2Ev
@_ZN3dpx13GenericHeaderC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN3dpx13GenericHeaderC2Ev
@_ZN3dpx14IndustryHeaderC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN3dpx14IndustryHeaderC2Ev
@_ZN3dpx12ImageElementC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN3dpx12ImageElementC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef signext range(i8 65, 58) i8 @_Z3Hexc(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i8 %0, 9
  %.0.v = select i1 %i.a, i8 55, i8 48
  %.0 = add i8 %.0.v, %0
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3dpx6HeaderC2Ev(ptr noundef nonnull align 4 dereferenceable(2049) initializes((0, 16), (780, 1356)) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN3dpx13GenericHeaderC2Ev(ptr noundef nonnull align 4 dereferenceable(1664) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1720
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(384) %i.a, i8 0, i64 48, i1 false)
  store i32 -1, ptr %i.b, align 4, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1716
  store i32 -1, ptr %i.c, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1712
  store i32 -1, ptr %i.d, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1724
  store <2 x float> splat (float +qnan), ptr %i.e, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1732
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(188) %i.f, i8 0, i64 188, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1930
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.g, i8 -1, i64 10, i1 false)
  store i8 0, ptr %i.h, align 2, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1931
  store i8 -1, ptr %i.i, align 1, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1932
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1948
  store <4 x float> splat (float +qnan), ptr %i.j, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1964
  store <2 x float> splat (float +qnan), ptr %i.l, align 4, !tbaa !12
  store <4 x float> splat (float +qnan), ptr %i.k, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1972
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.m, i8 0, i64 76, i1 false), !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2048
  store i8 1, ptr %i.n, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3dpx13GenericHeaderC2Ev(ptr noundef nonnull align 4 dereferenceable(1664) initializes((0, 16), (780, 1356)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 780
  store i32 -1, ptr %.ptr, align 4, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i32 -1, ptr %i.a, align 4, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 788
  store float f0x4F800000, ptr %i.b, align 4, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i32 -1, ptr %i.c, align 4, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 796
  store float f0x4F800000, ptr %i.d, align 4, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 820
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 -1, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !tbaa !15
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 852
  store i32 -1, ptr %.ptr.1, align 4, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  store i32 -1, ptr %i.g, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 860
  store float f0x4F800000, ptr %i.h, align 4, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 864
  store i32 -1, ptr %i.i, align 4, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 868
  store float f0x4F800000, ptr %i.j, align 4, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 892
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, i8 -1, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.l, i8 0, i64 32, i1 false), !tbaa !15
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 924
  store i32 -1, ptr %.ptr.2, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i32 -1, ptr %i.m, align 4, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 932
  store float f0x4F800000, ptr %i.n, align 4, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 -1, ptr %i.o, align 4, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 940
  store float f0x4F800000, ptr %i.p, align 4, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 964
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.q, i8 -1, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.r, i8 0, i64 32, i1 false), !tbaa !15
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 996
  store i32 -1, ptr %.ptr.3, align 4, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store i32 -1, ptr %i.s, align 4, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1004
  store float f0x4F800000, ptr %i.t, align 4, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store i32 -1, ptr %i.u, align 4, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1012
  store float f0x4F800000, ptr %i.v, align 4, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1036
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.w, i8 -1, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.x, i8 0, i64 32, i1 false), !tbaa !15
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 1068
  store i32 -1, ptr %.ptr.4, align 4, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i32 -1, ptr %i.y, align 4, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1076
  store float f0x4F800000, ptr %i.z, align 4, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 -1, ptr %i.aa, align 4, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1084
  store float f0x4F800000, ptr %i.ab, align 4, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ac, i8 -1, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ad, i8 0, i64 32, i1 false), !tbaa !15
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store i32 -1, ptr %.ptr.5, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store i32 -1, ptr %i.ae, align 4, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1148
  store float f0x4F800000, ptr %i.af, align 4, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 -1, ptr %i.ag, align 4, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1156
  store float f0x4F800000, ptr %i.ah, align 4, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ai, i8 -1, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false), !tbaa !15
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 1212
  store i32 -1, ptr %.ptr.6, align 4, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store i32 -1, ptr %i.ak, align 4, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1220
  store float f0x4F800000, ptr %i.al, align 4, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store i32 -1, ptr %i.am, align 4, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1228
  store float f0x4F800000, ptr %i.an, align 4, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ao, i8 -1, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ap, i8 0, i64 32, i1 false), !tbaa !15
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 1284
  store i32 -1, ptr %.ptr.7, align 4, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store i32 -1, ptr %i.aq, align 4, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1292
  store float f0x4F800000, ptr %i.ar, align 4, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i32 -1, ptr %i.as, align 4, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1300
  store float f0x4F800000, ptr %i.at, align 4, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1324
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.au, i8 -1, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.av, i8 0, i64 32, i1 false), !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i32 1396985944, ptr %0, align 4, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.aw, align 4, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.ax, align 4
  store ptr @.str, ptr %1, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.ay, align 8, !tbaa !34
  %i.az = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %i.ax, ptr noundef nonnull dead_on_return %1, i64 noundef 8) #29 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 2052, i32 1, i32 1664, i32 384>, ptr %i.ba, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(628) %i.bb, i8 0, i64 628, i1 false)
  store i32 -1, ptr %i.bc, align 4, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.bd, i8 0, i64 104, i1 false), !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.be, i8 -1, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bf, i8 0, i64 52, i1 false), !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1412
  store i32 -1, ptr %i.bg, align 4, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store i32 -1, ptr %i.bh, align 4, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1416
  store <2 x float> splat (float +qnan), ptr %i.bi, align 4, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1428
  store i32 -1, ptr %i.bj, align 4, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1424
  store i32 -1, ptr %i.bk, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1432
end_hunk_0
begin_hunk_1_@_ZN3dpx6Header5ResetEv:bb.a
  store i32 1396985944, ptr %0, align 4, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.a, align 4, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 4
  store ptr @.str, ptr %1, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.c, align 8, !tbaa !34
  %i.d = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %i.b, ptr noundef nonnull dead_on_return %1, i64 noundef 8) #29 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 2052, i32 1, i32 1664, i32 384>, ptr %i.e, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(628) %i.f, i8 0, i64 628, i1 false)
  store i32 -1, ptr %i.g, align 4, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.h, i8 0, i64 104, i1 false), !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, i8 -1, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.j, i8 0, i64 52, i1 false), !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1412
  store i32 -1, ptr %i.k, align 4, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store i32 -1, ptr %i.l, align 4, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1416
  store <2 x float> splat (float +qnan), ptr %i.m, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1428
  store i32 -1, ptr %i.n, align 4, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1424
  store i32 -1, ptr %i.o, align 4, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1620
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(188) %i.p, i8 0, i64 188, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, i8 -1, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1636
  store <2 x float> splat (float +qnan), ptr %i.r, align 4, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1644
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, i8 0, i64 20, i1 false), !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(384) %i.t, i8 0, i64 48, i1 false)
  store i32 -1, ptr %i.u, align 4, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1716
  store i32 -1, ptr %i.v, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1712
  store i32 -1, ptr %i.w, align 4, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1724
  store <2 x float> splat (float +qnan), ptr %i.x, align 4, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1732
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(188) %i.y, i8 0, i64 188, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1930
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.z, i8 -1, i64 10, i1 false)
  store i8 0, ptr %i.aa, align 2, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1931
  store i8 -1, ptr %i.ab, align 1, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1932
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1948
  store <4 x float> splat (float +qnan), ptr %i.ac, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1964
  store <2 x float> splat (float +qnan), ptr %i.ae, align 4, !tbaa !12
  store <4 x float> splat (float +qnan), ptr %i.ad, align 4, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.af, i8 0, i64 76, i1 false), !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 1, 9) i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(1664) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr [72 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 800
  %i.d = load i8, ptr %i.c, align 4, !tbaa !44
  switch i8 %i.d, label %bb.i [
    i8 -100, label %bb.h
    i8 -101, label %bb.g
    i8 -102, label %bb.f
    i8 -103, label %bb.e
    i8 -104, label %bb.c
    i8 -105, label %bb.b
    i8 -106, label %bb.d
    i8 103, label %bb.c
    i8 102, label %bb.b
    i8 50, label %bb.b
    i8 51, label %bb.c
    i8 52, label %bb.c
    i8 100, label %bb.d
    i8 101, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.i

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.a
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 7, %bb.g ], [ 8, %bb.h ], [ 6, %bb.f ], [ 3, %bb.b ], [ 4, %bb.c ], [ 2, %bb.d ], [ 5, %bb.e ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 9) i32 @_ZNK3dpx13GenericHeader17ImageElementCountEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(1664) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 770
  %i.b = load i16, ptr %i.a, align 2, !tbaa !45   ; 2 uses
  %i.c = zext nneg i16 %i.b to i32
  %i.d = add i16 %i.b, -1
  %or.cond = icmp ult i16 %i.d, 8
  br i1 %or.cond, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.preheader

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.preheader: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.f = load i8, ptr %i.e, align 4, !tbaa !44
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.i = load i8, ptr %i.h, align 4, !tbaa !44
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.l = load i8, ptr %i.k, align 4, !tbaa !44
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.o = load i8, ptr %i.n, align 4, !tbaa !44
  %i.p = icmp eq i8 %i.o, -1
  br i1 %i.p, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.r = load i8, ptr %i.q, align 4, !tbaa !44
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.u = load i8, ptr %i.t, align 4, !tbaa !44
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.x = load i8, ptr %i.w, align 4, !tbaa !44
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.7

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.7: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !44
  %i.ab = icmp eq i8 %i.aa, -1
  %spec.select = select i1 %i.ab, i32 7, i32 8
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.7, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.preheader, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6, %bb.a
  %.05 = phi i32 [ %i.c, %bb.a ], [ 4, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4 ], [ 0, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.preheader ], [ 1, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1 ], [ %spec.select, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.7 ], [ 2, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2 ], [ 5, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5 ], [ 3, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3 ], [ 6, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6 ]
  ret i32 %.05
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN3dpx6Header16CalculateOffsetsEv(ptr noundef nonnull readnone align 4 captures(none) dereferenceable(2049) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 5) i32 @_ZNK3dpx13GenericHeader17ComponentDataSizeEi(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(1664) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 7
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 803
  %i.d = load i8, ptr %i.c, align 1, !tbaa !46
  %switch.tableidx = add i8 %i.d, -8              ; 2 uses
  %2 = icmp ult i8 %switch.tableidx, 25
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %3 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK3dpx13GenericHeader17ComponentDataSizeEi, i64 %3
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ %switch.load, %bb.c ], [ 4, %bb.b ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 9) i32 @_ZNK3dpx13GenericHeader18ComponentByteCountEi(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(1664) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 7
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 803
  %i.d = load i8, ptr %i.c, align 1, !tbaa !46
  %switch.tableidx = add i8 %i.d, -8              ; 2 uses
  %2 = icmp ult i8 %switch.tableidx, 25
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %3 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK3dpx13GenericHeader18ComponentByteCountEi, i64 %3
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ %switch.load, %bb.c ], [ 8, %bb.b ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 1, 9) i32 @_ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ 8, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK3dpx14IndustryHeader12FilmEdgeCodeEPc(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(384) %0, ptr noundef writeonly captures(none) initializes((0, 17)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !15
  store i8 %i.a, ptr %1, align 1, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.c, ptr %i.d, align 1, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.f, ptr %i.g, align 1, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.i, ptr %i.j, align 1, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i8, ptr %i.k, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.l, ptr %i.m, align 1, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.o, ptr %i.p, align 1, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.r = load i8, ptr %i.q, align 2, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.r, ptr %i.s, align 1, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.u = load i8, ptr %i.t, align 1, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.u, ptr %i.v, align 1, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i8, ptr %i.w, align 4, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.x, ptr %i.y, align 1, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.am, ptr %i.an, align 1, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.as, ptr %i.at, align 1, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.au, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN3dpx14IndustryHeader15SetFileEdgeCodeEPKc(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(384) initializes((0, 16)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.a, ptr %0, align 4, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.c, ptr %i.d, align 1, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.f, ptr %i.g, align 2, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.i, ptr %i.j, align 1, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.l, ptr %i.m, align 4, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.o, ptr %i.p, align 1, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.r = load i8, ptr %i.q, align 1, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.r, ptr %i.s, align 2, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.u = load i8, ptr %i.t, align 1, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.u, ptr %i.v, align 1, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.x, ptr %i.y, align 4, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ad, ptr %i.ae, align 2, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.aj, ptr %i.ak, align 4, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.am, ptr %i.an, align 1, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.ap, ptr %i.aq, align 2, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.as, ptr %i.at, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3dpx14IndustryHeader8TimeCodeEPc(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"class.fmt::v12::detail::iterator_buffer", align 8 ; 9 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 8 uses
  %i.c = lshr i32 %i.b, 28
  %i.d = trunc nuw nsw i32 %i.c to i8
  %i.e = icmp ugt i32 %i.b, -1610612737
  %.0.v.i = select i1 %i.e, i8 55, i8 48
  %.0.i = add nuw nsw i8 %.0.v.i, %i.d
  %i.f = lshr i32 %i.b, 24
  %i.g = trunc nuw i32 %i.f to i8
  %i.h = and i8 %i.g, 15                          ; 2 uses
  %i.i = icmp samesign ugt i8 %i.h, 9
  %.0.v.i9 = select i1 %i.i, i8 55, i8 48
  %.0.i10 = add nuw nsw i8 %.0.v.i9, %i.h
  %i.j = lshr i32 %i.b, 20
  %i.k = trunc i32 %i.j to i8
  %i.l = and i8 %i.k, 15                          ; 2 uses
  %i.m = icmp samesign ugt i8 %i.l, 9
  %.0.v.i11 = select i1 %i.m, i8 55, i8 48
  %.0.i12 = add nuw nsw i8 %.0.v.i11, %i.l
  %i.n = lshr i32 %i.b, 16
  %i.o = trunc i32 %i.n to i8
  %i.p = and i8 %i.o, 15                          ; 2 uses
  %i.q = icmp samesign ugt i8 %i.p, 9
  %.0.v.i13 = select i1 %i.q, i8 55, i8 48
  %.0.i14 = add nuw nsw i8 %.0.v.i13, %i.p
  %i.r = lshr i32 %i.b, 12
  %i.s = trunc i32 %i.r to i8
  %i.t = and i8 %i.s, 15                          ; 2 uses
  %i.u = icmp samesign ugt i8 %i.t, 9
  %.0.v.i15 = select i1 %i.u, i8 55, i8 48
  %.0.i16 = add nuw nsw i8 %.0.v.i15, %i.t
  %i.v = lshr i32 %i.b, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = and i8 %i.w, 15                          ; 2 uses
  %i.y = icmp samesign ugt i8 %i.x, 9
  %.0.v.i17 = select i1 %i.y, i8 55, i8 48
end_hunk_1
