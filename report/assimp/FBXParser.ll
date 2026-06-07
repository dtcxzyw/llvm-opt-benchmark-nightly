inline.NumInlined: 1816
inline.NumDeleted: 629
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.8 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.8 = type { i64, [8 x i8] }
%"class.std::allocator.5" = type { i8 }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", ptr }
%"class.std::vector.17" = type { %"struct.std::_Vector_base.18" }
%"struct.std::_Vector_base.18" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.Assimp::Compression" = type { ptr }
%class.aiMatrix4x4t = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%"class.std::vector.34" = type { %"struct.std::_Vector_base.35" }
%"struct.std::_Vector_base.35" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev = comdat any

$_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj = comdat any

$_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA24_cEERKT_ = comdat any

$_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN17DeadlyImportErrorC2IJRA12_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA12_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZN17DeadlyImportErrorD0Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E = comdat any

$_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA47_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA47_KcERPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA47_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZNSt6vectorIcSaIcEE6resizeEm = comdat any

$_ZN17DeadlyImportErrorC2IJRA11_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_EEEDpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_ERA11_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES6_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE15_M_insert_equalISC_EESt17_Rb_tree_iteratorISC_EOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJSC_EEEvPSt13_Rb_tree_nodeISC_EDpOT_ = comdat any

$_Z18ai_str_toprintableB5cxx11PKcic = comdat any

$_ZN17DeadlyImportErrorC2IJRA13_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EEEDpOT_ = comdat any

$_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA37_S2_EEEvDpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_KcERA13_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRA36_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJERA36_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA37_KcERPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b = comdat any

$_ZN17DeadlyImportErrorC2IJRA22_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_S1_EEEDpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_KcERA22_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRA82_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJERA82_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZTI17DeadlyImportError = comdat any

$_ZTS17DeadlyImportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTV17DeadlyImportError = comdat any

@.str = private unnamed_addr constant [49 x i8] c"unexpected end of file, expected closing bracket\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"unexpected end of file, expected bracket, comma or key\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"unexpected token; expected bracket, comma or key\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"expected closing bracket\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"expected open bracket\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unexpected end of file\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"unexpected token, expected TOK_KEY\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"unexpected content: empty string.\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Parsing FBX tokens\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"expected TOK_DATA token\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"failed to parse ID, unexpected data type, expected L(ong) (binary)\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"failed to parse ID (text)\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"expected asterisk before array dimension\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"expected valid integer number after asterisk\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"failed to parse ID\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"failed to parse F(loat) or D(ouble), unexpected data type (binary)\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"failed to parse I(nt), unexpected data type (binary)\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"failed to parse Int64, unexpected data type\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"failed to parse Int64 (text)\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"failed to parse S(tring), unexpected data type (binary)\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"token is too short to hold a string\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"expected double quoted string\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"unexpected empty element\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"number of floats is not a multiple of three (3) (binary)\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"expected float or double array (binary)\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Invalid read size (binary)\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"number of floats is not a multiple of three (3)\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"number of floats is not a multiple of four (4) (binary)\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"number of floats is not a multiple of four (4)\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"number of floats is not a multiple of two (2) (binary)\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"number of floats is not a multiple of two (2)\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"expected int array (binary)\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"expected (u)int array (binary)\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"encountered negative integer index (binary)\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"encountered negative integer index\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"expected long array (binary)\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"expected 16 matrix elements\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"did not find required element \22\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"expected compound scope\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"missing token at index \00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"FBX-Parser \00", align 1
@_ZTI17DeadlyImportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyImportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.44 = private unnamed_addr constant [24 x i8] c"Converting the string \22\00", align 1
@.str.45 = private unnamed_addr constant [47 x i8] c"\22 into an inverted value resulted in overflow.\00", align 1
@.str.46 = private unnamed_addr constant [89 x i8] c"binary data array is too short, need five (5) bytes for type signature and element count\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"FBX-Parser\00", align 1
@.str.49 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"The string \22\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"\22 cannot be converted into a value.\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"\22 into a value resulted in overflow.\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"inity\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"Cannot parse string \22\00", align 1
@.str.59 = private unnamed_addr constant [82 x i8] c"\22 as a real number: does not start with digit or decimal point followed by digit.\00", align 1
@_ZN6AssimpL15fast_atof_tableE = internal unnamed_addr constant [16 x double] [double 0.000000e+00, double 1.000000e-01, double 1.000000e-02, double 1.000000e-03, double 1.000000e-04, double 1.000000e-05, double f0x3EB0C6F7A0B5ED8D, double f0x3E7AD7F29ABCAF48, double 1.000000e-08, double 1.000000e-09, double 1.000000e-10, double f0x3DA5FD7FE1796495, double f0x3D719799812DEA11, double 1.000000e-13, double f0x3D06849B86A12B9B, double 1.000000e-15], align 16
@.str.60 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@switch.table._ZN6Assimp3FBX12_GLOBAL__N_119ReadBinaryDataArrayEcjRPKcS3_RSt6vectorIcSaIcEERKNS0_7ElementE = private unnamed_addr constant [9 x i8] c"\08\00\04\00\00\04\00\00\08", align 4

@_ZN6Assimp3FBX7ElementC1ERKNS0_5TokenERNS0_6ParserE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6Assimp3FBX7ElementC2ERKNS0_5TokenERNS0_6ParserE
@_ZN6Assimp3FBX7ElementD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp3FBX7ElementD2Ev
@_ZN6Assimp3FBX5ScopeC1ERNS0_6ParserEb = hidden unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN6Assimp3FBX5ScopeC2ERNS0_6ParserEb
@_ZN6Assimp3FBX5ScopeD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp3FBX5ScopeD2Ev
@_ZN6Assimp3FBX6ParserC1ERKSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorEb = hidden unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN6Assimp3FBX6ParserC2ERKSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorEb
@_ZN6Assimp3FBX6ParserD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp3FBX6ParserD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX7ElementC2ERKNS0_5TokenERNS0_6ParserE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(49) initializes((16, 24)) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !4 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backERKS4_.exit65.thread, %bb.a
  %i.j = load ptr, ptr %i.e, align 8
  store ptr %i.j, ptr %i.f, align 8
  %i.k = load ptr, ptr %2, align 8, !nonnull !3, !align !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.o = icmp eq ptr %i.n, %i.m
  br i1 %i.o, label %_ZN6Assimp3FBX6Parser18AdvanceToNextTokenEv.exit.thread, label %_ZN6Assimp3FBX6Parser18AdvanceToNextTokenEv.exit

_ZN6Assimp3FBX6Parser18AdvanceToNextTokenEv.exit.thread: ; preds = %bb.b
  store ptr null, ptr %i.e, align 8
  br label %.loopexit

_ZN6Assimp3FBX6Parser18AdvanceToNextTokenEv.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.p, ptr %i.g, align 8
  %i.q = load ptr, ptr %i.n, align 8              ; 7 uses
  store ptr %i.q, ptr %i.e, align 8
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %_ZN6Assimp3FBX6Parser18AdvanceToNextTokenEv.exit, %_ZN6Assimp3FBX6Parser18AdvanceToNextTokenEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.loopexit
  %i.r = load ptr, ptr %i.f, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX5TokenE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.r) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

.loopexit98:                                      ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %.invoke, %bb.al, %bb.af, %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.e:                                             ; preds = %.loopexit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %3, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.t, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.au

bb.g:                                             ; preds = %_ZN6Assimp3FBX6Parser18AdvanceToNextTokenEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backERKS4_.exit65

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ad = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.h, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.h, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backERKS4_.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %.invoke, label %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.j, %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #28
          to label %.noexc50 unwind label %.loopexit98 ; 4 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  store ptr %i.q, ptr %i.as, align 8
  %i.at = icmp sgt i64 %i.aj, 0
  br i1 %i.at, label %bb.k, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.k:                                             ; preds = %.noexc50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.k, %.noexc50
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aj) #27
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.ar, ptr %i.a, align 8
  store ptr %i.au, ptr %i.h, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.av, ptr %i.i, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.i
  %i.aw = load ptr, ptr %i.e, align 8
  store ptr %i.aw, ptr %i.f, align 8
  %i.ax = load ptr, ptr %2, align 8, !nonnull !3, !align !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.bb = icmp eq ptr %i.ba, %i.az
  br i1 %i.bb, label %_ZN6Assimp3FBX6Parser18AdvanceToNextTokenEv.exit52.thread, label %_ZN6Assimp3FBX6Parser18AdvanceToNextTokenEv.exit52

_ZN6Assimp3FBX6Parser18AdvanceToNextTokenEv.exit52.thread: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backERKS4_.exit
  store ptr null, ptr %i.e, align 8
  br label %.loopexit99

_ZN6Assimp3FBX6Parser18AdvanceToNextTokenEv.exit52: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backERKS4_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bc, ptr %i.g, align 8
  %i.bd = load ptr, ptr %i.ba, align 8            ; 10 uses
  store ptr %i.bd, ptr %i.e, align 8
  %.not36 = icmp eq ptr %i.bd, null
  br i1 %.not36, label %.loopexit99, label %bb.q

.loopexit99:                                      ; preds = %_ZN6Assimp3FBX6Parser18AdvanceToNextTokenEv.exit52, %_ZN6Assimp3FBX6Parser18AdvanceToNextTokenEv.exit52.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorI10aiVector3tIfESaIS3_EERKNS0_7ElementE:bb.a
  store i64 1, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 0, ptr %i.gl, align 1
  %i.gm = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6Assimp3FBX18GetRequiredElementERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(48) %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull %1)
          to label %bb.be unwind label %bb.bi     ; 2 uses

bb.be:                                            ; preds = %_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE.exit
  %i.gn = load ptr, ptr %15, align 8              ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.gj
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.be
  %i.gp = load i64, ptr %i.gj, align 8
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8            ; 3 uses
  %i.gu = load ptr, ptr %i.gr, align 8            ; 3 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = ashr exact i64 %i.gx, 3
  %i.gz = urem i64 %i.gy, 3
  %.not = icmp eq i64 %i.gz, 0
  br i1 %.not, label %.preheader, label %bb.bf

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %.not182193 = icmp eq ptr %i.gu, %i.gt
  br i1 %.not182193, label %.loopexit190, label %.lr.ph

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull %1) #26
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE.exit
  %i.ha = landingpad { ptr, i32 }
          cleanup
  %i.hb = load ptr, ptr %15, align 8              ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gj
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.bi
  %i.hd = load i64, ptr %i.gj, align 8
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %common.resume

bb.bj:                                            ; preds = %bb.bf
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

bb.bk:                                            ; preds = %bb.bg
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hh = load ptr, ptr %16, align 8              ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.bk
  %i.hk = load i64, ptr %i.hi, align 8
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.bj
  %.pn68 = phi { ptr, i32 } [ %i.hf, %bb.bj ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %i.hg, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %.sroa.0159.0194 = phi ptr [ %i.hs, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %i.gu, %.preheader ] ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0159.0194, i64 8
  %i.hn = load ptr, ptr %.sroa.0159.0194, align 8
  %i.ho = call noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.hn) ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0159.0194, i64 16
  %i.hq = load ptr, ptr %i.hm, align 8
  %i.hr = call noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.hq) ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0159.0194, i64 24 ; 2 uses
  %i.ht = load ptr, ptr %i.hp, align 8
  %i.hu = call noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.ht) ; 2 uses
  %i.hv = load ptr, ptr %i.b, align 8             ; 7 uses
  %i.hw = load ptr, ptr %i.fk, align 8
  %.not.i140 = icmp eq ptr %i.hv, %i.hw
  br i1 %.not.i140, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph
  store float %i.ho, ptr %i.hv, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  store float %i.hr, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store float %i.hu, ptr %.sroa.8.0..sroa_idx, align 4
  %i.hx = load ptr, ptr %i.b, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store ptr %i.hy, ptr %i.b, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

bb.bm:                                            ; preds = %.lr.ph
  %i.hz = load ptr, ptr %0, align 8               ; 5 uses
  %i.ia = ptrtoint ptr %i.hv to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib                    ; 4 uses
  %i.id = icmp eq i64 %i.ic, 9223372036854775800
  br i1 %i.id, label %bb.bn, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i141

bb.bn:                                            ; preds = %bb.bm
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i141: ; preds = %bb.bm
  %i.ie = sdiv exact i64 %i.ic, 12                ; 3 uses
  %.sroa.speculated.i.i.i142 = call i64 @llvm.umax.i64(i64 %i.ie, i64 1)
  %i.if = add nsw i64 %.sroa.speculated.i.i.i142, %i.ie ; 2 uses
  %i.ig = icmp ult i64 %i.if, %i.ie
  %i.ih = call i64 @llvm.umin.i64(i64 %i.if, i64 768614336404564650)
  %i.ii = select i1 %i.ig, i64 768614336404564650, i64 %i.ih ; 3 uses
  %.not.i.i.i143 = icmp ne i64 %i.ii, 0
  call void @llvm.assume(i1 %.not.i.i.i143)
  %i.ij = mul nuw nsw i64 %i.ii, 12
  %i.ik = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ij) #28 ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ic ; 3 uses
  store float %i.ho, ptr %i.il, align 4
  %.sroa.6.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  store float %i.hr, ptr %.sroa.6.0..sroa_idx154, align 4
  %.sroa.8.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store float %i.hu, ptr %.sroa.8.0..sroa_idx156, align 4
  %.not10.i.i.i.i.i144 = icmp eq ptr %i.hz, %i.hv
  br i1 %.not10.i.i.i.i.i144, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i145

.lr.ph.i.i.i.i.i145:                              ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i141, %.lr.ph.i.i.i.i.i145
  %.012.i.i.i.i.i146 = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i145 ], [ %i.ik, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i141 ] ; 2 uses
  %.0911.i.i.i.i.i147 = phi ptr [ %i.im, %.lr.ph.i.i.i.i.i145 ], [ %i.hz, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i141 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i146, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i147, i64 12, i1 false), !alias.scope !34
  %i.im = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i147, i64 12 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i146, i64 12 ; 2 uses
  %.not.i.i.i.i.i148 = icmp eq ptr %i.im, %i.hv
  br i1 %.not.i.i.i.i.i148, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i145, !llvm.loop !19

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i145, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i141
  %.0.lcssa.i.i.i.i.i149 = phi ptr [ %i.ik, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i141 ], [ %i.in, %.lr.ph.i.i.i.i.i145 ]
  %i.io = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i149, i64 12
  %.not.i23.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ic) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bo, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ik, ptr %0, align 8
  store ptr %i.io, ptr %i.b, align 8
  %i.ip = getelementptr inbounds nuw [12 x i8], ptr %i.ik, i64 %i.ii
  store ptr %i.ip, ptr %i.fk, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.bl, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.not182 = icmp eq ptr %i.hs, %i.gt
  br i1 %.not182, label %.loopexit190, label %.lr.ph, !llvm.loop !38

.loopexit190:                                     ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit, %.preheader, %bb.av
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_119ReadBinaryDataArrayEcjRPKcS3_RSt6vectorIcSaIcEERKNS0_7ElementE(i8 noundef signext %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Compression", align 8 ; 9 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.val24 = load i32, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %.val = load i32, ptr %i.b, align 1             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %2, align 8
  %switch.tableidx = add i8 %0, -100              ; 2 uses
  %i.d = icmp ult i8 %switch.tableidx, 9
  br i1 %i.d, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp3FBX12_GLOBAL__N_119ReadBinaryDataArrayEcjRPKcS3_RSt6vectorIcSaIcEERKNS0_7ElementE, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.f = mul i32 %1, %switch.ext
  %i.g = zext i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.g, %switch.lookup ]
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.0)
  switch i32 %.val24, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit [
    i32 0, label %bb.c
    i32 1, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %2, align 8                ; 3 uses
  %i.i = load ptr, ptr %4, align 8                ; 2 uses
  %i.j = ptrtoint ptr %3 to i64
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp sgt i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.h, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 1
  br i1 %i.n, label %bb.f, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %i.h, align 1
  store i8 %i.o, ptr %i.i, align 1
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6Assimp11CompressionC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.p = invoke noundef zeroext i1 @_ZN6Assimp11Compression4openENS0_6FormatENS0_9FlushModeEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0, i32 noundef 4, i32 noundef 0)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %i.p, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %2, align 8
  %i.r = zext i32 %.val to i64
  %i.s = invoke noundef i64 @_ZN6Assimp11Compression10decompressEPKvmRSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.q, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.t = invoke noundef zeroext i1 @_ZN6Assimp11Compression5closeEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.k       ; 0 uses

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp11CompressionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.u

bb.l:                                             ; preds = %bb.j, %bb.h
  call void @_ZN6Assimp11CompressionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.l
  %i.v = load ptr, ptr %2, align 8
  %i.w = zext i32 %.val to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  store ptr %i.x, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %.not.i = icmp eq i32 %i.d, 2
  br i1 %.not.i, label %bb.b, label %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, -1
  %i.h = load ptr, ptr %0, align 8                ; 4 uses
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not20.i = icmp eq i8 %i.i, 76
  br i1 %.not20.i, label %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread11, label %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread

_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread11: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.val.i = load i64, ptr %i.j, align 1
  br label %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread20

bb.d:                                             ; preds = %bb.b
  %.not19.i = icmp eq i8 %i.i, 42
  br i1 %.not19.i, label %bb.e, label %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  store i32 %i.p, ptr %i.a, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread16, label %bb.f

_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread16: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.s = call noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef nonnull %i.r, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = load ptr, ptr %i.k, align 8
  %i.v = icmp ugt ptr %i.t, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.v, label %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread, label %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread20

_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread: ; preds = %bb.f, %bb.d, %bb.c, %bb.a, %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread16
  %.210 = phi ptr [ @.str.13, %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread16 ], [ @.str.9, %bb.a ], [ @.str.12, %bb.d ], [ @.str.10, %bb.c ], [ @.str.14, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.210, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN6Assimp3FBX5TokenE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(36) %0) #26
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread
  unreachable

bb.h:                                             ; preds = %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %1, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.w

_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread20: ; preds = %bb.f, %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread11
  %.3.i15 = phi i64 [ %.val.i, %_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenERPKc.exit.thread11 ], [ %i.s, %bb.f ]
  ret i64 %.3.i15
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE(ptr nofree noundef nonnull readonly align 8 captures(address_is_null) dereferenceable(40) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %0) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
end_hunk_1
