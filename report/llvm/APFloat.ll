Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APFloat?download=true
inline.NumInlined: 4012
inline.NumDeleted: 1007
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0

$_ZNK4llvm7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_12RoundingModeEPb = comdat any

$_ZNK4llvm7APFloat10isDenormalEv = comdat any

$_ZN4llvm3absENS_7APFloatE = comdat any

$_ZN19__llvm_libc_apfloat4math3expEd = comdat any

$_ZNK4llvm7APFloat12getExactLog2Ev = comdat any

$_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_ = comdat any

$_ZN4llvm9ErrorList4joinENS_5ErrorES1_ = comdat any

$_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN19__llvm_libc_apfloat4math12exp_internal8exp_f128Eddii = comdat any

$_ZN19__llvm_libc_apfloat4math12exp_internal14poly_approx_ddERKNS_10NumberPairIdEE = comdat any

$_ZN19__llvm_libc_apfloat4math12exp_internal16poly_approx_f128ERKNS_6fputil11DyadicFloatILm128EEE = comdat any

$_ZNK19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE7fast_asIdLb0EvEET_v = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc = comdat any

$_ZN4llvm11APFloatBase11semIEEEhalfE = comdat any

$_ZN4llvm11APFloatBase9semBFloatE = comdat any

$_ZN4llvm11APFloatBase13semIEEEsingleE = comdat any

$_ZN4llvm11APFloatBase13semIEEEdoubleE = comdat any

$_ZN4llvm11APFloatBase11semIEEEquadE = comdat any

$_ZN4llvm11APFloatBase13semFloat8E5M2E = comdat any

$_ZN4llvm11APFloatBase17semFloat8E5M2FNUZE = comdat any

$_ZN4llvm11APFloatBase13semFloat8E4M3E = comdat any

$_ZN4llvm11APFloatBase15semFloat8E4M3FNE = comdat any

$_ZN4llvm11APFloatBase17semFloat8E4M3FNUZE = comdat any

$_ZN4llvm11APFloatBase20semFloat8E4M3B11FNUZE = comdat any

$_ZN4llvm11APFloatBase13semFloat8E3M4E = comdat any

$_ZN4llvm11APFloatBase12semFloatTF32E = comdat any

$_ZN4llvm11APFloatBase16semFloat8E8M0FNUE = comdat any

$_ZN4llvm11APFloatBase15semFloat6E3M2FNE = comdat any

$_ZN4llvm11APFloatBase15semFloat6E2M3FNE = comdat any

$_ZN4llvm11APFloatBase15semFloat4E2M1FNE = comdat any

$_ZN4llvm11APFloatBase20semX87DoubleExtendedE = comdat any

$_ZN4llvm11APFloatBase8semBogusE = comdat any

$_ZN4llvm11APFloatBase18semPPCDoubleDoubleE = comdat any

$_ZN4llvm11APFloatBase24semPPCDoubleDoubleLegacyE = comdat any

$_ZZN4llvm13hexDigitValueEcE3LUT = comdat any

$_ZN19__llvm_libc_apfloat4math6EXP_M1E = comdat any

$_ZN19__llvm_libc_apfloat4math6EXP_M2E = comdat any

$_ZZN19__llvm_libc_apfloat6fputil7generic16fenv_is_round_upEvE1x = comdat any

$_ZZN19__llvm_libc_apfloat6fputil7generic15quick_get_roundEvE1x = comdat any

$_ZN19__llvm_libc_apfloat9EXP2_MID1E = comdat any

$_ZN19__llvm_libc_apfloat9EXP2_MID2E = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4llvm11APFloatBase11semIEEEhalfE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 15, i32 -14, i32 11, i32 16, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase9semBFloatE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 127, i32 -126, i32 8, i32 16, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase13semIEEEsingleE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 127, i32 -126, i32 24, i32 32, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase13semIEEEdoubleE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 1023, i32 -1022, i32 53, i32 64, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase11semIEEEquadE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 16383, i32 -16382, i32 113, i32 128, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase13semFloat8E5M2E = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 15, i32 -14, i32 3, i32 8, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase17semFloat8E5M2FNUZE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 15, i32 -15, i32 3, i32 8, i32 1, i32 2, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase13semFloat8E4M3E = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 7, i32 -6, i32 4, i32 8, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase15semFloat8E4M3FNE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 8, i32 -6, i32 4, i32 8, i32 1, i32 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase17semFloat8E4M3FNUZE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 7, i32 -7, i32 4, i32 8, i32 1, i32 2, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase20semFloat8E4M3B11FNUZE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 4, i32 -10, i32 4, i32 8, i32 1, i32 2, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase13semFloat8E3M4E = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 3, i32 -2, i32 5, i32 8, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase12semFloatTF32E = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 127, i32 -126, i32 11, i32 19, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase16semFloat8E8M0FNUE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 127, i32 -127, i32 1, i32 8, i32 1, i32 1, i8 0, i8 0, i8 0, i8 0, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase15semFloat6E3M2FNE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 4, i32 -2, i32 3, i32 6, i32 2, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase15semFloat6E2M3FNE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 2, i32 0, i32 4, i32 6, i32 2, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase15semFloat4E2M1FNE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 2, i32 0, i32 2, i32 4, i32 2, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase20semX87DoubleExtendedE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 16383, i32 -16382, i32 64, i32 80, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 1 }, comdat, align 4
@_ZN4llvm11APFloatBase8semBogusE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase18semPPCDoubleDoubleE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 -1, i32 0, i32 0, i32 128, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@_ZN4llvm11APFloatBase24semPPCDoubleDoubleLegacyE = weak_odr constant { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 } { i32 1023, i32 -969, i32 106, i32 128, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0 }, comdat, align 4
@.str = private unnamed_addr constant [30 x i8] c"String contains multiple dots\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Hex strings require an exponent\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid character in significand\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Significand has no digits\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"INFINITY\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"+Inf\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Inf\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Invalid string length\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"String has no digits\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Invalid string\00", align 1
@_ZN4llvmL4NaNUE = internal unnamed_addr constant [4 x i8] c"NAN\00", align 1
@_ZN4llvmL4NaNLE = internal unnamed_addr constant [4 x i8] c"nan\00", align 1
@_ZN4llvmL14hexDigitsUpperE = internal unnamed_addr constant [18 x i8] c"0123456789ABCDEF0\00", align 16
@_ZN4llvmL14hexDigitsLowerE = internal unnamed_addr constant [18 x i8] c"0123456789abcdef0\00", align 16
@.str.17 = private unnamed_addr constant [7 x i8] c"0.0E+0\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@_ZZN4llvm13hexDigitValueEcE3LUT = linkonce_odr local_unnamed_addr constant [256 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], comdat, align 16
@.str.31 = private unnamed_addr constant [39 x i8] c"Invalid trailing hexadecimal fraction!\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"Exponent has no digits\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"Invalid character in exponent\00", align 1
@_ZZN4llvmL8powerOf5EPmjE16firstEightPowers = internal unnamed_addr constant [8 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125], align 16
@_ZN4llvm9ErrorList2IDE = external global i8, align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN4llvm9ErrorListE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZN4llvm13ErrorInfoBase2IDE = external global i8, align 1
@_ZN19__llvm_libc_apfloat4math6EXP_M1E = linkonce_odr hidden local_unnamed_addr constant [195 x double] [double f0x368F1E6B68529E33, double f0x36A525BE4E4E601D, double f0x36BCBE0A45F75EB1, double f0x36D3884E838AEA68, double f0x36EA8C1F14E2AF5D, double f0x37020A717E64A9BD, double f0x3718851D84118908, double f0x3730A9BDFB02D240, double f0x3746A5BEA046B42E, double f0x375EC7F3B269EFA8, double f0x3774EAFB87EAB0F2, double f0x378C6E2D05BBC000, double f0x37A35208867C2683, double f0x37BA425B317EEACD, double f0x37D1D8508FA8246A, double f0x37E840FBC08FDC8A, double f0x38007B7112BC1FFE, double f0x381666D0DAD2961D, double f0x382E726C3F64D0FE, double f0x3844B0DC07CABF98, double f0x385C1F2DAF3B6A46, double f0x38731C5957A47DE2, double f0x3889F96445648B9F, double f0x38A1A6BAEADB4FD1, double f0x38B7FD974D372E45, double f0x38D04DA4D1452919, double f0x38E62891F06B3450, double f0x38FE1DD273AA8A4A, double f0x3914775E0840BFDD, double f0x392BD109D9D94BDA, double f0x3942E73F53FBA844, double f0x3959B138170D6BFE, double f0x397175AF0CF60EC5, double f0x3987BAEE1BFFA80B, double f0x39A02057D1245CEB, double f0x39B5EAFFFB34BA31, double f0x39CDCA23BAE16424, double f0x39E43E7FC88B8056, double f0x39FB83BF23A9A9EB, double f0x3A12B2B8DD05B318, double f0x3A2969D47321E4CC, double f0x3A41452B7723AED2, double f0x3A5778FE2497184C, double f0x3A6FE7116182E9CC, double f0x3A85AE191A99585A, double f0x3A9D775D87DA854D, double f0x3AB4063F8CC8BB98, double f0x3ACB374B315F87C1, double f0x3AE27EC458C65E3C, double f0x3AF923372C67A074, double f0x3B11152EAEB73C08, double f0x3B2737C5645114B5, double f0x3B3F8E6C24B5592E, double f0x3B5571DB733A9D61, double f0x3B6D257D547E083F, double f0x3B83CE9B9DE78F85, double f0x3B9AEBABAE3A41B5, double f0x3BB24B6031B49BDA, double f0x3BC8DD5E1BB09D7E, double f0x3BE0E5B73D1FF53D, double f0x3BF6F741DE1748EC, double f0x3C0F36BD37F42F3E, double f0x3C2536452EE2F75C, double f0x3C3CD480A1B74820, double f0x3C539792499B1A24, double f0x3C6AA0DE4BF35B38, double f0x3C82188AD6AE3303, double f0x3C9898471FCA6055, double f0x3CB0B6C3AFDDE064, double f0x3CC6B7719A59F0E0, double f0x3CDEE001EED62AA0, double f0x3CF4FB547C775DA8, double f0x3D0C8464F7616468, double f0x3D236121E24D3BBA, double f0x3D3A56E0C2AC7F75, double f0x3D51E642BAEB84A0, double f0x3D6853F01D6D53BA, double f0x3D80885298767E9A, double f0x3D967852A7007E42, double f0x3DAE8A37A45FC32E, double f0x3DC4C1078FE9228A, double f0x3DDC3527E433FAB1, double f0x3DF32B48BF117DA2, double f0x3E0A0DB0D0DDB3EC, double f0x3E21B48655F37267, double f0x3E381056FF2C5772, double f0x3E505A628C699FA1, double f0x3E6639E3175A689D, double f0x3E7E355BBAEE85CB, double f0x3E94875CA227EC38, double f0x3EABE6C6FDB01612, double f0x3EC2F6053B981D98, double f0x3ED9C54C3B43BC8B, double f0x3EF18354238F6764, double f0x3F07CD79B5647C9B, double f0x3F202CF22526545A, double f0x3F35FC21041027AD, double f0x3F4DE16B9C24A98F, double f0x3F644E51F113D4D6, double f0x3F7B993FE00D5376, double f0x3F92C155B8213CF4, double f0x3FA97DB0CCCEB0AF, double f0x3FC152AAA3BF81CC, double f0x3FD78B56362CEF38, double 1.000000e+00, double f0x4005BF0A8B145769, double f0x401D8E64B8D4DDAE, double f0x403415E5BF6FB106, double f0x404B4C902E273A58, double f0x40628D389970338F, double f0x407936DC5690C08F, double f0x409122885AAEDDAA, double f0x40A749EA7D470C6E, double f0x40BFA7157C470F82, double f0x40D5829DCF950560, double f0x40ED3C4488EE4F7F, double f0x4103DE1654D37C9A, double f0x411B00B5916AC955, double f0x413259AC48BF05D7, double f0x4148F0CCAFAD2A87, double f0x4160F2EBD0A80020, double f0x417709348C0EA4F9, double f0x418F4F22091940BD, double f0x41A546D8F9ED26E1, double f0x41BCEB088B68E804, double f0x41D3A6E1FD9EECFD, double f0x41EAB5ADB9C43600, double f0x420226AF33B1FDC1, double f0x4218AB7FB5475FB7, double f0x4230C3D3920962C9, double f0x4246C932696A6B5D, double f0x425EF822F7F6731D, double f0x42750BBA3796379A, double f0x428C9AAE4631C056, double f0x42A370470AEC28ED, double f0x42BA6B765D8CDF6D, double f0x42D1F43FCC4B662C, double f0x42E866F34A725782, double f0x4300953E2F3A1EF7, double f0x431689E221BC8D5B, double f0x432EA215A1D20D76, double f0x4344D13FBB1A001A, double f0x435C4B334617CC67, double f0x43733A43D282A519, double f0x438A220D397972EB, double f0x43A1C25C88DF6862, double f0x43B8232558201159, double f0x43D0672A3C9EB871, double f0x43E64B41C6D37832, double f0x43FE4CF766FE49BE, double f0x44149767BC0483E3, double f0x442BFC951EB8BB76, double f0x444304D6AECA254B, double f0x4459D97010884251, double f0x44719103E4080B45, double f0x4487E013CD114461, double f0x44A03996528E074C, double f0x44B60D4F6FDAC731, double f0x44CDF8C5AF17BA3B, double f0x44E45E3076D61699, double f0x44FBAED16A6E0DA7, double f0x4512CFFDFEBDE1A1, double f0x4529919CABEFCB69, double f0x454160345C9953E3, double f0x45579DBC9DC53C66, double f0x45700C810D464097, double f0x4585D009394C5C27, double f0x459DA57DE8F107A8, double f0x45B425982CF597CD, double f0x45CB61E5CA3A5E31, double f0x45E29BB825DFCF87, double f0x45F94A90DB0D6FE2, double f0x46112FEC759586FD, double f0x46275C1DC469E3AF, double f0x463FBFD219C43B04, double f0x4655936D44E1A146, double f0x466D531D8A7EE79C, double f0x4683ED9D24A2D51B, double f0x469B15CFE5B6E17B, double f0x46B268038C2C0E00, double f0x46C9044A73545D48, double f0x46E1002AB6218B38, double f0x46F71B3540CBF921, double f0x470F6799EA9C414A, double f0x47255779B984F3EB, double f0x473D01A210C44AA4, double f0x4753B63DA8E91210, double f0x476ACA8D6B0116B8, double f0x478234DE9E0C74E9, double f0x4798BEC7503CA477, double f0x47B0D0EDA9796B90, double f0x47C6DB0118477245, double f0x47DF1056DC7BF22D, double f0x47F51C2CC3433801, double f0x480CB108FFBEC164], comdat, align 16
@_ZN19__llvm_libc_apfloat4math6EXP_M2E = linkonce_odr hidden local_unnamed_addr constant [128 x double] [double 1.000000e+00, double f0x3FF0202015600446, double f0x3FF04080AB55DE39, double f0x3FF06122436410DD, double f0x3FF08205601127ED, double f0x3FF0A32A84E9C1F6, double f0x3FF0C49236829E8C, double f0x3FF0E63CFA7AB09D, double f0x3FF1082B577D34ED, double f0x3FF12A5DD543CCC5, double f0x3FF14CD4FC989CD6, double f0x3FF16F9157587069, double f0x3FF192937074E0CD, double f0x3FF1B5DBD3F68122, double f0x3FF1D96B0EFF0E79, double f0x3FF1FD41AFCBA45E, double f0x3FF2216045B6F5CD, double f0x3FF245C7613B8A9B, double f0x3FF26A7793F60164, double f0x3FF28F7170A755FD, double f0x3FF2B4B58B372C79, double f0x3FF2DA4478B620C7, double f0x3FF3001ECF601AF7, double f0x3FF32645269EA829, double f0x3FF34CB8170B5835, double f0x3FF373783A722012, double f0x3FF39A862BD3C106, double f0x3FF3C1E2876834AA, double f0x3FF3E98DEAA11DCC, double f0x3FF41188F42C3E32, double f0x3FF439D443F5F159, double f0x3FF462707B2BAC21, double f0x3FF48B5E3C3E8186, double f0x3FF4B49E2AE5AC67, double f0x3FF4DE30EC211E60, double f0x3FF50817263C13CD, double f0x3FF5325180CFACF7, double f0x3FF55CE0A4C58C7C, double f0x3FF587C53C5A7AF0, double f0x3FF5B2FFF3210FD9, double f0x3FF5DE9176045FF5, double f0x3FF60A7A734AB0E8, double f0x3FF636BB9A983258, double f0x3FF663559CF1BC7C, double f0x3FF690492CBF9433, double f0x3FF6BD96FDD034A2, double f0x3FF6EB3FC55B1E76, double f0x3FF719443A03ACB9, double f0x3FF747A513DBEF6A, double f0x3FF776630C678BC1, double f0x3FF7A57EDE9EA23E, double f0x3FF7D4F946F0BA8D, double f0x3FF804D30347B546, double f0x3FF8350CD30AC390, double f0x3FF865A7772164C5, double f0x3FF896A3B1F66A0E, double f0x3FF8C802477B0010, double f0x3FF8F9C3FD29BEAF, double f0x3FF92BE99A09BF00, double f0x3FF95E73E6B1B75E, double f0x3FF99163AD4B1DCC, double f0x3FF9C4B9B995509B, double f0x3FF9F876D8E8C566, double f0x3FFA2C9BDA3A3E78, double f0x3FFA61298E1E069C, double f0x3FFA9620C6CB3374, double f0x3FFACB82581EEE54, double f0x3FFB014F179FC3B8, double f0x3FFB3787DC80F95F, double f0x3FFB6E2D7FA5EB18, double f0x3FFBA540DBA56E56, double f0x3FFBDCC2CCCD3C85, double f0x3FFC14B431256446, double f0x3FFC4D15E873C193, double f0x3FFC85E8D43F7CD0, double f0x3FFCBF2DD7D490F2, double f0x3FFCF8E5D84758A9, double f0x3FFD3311BC7822B4, double f0x3FFD6DB26D16CD67, double f0x3FFDA8C8D4A66969, double f0x3FFDE455DF80E3C0, double f0x3FFE205A7BDAB73E, double f0x3FFE5CD799C6A54E, double f0x3FFE99CE2B397649, double f0x3FFED73F240DC142, double f0x3FFF152B7A07BB76, double f0x3FFF539424D90F5E, double f0x3FFF927A1E24BB76, double f0x3FFFD1DE6182F8C9, double f0x400008E0F64294AB, double f0x40002912DF5CE72A, double f0x400049856CD84339, double f0x40006A39207F0A09, double f0x40008B2E7D2035CF, double f0x4000AC6606916501, double f0x4000CDE041B0E9AE, double f0x4000EF9DB467DCF8, double f0x4001119EE5AC36B6, double f0x400133E45D82E952, double f0x4001566EA50201D7, double f0x4001793E4652CC50, double f0x40019C53CCB3FC6B, double f0x4001BFAFC47BDA73, double f0x4001E352BB1A74AD, double f0x4002073D3F1BD518, double f0x40022B6FE02A3B9C, double f0x40024FEB2F105CB8, double f0x400274AFBDBBA4A6, double f0x400299BE1F3E7F1C, double f0x4002BF16E7D2A38C, double f0x4002E4BAACDB6614, double f0x40030AAA04E80D05, double f0x400330E587B62B28, double f0x4003576DCE33FEAD, double f0x40037E437282D4EE, double f0x4003A5670FF972ED, double f0x4003CCD9432682B4, double f0x4003F49AA9D30590, double f0x40041CABE304CB34, double f0x4004450D8F00EDD4, double f0x40046DC04F4E5338, double f0x400496C4C6B832DA, double f0x4004C01B9950A111, double f0x4004E9C56C731F5D, double f0x400513C2E6C731D7, double f0x40053E14B042F9CA, double f0x400568BB722DD593, double f0x400593B7D72305BB], comdat, align 16
@_ZZN19__llvm_libc_apfloat6fputil7generic16fenv_is_round_upEvE1x = linkonce_odr hidden global float f0x33000000, comdat, align 4
@_ZZN19__llvm_libc_apfloat6fputil7generic15quick_get_roundEvE1x = linkonce_odr hidden global float f0x33800000, comdat, align 4
@_ZN19__llvm_libc_apfloat9EXP2_MID1E = linkonce_odr hidden local_unnamed_addr constant [64 x %"struct.__llvm_libc_apfloat::fputil::TripleDouble"] [%"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB919085B0A3D74D5, double f0xBC719083535B085D, double f0x3FF02C9A3E778061 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x39105FF94F8D257E, double f0x3C8D73E2A475B465, double f0x3FF059B0D3158574 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x39015820D96B414F, double f0x3C6186BE4BB284FF, double f0x3FF0874518759BC8 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB9367C9BD6EBF74C, double f0x3C98A62E4ADC610B, double f0x3FF0B5586CF9890F }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB8E5AA76994E9DDB, double f0x3C403A1727C57B53, double f0x3FF0E3EC32D3D1A2 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3929D58B988F562D, double f0xBC96C51039449B3A, double f0x3FF11301D0125B51 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB932FE7BB4C76416, double f0xBC932FBF9AF1369E, double f0x3FF1429AAEA92DE0 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3924F2406AA13FF0, double f0xBC819041B9D78A76, double f0x3FF172B83C7D517B }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x390AD36183926AE8, double f0x3C8E5B4C7B4968E4, double f0x3FF1A35BEB6FCB75 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x391EA62D0881B918, double f0x3C9E016E00A2643C, double f0x3FF1D4873168B9AA }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB90781DBC16F1EA4, double f0x3C8DC775814A8495, double f0x3FF2063B88628CD6 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB924D89F9AF532E0, double f0x3C99B07EB6C70573, double f0x3FF2387A6E756238 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x391277393A461B77, double f0x3C82BD339940E9D9, double f0x3FF26B4565E27CDD }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x390DE54485604690, double f0x3C8612E8AFAD1255, double f0x3FF29E9DF51FDEE1 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB91EE9D8F8CB9307, double f0x3C90024754DB41D5, double f0x3FF2D285A6E4030B }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3917B7B2F09CD0D9, double f0x3C86F46AD23182E4, double f0x3FF306FE0A31B715 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB93406A2EA6CFC6B, double f0x3C932721843659A6, double f0x3FF33C08B26416FF }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x39387E3E12516BFA, double f0xBC963AEABF42EAE2, double f0x3FF371A7373AA9CB }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3909B0B1FF17C296, double f0xBC75E436D661F5E3, double f0x3FF3A7DB34E59FF7 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB92808BA68FA8FB7, double f0x3C8ADA0911F09EBC, double f0x3FF3DEA64C123422 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB8D32B43EAFC6518, double f0xBC5EF3691C309278, double f0x3FF4160A21F72E2A }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB8D0AC312DE3D922, double f0x3C489B7A04EF80D0, double f0x3FF44E086061892D }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x390E1EEBAE743AC0, double f0x3C73C1A3B69062F0, double f0x3FF486A2B5C13CD0 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x38EC06C7745C2B39, double f0x3C7D4397AFEC42E2, double f0x3FF4BFDAD5362A27 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB8F1AA1FD7B685CD, double f0xBC94B309D25957E3, double f0x3FF4F9B2769D2CA7 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x390FA733951F214C, double f0xBC807ABE1DB13CAD, double f0x3FF5342B569D4F82 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB90FF86852A613FF, double f0x3C99BB2C011D93AD, double f0x3FF56F4736B527DA }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB92744EE506FDAFE, double f0x3C96324C054647AD, double f0x3FF5AB07DD485429 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB9395F9AB75FA7D6, double f0x3C9BA6F93080E65E, double f0x3FF5E76F15AD2148 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3905D8E757CFB991, double f0xBC9383C17E40B497, double f0x3FF6247EB03A5585 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3934A337F4DC0A3B, double f0xBC9BB60987591C34, double f0x3FF6623882552225 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x39357D3E3ADEC175, double f0xBC9BDD3413B26456, double f0x3FF6A09E667F3BCD }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x38CA59F88ABBE778, double f0xBC6BBE3A683C88AB, double f0x3FF6DFB23C651A2F }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB92269796953A4C3, double f0xBC816E4786887A99, double f0x3FF71F75E8EC5F74 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB938F8E7FA19E5E8, double f0xBC90245957316DD3, double f0x3FF75FEB564267C9 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB8E4217A932D10D4, double f0xBC841577EE04992F, double f0x3FF7A11473EB0187 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x38F70A1427F8FCDF, double f0x3C705D02BA15797E, double f0x3FF7E2F336CF4E62 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x38F0F6AD65CBBAC1, double f0xBC9D4C1DD41532D8, double f0x3FF82589994CCE13 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB92F16F65181D921, double f0xBC9FC6F89BD4F6BA, double f0x3FF868D99B4492ED }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB9130644A7836333, double f0x3C96E9F156864B27, double f0x3FF8ACE5422AA0DB }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x38D3BF26D2B85163, double f0x3C85CC13A2E3976C, double f0x3FF8F1AE99157736 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x390697E257AC0DB2, double f0xBC675FC781B57EBC, double f0x3FF93737B0CDC5E5 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3937EDB9D7144B6F, double f0xBC9D185B7C1B85D1, double f0x3FF97D829FDE4E50 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3916376B7943085C, double f0x3C7C7C46B071F2BE, double f0x3FF9C49182A3F090 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x392354084551B4FB, double f0xBC9359495D1CD533, double f0x3FFA0C667B5DE565 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB90BFD7ADFD63F48, double f0xBC9D2F6EDB8D41E1, double f0x3FFA5503B23E255D }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3928B16AE39E8CB9, double f0x3C90FAC90EF7FD31, double f0x3FFA9E6B5579FDBF }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x393A7FBC3AE675EA, double f0x3C97A1CD345DCC81, double f0x3FFAE89F995AD3AD }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3902BABC0EDDA4D9, double f0xBC62805E3084D708, double f0x3FFB33A2B84F15FB }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x390AA64481E1AB72, double f0xBC75584F7E54AC3B, double f0x3FFB7F76F2FB5E47 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3929A164050E1258, double f0x3C823DD07A2D9E84, double f0x3FFBCC1E904BC1D2 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x39199E51125928DA, double f0x3C811065895048DD, double f0x3FFC199BDD85529C }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB92FC44C329D5CB2, double f0x3C92884DFF483CAD, double f0x3FFC67F12E57D14B }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x391D8765566B032E, double f0x3C7503CBD1E949DB, double f0x3FFCB720DCEF9069 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB93E7044039DA0F6, double f0xBC9CBC3743797A9C, double f0x3FFD072D4A07897C }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB90AB053B05531FC, double f0x3C82ED02D75B3707, double f0x3FFD5818DCFBA487 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3937F6246F0EC615, double f0x3C9C2300696DB532, double f0x3FFDA9E603DB3285 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x393B7225A944EFD6, double f0xBC91A5CD4F184B5C, double f0x3FFDFC97337B9B5F }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3921E92CB3C2D278, double f0x3C839E8980A9CC8F, double f0x3FFE502EE78B3FF6 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB92FC0F242BBF3DE, double f0xBC9E9C23179C2893, double f0x3FFEA4AFA2A490DA }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x393F6DD5D229FF69, double f0x3C9DC7F486A4B6B0, double f0x3FFEFA1BEE615A27 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB914019BFFC80EF3, double f0x3C99D3E12DD8A18B, double f0x3FFF50765B6E4540 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x38FDC060C36F7651, double f0x3C874853F3A5931E, double f0x3FFFA7C1819E90D8 }], comdat, align 16
@_ZN19__llvm_libc_apfloat9EXP2_MID2E = linkonce_odr hidden local_unnamed_addr constant [64 x %"struct.__llvm_libc_apfloat::fputil::TripleDouble"] [%"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x39339726694630E3, double f0x3C9AE8E38C59C72A, double f0x3FF000B175EFFDC7 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x38FE5E06DDD31156, double f0xBC57B5D0D58EA8F4, double f0x3FF00162F3904052 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3905A0768B51F609, double f0x3C94115CB6B16A8E, double f0x3FF0021478E11CE6 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x390D008403605217, double f0xBC8D7C96F201BB2F, double f0x3FF002C605E2E8CF }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x39289BC16F765708, double f0x3C984711D4C35E9F, double f0x3FF003779A95F959 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB924535B7F8C1E2D, double f0xBC80484245243777, double f0x3FF0042936FAA3D8 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB938BA92F6B25456, double f0xBC94B237DA2025F9, double f0x3FF004DADB113DA0 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB8E30C72E81F4294, double f0xBC75E00E62D6B30D, double f0x3FF0058C86DA1C0A }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB9134A5384E6F0B9, double f0x3C9A1D6CEDBB9481, double f0x3FF0063E3A559473 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x393F8D0580865D2E, double f0xBC94ACF197A00142, double f0x3FF006EFF583FC3D }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB90002BCB3AE9A99, double f0xBC6EAF2EA42391A5, double f0x3FF007A1B865A8CA }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x390C3C5AEDEE9851, double f0x3C7DA93F90835F75, double f0x3FF0085382FAEF83 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3927217851D1EC6E, double f0xBC86A79084AB093C, double f0x3FF00905554425D4 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB9180CBCA335A7C3, double f0x3C986364F8FBE8F8, double f0x3FF009B72F41A12B }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB91706BD4EB22595, double f0xBC882E8E14E3110E, double f0x3FF00A6910F3B6FD }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB90B55DD523F3C08, double f0xBC84F6B2A7609F71, double f0x3FF00B1AFA5ABCBF }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x39190A1E207CCED1, double f0xBC7E1A258EA8F71B, double f0x3FF00BCCEB7707EC }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x39178D0472DB37C5, double f0x3C74362CA5BC26F1, double f0x3FF00C7EE448EE02 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB92BCD4DB3CB52FE, double f0x3C9095A56C919D02, double f0x3FF00D30E4D0C483 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB8FCF1B131575EC2, double f0xBC6406AC4E81A645, double f0x3FF00DE2ED0EE0F5 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB8F6AAA1FA7FF913, double f0x3C9B5A6902767E09, double f0x3FF00E94FD0398E0 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x39168F236DFF3218, double f0xBC991B2060859321, double f0x3FF00F4714AF41D3 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB92E8BB58067E60A, double f0x3C8427068AB22306, double f0x3FF00FF93412315C }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x393D4CD5E1D71FDF, double f0x3C9C1D0660524E08, double f0x3FF010AB5B2CBD11 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x393E4ECF350EBE88, double f0xBC9E7BDFB3204BE8, double f0x3FF0115D89FF3A8B }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3926A2AA2C89C4F8, double f0x3C8843AA8B9CBBC6, double f0x3FF0120FC089FF63 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3911CA368A20ED05, double f0xBC734104EE7EDAE9, double f0x3FF012C1FECD613B }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x38DEDB1095D925CF, double f0xBC72B6AEB6176892, double f0x3FF0137444C9B5B5 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB90488C78EDED75F, double f0x3C7A8CD33B8A1BB3, double f0x3FF01426927F5278 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB8E7480F5EA1B3C9, double f0x3C72EDC08E5DA99A, double f0x3FF014D8E7EE8D2F }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB90AE45989A04DD5, double f0x3C857BA2DC7E0C73, double f0x3FF0158B4517BB88 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x392BF48007D80987, double f0x3C9B61299AB8CDB7, double f0x3FF0163DA9FB3335 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3921AA91A059292C, double f0xBC990565902C5F44, double f0x3FF016F0169949ED }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x391B6663292855F5, double f0x3C870FC41C5C2D53, double f0x3FF017A28AF25567 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x393E7FBCA6793D94, double f0x3C94B9A6E145D76C, double f0x3FF018550706AB62 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB915B9F5C7DE3B93, double f0xBC7008EFF5142BF9, double f0x3FF019078AD6A19F }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3914638BF2F6ACAB, double f0xBC977669F033C7DE, double f0x3FF019BA16628DE2 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB92AB237B9A069C5, double f0xBC909BB78EEEAD0A, double f0x3FF01A6CA9AAC5F3 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3933AB358BE97CEF, double f0x3C9371231477ECE5, double f0x3FF01B1F44AF9F9E }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB914027B2294BB64, double f0x3C75E7626621EB5B, double f0x3FF01BD1E77170B4 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x390656394426C990, double f0xBC9BC72B100828A5, double f0x3FF01C8491F08F08 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x390BF9785189BDD8, double f0xBC6CE39CBBAB8BBE, double f0x3FF01D37442D5070 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3927C12F86114FE3, double f0x3C816996709DA2E2, double f0x3FF01DE9FE280AC8 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB92653D5D24B5D28, double f0xBC8C11F5239BF535, double f0x3FF01E9CBFE113EF }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x39204A0CDC1D86D7, double f0x3C8E1D4EB5EDC6B3, double f0x3FF01F4F8958C1C6 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x392C678C46149782, double f0xBC9AFB99946EE3F0, double f0x3FF020025A8F6A35 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x39348524E1E9DF70, double f0xBC98F06D8A148A32, double f0x3FF020B533856324 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3929953EA727FF0B, double f0xBC82BF310FC54EB6, double f0x3FF02168143B0281 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB93CCFBBEC22D28E, double f0xBC9C95A035EB4175, double f0x3FF0221AFCB09E3E }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3939E2BB6E181DE1, double f0xBC9491793E46834D, double f0x3FF022CDECE68C4F }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x391F17609AE29308, double f0xBC73E8D0D9C49091, double f0x3FF02380E4DD22AD }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB91C7DC2C476BFB8, double f0xBC9314AA16278AA3, double f0x3FF02433E494B755 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB92FAB994971D4A3, double f0x3C848DAF888E9651, double f0x3FF024E6EC0DA046 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x392848B62CBDD0AF, double f0x3C856DC8046821F4, double f0x3FF02599FB483385 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB92BF603BA715D0C, double f0x3C945B42356B9D47, double f0x3FF0264D1244C719 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x39189434E751E1AA, double f0xBC7082EF51B61D7E, double f0x3FF027003103B10E }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB9103B54FD64E8AC, double f0x3C72106ED0920A34, double f0x3FF027B357854772 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3927785EA0ACC486, double f0xBC9FD4CF26EA5D0F, double f0x3FF0286685C9E059 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB92CE447FDB35FF9, double f0xBC909F8775E78084, double f0x3FF02919BBD1D1D8 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x38F5B884AAB5642A, double f0x3C564CBBA902CA27, double f0x3FF029CCF99D720A }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB93CFB3E46D7C1C0, double f0x3C94383EF231D207, double f0x3FF02A803F2D170D }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0xB8F0D40CEE4B81AF, double f0x3C94A47A505B3A47, double f0x3FF02B338C811703 }, %"struct.__llvm_libc_apfloat::fputil::TripleDouble" { double f0x3926AE7D36D7C1F7, double f0x3C9E47120223467F, double f0x3FF02BE6E199C811 }], comdat, align 16
@__const._ZN19__llvm_libc_apfloat4math12exp_internal16poly_approx_f128ERKNS_6fputil11DyadicFloatILm128EEE.COEFFS_128 = private unnamed_addr constant [8 x %"struct.__llvm_libc_apfloat::fputil::DyadicFloat"] [%"struct.__llvm_libc_apfloat::fputil::DyadicFloat" { %"struct.__llvm_libc_apfloat::Sign" zeroinitializer, i32 -127, %"struct.__llvm_libc_apfloat::BigInt" { %"struct.__llvm_libc_apfloat::cpp::array" { [2 x i64] [i64 0, i64 -9223372036854775808] } } }, %"struct.__llvm_libc_apfloat::fputil::DyadicFloat" { %"struct.__llvm_libc_apfloat::Sign" zeroinitializer, i32 -127, %"struct.__llvm_libc_apfloat::BigInt" { %"struct.__llvm_libc_apfloat::cpp::array" { [2 x i64] [i64 0, i64 -9223372036854775808] } } }, %"struct.__llvm_libc_apfloat::fputil::DyadicFloat" { %"struct.__llvm_libc_apfloat::Sign" zeroinitializer, i32 -128, %"struct.__llvm_libc_apfloat::BigInt" { %"struct.__llvm_libc_apfloat::cpp::array" { [2 x i64] [i64 0, i64 -9223372036854775808] } } }, %"struct.__llvm_libc_apfloat::fputil::DyadicFloat" { %"struct.__llvm_libc_apfloat::Sign" zeroinitializer, i32 -130, %"struct.__llvm_libc_apfloat::BigInt" { %"struct.__llvm_libc_apfloat::cpp::array" { [2 x i64] [i64 -6148914691236517205, i64 -6148914691236517206] } } }, %"struct.__llvm_libc_apfloat::fputil::DyadicFloat" { %"struct.__llvm_libc_apfloat::Sign" zeroinitializer, i32 -132, %"struct.__llvm_libc_apfloat::BigInt" { %"struct.__llvm_libc_apfloat::cpp::array" { [2 x i64] [i64 -6148914691236517205, i64 -6148914691236517206] } } }, %"struct.__llvm_libc_apfloat::fputil::DyadicFloat" { %"struct.__llvm_libc_apfloat::Sign" zeroinitializer, i32 -134, %"struct.__llvm_libc_apfloat::BigInt" { %"struct.__llvm_libc_apfloat::cpp::array" { [2 x i64] [i64 -8608480567731124087, i64 -8608480567731124088] } } }, %"struct.__llvm_libc_apfloat::fputil::DyadicFloat" { %"struct.__llvm_libc_apfloat::Sign" zeroinitializer, i32 -137, %"struct.__llvm_libc_apfloat::BigInt" { %"struct.__llvm_libc_apfloat::cpp::array" { [2 x i64] [i64 6968769983401386166, i64 -5329059399071648245] } } }, %"struct.__llvm_libc_apfloat::fputil::DyadicFloat" { %"struct.__llvm_libc_apfloat::Sign" zeroinitializer, i32 -140, %"struct.__llvm_libc_apfloat::BigInt" { %"struct.__llvm_libc_apfloat::cpp::array" { [2 x i64] [i64 58561092297490640, i64 -3455104445551947763] } } }], align 16
@switch.table._ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE = private unnamed_addr constant [20 x ptr] [ptr @_ZN4llvm11APFloatBase11semIEEEhalfE, ptr @_ZN4llvm11APFloatBase9semBFloatE, ptr @_ZN4llvm11APFloatBase13semIEEEsingleE, ptr @_ZN4llvm11APFloatBase13semIEEEdoubleE, ptr @_ZN4llvm11APFloatBase11semIEEEquadE, ptr @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE, ptr @_ZN4llvm11APFloatBase24semPPCDoubleDoubleLegacyE, ptr @_ZN4llvm11APFloatBase13semFloat8E5M2E, ptr @_ZN4llvm11APFloatBase17semFloat8E5M2FNUZE, ptr @_ZN4llvm11APFloatBase13semFloat8E4M3E, ptr @_ZN4llvm11APFloatBase15semFloat8E4M3FNE, ptr @_ZN4llvm11APFloatBase17semFloat8E4M3FNUZE, ptr @_ZN4llvm11APFloatBase20semFloat8E4M3B11FNUZE, ptr @_ZN4llvm11APFloatBase13semFloat8E3M4E, ptr @_ZN4llvm11APFloatBase12semFloatTF32E, ptr @_ZN4llvm11APFloatBase16semFloat8E8M0FNUE, ptr @_ZN4llvm11APFloatBase15semFloat6E3M2FNE, ptr @_ZN4llvm11APFloatBase15semFloat6E2M3FNE, ptr @_ZN4llvm11APFloatBase15semFloat4E2M1FNE, ptr @_ZN4llvm11APFloatBase20semX87DoubleExtendedE], align 8

@_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsEm = unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN4llvm6detail9IEEEFloatC2ERKNS_12fltSemanticsEm
@_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm6detail9IEEEFloatC2ERKNS_12fltSemanticsE
@_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4llvm6detail9IEEEFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE
@_ZN4llvm6detail9IEEEFloatC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm6detail9IEEEFloatC2ERKS1_
@_ZN4llvm6detail9IEEEFloatC1EOS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm6detail9IEEEFloatC2EOS1_
@_ZN4llvm6detail9IEEEFloatD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm6detail9IEEEFloatD2Ev
@_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4llvm6detail9IEEEFloatC2ERKNS_12fltSemanticsERKNS_5APIntE
@_ZN4llvm6detail9IEEEFloatC1Ef = unnamed_addr alias void (ptr, float), ptr @_ZN4llvm6detail9IEEEFloatC2Ef
@_ZN4llvm6detail9IEEEFloatC1Ed = unnamed_addr alias void (ptr, double), ptr @_ZN4llvm6detail9IEEEFloatC2Ed
@_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm6detail13DoubleAPFloatC2ERKNS_12fltSemanticsE
@_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4llvm6detail13DoubleAPFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE
@_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsEm = unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN4llvm6detail13DoubleAPFloatC2ERKNS_12fltSemanticsEm
@_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4llvm6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE
@_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsEONS_7APFloatES6_ = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN4llvm6detail13DoubleAPFloatC2ERKNS_12fltSemanticsEONS_7APFloatES6_
@_ZN4llvm6detail13DoubleAPFloatC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm6detail13DoubleAPFloatC2ERKS1_
@_ZN4llvm6detail13DoubleAPFloatC1EOS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm6detail13DoubleAPFloatC2EOS1_
@_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4llvm7APFloat7StorageC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE
@_ZN4llvm7APFloatC1ERKNS_12fltSemanticsENS_9StringRefE = unnamed_addr alias void (ptr, ptr, ptr, i64), ptr @_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_9StringRefE
@_ZN4llvm7APFloat7StorageD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm7APFloat7StorageD2Ev
@_ZN4llvm7APFloat7StorageC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm7APFloat7StorageC2ERKS1_
@_ZN4llvm7APFloat7StorageC1EOS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm7APFloat7StorageC2EOS1_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_ZN19__llvm_libc_apfloat4math12tan_internal18newton_raphson_divERKNS_6fputil11DyadicFloatILm128EEES4_d(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.__llvm_libc_apfloat::fputil::DyadicFloat") align 8 captures(none) initializes((0, 1), (4, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly byval(%"struct.__llvm_libc_apfloat::fputil::DyadicFloat") align 8 captures(none) %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %3 to i64                 ; 4 uses
  %.lobit.i.i = lshr i64 %i.a, 63
  %.sroa.0.0.copyload.i.i = trunc nuw nsw i64 %.lobit.i.i to i8 ; 3 uses
  %i.b = lshr i64 %i.a, 52
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = and i32 %i.c, 2047                       ; 2 uses
  %i.e = fcmp oeq double %3, 0.000000e+00
  %i.f = icmp eq i32 %i.d, 0
  %i.g = add nsw i32 %i.d, -1075
  %i.h = select i1 %i.f, i32 -1074, i32 %i.g
  %i.i = select i1 %i.e, i32 -52, i32 %i.h        ; 2 uses
  %i.j = and i64 %i.a, 9218868437227405312
  %i.k = icmp eq i64 %i.j, 0
  %i.l = and i64 %i.a, 4503599627370495           ; 2 uses
  %i.m = or disjoint i64 %i.l, 4503599627370496
  %.0.i.i = select i1 %i.k, i64 %i.l, i64 %i.m    ; 3 uses
  %i.n = icmp eq i64 %.0.i.i, 0
  br i1 %i.n, label %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EEC2IdTnNS_3cpp9enable_ifIXsr3cppE19is_floating_point_vIT_EEiE4typeELi0EEES6_.exit, label %_ZN19__llvm_libc_apfloat6BigIntILm128ELb0EmEC2ImvEET_.exit.thread.i

_ZN19__llvm_libc_apfloat6BigIntILm128ELb0EmEC2ImvEET_.exit.thread.i: ; preds = %bb.a
  %i.o = tail call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %.lcssa.i.i.i.i = or disjoint i32 %i.p, 64      ; 2 uses
  %i.q = sub nsw i32 %i.i, %.lcssa.i.i.i.i
  %.sroa.03.0.insert.ext.i.i.i.i = zext nneg i64 %.0.i.i to i128
  %i.r = zext nneg i32 %.lcssa.i.i.i.i to i128
  %i.s = shl i128 %.sroa.03.0.insert.ext.i.i.i.i, %i.r
  %.sroa.4.0.extract.shift.i.i.i.i = lshr exact i128 %i.s, 64
  %.sroa.4.0.extract.trunc.i.i.i.i = trunc nuw i128 %.sroa.4.0.extract.shift.i.i.i.i to i64
  br label %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EEC2IdTnNS_3cpp9enable_ifIXsr3cppE19is_floating_point_vIT_EEiE4typeELi0EEES6_.exit

_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EEC2IdTnNS_3cpp9enable_ifIXsr3cppE19is_floating_point_vIT_EEiE4typeELi0EEES6_.exit: ; preds = %bb.a, %_ZN19__llvm_libc_apfloat6BigIntILm128ELb0EmEC2ImvEET_.exit.thread.i
  %.sroa.5195.0 = phi i32 [ %i.i, %bb.a ], [ %i.q, %_ZN19__llvm_libc_apfloat6BigIntILm128ELb0EmEC2ImvEET_.exit.thread.i ] ; 2 uses
  %storemerge.i = phi i64 [ 0, %bb.a ], [ %.sroa.4.0.extract.trunc.i.i.i.i, %_ZN19__llvm_libc_apfloat6BigIntILm128ELb0EmEC2ImvEET_.exit.thread.i ] ; 3 uses
  %.sroa.01.0.copyload = load i8, ptr %2, align 8, !tbaa !38
  %i.t = and i8 %.sroa.01.0.copyload, 1
  %i.u = xor i8 %i.t, 1                           ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43, !noalias !129 ; 2 uses
  %i.x = add nsw i32 %i.w, %.sroa.5195.0          ; 2 uses
  %i.y = add nsw i32 %i.x, 128                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45, !noalias !129 ; 3 uses
  %.not13.i.i = icmp eq i64 %i.aa, 0
  %.010.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %.010.ptr.1.i.i, align 8, !noalias !129 ; 3 uses
  %.not13.1.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i.i = select i1 %.not13.i.i, i1 %.not13.1.i.i, i1 false ; 2 uses
  %.not13.1.i12.i = icmp eq i64 %storemerge.i, 0  ; 2 uses
  %or.cond = select i1 %or.cond.i.i, i1 true, i1 %.not13.1.i12.i
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EEC2IdTnNS_3cpp9enable_ifIXsr3cppE19is_floating_point_vIT_EEiE4typeELi0EEES6_.exit
  %4 = zext i64 %i.aa to i128
  %i.ac = zext i64 %storemerge.i to i128          ; 2 uses
  %5 = mul nuw i128 %4, %i.ac
  %6 = lshr i128 %5, 64
  %7 = trunc nuw i128 %6 to i64
  %i.ad = zext i64 %i.ab to i128
  %i.ae = mul nuw i128 %i.ad, %i.ac               ; 2 uses
  %i.af = trunc i128 %i.ae to i64
  %i.ag = lshr i128 %i.ae, 64
  %i.ah = trunc nuw i128 %i.ag to i64
  %i.ai = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %i.af) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  %i.ak = extractvalue { i64, i1 } %i.ai, 0       ; 2 uses
  %i.al = zext i1 %i.aj to i64
  %i.am = add nuw i64 %i.al, %i.ah                ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  br i1 %i.an, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ao = add nsw i32 %i.x, 127
  %.sroa.2.0.insert.ext.i.i.i.i = zext nneg i64 %i.am to i128
  %.sroa.03.0.insert.ext.i.i.i.i3 = zext i64 %i.ak to i128
  %i.ap = shl nuw i128 %.sroa.2.0.insert.ext.i.i.i.i, 65
  %i.aq = shl nuw nsw i128 %.sroa.03.0.insert.ext.i.i.i.i3, 1 ; 2 uses
  %i.ar = or disjoint i128 %i.ap, %i.aq
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i128 %i.aq to i64
  %.sroa.4.0.extract.shift.i.i.i.i4 = lshr i128 %i.ar, 64
  %.sroa.4.0.extract.trunc.i.i.i.i5 = trunc nuw i128 %.sroa.4.0.extract.shift.i.i.i.i4 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EEC2IdTnNS_3cpp9enable_ifIXsr3cppE19is_floating_point_vIT_EEiE4typeELi0EEES6_.exit
  %.sroa.4174.0 = phi i64 [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EEC2IdTnNS_3cpp9enable_ifIXsr3cppE19is_floating_point_vIT_EEiE4typeELi0EEES6_.exit ], [ %.sroa.0.0.extract.trunc.i.i.i.i, %bb.c ] ; 2 uses
  %.sroa.8175.0 = phi i64 [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EEC2IdTnNS_3cpp9enable_ifIXsr3cppE19is_floating_point_vIT_EEiE4typeELi0EEES6_.exit ], [ %.sroa.4.0.extract.trunc.i.i.i.i5, %bb.c ] ; 2 uses
  %.sroa.2173.0 = phi i32 [ %i.y, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EEC2IdTnNS_3cpp9enable_ifIXsr3cppE19is_floating_point_vIT_EEiE4typeELi0EEES6_.exit ], [ %i.ao, %bb.c ]
  %.not13.i7.i = icmp eq i64 %.sroa.4174.0, 0
  %.not13.1.i9.i = icmp eq i64 %.sroa.8175.0, 0
  %or.cond.i10.i = select i1 %.not13.i7.i, i1 %.not13.1.i9.i, i1 false
  br i1 %or.cond.i10.i, label %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.d
  %.sroa.2173.0307 = phi i32 [ %.sroa.2173.0, %bb.d ], [ %i.y, %bb.b ] ; 9 uses
  %.sroa.8175.0306 = phi i64 [ %.sroa.8175.0, %bb.d ], [ %i.am, %bb.b ] ; 4 uses
  %.sroa.4174.0305 = phi i64 [ %.sroa.4174.0, %bb.d ], [ %i.ak, %bb.b ] ; 4 uses
  %i.as = icmp slt i32 %.sroa.2173.0307, -126
  br i1 %i.as, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.thread
  %i.at = icmp samesign ugt i32 %.sroa.2173.0307, -254
  br i1 %i.at, label %bb.f, label %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread

bb.f:                                             ; preds = %bb.e
  %i.au = sub nuw nsw i32 -126, %.sroa.2173.0307
  %.sroa.2.0.insert.ext.i.i.i.i11 = zext i64 %.sroa.8175.0306 to i128
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i128 %.sroa.2.0.insert.ext.i.i.i.i11, 64
  %.sroa.03.0.insert.ext.i.i.i.i12 = zext i64 %.sroa.4174.0305 to i128
  %.sroa.03.0.insert.insert.i.i.i.i = or disjoint i128 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.03.0.insert.ext.i.i.i.i12
  %i.av = zext nneg i32 %i.au to i128
  %i.aw = lshr i128 %.sroa.03.0.insert.insert.i.i.i.i, %i.av ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i13 = trunc i128 %i.aw to i64
  %.sroa.4.0.extract.shift.i.i.i.i14 = lshr i128 %i.aw, 64
  %.sroa.4.0.extract.trunc.i.i.i.i15 = trunc nuw nsw i128 %.sroa.4.0.extract.shift.i.i.i.i14 to i64
  br label %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i

bb.g:                                             ; preds = %.thread
  %.not = icmp eq i32 %.sroa.2173.0307, -126
  br i1 %.not, label %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = icmp slt i32 %.sroa.2173.0307, 2
  br i1 %i.ax, label %bb.i, label %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ay = add nsw i32 %.sroa.2173.0307, 126
  %i.az = zext nneg i32 %i.ay to i128             ; 2 uses
  %i.ba = lshr exact i128 -170141183460469231731687303715884105728, %i.az
  %.sroa.0.0.extract.trunc.i.i.i18.i = trunc i128 %i.ba to i64
  %.sroa.4.0.extract.shift.i.i.i19.i = lshr i128 9223372036854775808, %i.az
  %.sroa.4.0.extract.trunc.i.i.i20.i = trunc nuw nsw i128 %.sroa.4.0.extract.shift.i.i.i19.i to i64
  br label %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i

_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.847.1.pre.i = phi i32 [ 0, %bb.h ], [ %.sroa.2173.0307, %bb.i ], [ -126, %bb.g ], [ -126, %bb.f ] ; 3 uses
  %.sroa.847.170.i = phi i32 [ %.sroa.2173.0307, %bb.h ], [ %.sroa.2173.0307, %bb.i ], [ -126, %bb.g ], [ -126, %bb.f ]
  %i.bb = phi i64 [ %.sroa.4174.0305, %bb.h ], [ %.sroa.4174.0305, %bb.i ], [ %.sroa.4174.0305, %bb.g ], [ %.sroa.0.0.extract.trunc.i.i.i.i13, %bb.f ] ; 7 uses
  %.sroa.16.8.copyload.i = phi i64 [ 0, %bb.h ], [ %.sroa.0.0.extract.trunc.i.i.i18.i, %bb.i ], [ 0, %bb.g ], [ 0, %bb.f ] ; 5 uses
  %i.bc = phi i64 [ %.sroa.8175.0306, %bb.h ], [ %.sroa.8175.0306, %bb.i ], [ %.sroa.8175.0306, %bb.g ], [ %.sroa.4.0.extract.trunc.i.i.i.i15, %bb.f ] ; 7 uses
  %.sroa.25.8.copyload.i = phi i64 [ 0, %bb.h ], [ %.sroa.4.0.extract.trunc.i.i.i20.i, %bb.i ], [ -9223372036854775808, %bb.g ], [ -9223372036854775808, %bb.f ] ; 5 uses
  %i.bd = icmp eq i8 %i.u, %.sroa.0.0.copyload.i.i
  br i1 %i.bd, label %bb.j, label %bb.l

_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread: ; preds = %bb.e
  %i.be = icmp eq i8 %i.u, %.sroa.0.0.copyload.i.i
  br i1 %i.be, label %bb.j, label %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.thread.i

bb.j:                                             ; preds = %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i
  %.sroa.25.8.copyload.i231 = phi i64 [ -9223372036854775808, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread ], [ %.sroa.25.8.copyload.i, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i ]
  %i.bf = phi i64 [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread ], [ %i.bc, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i ]
  %.sroa.16.8.copyload.i229 = phi i64 [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread ], [ %.sroa.16.8.copyload.i, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i ]
  %i.bg = phi i64 [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread ], [ %i.bb, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i ]
  %.sroa.847.1.pre.i225 = phi i32 [ -126, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread ], [ %.sroa.847.1.pre.i, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i ] ; 2 uses
  %i.bh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.sroa.16.8.copyload.i229, i64 %i.bg) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0       ; 2 uses
  %i.bk = zext i1 %i.bi to i64
  %i.bl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.sroa.25.8.copyload.i231, i64 %i.bf) ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 1
  %i.bn = extractvalue { i64, i1 } %i.bl, 0
  %i.bo = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bn, i64 %i.bk) ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bo, 1
  %i.bq = extractvalue { i64, i1 } %i.bo, 0       ; 3 uses
  %i.br = or i1 %i.bm, %i.bp
  br i1 %i.br, label %bb.k, label %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit

bb.k:                                             ; preds = %bb.j
  %i.bs = add nsw i32 %.sroa.847.1.pre.i225, 1
  %.sroa.2.0.insert.ext.i.i.i25.i = zext i64 %i.bq to i128
  %.sroa.2.0.insert.shift.i.i.i26.i = shl nuw i128 %.sroa.2.0.insert.ext.i.i.i25.i, 64
  %.sroa.03.0.insert.ext.i.i.i27.i = zext i64 %i.bj to i128
  %.sroa.03.0.insert.insert.i.i.i28.i = or disjoint i128 %.sroa.2.0.insert.shift.i.i.i26.i, %.sroa.03.0.insert.ext.i.i.i27.i
  %i.bt = lshr i128 %.sroa.03.0.insert.insert.i.i.i28.i, 1
  %.sroa.0.0.extract.trunc.i.i.i29.i = trunc i128 %i.bt to i64
  %.sroa.4.0.extract.shift.i.i.i30.i = lshr i64 %i.bq, 1
  %i.bu = or disjoint i64 %.sroa.4.0.extract.shift.i.i.i30.i, -9223372036854775808
  br label %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit

bb.l:                                             ; preds = %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i
  %.not14.i.i.i = icmp eq i64 %.sroa.25.8.copyload.i, %i.bc
  br i1 %.not14.i.i.i, label %bb.m, label %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i

bb.m:                                             ; preds = %bb.l
  %.not14.1.i.i.i = icmp eq i64 %.sroa.16.8.copyload.i, %i.bb
  br i1 %.not14.1.i.i.i, label %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.thread.i, label %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i

_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i: ; preds = %bb.m, %bb.l
  %.lcssa18.i.i.i = phi i64 [ %.sroa.25.8.copyload.i, %bb.l ], [ %.sroa.16.8.copyload.i, %bb.m ]
  %.lcssa.i.i.i = phi i64 [ %i.bc, %bb.l ], [ %i.bb, %bb.m ]
  %.not67.i = icmp ult i64 %.lcssa18.i.i.i, %.lcssa.i.i.i
  br i1 %.not67.i, label %bb.n, label %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.thread.i

_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.thread.i: ; preds = %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i, %bb.m
  %.sroa.847.1.pre.i226242 = phi i32 [ %.sroa.847.1.pre.i, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i ], [ %.sroa.847.1.pre.i, %bb.m ], [ -126, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread ]
  %i.bv = phi i64 [ %i.bb, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i ], [ %i.bb, %bb.m ], [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread ]
  %.sroa.16.8.copyload.i228239 = phi i64 [ %.sroa.16.8.copyload.i, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i ], [ %i.bb, %bb.m ], [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread ]
  %i.bw = phi i64 [ %i.bc, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i ], [ %i.bc, %bb.m ], [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread ]
  %.sroa.25.8.copyload.i230237 = phi i64 [ %.sroa.25.8.copyload.i, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i ], [ %i.bc, %bb.m ], [ -9223372036854775808, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i.thread ]
  %i.bx = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.sroa.16.8.copyload.i228239, i64 %i.bv) ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 1
  %.neg.i.i = sext i1 %i.by to i64
  %i.bz = sub i64 %.sroa.25.8.copyload.i230237, %i.bw
  %i.ca = add i64 %i.bz, %.neg.i.i
  br label %bb.o

bb.n:                                             ; preds = %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i
  %i.cb = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bb, i64 %.sroa.16.8.copyload.i) ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  %.neg.i35.i = sext i1 %i.cc to i64
  %i.cd = sub i64 %i.bc, %.sroa.25.8.copyload.i
  %i.ce = add i64 %i.cd, %.neg.i35.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.thread.i
  %.sroa.847.1.i = phi i32 [ %.sroa.847.1.pre.i226242, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.thread.i ], [ %.sroa.847.170.i, %bb.n ] ; 2 uses
  %.pn.i = phi { i64, i1 } [ %i.bx, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.thread.i ], [ %i.cb, %bb.n ]
  %.sroa.25.1.i = phi i64 [ %i.ca, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.thread.i ], [ %i.ce, %bb.n ] ; 3 uses
  %.sroa.0.0.i = phi i8 [ 0, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.thread.i ], [ 1, %bb.n ] ; 2 uses
  %.sroa.16.1.i = extractvalue { i64, i1 } %.pn.i, 0 ; 3 uses
  %.not13.i.i.i = icmp eq i64 %.sroa.16.1.i, 0
  %.not13.1.i.i.i = icmp eq i64 %.sroa.25.1.i, 0  ; 2 uses
  %or.cond.i.i.i = select i1 %.not13.i.i.i, i1 %.not13.1.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit, label %_ZN19__llvm_libc_apfloat3cpp11countl_zeroINS_6BigIntILm128ELb0EmEEEENS0_9enable_ifIX12is_big_int_vIT_EEiE4typeERKS5_.exit.i.i

_ZN19__llvm_libc_apfloat3cpp11countl_zeroINS_6BigIntILm128ELb0EmEEEENS0_9enable_ifIX12is_big_int_vIT_EEiE4typeERKS5_.exit.i.i: ; preds = %bb.o
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.25.1.i, i1 false)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.16.1.i, i1 false)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = select i1 %.not13.1.i.i.i, i32 %i.ci, i32 0
  %.lcssa.i.i.i.i10 = add nuw nsw i32 %i.cj, %i.cg ; 2 uses
  %i.ck = sub nsw i32 %.sroa.847.1.i, %.lcssa.i.i.i.i10
  %.sroa.2.0.insert.ext.i.i.i38.i = zext i64 %.sroa.25.1.i to i128
  %.sroa.2.0.insert.shift.i.i.i39.i = shl nuw i128 %.sroa.2.0.insert.ext.i.i.i38.i, 64
  %.sroa.03.0.insert.ext.i.i.i40.i = zext i64 %.sroa.16.1.i to i128
  %.sroa.03.0.insert.insert.i.i.i41.i = or disjoint i128 %.sroa.2.0.insert.shift.i.i.i39.i, %.sroa.03.0.insert.ext.i.i.i40.i
  %i.cl = zext nneg i32 %.lcssa.i.i.i.i10 to i128
  %i.cm = shl i128 %.sroa.03.0.insert.insert.i.i.i41.i, %i.cl ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i42.i = trunc i128 %i.cm to i64
  %.sroa.4.0.extract.shift.i.i.i43.i = lshr i128 %i.cm, 64
  %.sroa.4.0.extract.trunc.i.i.i44.i = trunc nuw i128 %.sroa.4.0.extract.shift.i.i.i43.i to i64
  br label %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit

_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit: ; preds = %bb.d, %bb.o, %_ZN19__llvm_libc_apfloat3cpp11countl_zeroINS_6BigIntILm128ELb0EmEEEENS0_9enable_ifIX12is_big_int_vIT_EEiE4typeERKS5_.exit.i.i, %bb.j, %bb.k
  %.sroa.13183.0 = phi i64 [ %i.bu, %bb.k ], [ %.sroa.4.0.extract.trunc.i.i.i44.i, %_ZN19__llvm_libc_apfloat3cpp11countl_zeroINS_6BigIntILm128ELb0EmEEEENS0_9enable_ifIX12is_big_int_vIT_EEiE4typeERKS5_.exit.i.i ], [ %i.bq, %bb.j ], [ 0, %bb.o ], [ -9223372036854775808, %bb.d ] ; 2 uses
  %.sroa.10181.0 = phi i64 [ %.sroa.0.0.extract.trunc.i.i.i29.i, %bb.k ], [ %.sroa.0.0.extract.trunc.i.i.i42.i, %_ZN19__llvm_libc_apfloat3cpp11countl_zeroINS_6BigIntILm128ELb0EmEEEENS0_9enable_ifIX12is_big_int_vIT_EEiE4typeERKS5_.exit.i.i ], [ %i.bj, %bb.j ], [ 0, %bb.o ], [ 0, %bb.d ] ; 2 uses
  %.sroa.7179.0 = phi i32 [ %i.bs, %bb.k ], [ %i.ck, %_ZN19__llvm_libc_apfloat3cpp11countl_zeroINS_6BigIntILm128ELb0EmEEEENS0_9enable_ifIX12is_big_int_vIT_EEiE4typeERKS5_.exit.i.i ], [ %.sroa.847.1.pre.i225, %bb.j ], [ %.sroa.847.1.i, %bb.o ], [ -126, %bb.d ]
  %.sroa.0176.0 = phi i8 [ 0, %bb.k ], [ %.sroa.0.0.i, %_ZN19__llvm_libc_apfloat3cpp11countl_zeroINS_6BigIntILm128ELb0EmEEEENS0_9enable_ifIX12is_big_int_vIT_EEiE4typeERKS5_.exit.i.i ], [ 0, %bb.j ], [ %.sroa.0.0.i, %bb.o ], [ 0, %bb.d ]
  %i.cn = xor i8 %.sroa.0176.0, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.co = add nsw i32 %.sroa.7179.0, %.sroa.5195.0 ; 2 uses
  %i.cp = add nsw i32 %i.co, 128                  ; 3 uses
  br i1 %.not13.1.i12.i, label %_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_.exit32, label %bb.p

bb.p:                                             ; preds = %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit
  %.not13.i10.i22 = icmp eq i64 %.sroa.10181.0, 0
  %.not13.1.i12.i24 = icmp eq i64 %.sroa.13183.0, 0
  %or.cond.i13.i25 = select i1 %.not13.i10.i22, i1 %.not13.1.i12.i24, i1 false
  br i1 %or.cond.i13.i25, label %_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_.exit32, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = zext i64 %.sroa.13183.0 to i128
  %i.cr = zext i64 %storemerge.i to i128          ; 2 uses
  %8 = zext i64 %.sroa.10181.0 to i128
  %9 = mul nuw i128 %8, %i.cr
  %10 = lshr i128 %9, 64
  %11 = trunc nuw i128 %10 to i64
  %i.cs = mul nuw i128 %i.cq, %i.cr               ; 2 uses
  %i.ct = trunc i128 %i.cs to i64
  %i.cu = lshr i128 %i.cs, 64
  %i.cv = trunc nuw i128 %i.cu to i64
  %i.cw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 %i.ct) ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cw, 1
  %i.cy = extractvalue { i64, i1 } %i.cw, 0       ; 2 uses
  %i.cz = zext i1 %i.cx to i64
  %i.da = add nuw i64 %i.cz, %i.cv                ; 3 uses
  %i.db = icmp sgt i64 %i.da, -1
  br i1 %i.db, label %bb.r, label %_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_.exit32

bb.r:                                             ; preds = %bb.q
  %i.dc = add nsw i32 %i.co, 127
  %.sroa.2.0.insert.ext.i.i.i.i27 = zext nneg i64 %i.da to i128
  %.sroa.03.0.insert.ext.i.i.i.i28 = zext i64 %i.cy to i128
  %i.dd = shl nuw i128 %.sroa.2.0.insert.ext.i.i.i.i27, 65
  %i.de = shl nuw nsw i128 %.sroa.03.0.insert.ext.i.i.i.i28, 1 ; 2 uses
  %i.df = or disjoint i128 %i.dd, %i.de
  %.sroa.0.0.extract.trunc.i.i.i.i29 = trunc i128 %i.de to i64
  %.sroa.4.0.extract.shift.i.i.i.i30 = lshr i128 %i.df, 64
  %.sroa.4.0.extract.trunc.i.i.i.i31 = trunc nuw i128 %.sroa.4.0.extract.shift.i.i.i.i30 to i64
  br label %_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_.exit32

_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_.exit32: ; preds = %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit, %bb.p, %bb.q, %bb.r
  %.sroa.9.0 = phi i64 [ %i.cy, %bb.q ], [ %.sroa.0.0.extract.trunc.i.i.i.i29, %bb.r ], [ 0, %bb.p ], [ 0, %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit ] ; 4 uses
  %.sroa.15.0 = phi i64 [ %i.da, %bb.q ], [ %.sroa.4.0.extract.trunc.i.i.i.i31, %bb.r ], [ 0, %bb.p ], [ 0, %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit ] ; 4 uses
  %.sroa.5187.0 = phi i32 [ %i.cp, %bb.q ], [ %i.dc, %bb.r ], [ %i.cp, %bb.p ], [ %i.cp, %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit ] ; 2 uses
  %i.dg = add nsw i32 %.sroa.5187.0, %i.w         ; 2 uses
  %i.dh = add nsw i32 %i.dg, 128                  ; 3 uses
  br i1 %or.cond.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_.exit32
  %.not13.i10.i39 = icmp eq i64 %.sroa.9.0, 0
  %.not13.1.i12.i41 = icmp eq i64 %.sroa.15.0, 0
  %or.cond.i13.i42 = select i1 %.not13.i10.i39, i1 %.not13.1.i12.i41, i1 false
  br i1 %or.cond.i13.i42, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = zext i64 %i.aa to i128
  %i.dj = zext i64 %.sroa.15.0 to i128            ; 2 uses
  %i.dk = mul nuw i128 %i.dj, %i.di               ; 2 uses
  %i.dl = trunc i128 %i.dk to i64
  %i.dm = lshr i128 %i.dk, 64
  %i.dn = trunc nuw i128 %i.dm to i64
  %i.do = zext i64 %i.ab to i128                  ; 2 uses
  %i.dp = zext i64 %.sroa.9.0 to i128
  %i.dq = mul nuw i128 %i.dp, %i.do               ; 2 uses
  %i.dr = trunc i128 %i.dq to i64
  %i.ds = lshr i128 %i.dq, 64
  %i.dt = trunc nuw i128 %i.ds to i64
  %i.du = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dl, i64 %i.dr)
  %i.dv = extractvalue { i64, i1 } %i.du, 1
  %i.dw = zext i1 %i.dv to i64
  %i.dx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dn, i64 %i.dt) ; 2 uses
  %i.dy = extractvalue { i64, i1 } %i.dx, 1
  %i.dz = extractvalue { i64, i1 } %i.dx, 0
  %i.ea = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dz, i64 %i.dw) ; 2 uses
  %i.eb = extractvalue { i64, i1 } %i.ea, 1
  %i.ec = extractvalue { i64, i1 } %i.ea, 0
  %i.ed = or i1 %i.dy, %i.eb
  %i.ee = zext i1 %i.ed to i64
  %i.ef = mul nuw i128 %i.dj, %i.do               ; 2 uses
  %i.eg = trunc i128 %i.ef to i64
  %i.eh = lshr i128 %i.ef, 64
  %i.ei = trunc nuw i128 %i.eh to i64
  %i.ej = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ec, i64 %i.eg) ; 2 uses
  %i.ek = extractvalue { i64, i1 } %i.ej, 1
  %i.el = extractvalue { i64, i1 } %i.ej, 0       ; 2 uses
  %i.em = zext i1 %i.ek to i64
  %i.en = add nuw i64 %i.ee, %i.ei
  %i.eo = add i64 %i.en, %i.em                    ; 3 uses
  %i.ep = icmp sgt i64 %i.eo, -1
  br i1 %i.ep, label %bb.u, label %.thread308

bb.u:                                             ; preds = %bb.t
  %i.eq = add nsw i32 %i.dg, 127
  %.sroa.2.0.insert.ext.i.i.i.i44 = zext nneg i64 %i.eo to i128
  %.sroa.03.0.insert.ext.i.i.i.i45 = zext i64 %i.el to i128
  %i.er = shl nuw i128 %.sroa.2.0.insert.ext.i.i.i.i44, 65
  %i.es = shl nuw nsw i128 %.sroa.03.0.insert.ext.i.i.i.i45, 1 ; 2 uses
  %i.et = or disjoint i128 %i.er, %i.es
  %.sroa.0.0.extract.trunc.i.i.i.i46 = trunc i128 %i.es to i64
  %.sroa.4.0.extract.shift.i.i.i.i47 = lshr i128 %i.et, 64
  %.sroa.4.0.extract.trunc.i.i.i.i48 = trunc nuw i128 %.sroa.4.0.extract.shift.i.i.i.i47 to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s, %_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_.exit32
  %.sroa.4.0 = phi i64 [ 0, %_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_.exit32 ], [ %.sroa.0.0.extract.trunc.i.i.i.i46, %bb.u ], [ 0, %bb.s ] ; 2 uses
  %.sroa.8.0 = phi i64 [ 0, %_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_.exit32 ], [ %.sroa.4.0.extract.trunc.i.i.i.i48, %bb.u ], [ 0, %bb.s ] ; 2 uses
  %.sroa.2160.0 = phi i32 [ %i.dh, %_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_.exit32 ], [ %i.eq, %bb.u ], [ %i.dh, %bb.s ]
  %.not13.i7.i55 = icmp eq i64 %.sroa.4.0, 0
  %.not13.1.i9.i57 = icmp eq i64 %.sroa.8.0, 0
  %or.cond.i10.i58 = select i1 %.not13.i7.i55, i1 %.not13.1.i9.i57, i1 false
  br i1 %or.cond.i10.i58, label %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit125, label %.thread308

.thread308:                                       ; preds = %bb.t, %bb.v
  %.sroa.2160.0317 = phi i32 [ %.sroa.2160.0, %bb.v ], [ %i.dh, %bb.t ] ; 9 uses
  %.sroa.8.0316 = phi i64 [ %.sroa.8.0, %bb.v ], [ %i.eo, %bb.t ] ; 4 uses
  %.sroa.4.0315 = phi i64 [ %.sroa.4.0, %bb.v ], [ %i.el, %bb.t ] ; 4 uses
  %i.eu = icmp slt i32 %.sroa.2160.0317, -126
  br i1 %i.eu, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.thread308
  %i.ev = icmp samesign ugt i32 %.sroa.2160.0317, -254
  br i1 %i.ev, label %bb.x, label %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread

bb.x:                                             ; preds = %bb.w
  %i.ew = sub nuw nsw i32 -126, %.sroa.2160.0317
  %.sroa.2.0.insert.ext.i.i.i.i118 = zext i64 %.sroa.8.0316 to i128
  %.sroa.2.0.insert.shift.i.i.i.i119 = shl nuw i128 %.sroa.2.0.insert.ext.i.i.i.i118, 64
  %.sroa.03.0.insert.ext.i.i.i.i120 = zext i64 %.sroa.4.0315 to i128
  %.sroa.03.0.insert.insert.i.i.i.i121 = or disjoint i128 %.sroa.2.0.insert.shift.i.i.i.i119, %.sroa.03.0.insert.ext.i.i.i.i120
  %i.ex = zext nneg i32 %i.ew to i128
  %i.ey = lshr i128 %.sroa.03.0.insert.insert.i.i.i.i121, %i.ex ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i122 = trunc i128 %i.ey to i64
  %.sroa.4.0.extract.shift.i.i.i.i123 = lshr i128 %i.ey, 64
  %.sroa.4.0.extract.trunc.i.i.i.i124 = trunc nuw nsw i128 %.sroa.4.0.extract.shift.i.i.i.i123 to i64
  br label %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59

bb.y:                                             ; preds = %.thread308
  %.not282 = icmp eq i32 %.sroa.2160.0317, -126
  br i1 %.not282, label %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ez = icmp slt i32 %.sroa.2160.0317, 2
  br i1 %i.ez, label %bb.aa, label %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59

bb.aa:                                            ; preds = %bb.z
  %i.fa = add nsw i32 %.sroa.2160.0317, 126
  %i.fb = zext nneg i32 %i.fa to i128             ; 2 uses
  %i.fc = lshr exact i128 -170141183460469231731687303715884105728, %i.fb
  %.sroa.0.0.extract.trunc.i.i.i18.i115 = trunc i128 %i.fc to i64
  %.sroa.4.0.extract.shift.i.i.i19.i116 = lshr i128 9223372036854775808, %i.fb
  %.sroa.4.0.extract.trunc.i.i.i20.i117 = trunc nuw nsw i128 %.sroa.4.0.extract.shift.i.i.i19.i116 to i64
  br label %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59

_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %.sroa.847.1.pre.i60 = phi i32 [ 0, %bb.z ], [ %.sroa.2160.0317, %bb.aa ], [ -126, %bb.y ], [ -126, %bb.x ] ; 3 uses
  %.sroa.847.170.i61 = phi i32 [ %.sroa.2160.0317, %bb.z ], [ %.sroa.2160.0317, %bb.aa ], [ -126, %bb.y ], [ -126, %bb.x ]
  %i.fd = phi i64 [ %.sroa.4.0315, %bb.z ], [ %.sroa.4.0315, %bb.aa ], [ %.sroa.4.0315, %bb.y ], [ %.sroa.0.0.extract.trunc.i.i.i.i122, %bb.x ] ; 7 uses
  %.sroa.16.8.copyload.i62 = phi i64 [ 0, %bb.z ], [ %.sroa.0.0.extract.trunc.i.i.i18.i115, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.x ] ; 5 uses
  %i.fe = phi i64 [ %.sroa.8.0316, %bb.z ], [ %.sroa.8.0316, %bb.aa ], [ %.sroa.8.0316, %bb.y ], [ %.sroa.4.0.extract.trunc.i.i.i.i124, %bb.x ] ; 7 uses
  %.sroa.25.8.copyload.i63 = phi i64 [ 0, %bb.z ], [ %.sroa.4.0.extract.trunc.i.i.i20.i117, %bb.aa ], [ -9223372036854775808, %bb.y ], [ -9223372036854775808, %bb.x ] ; 5 uses
  %i.ff = icmp eq i8 %i.cn, %i.u
  br i1 %i.ff, label %bb.ab, label %bb.ad

_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread: ; preds = %bb.w
  %i.fg = icmp eq i8 %i.cn, %i.u
  br i1 %i.fg, label %bb.ab, label %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.thread.i71

bb.ab:                                            ; preds = %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59
  %.sroa.25.8.copyload.i63261 = phi i64 [ -9223372036854775808, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread ], [ %.sroa.25.8.copyload.i63, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59 ]
  %i.fh = phi i64 [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread ], [ %i.fe, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59 ]
  %.sroa.16.8.copyload.i62259 = phi i64 [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread ], [ %.sroa.16.8.copyload.i62, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59 ]
  %i.fi = phi i64 [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread ], [ %i.fd, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59 ]
  %.sroa.847.1.pre.i60255 = phi i32 [ -126, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread ], [ %.sroa.847.1.pre.i60, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59 ] ; 2 uses
  %i.fj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.sroa.16.8.copyload.i62259, i64 %i.fi) ; 2 uses
  %i.fk = extractvalue { i64, i1 } %i.fj, 1
  %i.fl = extractvalue { i64, i1 } %i.fj, 0       ; 2 uses
  %i.fm = zext i1 %i.fk to i64
  %i.fn = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.sroa.25.8.copyload.i63261, i64 %i.fh) ; 2 uses
  %i.fo = extractvalue { i64, i1 } %i.fn, 1
  %i.fp = extractvalue { i64, i1 } %i.fn, 0
  %i.fq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fp, i64 %i.fm) ; 2 uses
  %i.fr = extractvalue { i64, i1 } %i.fq, 1
  %i.fs = extractvalue { i64, i1 } %i.fq, 0       ; 3 uses
  %i.ft = or i1 %i.fo, %i.fr
  br i1 %i.ft, label %bb.ac, label %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit125

bb.ac:                                            ; preds = %bb.ab
  %i.fu = add nsw i32 %.sroa.847.1.pre.i60255, 1
  %.sroa.2.0.insert.ext.i.i.i25.i105 = zext i64 %i.fs to i128
  %.sroa.2.0.insert.shift.i.i.i26.i106 = shl nuw i128 %.sroa.2.0.insert.ext.i.i.i25.i105, 64
  %.sroa.03.0.insert.ext.i.i.i27.i107 = zext i64 %i.fl to i128
  %.sroa.03.0.insert.insert.i.i.i28.i108 = or disjoint i128 %.sroa.2.0.insert.shift.i.i.i26.i106, %.sroa.03.0.insert.ext.i.i.i27.i107
  %i.fv = lshr i128 %.sroa.03.0.insert.insert.i.i.i28.i108, 1
  %.sroa.0.0.extract.trunc.i.i.i29.i109 = trunc i128 %i.fv to i64
  %.sroa.4.0.extract.shift.i.i.i30.i110 = lshr i64 %i.fs, 1
  %i.fw = or disjoint i64 %.sroa.4.0.extract.shift.i.i.i30.i110, -9223372036854775808
  br label %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit125

bb.ad:                                            ; preds = %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59
  %.not14.i.i.i66 = icmp eq i64 %.sroa.25.8.copyload.i63, %i.fe
  br i1 %.not14.i.i.i66, label %bb.ae, label %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i67

bb.ae:                                            ; preds = %bb.ad
  %.not14.1.i.i.i98 = icmp eq i64 %.sroa.16.8.copyload.i62, %i.fd
  br i1 %.not14.1.i.i.i98, label %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.thread.i71, label %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i67

_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i67: ; preds = %bb.ae, %bb.ad
  %.lcssa18.i.i.i68 = phi i64 [ %.sroa.25.8.copyload.i63, %bb.ad ], [ %.sroa.16.8.copyload.i62, %bb.ae ]
  %.lcssa.i.i.i69 = phi i64 [ %i.fe, %bb.ad ], [ %i.fd, %bb.ae ]
  %.not67.i70 = icmp ult i64 %.lcssa18.i.i.i68, %.lcssa.i.i.i69
  br i1 %.not67.i70, label %bb.af, label %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.thread.i71

_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.thread.i71: ; preds = %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i67, %bb.ae
  %.sroa.847.1.pre.i60256273 = phi i32 [ %.sroa.847.1.pre.i60, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i67 ], [ %.sroa.847.1.pre.i60, %bb.ae ], [ -126, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread ]
  %i.fx = phi i64 [ %i.fd, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i67 ], [ %i.fd, %bb.ae ], [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread ]
  %.sroa.16.8.copyload.i62258270 = phi i64 [ %.sroa.16.8.copyload.i62, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i67 ], [ %i.fd, %bb.ae ], [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread ]
  %i.fy = phi i64 [ %i.fe, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i67 ], [ %i.fe, %bb.ae ], [ 0, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread ]
  %.sroa.25.8.copyload.i63260268 = phi i64 [ %.sroa.25.8.copyload.i63, %_ZN19__llvm_libc_apfloatgeERKNS_6BigIntILm128ELb0EmEES3_.exit.i67 ], [ %i.fe, %bb.ae ], [ -9223372036854775808, %_ZN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE11shift_rightEj.exit.i59.thread ]
  %i.fz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.sroa.16.8.copyload.i62258270, i64 %i.fx) ; 2 uses
  %i.ga = extractvalue { i64, i1 } %i.fz, 1
  %.neg.i.i72 = sext i1 %i.ga to i64
end_hunk_0
begin_hunk_1_@_ZN19__llvm_libc_apfloat4math12exp_internal16poly_approx_f128ERKNS_6fputil11DyadicFloatILm128EEE:bb.a
  %i.vd = shl nuw i128 %.sroa.2.0.insert.ext.i.i.i.i.i13.i, 65
  %i.ve = shl nuw nsw i128 %.sroa.03.0.insert.ext.i.i.i.i.i14.i, 1 ; 2 uses
  %i.vf = or disjoint i128 %i.vd, %i.ve
  %.sroa.0.0.extract.trunc.i.i.i.i.i15.i = trunc i128 %i.ve to i64
  %.sroa.4.0.extract.shift.i.i.i.i.i16.i = lshr i128 %i.vf, 64
  %.sroa.4.0.extract.trunc.i.i.i.i.i17.i = trunc nuw i128 %.sroa.4.0.extract.shift.i.i.i.i.i16.i to i64
  store i64 %.sroa.0.0.extract.trunc.i.i.i.i.i15.i, ptr %i.tp, align 8, !alias.scope !775, !noalias !776
  store i64 %.sroa.4.0.extract.trunc.i.i.i.i.i17.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !46, !alias.scope !775, !noalias !776
  br label %_ZN19__llvm_libc_apfloat6fputilL8polyevalINS0_11DyadicFloatILm128EEEJS3_S3_S3_S3_S3_S3_S3_EEENS_3cpp9enable_ifIXgtstT_Lm8EES6_E4typeERKS6_SA_DpRKT0_.exit

bb.cj:                                            ; preds = %bb.cg, %_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tp, i8 0, i64 16, i1 false), !alias.scope !775, !noalias !776
  br label %_ZN19__llvm_libc_apfloat6fputilL8polyevalINS0_11DyadicFloatILm128EEEJS3_S3_S3_S3_S3_S3_S3_EEENS_3cpp9enable_ifIXgtstT_Lm8EES6_E4typeERKS6_SA_DpRKT0_.exit

_ZN19__llvm_libc_apfloat6fputilL8polyevalINS0_11DyadicFloatILm128EEEJS3_S3_S3_S3_S3_S3_S3_EEENS_3cpp9enable_ifIXgtstT_Lm8EES6_E4typeERKS6_SA_DpRKT0_.exit: ; preds = %bb.ch, %bb.ci, %bb.cj
  tail call void @_ZN19__llvm_libc_apfloat6fputil9quick_addILm128EEENS0_11DyadicFloatIXT_EEES3_S3_(ptr dead_on_unwind writable sret(%"struct.__llvm_libc_apfloat::fputil::DyadicFloat") align 8 %0, ptr noundef nonnull byval(%"struct.__llvm_libc_apfloat::fputil::DyadicFloat") align 8 @__const._ZN19__llvm_libc_apfloat4math12exp_internal16poly_approx_f128ERKNS_6fputil11DyadicFloatILm128EEE.COEFFS_128, ptr noundef nonnull byval(%"struct.__llvm_libc_apfloat::fputil::DyadicFloat") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !774
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZNK19__llvm_libc_apfloat6fputil11DyadicFloatILm128EE7fast_asIdLb0EvEET_v(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45   ; 4 uses
  %.not13.i = icmp eq i64 %i.c, 0
  %.010.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %.010.ptr.1.i, align 8     ; 4 uses
  %.not13.1.i = icmp eq i64 %i.d, 0
  %or.cond.i = select i1 %.not13.i, i1 %.not13.1.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.041.0.copyload = load i8, ptr %0, align 8, !tbaa !38
  %i.e = zext i8 %.sroa.041.0.copyload to i64
  %spec.select.i = shl i64 %i.e, 63
  %i.f = bitcast i64 %spec.select.i to double
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43   ; 4 uses
  %i.i = icmp sgt i32 %i.h, 896
  br i1 %i.i, label %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit, label %bb.d

_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit: ; preds = %bb.c
  %.sroa.033.0.copyload = load i8, ptr %0, align 8, !tbaa !38
  %i.j = trunc nuw i8 %.sroa.033.0.copyload to i1
  %i.k = select i1 %i.j, double f0xFFE0000000000000, double f0x7FE0000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile double 2.000000e+00, ptr %i.a, align 8, !tbaa !113
  %.0..0..0..0.32 = load volatile double, ptr %i.a, align 8, !tbaa !113
  %i.l = fmul double %i.k, %.0..0..0..0.32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.h, 1150
  %i.n = icmp slt i32 %i.h, -1149                 ; 3 uses
  %i.o = sub nsw i32 -1074, %i.h
  %spec.select = select i1 %i.n, i32 %i.o, i32 75 ; 3 uses
  %spec.select50 = select i1 %i.n, i32 1023, i32 %i.m ; 5 uses
  %i.p = add nsw i32 %spec.select50, -54
  %i.q = icmp ugt i32 %spec.select, 127
  br i1 %i.q, label %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.2.0.insert.ext.i.i = zext i64 %i.d to i128
  %.sroa.2.0.insert.shift.i.i = shl nuw i128 %.sroa.2.0.insert.ext.i.i, 64
  %.sroa.03.0.insert.ext.i.i = zext i64 %i.c to i128
  %.sroa.03.0.insert.insert.i.i = or disjoint i128 %.sroa.2.0.insert.shift.i.i, %.sroa.03.0.insert.ext.i.i
  %i.r = zext nneg i32 %spec.select to i128
  %i.s = lshr i128 %.sroa.03.0.insert.insert.i.i, %i.r
  %.sroa.0.0.extract.trunc.i.i = trunc i128 %i.s to i64
  %i.t = and i64 %.sroa.0.0.extract.trunc.i.i, 4503599627370495
  br label %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit53

_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit53: ; preds = %bb.d, %bb.e
  %.sroa.0108.0 = phi i64 [ %i.t, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.sroa.019.0.copyload = load i8, ptr %0, align 8, !tbaa !38
  %i.u = zext i32 %spec.select50 to i64
  %i.v = trunc nuw i8 %.sroa.019.0.copyload to i1 ; 3 uses
  %i.w = shl i64 %i.u, 52                         ; 3 uses
  %i.x = or disjoint i64 %i.w, %.sroa.0108.0
  %i.y = or i64 %i.x, -9223372036854775808
  %i.z = and i64 %i.w, 9218868437227405312
  %i.aa = or disjoint i64 %.sroa.0108.0, %i.z
  %.0.i.i52 = select i1 %i.v, i64 %i.y, i64 %i.aa
  %i.ab = bitcast i64 %.0.i.i52 to double         ; 2 uses
  %i.ac = add nsw i32 %spec.select, -1            ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, 127                 ; 2 uses
  %i.ae = zext nneg i32 %i.ac to i128
  %i.af = shl nuw i128 1, %i.ae                   ; 2 uses
  %.sroa.0.0.extract.trunc.i.i62 = trunc i128 %i.af to i64
  %.sroa.4.0.extract.shift.i.i63 = lshr i128 %i.af, 64
  %.sroa.4.0.extract.trunc.i.i64 = trunc nuw i128 %.sroa.4.0.extract.shift.i.i63 to i64
  %.sroa.7.0 = select i1 %i.ad, i64 0, i64 %.sroa.4.0.extract.trunc.i.i64 ; 2 uses
  %.sroa.0104.0 = select i1 %i.ad, i64 0, i64 %.sroa.0.0.extract.trunc.i.i62 ; 2 uses
  %i.ag = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.sroa.0104.0, i64 1) ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  %i.ai = extractvalue { i64, i1 } %i.ag, 0
  %.neg.i = sext i1 %i.ah to i64
  %i.aj = add i64 %.sroa.7.0, %.neg.i
  %i.ak = and i64 %.sroa.0104.0, %i.c
  %i.al = and i64 %.sroa.7.0, %i.d
  %.not13.i70 = icmp eq i64 %i.ak, 0
  %.not13.1.i72 = icmp eq i64 %i.al, 0
  %or.cond.i73 = select i1 %.not13.i70, i1 %.not13.1.i72, i1 false
  %i.am = and i64 %i.ai, %i.c
  %i.an = and i64 %i.aj, %i.d
  %.not13.i76 = icmp ne i64 %i.am, 0
  %.not13.1.i78 = icmp ne i64 %i.an, 0
  %or.cond.i79.not = select i1 %.not13.i76, i1 true, i1 %.not13.1.i78
  %i.ao = select i1 %or.cond.i73, i32 0, i32 2
  %i.ap = zext i1 %or.cond.i79.not to i32
  %i.aq = or disjoint i32 %i.ao, %i.ap            ; 2 uses
  %i.ar = icmp slt i32 %spec.select50, 55
  br i1 %i.ar, label %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit85, label %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit88

_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit85: ; preds = %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit53
  %i.as = sub nsw i32 1078, %spec.select50
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl i64 %i.at, 52
  %i.av = and i64 %i.au, 9218868437227405312
  %i.aw = bitcast i64 %i.av to double
  %i.ax = add nsw i32 %spec.select50, 968
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl i64 %i.ay, 52
  %i.ba = and i64 %i.az, 9218868437227405312
  %i.bb = bitcast i64 %i.ba to double
  %i.bc = select i1 %i.v, double f0x8010000000000000, double f0x0010000000000000
  %i.bd = uitofp nneg i32 %i.aq to double
  %i.be = fmul double %i.aw, %i.ab
  %i.bf = tail call noundef double @llvm.fmuladd.f64(double %i.bc, double %i.bd, double %i.be)
  %i.bg = fmul double %i.bf, %i.bb
  br label %bb.g

_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit88: ; preds = %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit53
  %i.bh = zext nneg i32 %i.p to i64
  %i.bi = shl nuw nsw i64 %i.bh, 52               ; 2 uses
  %i.bj = or disjoint i64 %i.bi, -9223372036854775808
  %.0.i.i87 = select i1 %i.v, i64 %i.bj, i64 %i.bi
  %i.bk = bitcast i64 %.0.i.i87 to double
  %i.bl = uitofp nneg i32 %i.aq to double
  %i.bm = tail call noundef double @llvm.fmuladd.f64(double %i.bk, double %i.bl, double %i.ab) ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit88
  %i.bn = bitcast double %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.w
  %i.bp = bitcast i64 %i.bo to double
  br label %bb.g

bb.g:                                             ; preds = %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit85, %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit88, %bb.f, %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit, %bb.b
  %.3 = phi double [ %i.f, %bb.b ], [ %i.l, %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit ], [ %i.bg, %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit85 ], [ %i.bp, %bb.f ], [ %i.bm, %_ZN19__llvm_libc_apfloat6fputil8internal9FPRepImplILNS0_6FPTypeE2ENS0_6FPBitsIdEEE12create_valueENS_4SignEmm.exit88 ]
  ret double %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.d, i64 noundef %i.c, i64 noundef 1) #29
  %i.e = load ptr, ptr %0, align 8, !tbaa !95
  %i.f = load i64, ptr %i.a, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 %1, ptr %i.g, align 1
  %i.h = load i64, ptr %i.a, align 8, !tbaa !93
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !93
  ret void
}

declare void @_ZNK4llvm5APInt7ProfileERNS_16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #9

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { builtin nounwind allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!29, !30}
!llvm.ident = !{!31}
!llvm.errno.tbaa = !{!36}

!0 = distinct !{!0, !70}
!1 = distinct !{!1, !70}
!2 = distinct !{!2, !70}
!3 = distinct !{!3, !70}
!4 = distinct !{!4, !70}
!5 = distinct !{!5, !70}
!6 = distinct !{!6, !70}
!7 = distinct !{!7, !70}
!8 = distinct !{null, null}
!9 = distinct !{null, null}
!10 = distinct !{null, null}
!11 = distinct !{null, null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{null, null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{ptr @_ZN4llvm6detail13DoubleAPFloataSERKS1_, null}
!19 = distinct !{ptr @_ZN4llvm6detail13DoubleAPFloataSERKS1_, null, null}
!20 = distinct !{ptr @_ZN4llvm6detail13DoubleAPFloataSERKS1_, null}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{null}
!28 = distinct !{null, null}
!29 = !{i32 8, !"PIC Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 2}
!31 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!32 = !{!"Simple C++ TBAA"}
!33 = !{!"omnipotent char", !32, i64 0}
!34 = !{!"int", !33, i64 0}
!35 = !{!"__libc_errno", !34, i64 0}
!36 = !{!35, !34, i64 0}
!37 = !{!"bool", !33, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"_ZTSN19__llvm_libc_apfloat4SignE", !37, i64 0}
!40 = !{!"_ZTSN19__llvm_libc_apfloat3cpp5arrayImLm2EEE", !33, i64 0}
!41 = !{!"_ZTSN19__llvm_libc_apfloat6BigIntILm128ELb0EmEE", !40, i64 0}
!42 = !{!"_ZTSN19__llvm_libc_apfloat6fputil11DyadicFloatILm128EEE", !39, i64 0, !34, i64 4, !41, i64 8}
!43 = !{!42, !34, i64 4}
!44 = !{!"long", !33, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!33, !33, i64 0}
!47 = !{!34, !34, i64 0}
!48 = !{!"_ZTSN4llvm20fltNonfiniteBehaviorE", !33, i64 0}
!49 = !{!"_ZTSN4llvm14fltNanEncodingE", !33, i64 0}
!50 = !{!"_ZTSN4llvm12fltSemanticsE", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !48, i64 16, !49, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !37, i64 28}
!51 = !{!50, !34, i64 0}
!52 = !{!50, !34, i64 4}
!53 = !{!50, !34, i64 8}
!54 = !{!50, !34, i64 12}
!55 = !{!50, !37, i64 24}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!50, !37, i64 25}
!59 = !{!50, !48, i64 16}
!60 = !{!"any pointer", !33, i64 0}
!61 = !{!"p1 _ZTSN4llvm12fltSemanticsE", !60, i64 0}
!62 = !{!"_ZTSN4llvm11APFloatBase11fltCategoryE", !33, i64 0}
!63 = !{!"_ZTSN4llvm6detail9IEEEFloatE", !61, i64 0, !33, i64 8, !34, i64 16, !62, i64 20, !34, i64 20}
!64 = !{!63, !61, i64 0}
!65 = !{!63, !34, i64 16}
!66 = !{!50, !49, i64 20}
!67 = !{!"_ZTSN4llvm5APIntE", !33, i64 0, !34, i64 8}
!68 = !{!67, !34, i64 8}
!69 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!50, !37, i64 27}
!75 = !{!48, !48, i64 0}
!76 = !{!49, !49, i64 0}
!77 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 8, i64 4, !47, i64 12, i64 4, !47, i64 16, i64 4, !75, i64 20, i64 4, !76, i64 24, i64 1, !38, i64 25, i64 1, !38, i64 26, i64 1, !38, i64 27, i64 1, !38, i64 28, i64 1, !38}
!78 = !{!"_ZTSN4llvm5Twine8NodeKindE", !33, i64 0}
!79 = !{!"_ZTSN4llvm5TwineE", !33, i64 0, !33, i64 16, !78, i64 32, !78, i64 33}
!80 = !{!79, !78, i64 33}
!81 = !{!79, !78, i64 32}
!82 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !60, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"short", !33, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!"_ZTSN4llvm11APFloatBase8opStatusE", !33, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!"_ZTSN4llvm5ErrorE", !82, i64 0}
!89 = !{!88, !82, i64 0}
!90 = !{!"llvm.loop.peeled.count", i32 1}
!91 = !{ptr @_ZN4llvm6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE}
!92 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !60, i64 0, !44, i64 8, !44, i64 16}
!93 = !{!92, !44, i64 8}
!94 = !{!92, !44, i64 16}
!95 = !{!92, !60, i64 0}
!96 = !{!"p1 _ZTSN4llvm7APFloatE", !60, i64 0}
!97 = !{!"_ZTSN4llvm6detail13DoubleAPFloatE", !61, i64 0, !96, i64 8}
!98 = !{!97, !61, i64 0}
!99 = !{!97, !96, i64 8}
!100 = !{ptr @_ZN4llvm7APFloat10changeSignEv}
!101 = !{ptr @_ZN4llvm6detail13DoubleAPFloat3addERKS1_NS_12RoundingModeE}
!102 = !{ptr @_ZN4llvm6detail13DoubleAPFloat8makeZeroEb}
!103 = !{ptr @_ZN4llvm6detail13DoubleAPFloataSERKS1_}
!104 = !{ptr @_ZNK4llvm6detail13DoubleAPFloat7compareERKS1_}
!105 = !{ptr @_ZN4llvm7APFloat17convertFromStringENS_9StringRefENS_12RoundingModeE}
!106 = !{!"_ZTSN4llvm6APSIntE", !67, i64 0, !37, i64 12}
!107 = !{!106, !37, i64 12}
!108 = !{!"vtable pointer", !32, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!"float", !33, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!"double", !33, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!"_ZTSN19__llvm_libc_apfloat6fputil12TripleDoubleE", !112, i64 0, !112, i64 8, !112, i64 16}
!115 = !{!114, !112, i64 8}
!116 = !{!114, !112, i64 16}
!117 = !{!"_ZTSN19__llvm_libc_apfloat10NumberPairIdEE", !112, i64 0, !112, i64 8}
!118 = !{!117, !112, i64 0}
!119 = !{!"p1 _ZTSSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EE", !60, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!122 = !{!121, !119, i64 8}
!123 = !{!121, !119, i64 16}
!124 = !{!121, !119, i64 0}
!125 = distinct !{!125, !"_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_"}
!126 = distinct !{!126, !125, !"_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_: argument 0"}
!127 = distinct !{!127, !"_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_"}
!128 = distinct !{!128, !127, !"_ZN19__llvm_libc_apfloat6fputil9quick_mulILm128EEENS0_11DyadicFloatIXT_EEERKS3_S5_: argument 0"}
!129 = !{!126}
!130 = !{!128}
!131 = !{i64 0, i64 1, !38, i64 4, i64 4, !47, i64 8, i64 16, !46}
!132 = !{!50, !37, i64 26}
!133 = distinct !{!133, !"_ZN4llvm5APInt7getZeroEj"}
!134 = distinct !{!134, !133, !"_ZN4llvm5APInt7getZeroEj: argument 0"}
!135 = distinct !{!135, !"_ZN4llvm5APInt10getAllOnesEj"}
!136 = distinct !{!136, !135, !"_ZN4llvm5APInt10getAllOnesEj: argument 0"}
!137 = distinct !{!137, !70, !71, !72}
!138 = distinct !{!138, !73}
!139 = distinct !{!139, !70, !71}
end_hunk_1
