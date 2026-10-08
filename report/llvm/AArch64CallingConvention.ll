Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64CallingConvention?download=true
inline.NumInlined: 2246
inline.NumDeleted: 261
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0
@_ZZN4llvm16CC_AArch64_AAPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9RegList14 = internal constant [8 x i16] [i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55], align 16
@_ZZN4llvm32CC_AArch64_Arm64EC_CFGuard_CheckEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1 = internal unnamed_addr constant [3 x i16] [i16 250, i16 249, i16 248], align 2
@_ZZN4llvm24CC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3 = internal unnamed_addr constant [4 x i16] [i16 80, i16 81, i16 82, i16 83], align 2
@_ZZN4llvm24CC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5 = internal unnamed_addr constant [4 x i16] [i16 176, i16 177, i16 178, i16 179], align 2
@_ZZN4llvm24CC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList7 = internal unnamed_addr constant [4 x i16] [i16 48, i16 49, i16 50, i16 51], align 2
@_ZZN4llvm25CC_AArch64_Arm64EC_VarArgEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2 = internal unnamed_addr constant [4 x i16] [i16 208, i16 209, i16 210, i16 211], align 2
@_ZZN4llvm25CC_AArch64_Arm64EC_VarArgEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3 = internal constant [4 x i16] [i16 239, i16 240, i16 241, i16 242], align 2
@_ZZN4llvm20CC_AArch64_DarwinPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3 = internal constant [8 x i16] [i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215], align 16
@_ZZN4llvm20CC_AArch64_DarwinPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4 = internal constant [7 x i16] [i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245], align 2
@_ZZN4llvm20CC_AArch64_DarwinPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE14ShadowRegList5 = internal constant [1 x i16] [i16 246], align 2
@_ZZN4llvm20CC_AArch64_DarwinPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList7 = internal constant [8 x i16] [i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246], align 16
@_ZZN4llvm20CC_AArch64_DarwinPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList8 = internal constant [8 x i16] [i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87], align 16
@_ZZN4llvm20CC_AArch64_DarwinPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList9 = internal constant [8 x i16] [i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87], align 16
@_ZZN4llvm20CC_AArch64_DarwinPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9RegList10 = internal constant [8 x i16] [i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183], align 16
@_ZZN4llvm20CC_AArch64_DarwinPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9RegList11 = internal constant [8 x i16] [i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55], align 16
@_ZZN4llvm20CC_AArch64_DarwinPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9RegList12 = internal constant [8 x i16] [i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55], align 16
@_ZZN4llvm20CC_AArch64_DarwinPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9RegList13 = internal constant [8 x i16] [i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151], align 16
@_ZZN4llvm14CC_AArch64_GHCEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1 = internal unnamed_addr constant [2 x i16] [i16 148, i16 149], align 2
@_ZZN4llvm14CC_AArch64_GHCEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2 = internal unnamed_addr constant [4 x i16] [i16 184, i16 185, i16 186, i16 187], align 2
@_ZZN4llvm14CC_AArch64_GHCEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3 = internal unnamed_addr constant [4 x i16] [i16 60, i16 61, i16 62, i16 63], align 2
@_ZZN4llvm14CC_AArch64_GHCEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4 = internal unnamed_addr constant [10 x i16] [i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 267], align 16
@_ZZN4llvm24CC_AArch64_Preserve_NoneEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1 = internal unnamed_addr constant [23 x i16] [i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 218, i16 219, i16 220, i16 221, i16 222, i16 217], align 16
@_ZZN4llvm24CC_AArch64_Preserve_NoneEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2 = internal unnamed_addr constant [23 x i16] [i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 267, i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 249, i16 250, i16 251, i16 252, i16 253, i16 248], align 16
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1 = internal unnamed_addr constant [2 x i16] [i16 239, i16 240], align 2
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2 = internal constant [8 x i16] [i16 268, i16 269, i16 270, i16 271, i16 272, i16 273, i16 274, i16 275], align 16
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3 = internal constant [4 x i16] [i16 112, i16 113, i16 114, i16 115], align 2
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4 = internal constant [8 x i16] [i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215], align 16
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5 = internal constant [4 x i16] [i16 239, i16 241, i16 243, i16 245], align 2
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList6 = internal constant [4 x i16] [i16 239, i16 240, i16 242, i16 244], align 2
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE14ShadowRegList7 = internal constant [1 x i16] [i16 246], align 2
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList9 = internal constant [8 x i16] [i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246], align 16
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9RegList10 = internal constant [8 x i16] [i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87], align 16
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9RegList11 = internal constant [8 x i16] [i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87], align 16
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9RegList12 = internal constant [8 x i16] [i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183], align 16
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9RegList13 = internal constant [8 x i16] [i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55], align 16
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9RegList14 = internal constant [8 x i16] [i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55], align 16
@_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9RegList15 = internal constant [8 x i16] [i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151], align 16
@_ZZN4llvm19RetCC_AArch64_AAPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1 = internal constant [8 x i16] [i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215], align 16
@_ZZN4llvm19RetCC_AArch64_AAPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2 = internal constant [8 x i16] [i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246], align 16
@_ZZN4llvm19RetCC_AArch64_AAPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4 = internal constant [8 x i16] [i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87], align 16
@_ZZN4llvm19RetCC_AArch64_AAPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5 = internal constant [8 x i16] [i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183], align 16
@_ZZN4llvm19RetCC_AArch64_AAPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList7 = internal constant [8 x i16] [i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55], align 16
@_ZZN4llvm19RetCC_AArch64_AAPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList8 = internal constant [8 x i16] [i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151], align 16
@_ZZN4llvm35RetCC_AArch64_Arm64EC_CFGuard_CheckEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1 = internal unnamed_addr constant [2 x i16] [i16 250, i16 248], align 2
@_ZZN4llvm27RetCC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2 = internal unnamed_addr constant [2 x i16] [i16 80, i16 81], align 2
@_ZZN4llvm27RetCC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3 = internal unnamed_addr constant [2 x i16] [i16 176, i16 177], align 2
@_ZZN4llvm27RetCC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4 = internal unnamed_addr constant [2 x i16] [i16 48, i16 49], align 2
@_ZZN4llvm27RetCC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5 = internal unnamed_addr constant [2 x i16] [i16 144, i16 145], align 2
@_ZZN4llvm27RetCC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList6 = internal unnamed_addr constant [3 x i16] [i16 216, i16 209, i16 208], align 2
@_ZZN4llvm27RetCC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList7 = internal unnamed_addr constant [3 x i16] [i16 247, i16 240, i16 239], align 2
@_ZZN4llvm27RetCC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList8 = internal constant [4 x i16] [i16 144, i16 145, i16 146, i16 147], align 2
@_ZL8XRegList = internal constant [8 x i16] [i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246], align 16
@_ZL8HRegList = internal constant [8 x i16] [i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87], align 16
@_ZL8SRegList = internal constant [8 x i16] [i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183], align 16
@_ZL8DRegList = internal constant [8 x i16] [i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55], align 16
@_ZL8QRegList = internal constant [8 x i16] [i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151], align 16
@_ZL8PRegList = internal constant [4 x i16] [i16 112, i16 113, i16 114, i16 115], align 2
@_ZL8ZRegList = internal constant [8 x i16] [i16 268, i16 269, i16 270, i16 271, i16 272, i16 273, i16 274, i16 275], align 16
@_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable = linkonce_odr local_unnamed_addr constant <{ [263 x { i64, i8 }], [9 x { i64, i8 }] }> <{ [263 x { i64, i8 }] [{ i64, i8 } zeroinitializer, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 3, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 5, i8 0 }, { i64, i8 } { i64 6, i8 0 }, { i64, i8 } { i64 7, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 24, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 40, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 56, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 768, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 1536, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 131072, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 1, i8 1 }, { i64, i8 } { i64 2, i8 1 }, { i64, i8 } { i64 4, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 2048, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 24, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 40, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 56, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 80, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 112, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 160, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 224, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 320, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 448, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } zeroinitializer, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }], [9 x { i64, i8 }] zeroinitializer }>, comdat, align 16
@.str.2 = private unnamed_addr constant [99 x i8] c"Cannot implicitly convert a scalable size to a fixed-width size in `TypeSize::operator ScalarTy()`\00", align 1
@switch.table._ZL23CC_AArch64_Custom_BlockRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE = private unnamed_addr constant [3 x ptr] [ptr @_ZL8HRegList, ptr @_ZL8HRegList, ptr @_ZL8SRegList], align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm16CC_AArch64_AAPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.llvm::MVT", align 2         ; 2 uses
  %9 = alloca %"class.llvm::MVT", align 2         ; 5 uses
  %10 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 6 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %14 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %15 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %16 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %17 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %18 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %19 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %20 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %21 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %22 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %23 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %24 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %25 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %26 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %27 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %28 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %29 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %30 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %31 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %32 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  store i16 %1, ptr %8, align 2
  store i16 %2, ptr %9, align 2
  store i64 %4, ptr %10, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %5, ptr %i.a, align 8
  %i.b = and i64 %4, 128
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread477, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %i.g = and i32 %i.f, 1073741824
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread477

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 254) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.h, align 8, !tbaa !14, !alias.scope !270
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.i, align 8, !tbaa !25, !alias.scope !270
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !alias.scope !270
  %i.l = and i8 %i.k, -128
  %i.m = trunc i32 %3 to i8
  %i.n = shl i8 %i.m, 1
  %i.o = and i8 %i.n, 126
  %i.p = or disjoint i8 %i.l, %i.o
  store i8 %i.p, ptr %i.j, align 4, !alias.scope !270
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.q, align 2, !tbaa !26, !alias.scope !270
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 %2, ptr %i.r, align 8, !tbaa !26, !alias.scope !270
  store i32 254, ptr %11, align 8, !tbaa !12, !alias.scope !270
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !59
  %.not.i.i = icmp ult i32 %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.e:                                             ; preds = %bb.c
  %i.y = zext i32 %i.v to i64
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.ab = load i32, ptr %i.u, align 8, !tbaa !58
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.u, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  br label %bb.bt

_ZN4llvm7CCState11AllocateRegEt.exit.thread477:   ; preds = %bb.b, %bb.a
  switch i16 %2, label %.thread486 [
    i16 271, label %.thread486.sink.split
    i16 134, label %bb.f
    i16 154, label %.critedge
    i16 136, label %.critedge
  ]

bb.f:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread477
  br label %.thread486.sink.split

.critedge:                                        ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread477, %_ZN4llvm7CCState11AllocateRegEt.exit.thread477
  br label %.thread486.sink.split

.thread486.sink.split:                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread477, %.critedge, %bb.f
  %.sink = phi i16 [ 71, %bb.f ], [ 94, %.critedge ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit.thread477 ] ; 2 uses
  store i16 %.sink, ptr %9, align 2, !tbaa !26
  br label %.thread486

.thread486:                                       ; preds = %.thread486.sink.split, %_ZN4llvm7CCState11AllocateRegEt.exit.thread477
  %.2 = phi i32 [ %3, %_ZN4llvm7CCState11AllocateRegEt.exit.thread477 ], [ 7, %.thread486.sink.split ] ; 2 uses
  %.sroa.0.0.copyload465 = phi i16 [ %2, %_ZN4llvm7CCState11AllocateRegEt.exit.thread477 ], [ %.sink, %.thread486.sink.split ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61, !nonnull !56, !align !57
  %i.af = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.ae) #7
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !93, !range !94, !noundef !56
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread486
  switch i16 %.sroa.0.0.copyload465, label %bb.h [
    i16 71, label %.critedge2
    i16 134, label %.critedge2
    i16 58, label %.critedge2
    i16 108, label %.critedge2
    i16 123, label %.critedge2
    i16 47, label %.critedge2
  ]

.critedge2:                                       ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  store i16 15, ptr %9, align 2, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge2, %.thread486
  %.3 = phi i32 [ 7, %.critedge2 ], [ %.2, %bb.g ], [ %.2, %.thread486 ] ; 4 uses
  %.sroa.0.0.copyload464 = phi i16 [ 15, %.critedge2 ], [ %.sroa.0.0.copyload465, %bb.g ], [ %.sroa.0.0.copyload465, %.thread486 ] ; 4 uses
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !61, !nonnull !56, !align !57
  %i.aj = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.ai) #7
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !93, !range !94, !noundef !56
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  switch i16 %.sroa.0.0.copyload464, label %bb.j [
    i16 94, label %.thread501.thread
    i16 73, label %.thread501.thread
    i16 48, label %.thread501.thread
    i16 62, label %.thread501.thread
    i16 112, label %.thread501.thread
    i16 124, label %.thread501.thread
  ]

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = and i64 %4, 8
  %33 = icmp eq i64 %i.am, 0
  %i.an = icmp ne i16 %.sroa.0.0.copyload464, 8
  %or.cond.not969 = or i1 %33, %i.an
  %34 = and i64 %4, 16
  %i.ao = icmp eq i64 %34, 0
  %or.cond = select i1 %or.cond.not969, i1 true, i1 %i.ao
  br i1 %or.cond, label %.thread501, label %bb.k

.thread501.thread:                                ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  store i16 17, ptr %9, align 2, !tbaa !26
  br label %_ZN4llvm7CCState11AllocateRegEt.exit193.thread515

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12 ; 2 uses
  %i.at = and i32 %i.as, 32768
  %.not.i.i188 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i188, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = and i32 %i.as, 65536
  %.not.i.i188.1 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i188.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread501

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.l, %bb.k
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.k ], [ 1, %bb.l ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !96 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.aw) #7
  %i.ax = zext i16 %i.aw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.ay, align 8, !tbaa !14, !alias.scope !271
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.az, align 8, !tbaa !25, !alias.scope !271
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 4, !alias.scope !271
  %i.bc = and i8 %i.bb, -128
  %i.bd = trunc i32 %.3 to i8
  %i.be = shl i8 %i.bd, 1
  %i.bf = and i8 %i.be, 126
  %i.bg = or disjoint i8 %i.bc, %i.bf
  store i8 %i.bg, ptr %i.ba, align 4, !alias.scope !271
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.bh, align 2, !tbaa !26, !alias.scope !271
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 8, ptr %i.bi, align 8, !tbaa !26, !alias.scope !271
  store i32 %i.ax, ptr %12, align 8, !tbaa !12, !alias.scope !271
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !58 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !59
  %.not.i.i189 = icmp ult i32 %i.bm, %i.bo
  br i1 %.not.i.i189, label %bb.n, label %bb.m, !prof !60

bb.m:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %bb.o

bb.n:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.bp = zext i32 %i.bm to i64
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !11
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.bs = load i32, ptr %i.bl, align 8, !tbaa !58
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bl, align 8, !tbaa !58
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  br label %bb.bt

.thread501:                                       ; preds = %bb.l, %bb.j
  %i.bu = and i64 %4, 16
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = icmp eq i16 %.sroa.0.0.copyload464, 8   ; 3 uses
  %or.cond824 = and i1 %i.bv, %i.bw
  br i1 %or.cond824, label %bb.p, label %_ZN4llvm7CCState11AllocateRegEt.exit193.thread515

bb.p:                                             ; preds = %.thread501
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !12
  %i.cb = and i32 %i.ca, 8388608
  %.not.i191 = icmp eq i32 %i.cb, 0
  br i1 %.not.i191, label %bb.q, label %_ZN4llvm7CCState11AllocateRegEt.exit193.thread515

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 247) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.cc, align 8, !tbaa !14, !alias.scope !272
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %0, ptr %i.cd, align 8, !tbaa !25, !alias.scope !272
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 4, !alias.scope !272
  %i.cg = and i8 %i.cf, -128
  %i.ch = trunc i32 %.3 to i8
  %i.ci = shl i8 %i.ch, 1
  %i.cj = and i8 %i.ci, 126
  %i.ck = or disjoint i8 %i.cg, %i.cj
  store i8 %i.ck, ptr %i.ce, align 4, !alias.scope !272
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %1, ptr %i.cl, align 2, !tbaa !26, !alias.scope !272
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i16 8, ptr %i.cm, align 8, !tbaa !26, !alias.scope !272
  store i32 247, ptr %13, align 8, !tbaa !12, !alias.scope !272
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !58 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !59
  %.not.i.i194 = icmp ult i32 %i.cq, %i.cs
  br i1 %.not.i.i194, label %bb.s, label %bb.r, !prof !60

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(26) %13)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit193

bb.s:                                             ; preds = %bb.q
  %i.ct = zext i32 %i.cq to i64
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !11
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  %i.cw = load i32, ptr %i.cp, align 8, !tbaa !58
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cp, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit193

_ZN4llvm7CCState11AllocateRegEt.exit193:          ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  br label %bb.bt

_ZN4llvm7CCState11AllocateRegEt.exit193.thread515: ; preds = %.thread501.thread, %bb.p, %.thread501
  %i.cy = phi i1 [ false, %.thread501.thread ], [ %i.bw, %bb.p ], [ %i.bw, %.thread501 ] ; 3 uses
  %.4493919 = phi i32 [ 7, %.thread501.thread ], [ %.3, %bb.p ], [ %.3, %.thread501 ] ; 22 uses
  %.sroa.0.0.copyload463499918 = phi i16 [ 17, %.thread501.thread ], [ 8, %bb.p ], [ %.sroa.0.0.copyload464, %.thread501 ] ; 14 uses
  %i.cz = and i64 %4, 32
  %.not882 = icmp eq i64 %i.cz, 0
  br i1 %.not882, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit193.thread515
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %7, i32 noundef %0, i16 %1, i16 %.sroa.0.0.copyload463499918, i32 noundef %.4493919, i32 noundef 8, i8 3, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %10) #7
  br label %bb.bt

bb.u:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit193.thread515
  %i.da = and i64 %4, 8192
  %i.db = icmp ne i64 %i.da, 0
  %or.cond825 = and i1 %i.db, %i.cy
  br i1 %or.cond825, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load i32, ptr %i.de, align 4, !tbaa !12 ; 2 uses
  %i.dg = and i32 %i.df, 8
  %.not.i196 = icmp eq i32 %i.dg, 0
  br i1 %.not.i196, label %bb.w, label %.thread524

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 259) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.dh, align 8, !tbaa !14, !alias.scope !273
  %i.di = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %0, ptr %i.di, align 8, !tbaa !25, !alias.scope !273
  %i.dj = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 4, !alias.scope !273
  %i.dl = and i8 %i.dk, -128
  %i.dm = trunc i32 %.4493919 to i8
  %i.dn = shl i8 %i.dm, 1
  %i.do = and i8 %i.dn, 126
  %i.dp = or disjoint i8 %i.dl, %i.do
  store i8 %i.dp, ptr %i.dj, align 4, !alias.scope !273
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i16 %1, ptr %i.dq, align 2, !tbaa !26, !alias.scope !273
  %i.dr = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i16 8, ptr %i.dr, align 8, !tbaa !26, !alias.scope !273
  store i32 259, ptr %14, align 8, !tbaa !12, !alias.scope !273
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !58 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !59
  %.not.i.i199 = icmp ult i32 %i.dv, %i.dx
  br i1 %.not.i.i199, label %bb.y, label %bb.x, !prof !60

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(26) %14)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit198

bb.y:                                             ; preds = %bb.w
  %i.dy = zext i32 %i.dv to i64
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.dz, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  %i.eb = load i32, ptr %i.du, align 8, !tbaa !58
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.du, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit198

_ZN4llvm7CCState11AllocateRegEt.exit198:          ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  br label %bb.bt

bb.z:                                             ; preds = %bb.u
  %i.ed = and i64 %4, 32768
  %i.ee = icmp ne i64 %i.ed, 0
  %or.cond826 = and i1 %i.ee, %i.cy
  br i1 %or.cond826, label %..thread525_crit_edge, label %_ZN4llvm7CCState11AllocateRegEt.exit203.thread531

..thread525_crit_edge:                            ; preds = %bb.z
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !11
  %.phi.trans.insert897 = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre898 = load i32, ptr %.phi.trans.insert897, align 4, !tbaa !12
  br label %.thread525

.thread524:                                       ; preds = %bb.v
  %i.ef = and i64 %4, 32768
  %.not883 = icmp eq i64 %i.ef, 0
  br i1 %.not883, label %_ZN4llvm7CCState11AllocateRegEt.exit203.thread531, label %.thread525

.thread525:                                       ; preds = %..thread525_crit_edge, %.thread524
  %i.eg = phi i32 [ %.pre898, %..thread525_crit_edge ], [ %i.df, %.thread524 ]
  %i.eh = and i32 %i.eg, 16
  %.not.i201 = icmp eq i32 %i.eh, 0
  br i1 %.not.i201, label %bb.aa, label %_ZN4llvm7CCState11AllocateRegEt.exit203.thread531

bb.aa:                                            ; preds = %.thread525
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 260) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.ei, align 8, !tbaa !14, !alias.scope !274
  %i.ej = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %0, ptr %i.ej, align 8, !tbaa !25, !alias.scope !274
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 4, !alias.scope !274
  %i.em = and i8 %i.el, -128
  %i.en = trunc i32 %.4493919 to i8
  %i.eo = shl i8 %i.en, 1
  %i.ep = and i8 %i.eo, 126
  %i.eq = or disjoint i8 %i.em, %i.ep
  store i8 %i.eq, ptr %i.ek, align 4, !alias.scope !274
  %i.er = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i16 %1, ptr %i.er, align 2, !tbaa !26, !alias.scope !274
  %i.es = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i16 %.sroa.0.0.copyload463499918, ptr %i.es, align 8, !tbaa !26, !alias.scope !274
  store i32 260, ptr %15, align 8, !tbaa !12, !alias.scope !274
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !58 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !59
  %.not.i.i204 = icmp ult i32 %i.ew, %i.ey
  br i1 %.not.i.i204, label %bb.ac, label %bb.ab, !prof !60

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(26) %15)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit203

bb.ac:                                            ; preds = %bb.aa
  %i.ez = zext i32 %i.ew to i64
  %i.fa = load ptr, ptr %i.eu, align 8, !tbaa !11
  %i.fb = getelementptr inbounds nuw [32 x i8], ptr %i.fa, i64 %i.ez
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.fc = load i32, ptr %i.ev, align 8, !tbaa !58
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.ev, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit203

_ZN4llvm7CCState11AllocateRegEt.exit203:          ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  br label %bb.bt

_ZN4llvm7CCState11AllocateRegEt.exit203.thread531: ; preds = %.thread525, %.thread524, %bb.z
  %i.fe = and i64 %4, 16384
  %i.ff = icmp ne i64 %i.fe, 0
  %or.cond827 = and i1 %i.cy, %i.ff
  br i1 %or.cond827, label %bb.ad, label %_ZN4llvm7CCState11AllocateRegEt.exit208.thread538

bb.ad:                                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit203.thread531
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !11
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !12
  %i.fk = and i32 %i.fj, 32
  %.not.i206 = icmp eq i32 %i.fk, 0
  br i1 %.not.i206, label %bb.ae, label %_ZN4llvm7CCState11AllocateRegEt.exit208.thread538

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 261) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #7
  %i.fl = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.fl, align 8, !tbaa !14, !alias.scope !275
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.fm, align 8, !tbaa !25, !alias.scope !275
  %i.fn = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 4, !alias.scope !275
  %i.fp = and i8 %i.fo, -128
  %i.fq = trunc i32 %.4493919 to i8
  %i.fr = shl i8 %i.fq, 1
  %i.fs = and i8 %i.fr, 126
  %i.ft = or disjoint i8 %i.fp, %i.fs
  store i8 %i.ft, ptr %i.fn, align 4, !alias.scope !275
  %i.fu = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.fu, align 2, !tbaa !26, !alias.scope !275
  %i.fv = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 8, ptr %i.fv, align 8, !tbaa !26, !alias.scope !275
  store i32 261, ptr %16, align 8, !tbaa !12, !alias.scope !275
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 3 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !58 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !59
  %.not.i.i209 = icmp ult i32 %i.fz, %i.gb
  br i1 %.not.i.i209, label %bb.ag, label %bb.af, !prof !60

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(26) %16)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit208

bb.ag:                                            ; preds = %bb.ae
  %i.gc = zext i32 %i.fz to i64
  %i.gd = load ptr, ptr %i.fx, align 8, !tbaa !11
  %i.ge = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %i.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false)
  %i.gf = load i32, ptr %i.fy, align 8, !tbaa !58
  %i.gg = add i32 %i.gf, 1
  store i32 %i.gg, ptr %i.fy, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit208

_ZN4llvm7CCState11AllocateRegEt.exit208:          ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  br label %bb.bt

_ZN4llvm7CCState11AllocateRegEt.exit208.thread538: ; preds = %bb.ad, %_ZN4llvm7CCState11AllocateRegEt.exit203.thread531
  %i.gh = and i64 %4, 4294967296
  %.not884 = icmp eq i64 %i.gh, 0
  br i1 %.not884, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit208.thread538
  %i.gi = call fastcc noundef zeroext i1 @_ZL23CC_AArch64_Custom_BlockRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i32 %0, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 2 dereferenceable(2) %9, i32 %.4493919, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.gi, label %bb.bt, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN4llvm7CCState11AllocateRegEt.exit208.thread538
  switch i16 %.sroa.0.0.copyload463499918, label %.thread754 [
    i16 213, label %.thread541
    i16 209, label %.thread541
    i16 208, label %.thread541
    i16 204, label %.thread541
    i16 203, label %.thread541
    i16 202, label %.thread541
    i16 198, label %.thread541
    i16 197, label %.thread541
    i16 196, label %.thread541
    i16 190, label %.thread541
    i16 185, label %.thread541
    i16 180, label %.thread541
    i16 174, label %.thread541
    i16 163, label %.critedge6
    i16 164, label %.critedge6.fold.split
    i16 165, label %.critedge6.fold.split
    i16 166, label %.critedge6.fold.split
    i16 167, label %.critedge6.fold.split
    i16 257, label %.critedge6.fold.split
    i16 2, label %.critedge10
    i16 5, label %.critedge10
    i16 6, label %.critedge10
    i16 7, label %.thread611
    i16 8, label %.thread821
    i16 13, label %bb.bf
    i16 12, label %bb.bh
    i16 14, label %bb.bj
    i16 15, label %bb.bl
    i16 93, label %.critedge12
    i16 71, label %.critedge12.fold.split
    i16 58, label %.critedge12.fold.split
    i16 47, label %.critedge12.fold.split
    i16 153, label %.critedge12.fold.split
    i16 134, label %.critedge12.fold.split
    i16 108, label %.critedge12.fold.split
    i16 123, label %.critedge12.fold.split
    i16 17, label %.critedge14
  ]

.thread541:                                       ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !11
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !12 ; 8 uses
  %i.gn = and i32 %i.gm, 4096
  %.not.i.i212 = icmp eq i32 %i.gn, 0
  br i1 %.not.i.i212, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit215, label %bb.aj

bb.aj:                                            ; preds = %.thread541
  %i.go = and i32 %i.gm, 8192
  %.not.i.i212.1 = icmp eq i32 %i.go, 0
  br i1 %.not.i.i212.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit215, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gp = and i32 %i.gm, 16384
  %.not.i.i212.2 = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i212.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit215, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gq = and i32 %i.gm, 32768
  %.not.i.i212.3 = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i212.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit215, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gr = and i32 %i.gm, 65536
  %.not.i.i212.4 = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i212.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit215, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gs = and i32 %i.gm, 131072
  %.not.i.i212.5 = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i212.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit215, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gt = and i32 %i.gm, 262144
  %.not.i.i212.6 = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i212.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit215, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gu = and i32 %i.gm, 524288
  %.not.i.i212.7 = icmp eq i32 %i.gu, 0
  br i1 %.not.i.i212.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit215, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit215.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit215.thread: ; preds = %bb.ap
  %switch.tableidx = add i16 %.sroa.0.0.copyload463499918, -174 ; 2 uses
  %i.gv = icmp ult i16 %switch.tableidx, 40
  br i1 %i.gv, label %switch.hole_check, label %.thread592

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit215: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %.thread541
  %.0613.i.i211.lcssa.wide = phi i64 [ 0, %.thread541 ], [ 1, %bb.aj ], [ 2, %bb.ak ], [ 3, %bb.al ], [ 4, %bb.am ], [ 5, %bb.an ], [ 6, %bb.ao ], [ 7, %bb.ap ]
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i211.lcssa.wide
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !96 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.gx) #7
  %i.gy = zext i16 %i.gx to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #7
  %i.gz = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 0, ptr %i.gz, align 8, !tbaa !14, !alias.scope !276
  %i.ha = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %0, ptr %i.ha, align 8, !tbaa !25, !alias.scope !276
  %i.hb = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 4, !alias.scope !276
  %i.hd = and i8 %i.hc, -128
  %i.he = trunc i32 %.4493919 to i8
  %i.hf = shl i8 %i.he, 1
  %i.hg = and i8 %i.hf, 126
  %i.hh = or disjoint i8 %i.hd, %i.hg
  store i8 %i.hh, ptr %i.hb, align 4, !alias.scope !276
  %i.hi = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i16 %1, ptr %i.hi, align 2, !tbaa !26, !alias.scope !276
  %i.hj = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i16 %.sroa.0.0.copyload463499918, ptr %i.hj, align 8, !tbaa !26, !alias.scope !276
  store i32 %i.gy, ptr %17, align 8, !tbaa !12, !alias.scope !276
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 3 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !58 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !59
  %.not.i.i216 = icmp ult i32 %i.hn, %i.hp
  br i1 %.not.i.i216, label %bb.ar, label %bb.aq, !prof !60

bb.aq:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit215
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef nonnull align 8 dereferenceable(26) %17)
  br label %bb.as

bb.ar:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit215
  %i.hq = zext i32 %i.hn to i64
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !11
  %i.hs = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %i.hq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.hs, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false)
  %i.ht = load i32, ptr %i.hm, align 8, !tbaa !58
end_hunk_0
begin_hunk_1_@_ZN4llvm32CC_AArch64_Arm64EC_CFGuard_CheckEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !58   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !59
  %.not.i.i10 = icmp ult i32 %i.z, %i.ab
  br i1 %.not.i.i10, label %bb.f, label %bb.e, !prof !60

bb.e:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.g

bb.f:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.ac = zext i32 %i.z to i64
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.af = load i32, ptr %i.y, align 8, !tbaa !58
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.y, align 8, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.a, %bb.g
  %.1 = phi i1 [ false, %bb.g ], [ true, %bb.a ], [ true, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm24CC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree noundef readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %14 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %15 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %16 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %17 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %18 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %19 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %20 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %21 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %i.a = and i64 %4, 8
  %i.b = icmp ne i64 %i.a, 0
  %i.c = icmp eq i16 %2, 8
  %or.cond = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread383

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = and i32 %i.g, 524288
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread383

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 243) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.i, align 8, !tbaa !14, !alias.scope !335
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.j, align 8, !tbaa !25, !alias.scope !335
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !alias.scope !335
  %i.m = and i8 %i.l, -128
  %i.n = trunc i32 %3 to i8
  %i.o = shl i8 %i.n, 1
  %i.p = and i8 %i.o, 126
  %i.q = or disjoint i8 %i.m, %i.p
  store i8 %i.q, ptr %i.k, align 4, !alias.scope !335
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.r, align 2, !tbaa !26, !alias.scope !335
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 8, ptr %i.s, align 8, !tbaa !26, !alias.scope !335
  store i32 243, ptr %8, align 8, !tbaa !12, !alias.scope !335
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !58   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !59
  %.not.i.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.e:                                             ; preds = %bb.c
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !58
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %bb.bj

_ZN4llvm7CCState11AllocateRegEt.exit.thread383:   ; preds = %bb.b, %bb.a
  %i.ae = and i64 %4, 32
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.f, label %.thread394

bb.f:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread383
  switch i16 %2, label %.thread394 [
    i16 2, label %.critedge
    i16 5, label %.critedge
    i16 6, label %.critedge
  ]

.critedge:                                        ; preds = %bb.f, %bb.f, %bb.f
  %i.af = and i64 %4, 2
  %.not616 = icmp eq i64 %i.af, 0
  br i1 %.not616, label %bb.g, label %.thread394

bb.g:                                             ; preds = %.critedge
  %i.ag = trunc i64 %4 to i1
  %. = select i1 %i.ag, i32 2, i32 3
  br label %.thread394

.thread394:                                       ; preds = %bb.f, %_ZN4llvm7CCState11AllocateRegEt.exit.thread383, %bb.g, %.critedge
  %.sroa.0319.1 = phi i16 [ 7, %.critedge ], [ 7, %bb.g ], [ %2, %bb.f ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit.thread383 ] ; 7 uses
  %.1133 = phi i32 [ 1, %.critedge ], [ %., %bb.g ], [ %3, %bb.f ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit.thread383 ] ; 17 uses
  %i.ah = and i64 %4, 128
  %.not617 = icmp eq i64 %i.ah, 0
  br i1 %.not617, label %_ZN4llvm7CCState11AllocateRegEt.exit166.thread402, label %bb.h

bb.h:                                             ; preds = %.thread394
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12
  %i.am = and i32 %i.al, 524288
  %.not.i164 = icmp eq i32 %i.am, 0
  br i1 %.not.i164, label %bb.i, label %_ZN4llvm7CCState11AllocateRegEt.exit166.thread402

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 243) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.an, align 8, !tbaa !14, !alias.scope !336
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.ao, align 8, !tbaa !25, !alias.scope !336
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4, !alias.scope !336
  %i.ar = and i8 %i.aq, -128
  %i.as = trunc i32 %.1133 to i8
  %i.at = shl i8 %i.as, 1
  %i.au = and i8 %i.at, 126
  %i.av = or disjoint i8 %i.ar, %i.au
  store i8 %i.av, ptr %i.ap, align 4, !alias.scope !336
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.aw, align 2, !tbaa !26, !alias.scope !336
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %.sroa.0319.1, ptr %i.ax, align 8, !tbaa !26, !alias.scope !336
  store i32 243, ptr %9, align 8, !tbaa !12, !alias.scope !336
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !58 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !59
  %.not.i.i167 = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i.i167, label %bb.k, label %bb.j, !prof !60

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit166

bb.k:                                             ; preds = %bb.i
  %i.be = zext i32 %i.bb to i64
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.bh = load i32, ptr %i.ba, align 8, !tbaa !58
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ba, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit166

_ZN4llvm7CCState11AllocateRegEt.exit166:          ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  br label %bb.bj

_ZN4llvm7CCState11AllocateRegEt.exit166.thread402: ; preds = %bb.h, %.thread394
  %i.bj = and i64 %4, 32768
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = icmp eq i16 %.sroa.0319.1, 8            ; 3 uses
  %or.cond610 = and i1 %i.bk, %i.bl
  br i1 %or.cond610, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit166.thread402
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !12 ; 2 uses
  %i.bq = and i32 %i.bp, 4
  %.not.i169 = icmp eq i32 %i.bq, 0
  br i1 %.not.i169, label %bb.m, label %.thread411

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 258) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.br, align 8, !tbaa !14, !alias.scope !337
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.bs, align 8, !tbaa !25, !alias.scope !337
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 4, !alias.scope !337
  %i.bv = and i8 %i.bu, -128
  %i.bw = trunc i32 %.1133 to i8
  %i.bx = shl i8 %i.bw, 1
  %i.by = and i8 %i.bx, 126
  %i.bz = or disjoint i8 %i.bv, %i.by
  store i8 %i.bz, ptr %i.bt, align 4, !alias.scope !337
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.ca, align 2, !tbaa !26, !alias.scope !337
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 8, ptr %i.cb, align 8, !tbaa !26, !alias.scope !337
  store i32 258, ptr %10, align 8, !tbaa !12, !alias.scope !337
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !58 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !59
  %.not.i.i172 = icmp ult i32 %i.cf, %i.ch
  br i1 %.not.i.i172, label %bb.o, label %bb.n, !prof !60

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit171

bb.o:                                             ; preds = %bb.m
  %i.ci = zext i32 %i.cf to i64
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.cl = load i32, ptr %i.ce, align 8, !tbaa !58
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ce, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit171

_ZN4llvm7CCState11AllocateRegEt.exit171:          ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  br label %bb.bj

bb.p:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit166.thread402
  %i.cn = and i64 %4, 8192
  %i.co = icmp ne i64 %i.cn, 0
  %or.cond611 = and i1 %i.co, %i.bl
  br i1 %or.cond611, label %..thread412_crit_edge, label %_ZN4llvm7CCState11AllocateRegEt.exit176.thread418

..thread412_crit_edge:                            ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !11
  %.phi.trans.insert635 = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre636 = load i32, ptr %.phi.trans.insert635, align 4, !tbaa !12
  br label %.thread412

.thread411:                                       ; preds = %bb.l
  %i.cp = and i64 %4, 8192
  %.not618 = icmp eq i64 %i.cp, 0
  br i1 %.not618, label %_ZN4llvm7CCState11AllocateRegEt.exit176.thread418, label %.thread412

.thread412:                                       ; preds = %..thread412_crit_edge, %.thread411
  %i.cq = phi i32 [ %.pre636, %..thread412_crit_edge ], [ %i.bp, %.thread411 ]
  %i.cr = and i32 %i.cq, 8
  %.not.i174 = icmp eq i32 %i.cr, 0
  br i1 %.not.i174, label %bb.q, label %_ZN4llvm7CCState11AllocateRegEt.exit176.thread418

bb.q:                                             ; preds = %.thread412
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 259) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.cs, align 8, !tbaa !14, !alias.scope !338
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.ct, align 8, !tbaa !25, !alias.scope !338
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 4, !alias.scope !338
  %i.cw = and i8 %i.cv, -128
  %i.cx = trunc i32 %.1133 to i8
  %i.cy = shl i8 %i.cx, 1
  %i.cz = and i8 %i.cy, 126
  %i.da = or disjoint i8 %i.cw, %i.cz
  store i8 %i.da, ptr %i.cu, align 4, !alias.scope !338
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.db, align 2, !tbaa !26, !alias.scope !338
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 %.sroa.0319.1, ptr %i.dc, align 8, !tbaa !26, !alias.scope !338
  store i32 259, ptr %11, align 8, !tbaa !12, !alias.scope !338
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !58 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !59
  %.not.i.i177 = icmp ult i32 %i.dg, %i.di
  br i1 %.not.i.i177, label %bb.s, label %bb.r, !prof !60

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit176

bb.s:                                             ; preds = %bb.q
  %i.dj = zext i32 %i.dg to i64
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !11
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.dm = load i32, ptr %i.df, align 8, !tbaa !58
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.df, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit176

_ZN4llvm7CCState11AllocateRegEt.exit176:          ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  br label %bb.bj

_ZN4llvm7CCState11AllocateRegEt.exit176.thread418: ; preds = %.thread412, %.thread411, %bb.p
  %i.do = and i64 %4, 16384
  %i.dp = icmp ne i64 %i.do, 0
  %or.cond612 = and i1 %i.dp, %i.bl
  br i1 %or.cond612, label %bb.t, label %_ZN4llvm7CCState11AllocateRegEt.exit181.thread425

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit176.thread418
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !12
  %i.du = and i32 %i.dt, 16
  %.not.i179 = icmp eq i32 %i.du, 0
  br i1 %.not.i179, label %bb.u, label %_ZN4llvm7CCState11AllocateRegEt.exit181.thread425

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 260) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.dv, align 8, !tbaa !14, !alias.scope !339
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.dw, align 8, !tbaa !25, !alias.scope !339
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 4, !alias.scope !339
  %i.dz = and i8 %i.dy, -128
  %i.ea = trunc i32 %.1133 to i8
  %i.eb = shl i8 %i.ea, 1
  %i.ec = and i8 %i.eb, 126
  %i.ed = or disjoint i8 %i.dz, %i.ec
  store i8 %i.ed, ptr %i.dx, align 4, !alias.scope !339
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.ee, align 2, !tbaa !26, !alias.scope !339
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 8, ptr %i.ef, align 8, !tbaa !26, !alias.scope !339
  store i32 260, ptr %12, align 8, !tbaa !12, !alias.scope !339
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !58 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !59
  %.not.i.i182 = icmp ult i32 %i.ej, %i.el
  br i1 %.not.i.i182, label %bb.w, label %bb.v, !prof !60

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit181

bb.w:                                             ; preds = %bb.u
  %i.em = zext i32 %i.ej to i64
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !11
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %i.en, i64 %i.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.ep = load i32, ptr %i.ei, align 8, !tbaa !58
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.ei, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit181

_ZN4llvm7CCState11AllocateRegEt.exit181:          ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  br label %bb.bj

_ZN4llvm7CCState11AllocateRegEt.exit181.thread425: ; preds = %bb.t, %_ZN4llvm7CCState11AllocateRegEt.exit176.thread418
  %i.er = and i64 %4, 65536
  %.not619 = icmp eq i64 %i.er, 0
  br i1 %.not619, label %_ZN4llvm7CCState11AllocateRegEt.exit186.thread432, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit181.thread425
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !11
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 28
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !12
  %i.ew = and i32 %i.ev, 8388608
  %.not.i184 = icmp eq i32 %i.ew, 0
  br i1 %.not.i184, label %bb.y, label %_ZN4llvm7CCState11AllocateRegEt.exit186.thread432

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 247) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.ex, align 8, !tbaa !14, !alias.scope !340
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %0, ptr %i.ey, align 8, !tbaa !25, !alias.scope !340
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 4, !alias.scope !340
  %i.fb = and i8 %i.fa, -128
  %i.fc = trunc i32 %.1133 to i8
  %i.fd = shl i8 %i.fc, 1
  %i.fe = and i8 %i.fd, 126
  %i.ff = or disjoint i8 %i.fb, %i.fe
  store i8 %i.ff, ptr %i.ez, align 4, !alias.scope !340
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %1, ptr %i.fg, align 2, !tbaa !26, !alias.scope !340
  %i.fh = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i16 %.sroa.0319.1, ptr %i.fh, align 8, !tbaa !26, !alias.scope !340
  store i32 247, ptr %13, align 8, !tbaa !12, !alias.scope !340
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !58 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !59
  %.not.i.i187 = icmp ult i32 %i.fl, %i.fn
  br i1 %.not.i.i187, label %bb.aa, label %bb.z, !prof !60

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(26) %13)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit186

bb.aa:                                            ; preds = %bb.y
  %i.fo = zext i32 %i.fl to i64
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !11
  %i.fq = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  %i.fr = load i32, ptr %i.fk, align 8, !tbaa !58
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fk, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit186

_ZN4llvm7CCState11AllocateRegEt.exit186:          ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  br label %bb.bj

_ZN4llvm7CCState11AllocateRegEt.exit186.thread432: ; preds = %bb.x, %_ZN4llvm7CCState11AllocateRegEt.exit181.thread425
  switch i16 %.sroa.0319.1, label %.thread566.thread656 [
    i16 48, label %.thread568
    i16 62, label %.thread568
    i16 73, label %.thread568
    i16 94, label %.thread568
    i16 112, label %.thread568
    i16 136, label %.thread568
    i16 154, label %.thread568
    i16 49, label %.thread568
    i16 63, label %.thread568
    i16 77, label %.thread568
    i16 96, label %.thread568
    i16 113, label %.thread568
    i16 140, label %.thread568
    i16 156, label %.thread568
    i16 50, label %.thread568
    i16 64, label %.thread568
    i16 82, label %.thread568
    i16 114, label %.thread568
    i16 145, label %.thread568
    i16 157, label %.thread568
    i16 97, label %.thread568
    i16 16, label %.thread568
    i16 248, label %.thread568.fold.split
    i16 13, label %bb.ab
    i16 12, label %bb.ai
    i16 14, label %bb.ap
    i16 15, label %bb.aw
    i16 7, label %bb.bd
    i16 8, label %.thread568.fold.split660
  ]

bb.ab:                                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit186.thread432
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !11
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !12 ; 4 uses
  %i.fx = and i32 %i.fw, 65536
  %.not.i.i189 = icmp eq i32 %i.fx, 0
  br i1 %.not.i.i189, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fy = and i32 %i.fw, 131072
  %.not.i.i189.1 = icmp eq i32 %i.fy, 0
  br i1 %.not.i.i189.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fz = and i32 %i.fw, 262144
  %.not.i.i189.2 = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i189.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ga = and i32 %i.fw, 524288
  %.not.i.i189.3 = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i189.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %.critedge8

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.ab ], [ 1, %bb.ac ], [ 2, %bb.ad ], [ 3, %bb.ae ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm24CC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i.lcssa.wide
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !96 ; 2 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm25CC_AArch64_Arm64EC_VarArgEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i.lcssa.wide
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !96
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.gc) #7
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.ge) #7
  %i.gf = zext i16 %i.gc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  %i.gg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.gg, align 8, !tbaa !14, !alias.scope !341
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %0, ptr %i.gh, align 8, !tbaa !25, !alias.scope !341
  %i.gi = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 4, !alias.scope !341
  %i.gk = and i8 %i.gj, -128
  %i.gl = trunc i32 %.1133 to i8
  %i.gm = shl i8 %i.gl, 1
  %i.gn = and i8 %i.gm, 126
  %i.go = or disjoint i8 %i.gk, %i.gn
  store i8 %i.go, ptr %i.gi, align 4, !alias.scope !341
  %i.gp = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i16 %1, ptr %i.gp, align 2, !tbaa !26, !alias.scope !341
end_hunk_1
begin_hunk_2_@_ZN4llvm25CC_AArch64_Arm64EC_VarArgEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  br label %.thread559

.critedge10:                                      ; preds = %bb.z, %bb.t
  %.sroa.0204.6521553 = phi i16 [ 7, %bb.t ], [ 8, %bb.z ]
  %.683524551 = phi i32 [ %.683522, %bb.t ], [ %.683523537, %bb.z ]
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !223, !range !94, !noundef !56
  %i.gb = trunc nuw i8 %i.ga to i1
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !224 ; 2 uses
  br i1 %i.gb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.critedge10
  %i.ge = add i64 %i.gd, 15
  %i.gf = and i64 %i.ge, -8                       ; 2 uses
  %i.gg = sub i64 0, %i.gf
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.ae:                                            ; preds = %.critedge10
  %i.gh = add i64 %i.gd, 7
  %i.gi = and i64 %i.gh, -8                       ; 2 uses
  %i.gj = add nsw i64 %i.gi, 8
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.ad, %bb.ae
  %.sink = phi i64 [ %i.gf, %bb.ad ], [ %i.gj, %bb.ae ]
  %.0.i = phi i64 [ %i.gg, %bb.ad ], [ %i.gi, %bb.ae ]
  store i64 %.sink, ptr %i.gc, align 8, !tbaa !224
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.gk, align 8, !tbaa !225
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i, i8 3)
  store i8 %.sroa.speculated.i, ptr %i.gk, align 8, !tbaa !225
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  %i.gl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %0, ptr %i.gm, align 8, !tbaa !25, !alias.scope !372
  %i.gn = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 4, !alias.scope !372
  %i.gp = and i8 %i.go, -128
  %i.gq = trunc i32 %.683524551 to i8
  %i.gr = shl i8 %i.gq, 1
  %i.gs = and i8 %i.gr, 126
  %i.gt = or disjoint i8 %i.gp, %i.gs
  store i8 %i.gt, ptr %i.gn, align 4, !alias.scope !372
  %i.gu = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i16 %1, ptr %i.gu, align 2, !tbaa !26, !alias.scope !372
  %i.gv = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i16 %.sroa.0204.6521553, ptr %i.gv, align 8, !tbaa !26, !alias.scope !372
  store i8 1, ptr %i.gl, align 8, !tbaa !14, !alias.scope !372
  store i64 %.0.i, ptr %15, align 8, !tbaa !97, !alias.scope !372
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 3 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !58 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !59
  %.not.i.i120 = icmp ult i32 %i.gz, %i.hb
  br i1 %.not.i.i120, label %bb.ag, label %bb.af, !prof !60

bb.af:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(26) %15)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit121

bb.ag:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.hc = zext i32 %i.gz to i64
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !11
  %i.he = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.he, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.hf = load i32, ptr %i.gy, align 8, !tbaa !58
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.gy, align 8, !tbaa !58
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit121

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit121: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  br label %.thread559

.thread559:                                       ; preds = %bb.p, %bb.ac, %bb.w, %_ZN4llvm7CCState11AllocateRegEt.exit103, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, %_ZN4llvm7CCState11AllocateRegEt.exit97, %_ZN4llvm7CCState11AllocateRegEt.exit, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit121, %bb.o
  %.11 = phi i1 [ false, %bb.o ], [ false, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit121 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ false, %bb.ac ], [ false, %bb.w ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit103 ], [ false, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit97 ], [ true, %bb.p ]
  ret i1 %.11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm20CC_AArch64_DarwinPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.llvm::MVT", align 2         ; 2 uses
  %9 = alloca %"class.llvm::MVT", align 2         ; 4 uses
  %10 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 7 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %14 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %15 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %16 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %17 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %18 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %19 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %20 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %21 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %22 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %23 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %24 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %25 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %26 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %27 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %28 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %29 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %30 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %31 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %32 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %33 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  store i16 %1, ptr %8, align 2
  store i16 %2, ptr %9, align 2
  store i64 %4, ptr %10, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %5, ptr %i.a, align 8
  %i.b = and i64 %4, 128
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread451, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %i.g = and i32 %i.f, 1073741824
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread451

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 254) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.h, align 8, !tbaa !14, !alias.scope !419
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.i, align 8, !tbaa !25, !alias.scope !419
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !alias.scope !419
  %i.l = and i8 %i.k, -128
  %i.m = trunc i32 %3 to i8
  %i.n = shl i8 %i.m, 1
  %i.o = and i8 %i.n, 126
  %i.p = or disjoint i8 %i.l, %i.o
  store i8 %i.p, ptr %i.j, align 4, !alias.scope !419
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.q, align 2, !tbaa !26, !alias.scope !419
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 %2, ptr %i.r, align 8, !tbaa !26, !alias.scope !419
  store i32 254, ptr %11, align 8, !tbaa !12, !alias.scope !419
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !59
  %.not.i.i = icmp ult i32 %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.e:                                             ; preds = %bb.c
  %i.y = zext i32 %i.v to i64
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.ab = load i32, ptr %i.u, align 8, !tbaa !58
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.u, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  br label %bb.bk

_ZN4llvm7CCState11AllocateRegEt.exit.thread451:   ; preds = %bb.b, %bb.a
  switch i16 %2, label %.thread465 [
    i16 271, label %.thread
    i16 134, label %.thread479.sink.split
    i16 154, label %.thread468
    i16 136, label %.thread468
    i16 17, label %.thread468
  ]

.thread:                                          ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread451
  store i16 8, ptr %9, align 2, !tbaa !26
  br label %.thread465

.thread465:                                       ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread451, %.thread
  %.2 = phi i32 [ %3, %_ZN4llvm7CCState11AllocateRegEt.exit.thread451 ], [ 7, %.thread ] ; 3 uses
  %.sroa.0.0.copyload439 = phi i16 [ %2, %_ZN4llvm7CCState11AllocateRegEt.exit.thread451 ], [ 8, %.thread ] ; 2 uses
  %i.ad = and i64 %4, 16
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = icmp eq i16 %.sroa.0.0.copyload439, 8
  %or.cond = and i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.f, label %.thread479

.thread468:                                       ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread451, %_ZN4llvm7CCState11AllocateRegEt.exit.thread451, %_ZN4llvm7CCState11AllocateRegEt.exit.thread451
  br label %.thread479.sink.split

bb.f:                                             ; preds = %.thread465
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !12
  %i.ak = and i32 %i.aj, 8388608
  %.not.i188 = icmp eq i32 %i.ak, 0
  br i1 %.not.i188, label %bb.g, label %.thread479

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 247) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.al, align 8, !tbaa !14, !alias.scope !420
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.am, align 8, !tbaa !25, !alias.scope !420
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4, !alias.scope !420
  %i.ap = and i8 %i.ao, -128
  %i.aq = trunc i32 %.2 to i8
  %i.ar = shl i8 %i.aq, 1
  %i.as = and i8 %i.ar, 126
  %i.at = or disjoint i8 %i.ap, %i.as
  store i8 %i.at, ptr %i.an, align 4, !alias.scope !420
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.au, align 2, !tbaa !26, !alias.scope !420
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 8, ptr %i.av, align 8, !tbaa !26, !alias.scope !420
  store i32 247, ptr %12, align 8, !tbaa !12, !alias.scope !420
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !58 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !59
  %.not.i.i191 = icmp ult i32 %i.az, %i.bb
  br i1 %.not.i.i191, label %bb.i, label %bb.h, !prof !60

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit190

bb.i:                                             ; preds = %bb.g
  %i.bc = zext i32 %i.az to i64
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.bf = load i32, ptr %i.ay, align 8, !tbaa !58
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ay, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit190

_ZN4llvm7CCState11AllocateRegEt.exit190:          ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  br label %bb.bk

.thread479.sink.split:                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread451, %.thread468
  %.sink = phi i16 [ 94, %.thread468 ], [ 71, %_ZN4llvm7CCState11AllocateRegEt.exit.thread451 ] ; 2 uses
  store i16 %.sink, ptr %9, align 2, !tbaa !26
  br label %.thread479

.thread479:                                       ; preds = %.thread479.sink.split, %bb.f, %.thread465
  %.sroa.0.0.copyload439477 = phi i16 [ 8, %bb.f ], [ %.sroa.0.0.copyload439, %.thread465 ], [ %.sink, %.thread479.sink.split ] ; 14 uses
  %.2472 = phi i32 [ %.2, %bb.f ], [ %.2, %.thread465 ], [ 7, %.thread479.sink.split ] ; 22 uses
  %i.bh = and i64 %4, 32
  %.not846 = icmp eq i64 %i.bh, 0
  br i1 %.not846, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread479
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %7, i32 noundef %0, i16 %1, i16 %.sroa.0.0.copyload439477, i32 noundef %.2472, i32 noundef 8, i8 3, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %10) #7
  br label %bb.bk

bb.k:                                             ; preds = %.thread479
  %i.bi = and i64 %4, 8192
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = icmp eq i16 %.sroa.0.0.copyload439477, 8 ; 3 uses
  %or.cond795 = and i1 %i.bj, %i.bk
  br i1 %or.cond795, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !12 ; 2 uses
  %i.bp = and i32 %i.bo, 8
  %.not.i193 = icmp eq i32 %i.bp, 0
  br i1 %.not.i193, label %bb.m, label %.thread496

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 259) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.bq, align 8, !tbaa !14, !alias.scope !421
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %0, ptr %i.br, align 8, !tbaa !25, !alias.scope !421
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 4, !alias.scope !421
  %i.bu = and i8 %i.bt, -128
  %i.bv = trunc i32 %.2472 to i8
  %i.bw = shl i8 %i.bv, 1
  %i.bx = and i8 %i.bw, 126
  %i.by = or disjoint i8 %i.bu, %i.bx
  store i8 %i.by, ptr %i.bs, align 4, !alias.scope !421
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %1, ptr %i.bz, align 2, !tbaa !26, !alias.scope !421
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i16 8, ptr %i.ca, align 8, !tbaa !26, !alias.scope !421
  store i32 259, ptr %13, align 8, !tbaa !12, !alias.scope !421
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !58 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59
  %.not.i.i196 = icmp ult i32 %i.ce, %i.cg
  br i1 %.not.i.i196, label %bb.o, label %bb.n, !prof !60

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(26) %13)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit195

bb.o:                                             ; preds = %bb.m
  %i.ch = zext i32 %i.ce to i64
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !11
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  %i.ck = load i32, ptr %i.cd, align 8, !tbaa !58
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cd, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit195

_ZN4llvm7CCState11AllocateRegEt.exit195:          ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  br label %bb.bk

bb.p:                                             ; preds = %bb.k
  %i.cm = and i64 %4, 32768
  %i.cn = icmp ne i64 %i.cm, 0
  %or.cond796 = and i1 %i.cn, %i.bk
  br i1 %or.cond796, label %..thread497_crit_edge, label %_ZN4llvm7CCState11AllocateRegEt.exit200.thread503

..thread497_crit_edge:                            ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !11
  %.phi.trans.insert859 = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre860 = load i32, ptr %.phi.trans.insert859, align 4, !tbaa !12
  br label %.thread497

.thread496:                                       ; preds = %bb.l
  %i.co = and i64 %4, 32768
  %.not847 = icmp eq i64 %i.co, 0
  br i1 %.not847, label %_ZN4llvm7CCState11AllocateRegEt.exit200.thread503, label %.thread497

.thread497:                                       ; preds = %..thread497_crit_edge, %.thread496
  %i.cp = phi i32 [ %.pre860, %..thread497_crit_edge ], [ %i.bo, %.thread496 ]
  %i.cq = and i32 %i.cp, 16
  %.not.i198 = icmp eq i32 %i.cq, 0
  br i1 %.not.i198, label %bb.q, label %_ZN4llvm7CCState11AllocateRegEt.exit200.thread503

bb.q:                                             ; preds = %.thread497
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 260) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.cr, align 8, !tbaa !14, !alias.scope !422
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %0, ptr %i.cs, align 8, !tbaa !25, !alias.scope !422
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 4, !alias.scope !422
  %i.cv = and i8 %i.cu, -128
  %i.cw = trunc i32 %.2472 to i8
  %i.cx = shl i8 %i.cw, 1
  %i.cy = and i8 %i.cx, 126
  %i.cz = or disjoint i8 %i.cv, %i.cy
  store i8 %i.cz, ptr %i.ct, align 4, !alias.scope !422
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i16 %1, ptr %i.da, align 2, !tbaa !26, !alias.scope !422
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i16 %.sroa.0.0.copyload439477, ptr %i.db, align 8, !tbaa !26, !alias.scope !422
  store i32 260, ptr %14, align 8, !tbaa !12, !alias.scope !422
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 3 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !58 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !59
  %.not.i.i201 = icmp ult i32 %i.df, %i.dh
  br i1 %.not.i.i201, label %bb.s, label %bb.r, !prof !60

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(26) %14)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit200

bb.s:                                             ; preds = %bb.q
  %i.di = zext i32 %i.df to i64
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !11
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.dj, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  %i.dl = load i32, ptr %i.de, align 8, !tbaa !58
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.de, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit200

_ZN4llvm7CCState11AllocateRegEt.exit200:          ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  br label %bb.bk

_ZN4llvm7CCState11AllocateRegEt.exit200.thread503: ; preds = %.thread497, %.thread496, %bb.p
  %i.dn = and i64 %4, 16384
  %i.do = icmp ne i64 %i.dn, 0
  %or.cond797 = and i1 %i.do, %i.bk
  br i1 %or.cond797, label %bb.t, label %_ZN4llvm7CCState11AllocateRegEt.exit205.thread510

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit200.thread503
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !12
  %i.dt = and i32 %i.ds, 32
  %.not.i203 = icmp eq i32 %i.dt, 0
  br i1 %.not.i203, label %bb.u, label %_ZN4llvm7CCState11AllocateRegEt.exit205.thread510

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 261) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.du, align 8, !tbaa !14, !alias.scope !423
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %0, ptr %i.dv, align 8, !tbaa !25, !alias.scope !423
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 4, !alias.scope !423
  %i.dy = and i8 %i.dx, -128
  %i.dz = trunc i32 %.2472 to i8
  %i.ea = shl i8 %i.dz, 1
  %i.eb = and i8 %i.ea, 126
  %i.ec = or disjoint i8 %i.dy, %i.eb
  store i8 %i.ec, ptr %i.dw, align 4, !alias.scope !423
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i16 %1, ptr %i.ed, align 2, !tbaa !26, !alias.scope !423
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i16 8, ptr %i.ee, align 8, !tbaa !26, !alias.scope !423
  store i32 261, ptr %15, align 8, !tbaa !12, !alias.scope !423
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !58 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !59
  %.not.i.i206 = icmp ult i32 %i.ei, %i.ek
  br i1 %.not.i.i206, label %bb.w, label %bb.v, !prof !60

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(26) %15)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit205

bb.w:                                             ; preds = %bb.u
  %i.el = zext i32 %i.ei to i64
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !11
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.en, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.eo = load i32, ptr %i.eh, align 8, !tbaa !58
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %i.eh, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit205

_ZN4llvm7CCState11AllocateRegEt.exit205:          ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  br label %bb.bk

_ZN4llvm7CCState11AllocateRegEt.exit205.thread510: ; preds = %bb.t, %_ZN4llvm7CCState11AllocateRegEt.exit200.thread503
  %i.eq = and i64 %4, 4294967296
  %.not848 = icmp eq i64 %i.eq, 0
  br i1 %.not848, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit205.thread510
  %i.er = call fastcc noundef zeroext i1 @_ZL23CC_AArch64_Custom_BlockRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i32 %0, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 2 dereferenceable(2) %9, i32 %.2472, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.er, label %bb.bk, label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN4llvm7CCState11AllocateRegEt.exit205.thread510
  switch i16 %.sroa.0.0.copyload439477, label %.thread564 [
    i16 213, label %.thread513
    i16 209, label %.thread513
    i16 208, label %.thread513
    i16 204, label %.thread513
    i16 203, label %.thread513
    i16 202, label %.thread513
    i16 198, label %.thread513
    i16 197, label %.thread513
    i16 196, label %.thread513
    i16 190, label %.thread513
    i16 185, label %.thread513
    i16 180, label %.thread513
    i16 174, label %.thread513
    i16 163, label %.critedge2
    i16 164, label %.critedge2.fold.split
    i16 165, label %.critedge2.fold.split
    i16 166, label %.critedge2.fold.split
    i16 167, label %.critedge2.fold.split
    i16 257, label %.critedge2.fold.split
  ]

.thread513:                                       ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !11
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !12 ; 8 uses
  %i.ew = and i32 %i.ev, 4096
  %.not.i.i208 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i208, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.z

bb.z:                                             ; preds = %.thread513
  %i.ex = and i32 %i.ev, 8192
  %.not.i.i208.1 = icmp eq i32 %i.ex, 0
  br i1 %.not.i.i208.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ey = and i32 %i.ev, 16384
  %.not.i.i208.2 = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i208.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ez = and i32 %i.ev, 32768
  %.not.i.i208.3 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i208.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fa = and i32 %i.ev, 65536
  %.not.i.i208.4 = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i208.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fb = and i32 %i.ev, 131072
  %.not.i.i208.5 = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i208.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fc = and i32 %i.ev, 262144
  %.not.i.i208.6 = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i208.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = and i32 %i.ev, 524288
  %.not.i.i208.7 = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i208.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread: ; preds = %bb.af
  %switch.tableidx = add i16 %.sroa.0.0.copyload439477, -174 ; 2 uses
  %i.fe = icmp ult i16 %switch.tableidx, 40
  br i1 %i.fe, label %switch.hole_check, label %.thread564

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %.thread513
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.thread513 ], [ 1, %bb.z ], [ 2, %bb.aa ], [ 3, %bb.ab ], [ 4, %bb.ac ], [ 5, %bb.ad ], [ 6, %bb.ae ], [ 7, %bb.af ]
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i.lcssa.wide
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !96 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.fg) #7
  %i.fh = zext i16 %i.fg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #7
  %i.fi = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.fi, align 8, !tbaa !14, !alias.scope !424
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.fj, align 8, !tbaa !25, !alias.scope !424
  %i.fk = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 4, !alias.scope !424
  %i.fm = and i8 %i.fl, -128
  %i.fn = trunc i32 %.2472 to i8
  %i.fo = shl i8 %i.fn, 1
  %i.fp = and i8 %i.fo, 126
  %i.fq = or disjoint i8 %i.fm, %i.fp
  store i8 %i.fq, ptr %i.fk, align 4, !alias.scope !424
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.fr, align 2, !tbaa !26, !alias.scope !424
  %i.fs = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 %.sroa.0.0.copyload439477, ptr %i.fs, align 8, !tbaa !26, !alias.scope !424
  store i32 %i.fh, ptr %16, align 8, !tbaa !12, !alias.scope !424
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 3 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !58 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !59
  %.not.i.i209 = icmp ult i32 %i.fw, %i.fy
  br i1 %.not.i.i209, label %bb.ah, label %bb.ag, !prof !60

bb.ag:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 8 dereferenceable(26) %16)
  br label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.fz = zext i32 %i.fw to i64
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !11
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %i.ga, i64 %i.fz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.gb, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false)
  %i.gc = load i32, ptr %i.fv, align 8, !tbaa !58
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.fv, align 8, !tbaa !58
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  br label %bb.bk

.critedge2.fold.split:                            ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.y
  br label %.critedge2

.critedge2:                                       ; preds = %bb.y, %.critedge2.fold.split
  %i.ge = phi i1 [ false, %.critedge2.fold.split ], [ true, %bb.y ]
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !11
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !12 ; 4 uses
  %i.gj = and i32 %i.gi, 65536
end_hunk_2
begin_hunk_3_@_ZN4llvm24CC_AArch64_Preserve_NoneEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.llvm::MVT", align 2         ; 2 uses
  %9 = alloca %"class.llvm::MVT", align 2         ; 5 uses
  %10 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 6 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %14 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %15 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %16 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %17 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %18 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %19 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %20 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %21 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %22 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %23 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %24 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %25 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %26 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %27 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %28 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %29 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %30 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %31 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %32 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %33 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  store i16 %1, ptr %8, align 2
  store i16 %2, ptr %9, align 2
  store i64 %4, ptr %10, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %5, ptr %i.a, align 8
  %i.b = and i64 %4, 65536
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread492, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %i.g = and i32 %i.f, 16777216
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread492

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 248) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.h, align 8, !tbaa !14, !alias.scope !546
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.i, align 8, !tbaa !25, !alias.scope !546
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !alias.scope !546
  %i.l = and i8 %i.k, -128
  %i.m = trunc i32 %3 to i8
  %i.n = shl i8 %i.m, 1
  %i.o = and i8 %i.n, 126
  %i.p = or disjoint i8 %i.l, %i.o
  store i8 %i.p, ptr %i.j, align 4, !alias.scope !546
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.q, align 2, !tbaa !26, !alias.scope !546
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 %2, ptr %i.r, align 8, !tbaa !26, !alias.scope !546
  store i32 248, ptr %11, align 8, !tbaa !12, !alias.scope !546
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !59
  %.not.i.i = icmp ult i32 %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.e:                                             ; preds = %bb.c
  %i.y = zext i32 %i.v to i64
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.ab = load i32, ptr %i.u, align 8, !tbaa !58
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.u, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  br label %bb.bu

_ZN4llvm7CCState11AllocateRegEt.exit.thread492:   ; preds = %bb.b, %bb.a
  %i.ad = and i64 %4, 128
  %.not903 = icmp eq i64 %i.ad, 0
  br i1 %.not903, label %_ZN4llvm7CCState11AllocateRegEt.exit198.thread499, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread492
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12
  %i.ai = and i32 %i.ah, 1073741824
  %.not.i196 = icmp eq i32 %i.ai, 0
  br i1 %.not.i196, label %bb.g, label %_ZN4llvm7CCState11AllocateRegEt.exit198.thread499

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 254) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.aj, align 8, !tbaa !14, !alias.scope !547
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.ak, align 8, !tbaa !25, !alias.scope !547
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.am = load i8, ptr %i.al, align 4, !alias.scope !547
  %i.an = and i8 %i.am, -128
  %i.ao = trunc i32 %3 to i8
  %i.ap = shl i8 %i.ao, 1
  %i.aq = and i8 %i.ap, 126
  %i.ar = or disjoint i8 %i.an, %i.aq
  store i8 %i.ar, ptr %i.al, align 4, !alias.scope !547
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.as, align 2, !tbaa !26, !alias.scope !547
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 %2, ptr %i.at, align 8, !tbaa !26, !alias.scope !547
  store i32 254, ptr %12, align 8, !tbaa !12, !alias.scope !547
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !58 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !59
  %.not.i.i199 = icmp ult i32 %i.ax, %i.az
  br i1 %.not.i.i199, label %bb.i, label %bb.h, !prof !60

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit198

bb.i:                                             ; preds = %bb.g
  %i.ba = zext i32 %i.ax to i64
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.bd = load i32, ptr %i.aw, align 8, !tbaa !58
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.aw, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit198

_ZN4llvm7CCState11AllocateRegEt.exit198:          ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  br label %bb.bu

_ZN4llvm7CCState11AllocateRegEt.exit198.thread499: ; preds = %bb.f, %_ZN4llvm7CCState11AllocateRegEt.exit.thread492
  switch i16 %2, label %.thread508 [
    i16 271, label %.thread508.sink.split
    i16 134, label %bb.j
    i16 154, label %.critedge
    i16 136, label %.critedge
  ]

bb.j:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit198.thread499
  br label %.thread508.sink.split

.critedge:                                        ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit198.thread499, %_ZN4llvm7CCState11AllocateRegEt.exit198.thread499
  br label %.thread508.sink.split

.thread508.sink.split:                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit198.thread499, %.critedge, %bb.j
  %.sink = phi i16 [ 71, %bb.j ], [ 94, %.critedge ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit198.thread499 ] ; 2 uses
  store i16 %.sink, ptr %9, align 2, !tbaa !26
  br label %.thread508

.thread508:                                       ; preds = %.thread508.sink.split, %_ZN4llvm7CCState11AllocateRegEt.exit198.thread499
  %.2 = phi i32 [ %3, %_ZN4llvm7CCState11AllocateRegEt.exit198.thread499 ], [ 7, %.thread508.sink.split ] ; 2 uses
  %.sroa.0.0.copyload480 = phi i16 [ %2, %_ZN4llvm7CCState11AllocateRegEt.exit198.thread499 ], [ %.sink, %.thread508.sink.split ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !61, !nonnull !56, !align !57
  %i.bh = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.bg) #7
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !93, !range !94, !noundef !56
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread508
  switch i16 %.sroa.0.0.copyload480, label %bb.l [
    i16 71, label %.critedge2
    i16 134, label %.critedge2
    i16 58, label %.critedge2
    i16 108, label %.critedge2
    i16 123, label %.critedge2
    i16 47, label %.critedge2
  ]

.critedge2:                                       ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  store i16 15, ptr %9, align 2, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge2, %.thread508
  %.3 = phi i32 [ 7, %.critedge2 ], [ %.2, %bb.k ], [ %.2, %.thread508 ] ; 4 uses
  %.sroa.0.0.copyload479 = phi i16 [ 15, %.critedge2 ], [ %.sroa.0.0.copyload480, %bb.k ], [ %.sroa.0.0.copyload480, %.thread508 ] ; 4 uses
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !61, !nonnull !56, !align !57
  %i.bl = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.bk) #7
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !93, !range !94, !noundef !56
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  switch i16 %.sroa.0.0.copyload479, label %bb.n [
    i16 94, label %.thread523.thread
    i16 73, label %.thread523.thread
    i16 48, label %.thread523.thread
    i16 62, label %.thread523.thread
    i16 112, label %.thread523.thread
    i16 124, label %.thread523.thread
  ]

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bo = and i64 %4, 8
  %34 = icmp eq i64 %i.bo, 0
  %i.bp = icmp ne i16 %.sroa.0.0.copyload479, 8
  %or.cond.not992 = or i1 %34, %i.bp
  %35 = and i64 %4, 16
  %i.bq = icmp eq i64 %35, 0
  %or.cond = select i1 %or.cond.not992, i1 true, i1 %i.bq
  br i1 %or.cond, label %.thread523, label %bb.o

.thread523.thread:                                ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  store i16 17, ptr %9, align 2, !tbaa !26
  br label %_ZN4llvm7CCState11AllocateRegEt.exit204.thread537

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !12 ; 2 uses
  %i.bv = and i32 %i.bu, 32768
  %.not.i.i201 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i201, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = and i32 %i.bu, 65536
  %.not.i.i201.1 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i201.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread523

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.p, %bb.o
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.o ], [ 1, %bb.p ]
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !96 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.by) #7
  %i.bz = zext i16 %i.by to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.ca, align 8, !tbaa !14, !alias.scope !548
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %0, ptr %i.cb, align 8, !tbaa !25, !alias.scope !548
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 4, !alias.scope !548
  %i.ce = and i8 %i.cd, -128
  %i.cf = trunc i32 %.3 to i8
  %i.cg = shl i8 %i.cf, 1
  %i.ch = and i8 %i.cg, 126
  %i.ci = or disjoint i8 %i.ce, %i.ch
  store i8 %i.ci, ptr %i.cc, align 4, !alias.scope !548
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %1, ptr %i.cj, align 2, !tbaa !26, !alias.scope !548
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i16 8, ptr %i.ck, align 8, !tbaa !26, !alias.scope !548
  store i32 %i.bz, ptr %13, align 8, !tbaa !12, !alias.scope !548
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  br label %bb.bu

.thread523:                                       ; preds = %bb.p, %bb.n
  %i.cl = and i64 %4, 16
  %i.cm = icmp ne i64 %i.cl, 0
  %i.cn = icmp eq i16 %.sroa.0.0.copyload479, 8   ; 3 uses
  %or.cond846 = and i1 %i.cm, %i.cn
  br i1 %or.cond846, label %bb.q, label %_ZN4llvm7CCState11AllocateRegEt.exit204.thread537

bb.q:                                             ; preds = %.thread523
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !12
  %i.cs = and i32 %i.cr, 8388608
  %.not.i202 = icmp eq i32 %i.cs, 0
  br i1 %.not.i202, label %bb.r, label %_ZN4llvm7CCState11AllocateRegEt.exit204.thread537

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 247) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.ct, align 8, !tbaa !14, !alias.scope !549
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %0, ptr %i.cu, align 8, !tbaa !25, !alias.scope !549
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 4, !alias.scope !549
  %i.cx = and i8 %i.cw, -128
  %i.cy = trunc i32 %.3 to i8
  %i.cz = shl i8 %i.cy, 1
  %i.da = and i8 %i.cz, 126
  %i.db = or disjoint i8 %i.cx, %i.da
  store i8 %i.db, ptr %i.cv, align 4, !alias.scope !549
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i16 %1, ptr %i.dc, align 2, !tbaa !26, !alias.scope !549
  %i.dd = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i16 8, ptr %i.dd, align 8, !tbaa !26, !alias.scope !549
  store i32 247, ptr %14, align 8, !tbaa !12, !alias.scope !549
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !58 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !59
  %.not.i.i205 = icmp ult i32 %i.dh, %i.dj
  br i1 %.not.i.i205, label %bb.t, label %bb.s, !prof !60

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(26) %14)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit204

bb.t:                                             ; preds = %bb.r
  %i.dk = zext i32 %i.dh to i64
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !11
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %i.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  %i.dn = load i32, ptr %i.dg, align 8, !tbaa !58
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.dg, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit204

_ZN4llvm7CCState11AllocateRegEt.exit204:          ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  br label %bb.bu

_ZN4llvm7CCState11AllocateRegEt.exit204.thread537: ; preds = %.thread523.thread, %bb.q, %.thread523
  %i.dp = phi i1 [ false, %.thread523.thread ], [ %i.cn, %bb.q ], [ %i.cn, %.thread523 ] ; 3 uses
  %.4515942 = phi i32 [ 7, %.thread523.thread ], [ %.3, %bb.q ], [ %.3, %.thread523 ] ; 22 uses
  %.sroa.0.0.copyload478521941 = phi i16 [ 17, %.thread523.thread ], [ 8, %bb.q ], [ %.sroa.0.0.copyload479, %.thread523 ] ; 14 uses
  %i.dq = and i64 %4, 32
  %.not905 = icmp eq i64 %i.dq, 0
  br i1 %.not905, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit204.thread537
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %7, i32 noundef %0, i16 %1, i16 %.sroa.0.0.copyload478521941, i32 noundef %.4515942, i32 noundef 8, i8 3, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %10) #7
  br label %bb.bu

bb.v:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit204.thread537
  %i.dr = and i64 %4, 8192
  %i.ds = icmp ne i64 %i.dr, 0
  %or.cond847 = and i1 %i.ds, %i.dp
  br i1 %or.cond847, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !11
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !12 ; 2 uses
  %i.dx = and i32 %i.dw, 8
  %.not.i207 = icmp eq i32 %i.dx, 0
  br i1 %.not.i207, label %bb.x, label %.thread546

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 259) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.dy, align 8, !tbaa !14, !alias.scope !550
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %0, ptr %i.dz, align 8, !tbaa !25, !alias.scope !550
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 4, !alias.scope !550
  %i.ec = and i8 %i.eb, -128
  %i.ed = trunc i32 %.4515942 to i8
  %i.ee = shl i8 %i.ed, 1
  %i.ef = and i8 %i.ee, 126
  %i.eg = or disjoint i8 %i.ec, %i.ef
  store i8 %i.eg, ptr %i.ea, align 4, !alias.scope !550
  %i.eh = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i16 %1, ptr %i.eh, align 2, !tbaa !26, !alias.scope !550
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i16 8, ptr %i.ei, align 8, !tbaa !26, !alias.scope !550
  store i32 259, ptr %15, align 8, !tbaa !12, !alias.scope !550
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 3 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !58 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !59
  %.not.i.i210 = icmp ult i32 %i.em, %i.eo
  br i1 %.not.i.i210, label %bb.z, label %bb.y, !prof !60

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(26) %15)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit209

bb.z:                                             ; preds = %bb.x
  %i.ep = zext i32 %i.em to i64
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !11
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.eq, i64 %i.ep
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.es = load i32, ptr %i.el, align 8, !tbaa !58
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.el, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit209

_ZN4llvm7CCState11AllocateRegEt.exit209:          ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  br label %bb.bu

bb.aa:                                            ; preds = %bb.v
  %i.eu = and i64 %4, 32768
  %i.ev = icmp ne i64 %i.eu, 0
  %or.cond848 = and i1 %i.ev, %i.dp
  br i1 %or.cond848, label %..thread547_crit_edge, label %_ZN4llvm7CCState11AllocateRegEt.exit214.thread553

..thread547_crit_edge:                            ; preds = %bb.aa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !11
  %.phi.trans.insert920 = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre921 = load i32, ptr %.phi.trans.insert920, align 4, !tbaa !12
  br label %.thread547

.thread546:                                       ; preds = %bb.w
  %i.ew = and i64 %4, 32768
  %.not906 = icmp eq i64 %i.ew, 0
  br i1 %.not906, label %_ZN4llvm7CCState11AllocateRegEt.exit214.thread553, label %.thread547

.thread547:                                       ; preds = %..thread547_crit_edge, %.thread546
  %i.ex = phi i32 [ %.pre921, %..thread547_crit_edge ], [ %i.dw, %.thread546 ]
  %i.ey = and i32 %i.ex, 16
  %.not.i212 = icmp eq i32 %i.ey, 0
  br i1 %.not.i212, label %bb.ab, label %_ZN4llvm7CCState11AllocateRegEt.exit214.thread553

bb.ab:                                            ; preds = %.thread547
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 260) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #7
  %i.ez = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.ez, align 8, !tbaa !14, !alias.scope !551
  %i.fa = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.fa, align 8, !tbaa !25, !alias.scope !551
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 4, !alias.scope !551
  %i.fd = and i8 %i.fc, -128
  %i.fe = trunc i32 %.4515942 to i8
  %i.ff = shl i8 %i.fe, 1
  %i.fg = and i8 %i.ff, 126
  %i.fh = or disjoint i8 %i.fd, %i.fg
  store i8 %i.fh, ptr %i.fb, align 4, !alias.scope !551
  %i.fi = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.fi, align 2, !tbaa !26, !alias.scope !551
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 %.sroa.0.0.copyload478521941, ptr %i.fj, align 8, !tbaa !26, !alias.scope !551
  store i32 260, ptr %16, align 8, !tbaa !12, !alias.scope !551
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !58 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !59
  %.not.i.i215 = icmp ult i32 %i.fn, %i.fp
  br i1 %.not.i.i215, label %bb.ad, label %bb.ac, !prof !60

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(26) %16)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit214

bb.ad:                                            ; preds = %bb.ab
  %i.fq = zext i32 %i.fn to i64
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !11
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %i.fr, i64 %i.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false)
  %i.ft = load i32, ptr %i.fm, align 8, !tbaa !58
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fm, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit214

_ZN4llvm7CCState11AllocateRegEt.exit214:          ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  br label %bb.bu

_ZN4llvm7CCState11AllocateRegEt.exit214.thread553: ; preds = %.thread547, %.thread546, %bb.aa
  %i.fv = and i64 %4, 16384
  %i.fw = icmp ne i64 %i.fv, 0
  %or.cond849 = and i1 %i.dp, %i.fw
  br i1 %or.cond849, label %bb.ae, label %_ZN4llvm7CCState11AllocateRegEt.exit219.thread560

bb.ae:                                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit214.thread553
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !11
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !12
  %i.gb = and i32 %i.ga, 32
  %.not.i217 = icmp eq i32 %i.gb, 0
  br i1 %.not.i217, label %bb.af, label %_ZN4llvm7CCState11AllocateRegEt.exit219.thread560

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 261) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #7
  %i.gc = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 0, ptr %i.gc, align 8, !tbaa !14, !alias.scope !552
  %i.gd = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %0, ptr %i.gd, align 8, !tbaa !25, !alias.scope !552
  %i.ge = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 4, !alias.scope !552
  %i.gg = and i8 %i.gf, -128
  %i.gh = trunc i32 %.4515942 to i8
  %i.gi = shl i8 %i.gh, 1
  %i.gj = and i8 %i.gi, 126
  %i.gk = or disjoint i8 %i.gg, %i.gj
  store i8 %i.gk, ptr %i.ge, align 4, !alias.scope !552
  %i.gl = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i16 %1, ptr %i.gl, align 2, !tbaa !26, !alias.scope !552
  %i.gm = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i16 8, ptr %i.gm, align 8, !tbaa !26, !alias.scope !552
  store i32 261, ptr %17, align 8, !tbaa !12, !alias.scope !552
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 3 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !58 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !59
  %.not.i.i220 = icmp ult i32 %i.gq, %i.gs
  br i1 %.not.i.i220, label %bb.ah, label %bb.ag, !prof !60

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef nonnull align 8 dereferenceable(26) %17)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit219

bb.ah:                                            ; preds = %bb.af
  %i.gt = zext i32 %i.gq to i64
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !11
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %i.gu, i64 %i.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false)
  %i.gw = load i32, ptr %i.gp, align 8, !tbaa !58
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gp, align 8, !tbaa !58
  br label %_ZN4llvm7CCState11AllocateRegEt.exit219

_ZN4llvm7CCState11AllocateRegEt.exit219:          ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #7
  br label %bb.bu

_ZN4llvm7CCState11AllocateRegEt.exit219.thread560: ; preds = %bb.ae, %_ZN4llvm7CCState11AllocateRegEt.exit214.thread553
  %i.gy = and i64 %4, 4294967296
  %.not907 = icmp eq i64 %i.gy, 0
  br i1 %.not907, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit219.thread560
  %i.gz = call fastcc noundef zeroext i1 @_ZL23CC_AArch64_Custom_BlockRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i32 %0, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 2 dereferenceable(2) %9, i32 %.4515942, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.gz, label %bb.bu, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN4llvm7CCState11AllocateRegEt.exit219.thread560
  switch i16 %.sroa.0.0.copyload478521941, label %.thread776 [
    i16 213, label %.thread563
    i16 209, label %.thread563
    i16 208, label %.thread563
    i16 204, label %.thread563
    i16 203, label %.thread563
    i16 202, label %.thread563
    i16 198, label %.thread563
    i16 197, label %.thread563
    i16 196, label %.thread563
    i16 190, label %.thread563
    i16 185, label %.thread563
    i16 180, label %.thread563
    i16 174, label %.thread563
    i16 163, label %.critedge6
    i16 164, label %.critedge6.fold.split
    i16 165, label %.critedge6.fold.split
    i16 166, label %.critedge6.fold.split
    i16 167, label %.critedge6.fold.split
    i16 257, label %.critedge6.fold.split
    i16 2, label %.critedge10
    i16 5, label %.critedge10
    i16 6, label %.critedge10
    i16 7, label %.thread633
    i16 8, label %.thread843
    i16 13, label %bb.bg
    i16 12, label %bb.bi
    i16 14, label %bb.bk
    i16 15, label %bb.bm
    i16 93, label %.critedge12
    i16 71, label %.critedge12.fold.split
    i16 58, label %.critedge12.fold.split
    i16 47, label %.critedge12.fold.split
    i16 153, label %.critedge12.fold.split
    i16 134, label %.critedge12.fold.split
    i16 108, label %.critedge12.fold.split
    i16 123, label %.critedge12.fold.split
    i16 17, label %.critedge14
  ]

.thread563:                                       ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !11
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !12 ; 8 uses
  %i.he = and i32 %i.hd, 4096
  %.not.i.i223 = icmp eq i32 %i.he, 0
  br i1 %.not.i.i223, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit226, label %bb.ak

bb.ak:                                            ; preds = %.thread563
  %i.hf = and i32 %i.hd, 8192
  %.not.i.i223.1 = icmp eq i32 %i.hf, 0
  br i1 %.not.i.i223.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit226, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hg = and i32 %i.hd, 16384
  %.not.i.i223.2 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i223.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit226, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hh = and i32 %i.hd, 32768
  %.not.i.i223.3 = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i223.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit226, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hi = and i32 %i.hd, 65536
  %.not.i.i223.4 = icmp eq i32 %i.hi, 0
  br i1 %.not.i.i223.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit226, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hj = and i32 %i.hd, 131072
  %.not.i.i223.5 = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i223.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit226, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hk = and i32 %i.hd, 262144
  %.not.i.i223.6 = icmp eq i32 %i.hk, 0
  br i1 %.not.i.i223.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit226, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hl = and i32 %i.hd, 524288
  %.not.i.i223.7 = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i223.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit226, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit226.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit226.thread: ; preds = %bb.aq
  %switch.tableidx = add i16 %.sroa.0.0.copyload478521941, -174 ; 2 uses
  %i.hm = icmp ult i16 %switch.tableidx, 40
  br i1 %i.hm, label %switch.hole_check, label %.thread614

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit226: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %.thread563
  %.0613.i.i222.lcssa.wide = phi i64 [ 0, %.thread563 ], [ 1, %bb.ak ], [ 2, %bb.al ], [ 3, %bb.am ], [ 4, %bb.an ], [ 5, %bb.ao ], [ 6, %bb.ap ], [ 7, %bb.aq ]
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i222.lcssa.wide
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !96 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.ho) #7
  %i.hp = zext i16 %i.ho to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #7
  %i.hq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 0, ptr %i.hq, align 8, !tbaa !14, !alias.scope !553
  %i.hr = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 %0, ptr %i.hr, align 8, !tbaa !25, !alias.scope !553
  %i.hs = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 4, !alias.scope !553
  %i.hu = and i8 %i.ht, -128
  %i.hv = trunc i32 %.4515942 to i8
  %i.hw = shl i8 %i.hv, 1
  %i.hx = and i8 %i.hw, 126
  %i.hy = or disjoint i8 %i.hu, %i.hx
  store i8 %i.hy, ptr %i.hs, align 4, !alias.scope !553
  %i.hz = getelementptr inbounds nuw i8, ptr %18, i64 22
  store i16 %1, ptr %i.hz, align 2, !tbaa !26, !alias.scope !553
  %i.ia = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i16 %.sroa.0.0.copyload478521941, ptr %i.ia, align 8, !tbaa !26, !alias.scope !553
  store i32 %i.hp, ptr %18, align 8, !tbaa !12, !alias.scope !553
  %i.ib = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !55, !nonnull !56, !align !57 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 3 uses
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !58 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !59
  %.not.i.i227 = icmp ult i32 %i.ie, %i.ig
  br i1 %.not.i.i227, label %bb.as, label %bb.ar, !prof !60

bb.ar:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit226
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, ptr noundef nonnull align 8 dereferenceable(26) %18)
  br label %bb.at

bb.as:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit226
  %i.ih = zext i32 %i.ie to i64
  %i.ii = load ptr, ptr %i.ic, align 8, !tbaa !11
  %i.ij = getelementptr inbounds nuw [32 x i8], ptr %i.ii, i64 %i.ih
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ij, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false)
  %i.ik = load i32, ptr %i.id, align 8, !tbaa !58
end_hunk_3
