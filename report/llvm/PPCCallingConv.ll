Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCCallingConv?download=true
inline.NumInlined: 728
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::CCValAssign" = type <{ %"class.std::variant", i32, i8, i8, %"class.llvm::MVT", %"class.llvm::MVT", [6 x i8] }>
%"class.std::variant" = type { %"struct.std::__detail::__variant::_Variant_base.base", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base" = type { %"struct.std::__detail::__variant::_Move_assign_base.base" }
%"struct.std::__detail::__variant::_Move_assign_base.base" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base" }
%"struct.std::__detail::__variant::_Copy_assign_base.base" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base" }
%"struct.std::__detail::__variant::_Move_ctor_base.base" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base" = type { %"struct.std::__detail::__variant::_Variant_storage.base" }
%"struct.std::__detail::__variant::_Variant_storage.base" = type <{ %"union.std::__detail::__variant::_Variadic_union", i8 }>
%"union.std::__detail::__variant::_Variadic_union" = type { %"union.std::__detail::__variant::_Variadic_union.165" }
%"union.std::__detail::__variant::_Variadic_union.165" = type { %"struct.std::__detail::__variant::_Uninitialized.166" }
%"struct.std::__detail::__variant::_Uninitialized.166" = type { i64 }
%"class.llvm::MVT" = type { i16 }
%"struct.llvm::ISD::ArgFlagsTy" = type { i64, i32, i32 }

$_ZN4llvm7CCState6addLocERKNS_11CCValAssignE = comdat any

$_Z28CC_PPC64_ELF_Shadow_GPR_RegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_ = comdat any

$_ZN4llvm7CCState13AllocateStackEjNS_5AlignE = comdat any

$_ZZ28CC_PPC64_ELF_Shadow_GPR_RegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE12ELF64ArgGPRs = comdat any

$_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZZN4llvm12CC_PPC64_ELFEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2 = internal unnamed_addr constant [13 x i16] [i16 138, i16 139, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150], align 16
@_ZZN4llvm12CC_PPC64_ELFEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4 = internal unnamed_addr constant [12 x i16] [i16 325, i16 326, i16 327, i16 328, i16 329, i16 330, i16 331, i16 332, i16 333, i16 334, i16 335, i16 336], align 16
@_ZZN4llvm16CC_PPC64_ELF_FISEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1 = internal unnamed_addr constant [8 x i16] [i16 534, i16 535, i16 536, i16 537, i16 538, i16 539, i16 540, i16 541], align 16
@_ZZN4llvm19RetCC_PPC64_ELF_FISEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2 = internal unnamed_addr constant [4 x i16] [i16 534, i16 535, i16 536, i16 537], align 2
@_ZZN4llvm19RetCC_PPC64_ELF_FISEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList6 = internal unnamed_addr constant [8 x i16] [i16 325, i16 326, i16 327, i16 328, i16 329, i16 330, i16 331, i16 332], align 16
@_ZZL20CC_PPC32_SVR4_CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2 = internal unnamed_addr constant [8 x i16] [i16 138, i16 139, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145], align 16
@.str.2 = private unnamed_addr constant [40 x i8] c"soft-float is not yet supported on AIX.\00", align 1
@_ZZL43CC_PPC32_SVR4_Custom_SkipLastArgRegsPPCF128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE7ArgRegs = internal unnamed_addr constant [8 x i16] [i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261], align 16
@_ZZL28CC_PPC32_SPE_CustomSplitFP64RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE9LoRegList = internal unnamed_addr constant [4 x i16] [i16 255, i16 257, i16 259, i16 261], align 2
@_ZZ28CC_PPC64_ELF_Shadow_GPR_RegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE12ELF64ArgGPRs = linkonce_odr local_unnamed_addr constant [8 x i16] [i16 534, i16 535, i16 536, i16 537, i16 538, i16 539, i16 540, i16 541], comdat, align 16
@_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable = linkonce_odr local_unnamed_addr constant <{ [263 x { i64, i8 }], [9 x { i64, i8 }] }> <{ [263 x { i64, i8 }] [{ i64, i8 } zeroinitializer, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 3, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 5, i8 0 }, { i64, i8 } { i64 6, i8 0 }, { i64, i8 } { i64 7, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 24, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 40, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 56, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 768, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 1536, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 131072, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 1, i8 1 }, { i64, i8 } { i64 2, i8 1 }, { i64, i8 } { i64 4, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 2048, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 24, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 40, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 56, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 80, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 112, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 160, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 224, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 320, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 448, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } zeroinitializer, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }], [9 x { i64, i8 }] zeroinitializer }>, comdat, align 16

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm13CC_PPC32_SVR4EjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree noundef readonly captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  switch i16 %2, label %.thread69 [
    i16 48, label %.critedge
    i16 62, label %.critedge
    i16 73, label %.critedge
    i16 94, label %.critedge
    i16 103, label %.critedge
    i16 136, label %.critedge
    i16 154, label %.critedge
    i16 17, label %bb.q
  ]

.critedge:                                        ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8, !nonnull !39, !align !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41, !nonnull !39, !align !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  %i.f = load i8, ptr %i.e, align 8, !tbaa !157, !range !302, !noundef !39
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.thread69

bb.b:                                             ; preds = %.critedge
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !303
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i32, ptr %i.j, align 4, !tbaa !304  ; 12 uses
  %i.l = and i32 %i.k, 32
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.k, 64
  %.not.i.i.1 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %i.k, 128
  %.not.i.i.2 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = and i32 %i.k, 256
  %.not.i.i.3 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = and i32 %i.k, 512
  %.not.i.i.4 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = and i32 %i.k, 1024
  %.not.i.i.5 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = and i32 %i.k, 2048
  %.not.i.i.6 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = and i32 %i.k, 4096
  %.not.i.i.7 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = and i32 %i.k, 8192
  %.not.i.i.8 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = and i32 %i.k, 16384
  %.not.i.i.9 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = and i32 %i.k, 32768
  %.not.i.i.10 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = and i32 %i.k, 65536
  %.not.i.i.11 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread69

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm12CC_PPC64_ELFEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i.lcssa.wide
  %i.y = load i16, ptr %i.x, align 2, !tbaa !305  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.y) #7
  %i.z = zext i16 %i.y to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.aa, align 8, !tbaa !306, !alias.scope !308
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.ab, align 8, !tbaa !311, !alias.scope !308
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !alias.scope !308
  %i.ae = and i8 %i.ad, -128
  %i.af = trunc i32 %3 to i8
  %i.ag = shl i8 %i.af, 1
  %i.ah = and i8 %i.ag, 126
  %i.ai = or disjoint i8 %i.ae, %i.ah
  store i8 %i.ai, ptr %i.ac, align 4, !alias.scope !308
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.aj, align 2, !tbaa !322, !alias.scope !308
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %2, ptr %i.ak, align 8, !tbaa !322, !alias.scope !308
  store i32 %i.z, ptr %8, align 8, !tbaa !304, !alias.scope !308
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !323, !nonnull !39, !align !40 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !324 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !325
  %.not.i.i32 = icmp ult i32 %i.ao, %i.aq
  br i1 %.not.i.i32, label %bb.o, label %bb.n, !prof !326

bb.n:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.p

bb.o:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.ar = zext i32 %i.ao to i64
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !303
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.au = load i32, ptr %i.an, align 8, !tbaa !324
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.an, align 8, !tbaa !324
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %bb.ag

bb.q:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  %.phi.trans.insert82 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre83 = load ptr, ptr %.phi.trans.insert82, align 8, !tbaa !41
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %.pre83, i64 472
  %.pre85 = load i8, ptr %.phi.trans.insert84, align 8, !tbaa !157, !range !302
  %i.aw = trunc nuw i8 %.pre85 to i1
  br i1 %i.aw, label %bb.r, label %.thread69

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !303
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !304 ; 12 uses
  %i.bb = and i32 %i.ba, 32
  %.not.i.i34 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i34, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = and i32 %i.ba, 64
  %.not.i.i34.1 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i34.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = and i32 %i.ba, 128
  %.not.i.i34.2 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i34.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = and i32 %i.ba, 256
  %.not.i.i34.3 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i34.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = and i32 %i.ba, 512
  %.not.i.i34.4 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i34.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = and i32 %i.ba, 1024
  %.not.i.i34.5 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i34.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = and i32 %i.ba, 2048
  %.not.i.i34.6 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i34.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = and i32 %i.ba, 4096
  %.not.i.i34.7 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i34.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = and i32 %i.ba, 8192
  %.not.i.i34.8 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i34.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bk = and i32 %i.ba, 16384
  %.not.i.i34.9 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i34.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = and i32 %i.ba, 32768
  %.not.i.i34.10 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i34.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bm = and i32 %i.ba, 65536
  %.not.i.i34.11 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i34.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %.thread69

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.0613.i.i33.lcssa.wide = phi i64 [ 0, %bb.r ], [ 1, %bb.s ], [ 2, %bb.t ], [ 3, %bb.u ], [ 4, %bb.v ], [ 5, %bb.w ], [ 6, %bb.x ], [ 7, %bb.y ], [ 8, %bb.z ], [ 9, %bb.aa ], [ 10, %bb.ab ], [ 11, %bb.ac ]
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm12CC_PPC64_ELFEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i33.lcssa.wide
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !305 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.bo) #7
  %i.bp = zext i16 %i.bo to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.bq, align 8, !tbaa !306, !alias.scope !327
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.br, align 8, !tbaa !311, !alias.scope !327
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 4, !alias.scope !327
  %i.bu = and i8 %i.bt, -128
  %i.bv = trunc i32 %3 to i8
  %i.bw = shl i8 %i.bv, 1
  %i.bx = and i8 %i.bw, 126
  %i.by = or disjoint i8 %i.bu, %i.bx
  store i8 %i.by, ptr %i.bs, align 4, !alias.scope !327
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.bz, align 2, !tbaa !322, !alias.scope !327
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %2, ptr %i.ca, align 8, !tbaa !322, !alias.scope !327
  store i32 %i.bp, ptr %9, align 8, !tbaa !304, !alias.scope !327
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !323, !nonnull !39, !align !40 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !324 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !325
  %.not.i.i38 = icmp ult i32 %i.ce, %i.cg
  br i1 %.not.i.i38, label %bb.ae, label %bb.ad, !prof !326

bb.ad:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37
  %i.ch = zext i32 %i.ce to i64
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !303
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.ck = load i32, ptr %i.cd, align 8, !tbaa !324
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cd, align 8, !tbaa !324
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  br label %bb.ag

.thread69:                                        ; preds = %bb.ac, %bb.m, %bb.a, %.critedge, %bb.q
  %i.cm = tail call fastcc noundef zeroext i1 @_ZL20CC_PPC32_SVR4_CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.p, %.thread69
  %.3 = phi i1 [ false, %bb.p ], [ %i.cm, %.thread69 ], [ false, %bb.af ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !323, !nonnull !39, !align !40 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !324  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !325
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !326

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(26) %1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !303
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.j = load i32, ptr %i.c, align 8, !tbaa !324
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !324
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL20CC_PPC32_SVR4_CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, ptr nofree noundef readonly captures(none) %5, ptr noundef nonnull align 8 dereferenceable(420) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
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
  switch i16 %2, label %_ZL33CC_PPC32_SVR4_Custom_AlignArgRegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit102 [
    i16 2, label %bb.b
    i16 7, label %.thread
    i16 15, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %4, 2
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.b = trunc i64 %4 to i1
  %spec.select = select i1 %i.b, i32 2, i32 3
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b
  %.0270 = phi i32 [ %3, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ] ; 8 uses
  %i.c = and i64 %4, 512
  %.not326 = icmp eq i64 %i.c, 0
  br i1 %.not326, label %_ZL33CC_PPC32_SVR4_Custom_AlignArgRegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit102, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8, !nonnull !39, !align !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41, !nonnull !39, !align !40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !330
  %i.j = icmp ne i32 %i.i, 19
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 495
  %i.l = load i8, ptr %i.k, align 1, !range !302
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond.i, label %_ZNK4llvm12PPCSubtarget12useSoftFloatEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.2, i1 noundef zeroext true) #8
  unreachable

_ZNK4llvm12PPCSubtarget12useSoftFloatEv.exit:     ; preds = %bb.d
  br i1 %i.m, label %bb.p, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm12PPCSubtarget12useSoftFloatEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 255
  %i.q = icmp eq i32 %i.p, 6
  br i1 %i.q, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !303  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !304  ; 2 uses
  %i.v = and i32 %i.u, 1073741824
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.1.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i.1.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !304  ; 5 uses
  %i.y = and i32 %i.x, 1
  %.not.i.2.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.2.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = and i32 %i.x, 2
  %.not.i.3.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.3.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = and i32 %i.x, 4
  %.not.i.4.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.4.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = and i32 %i.x, 8
  %.not.i.5.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.5.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = and i32 %i.x, 48
end_hunk_0
begin_hunk_1_@_ZN4llvm12CC_PPC64_ELFEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
thread-pre-split126.thread.sink.split:            ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ %., %bb.c ], [ 1, %bb.b ], [ 1, %bb.h ], [ 1, %bb.d ], [ %.237, %bb.e ], [ %.238, %bb.g ], [ 1, %bb.f ], [ %.239, %bb.i ] ; 2 uses
  store i32 %.sink, ptr %i.b, align 4, !tbaa !378
  br label %thread-pre-split126.thread

thread-pre-split126.thread:                       ; preds = %thread-pre-split126.thread.sink.split, %bb.a
  %i.l = phi i32 [ %3, %bb.a ], [ %.sink, %thread-pre-split126.thread.sink.split ]
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !303
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load i32, ptr %i.o, align 4, !tbaa !304  ; 8 uses
  %i.q = and i32 %i.p, 4194304
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.j

bb.j:                                             ; preds = %thread-pre-split126.thread
  %i.r = and i32 %i.p, 8388608
  %.not.i.i.1 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = and i32 %i.p, 16777216
  %.not.i.i.2 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = and i32 %i.p, 33554432
  %.not.i.i.3 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = and i32 %i.p, 67108864
  %.not.i.i.4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = and i32 %i.p, 134217728
  %.not.i.i.5 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = and i32 %i.p, 268435456
  %.not.i.i.6 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = and i32 %i.p, 536870912
  %.not.i.i.7 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread158

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %thread-pre-split126.thread
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %thread-pre-split126.thread ], [ 1, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ], [ 5, %bb.n ], [ 6, %bb.o ], [ 7, %bb.p ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm16CC_PPC64_ELF_FISEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.z = load i16, ptr %i.y, align 2, !tbaa !305  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.z) #7
  %i.aa = zext i16 %i.z to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.ab, align 8, !tbaa !306, !alias.scope !379
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.ac, align 8, !tbaa !311, !alias.scope !379
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4, !alias.scope !379
  %i.af = and i8 %i.ae, -128
  %i.ag = trunc i32 %i.l to i8
  %i.ah = shl i8 %i.ag, 1
  %i.ai = and i8 %i.ah, 126
  %i.aj = or disjoint i8 %i.af, %i.ai
  store i8 %i.aj, ptr %i.ad, align 4, !alias.scope !379
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.ak, align 2, !tbaa !322, !alias.scope !379
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 8, ptr %i.al, align 8, !tbaa !322, !alias.scope !379
  store i32 %i.aa, ptr %11, align 8, !tbaa !304, !alias.scope !379
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !323, !nonnull !39, !align !40 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !324 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !325
  %.not.i.i55 = icmp ult i32 %i.ap, %i.ar
  br i1 %.not.i.i55, label %bb.r, label %bb.q, !prof !326

bb.q:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %bb.s

bb.r:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.as = zext i32 %i.ap to i64
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !303
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.av = load i32, ptr %i.ao, align 8, !tbaa !324
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.ao, align 8, !tbaa !324
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  br label %.thread158

.thread132:                                       ; preds = %bb.a
  %i.ax = and i16 %2, -2
  %switch = icmp eq i16 %i.ax, 14
  br i1 %switch, label %.critedge, label %thread-pre-split144

.critedge:                                        ; preds = %.thread132
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !382, !range !302, !noundef !39
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.bb = call noundef zeroext i1 @_Z28CC_PPC64_ELF_Shadow_GPR_RegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 2 dereferenceable(2) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.bb, label %.thread158, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t
  %.pr135.pre = load i16, ptr %9, align 2, !tbaa !383
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.critedge
  %i.bc = phi i16 [ %.pr135.pre, %._crit_edge ], [ %2, %.critedge ] ; 4 uses
  %i.bd = and i16 %i.bc, -2
  %switch164 = icmp eq i16 %i.bd, 14
  br i1 %switch164, label %.critedge2, label %thread-pre-split144

.critedge2:                                       ; preds = %bb.u
  %i.be = load i8, ptr %i.ay, align 4, !tbaa !382, !range !302, !noundef !39
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %thread-pre-split152, label %bb.v

bb.v:                                             ; preds = %.critedge2
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !303
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !304 ; 13 uses
  %i.bk = and i32 %i.bj, 1024
  %.not.i.i57 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i57, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = and i32 %i.bj, 2048
  %.not.i.i57.1 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i57.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = and i32 %i.bj, 4096
  %.not.i.i57.2 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i57.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = and i32 %i.bj, 8192
  %.not.i.i57.3 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i57.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bo = and i32 %i.bj, 16384
  %.not.i.i57.4 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i57.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = and i32 %i.bj, 32768
  %.not.i.i57.5 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i57.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = and i32 %i.bj, 65536
  %.not.i.i57.6 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i57.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.br = and i32 %i.bj, 131072
  %.not.i.i57.7 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i57.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = and i32 %i.bj, 262144
  %.not.i.i57.8 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i57.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = and i32 %i.bj, 524288
  %.not.i.i57.9 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i57.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bu = and i32 %i.bj, 1048576
  %.not.i.i57.10 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i57.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bv = and i32 %i.bj, 2097152
  %.not.i.i57.11 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i57.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bw = and i32 %i.bj, 4194304
  %.not.i.i57.12 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i57.12, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60, label %thread-pre-split152

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.0613.i.i56.lcssa.wide = phi i64 [ 0, %bb.v ], [ 1, %bb.w ], [ 2, %bb.x ], [ 3, %bb.y ], [ 4, %bb.z ], [ 5, %bb.aa ], [ 6, %bb.ab ], [ 7, %bb.ac ], [ 8, %bb.ad ], [ 9, %bb.ae ], [ 10, %bb.af ], [ 11, %bb.ag ], [ 12, %bb.ah ]
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm12CC_PPC64_ELFEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i56.lcssa.wide
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !305 ; 2 uses
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.by) #7
  %i.bz = zext i16 %i.by to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.ca = load i32, ptr %i.a, align 4, !tbaa !304
  %.sroa.014.0.copyload = load i16, ptr %8, align 2, !tbaa !322
  %.sroa.012.0.copyload = load i16, ptr %9, align 2, !tbaa !322
  %i.cb = load i32, ptr %i.b, align 4, !tbaa !378
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.cc, align 8, !tbaa !306, !alias.scope !384
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %i.ca, ptr %i.cd, align 8, !tbaa !311, !alias.scope !384
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 4, !alias.scope !384
  %i.cg = and i8 %i.cf, -128
  %i.ch = trunc i32 %i.cb to i8
  %i.ci = shl i8 %i.ch, 1
  %i.cj = and i8 %i.ci, 126
  %i.ck = or disjoint i8 %i.cg, %i.cj
  store i8 %i.ck, ptr %i.ce, align 4, !alias.scope !384
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %.sroa.014.0.copyload, ptr %i.cl, align 2, !tbaa !322, !alias.scope !384
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 %.sroa.012.0.copyload, ptr %i.cm, align 8, !tbaa !322, !alias.scope !384
  store i32 %i.bz, ptr %12, align 8, !tbaa !304, !alias.scope !384
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !323, !nonnull !39, !align !40 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !324 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !325
  %.not.i.i61 = icmp ult i32 %i.cq, %i.cs
  br i1 %.not.i.i61, label %bb.aj, label %bb.ai, !prof !326

bb.ai:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit60
  %i.ct = zext i32 %i.cq to i64
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !303
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.cw = load i32, ptr %i.cp, align 8, !tbaa !324
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cp, align 8, !tbaa !324
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  br label %.thread158

thread-pre-split144:                              ; preds = %.thread132, %bb.u
  %i.cy = phi i16 [ %i.bc, %bb.u ], [ %2, %.thread132 ] ; 2 uses
  %i.cz = icmp eq i16 %i.cy, 17
  br i1 %i.cz, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %thread-pre-split144
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !8, !nonnull !39, !align !40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !41, !nonnull !39, !align !40
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 472
  %i.df = load i8, ptr %i.de, align 8, !tbaa !157, !range !302, !noundef !39
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.am, label %.thread232

bb.am:                                            ; preds = %bb.al
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.di = load i8, ptr %i.dh, align 4, !tbaa !382, !range !302, !noundef !39
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %.thread232, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dk = call noundef zeroext i1 @_Z28CC_PPC64_ELF_Shadow_GPR_RegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 2 dereferenceable(2) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.dk, label %.thread158, label %._crit_edge197

._crit_edge197:                                   ; preds = %bb.an
  %.pre = load i16, ptr %9, align 2, !tbaa !383
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge197, %thread-pre-split144
  %i.dl = phi i16 [ %.pre, %._crit_edge197 ], [ %i.cy, %thread-pre-split144 ] ; 2 uses
  %i.dm = icmp eq i16 %i.dl, 17
  br i1 %i.dm, label %.thread232, label %thread-pre-split152

.thread232:                                       ; preds = %bb.am, %bb.al, %bb.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !8, !nonnull !39, !align !40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !41, !nonnull !39, !align !40
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 472
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !157, !range !302, !noundef !39
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.ap, label %.thread158

bb.ap:                                            ; preds = %.thread232
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dv = load i8, ptr %i.du, align 4, !tbaa !382, !range !302, !noundef !39
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %.thread158, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !303
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !304 ; 12 uses
  %i.eb = and i32 %i.ea, 32
  %.not.i.i64 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i64, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ec = and i32 %i.ea, 64
  %.not.i.i64.1 = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i64.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ed = and i32 %i.ea, 128
  %.not.i.i64.2 = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i64.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ee = and i32 %i.ea, 256
  %.not.i.i64.3 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i64.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ef = and i32 %i.ea, 512
  %.not.i.i64.4 = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i64.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eg = and i32 %i.ea, 1024
  %.not.i.i64.5 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i64.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eh = and i32 %i.ea, 2048
  %.not.i.i64.6 = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i64.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ei = and i32 %i.ea, 4096
  %.not.i.i64.7 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i64.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ej = and i32 %i.ea, 8192
  %.not.i.i64.8 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i64.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ek = and i32 %i.ea, 16384
  %.not.i.i64.9 = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i64.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.el = and i32 %i.ea, 32768
  %.not.i.i64.10 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i64.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.em = and i32 %i.ea, 65536
  %.not.i.i64.11 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i64.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67, label %.thread158

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67: ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.0613.i.i63.lcssa.wide = phi i64 [ 0, %bb.aq ], [ 1, %bb.ar ], [ 2, %bb.as ], [ 3, %bb.at ], [ 4, %bb.au ], [ 5, %bb.av ], [ 6, %bb.aw ], [ 7, %bb.ax ], [ 8, %bb.ay ], [ 9, %bb.az ], [ 10, %bb.ba ], [ 11, %bb.bb ]
  %i.en = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm12CC_PPC64_ELFEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i63.lcssa.wide
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !305 ; 2 uses
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.eo) #7
  %i.ep = zext i16 %i.eo to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  %i.eq = load i32, ptr %i.a, align 4, !tbaa !304
  %.sroa.011.0.copyload = load i16, ptr %8, align 2, !tbaa !322
  %.sroa.09.0.copyload = load i16, ptr %9, align 2, !tbaa !322
  %i.er = load i32, ptr %i.b, align 4, !tbaa !378
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.es, align 8, !tbaa !306, !alias.scope !387
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %i.eq, ptr %i.et, align 8, !tbaa !311, !alias.scope !387
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 4, !alias.scope !387
  %i.ew = and i8 %i.ev, -128
  %i.ex = trunc i32 %i.er to i8
  %i.ey = shl i8 %i.ex, 1
  %i.ez = and i8 %i.ey, 126
  %i.fa = or disjoint i8 %i.ew, %i.ez
  store i8 %i.fa, ptr %i.eu, align 4, !alias.scope !387
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %.sroa.011.0.copyload, ptr %i.fb, align 2, !tbaa !322, !alias.scope !387
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i16 %.sroa.09.0.copyload, ptr %i.fc, align 8, !tbaa !322, !alias.scope !387
  store i32 %i.ep, ptr %13, align 8, !tbaa !304, !alias.scope !387
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !323, !nonnull !39, !align !40 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 3 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !324 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !325
  %.not.i.i68 = icmp ult i32 %i.fg, %i.fi
  br i1 %.not.i.i68, label %bb.bd, label %bb.bc, !prof !326

bb.bc:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(26) %13)
  br label %bb.be

bb.bd:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit67
  %i.fj = zext i32 %i.fg to i64
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !303
  %i.fl = getelementptr inbounds nuw [32 x i8], ptr %i.fk, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  %i.fm = load i32, ptr %i.ff, align 8, !tbaa !324
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr %i.ff, align 8, !tbaa !324
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  br label %.thread158

thread-pre-split152:                              ; preds = %.critedge2, %bb.ah, %bb.ao
  %i.fo = phi i16 [ %i.dl, %bb.ao ], [ %i.bc, %bb.ah ], [ %i.bc, %.critedge2 ] ; 4 uses
  switch i16 %i.fo, label %bb.bh [
    i16 48, label %.critedge4
    i16 62, label %.critedge4
    i16 73, label %.critedge4
    i16 94, label %.critedge4
    i16 136, label %.critedge4
    i16 154, label %.critedge4
    i16 103, label %.critedge4
  ]

.critedge4:                                       ; preds = %thread-pre-split152, %thread-pre-split152, %thread-pre-split152, %thread-pre-split152, %thread-pre-split152, %thread-pre-split152, %thread-pre-split152
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !8, !nonnull !39, !align !40
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !41, !nonnull !39, !align !40
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 472
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !157, !range !302, !noundef !39
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %.critedge4
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.fx = load i8, ptr %i.fw, align 4, !tbaa !382, !range !302, !noundef !39
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fz = call noundef zeroext i1 @_Z28CC_PPC64_ELF_Shadow_GPR_RegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 2 dereferenceable(2) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.fz, label %.thread158, label %._crit_edge207

._crit_edge207:                                   ; preds = %bb.bg
  %.pre208 = load i16, ptr %9, align 2, !tbaa !383
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge207, %thread-pre-split152, %.critedge4, %bb.bf
  %i.ga = phi i16 [ %.pre208, %._crit_edge207 ], [ %i.fo, %thread-pre-split152 ], [ %i.fo, %.critedge4 ], [ %i.fo, %bb.bf ]
  switch i16 %i.ga, label %.thread158 [
    i16 48, label %.critedge6
    i16 62, label %.critedge6
    i16 73, label %.critedge6
    i16 94, label %.critedge6
    i16 136, label %.critedge6
    i16 154, label %.critedge6
    i16 103, label %.critedge6
  ]

.critedge6:                                       ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !8, !nonnull !39, !align !40
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !41, !nonnull !39, !align !40
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 472
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !157, !range !302, !noundef !39
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.bi, label %.thread158

bb.bi:                                            ; preds = %.critedge6
  %i.gi = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.gj = load i8, ptr %i.gi, align 4, !tbaa !382, !range !302, !noundef !39
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %.thread158, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !303
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !304 ; 12 uses
  %i.gp = and i32 %i.go, 32
  %.not.i.i71 = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i71, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gq = and i32 %i.go, 64
  %.not.i.i71.1 = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i71.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gr = and i32 %i.go, 128
  %.not.i.i71.2 = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i71.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gs = and i32 %i.go, 256
  %.not.i.i71.3 = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i71.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gt = and i32 %i.go, 512
  %.not.i.i71.4 = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i71.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gu = and i32 %i.go, 1024
  %.not.i.i71.5 = icmp eq i32 %i.gu, 0
  br i1 %.not.i.i71.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gv = and i32 %i.go, 2048
  %.not.i.i71.6 = icmp eq i32 %i.gv, 0
  br i1 %.not.i.i71.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gw = and i32 %i.go, 4096
  %.not.i.i71.7 = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i71.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gx = and i32 %i.go, 8192
  %.not.i.i71.8 = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i71.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gy = and i32 %i.go, 16384
  %.not.i.i71.9 = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i71.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gz = and i32 %i.go, 32768
  %.not.i.i71.10 = icmp eq i32 %i.gz, 0
  br i1 %.not.i.i71.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ha = and i32 %i.go, 65536
  %.not.i.i71.11 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i71.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74, label %.thread158

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74: ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.0613.i.i70.lcssa.wide = phi i64 [ 0, %bb.bj ], [ 1, %bb.bk ], [ 2, %bb.bl ], [ 3, %bb.bm ], [ 4, %bb.bn ], [ 5, %bb.bo ], [ 6, %bb.bp ], [ 7, %bb.bq ], [ 8, %bb.br ], [ 9, %bb.bs ], [ 10, %bb.bt ], [ 11, %bb.bu ]
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm12CC_PPC64_ELFEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i70.lcssa.wide
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !305 ; 2 uses
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.hc) #7
  %i.hd = zext i16 %i.hc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  %i.he = load i32, ptr %i.a, align 4, !tbaa !304
  %.sroa.08.0.copyload = load i16, ptr %8, align 2, !tbaa !322
  %.sroa.0.0.copyload = load i16, ptr %9, align 2, !tbaa !322
  %i.hf = load i32, ptr %i.b, align 4, !tbaa !378
  %i.hg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.hg, align 8, !tbaa !306, !alias.scope !390
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %i.he, ptr %i.hh, align 8, !tbaa !311, !alias.scope !390
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 4, !alias.scope !390
  %i.hk = and i8 %i.hj, -128
  %i.hl = trunc i32 %i.hf to i8
  %i.hm = shl i8 %i.hl, 1
  %i.hn = and i8 %i.hm, 126
  %i.ho = or disjoint i8 %i.hk, %i.hn
  store i8 %i.ho, ptr %i.hi, align 4, !alias.scope !390
  %i.hp = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i16 %.sroa.08.0.copyload, ptr %i.hp, align 2, !tbaa !322, !alias.scope !390
  %i.hq = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i16 %.sroa.0.0.copyload, ptr %i.hq, align 8, !tbaa !322, !alias.scope !390
  store i32 %i.hd, ptr %14, align 8, !tbaa !304, !alias.scope !390
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !323, !nonnull !39, !align !40 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 3 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !324 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !325
  %.not.i.i75 = icmp ult i32 %i.hu, %i.hw
  br i1 %.not.i.i75, label %bb.bw, label %bb.bv, !prof !326

bb.bv:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(26) %14)
  br label %bb.bx

bb.bw:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74
  %i.hx = zext i32 %i.hu to i64
  %i.hy = load ptr, ptr %i.hs, align 8, !tbaa !303
  %i.hz = getelementptr inbounds nuw [32 x i8], ptr %i.hy, i64 %i.hx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  %i.ia = load i32, ptr %i.ht, align 8, !tbaa !324
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr %i.ht, align 8, !tbaa !324
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  br label %.thread158

.thread158:                                       ; preds = %bb.p, %bb.bb, %bb.ap, %.thread232, %bb.bu, %bb.bh, %bb.bi, %.critedge6, %bb.bx, %bb.be, %bb.ak, %bb.s, %bb.bg, %bb.an, %bb.t
  %.7 = phi i1 [ false, %bb.bg ], [ false, %bb.bx ], [ false, %bb.an ], [ false, %bb.be ], [ false, %bb.t ], [ false, %bb.ak ], [ true, %bb.bi ], [ false, %bb.s ], [ true, %bb.bh ], [ true, %.critedge6 ], [ true, %bb.bu ], [ true, %.thread232 ], [ true, %bb.ap ], [ true, %bb.bb ], [ true, %bb.p ]
  ret i1 %.7
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_Z28CC_PPC64_ELF_Shadow_GPR_RegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(420) %5) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !303  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 4, !tbaa !304  ; 16 uses
  %i.e = and i32 %i.d, 4194304
  %.not.i = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %.not.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 1065353216
  %or.cond69.not = icmp eq i32 %i.f, 1065353216
  br i1 %or.cond69.not, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit: ; preds = %bb.b
  %i.g = load i16, ptr %2, align 2, !tbaa !383    ; 2 uses
  %i.h = and i16 %i.g, -2
  %switch = icmp eq i16 %i.h, 14
  br i1 %switch, label %.critedge.1, label %bb.c

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread: ; preds = %bb.a
  %i.i = load i16, ptr %2, align 2, !tbaa !383    ; 2 uses
  %i.j = and i16 %i.i, -2
  %switch64 = icmp eq i16 %i.j, 14
  br i1 %switch64, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split, label %bb.c

.critedge.1:                                      ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit
  %i.k = and i32 %i.d, 8388608
  %.not.i.i.1 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split, label %.critedge.2

.critedge.2:                                      ; preds = %.critedge.1
  %i.l = and i32 %i.d, 16777216
  %.not.i.i.2 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split, label %.critedge.3

.critedge.3:                                      ; preds = %.critedge.2
  %i.m = and i32 %i.d, 33554432
  %.not.i.i.3 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split, label %.critedge.4

.critedge.4:                                      ; preds = %.critedge.3
  %i.n = and i32 %i.d, 67108864
  %.not.i.i.4 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split, label %.critedge.5

.critedge.5:                                      ; preds = %.critedge.4
  %i.o = and i32 %i.d, 134217728
  %.not.i.i.5 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split, label %.critedge.6

.critedge.6:                                      ; preds = %.critedge.5
  %i.p = and i32 %i.d, 268435456
  %.not.i.i.6 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split, label %.critedge.7

.critedge.7:                                      ; preds = %.critedge.6
  %i.q = and i32 %i.d, 536870912
  %.not.i.i.7 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.c:                                             ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit
  %i.r = phi i16 [ %i.i, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread ], [ %i.g, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit ] ; 3 uses
  %i.s = add i16 %i.r, -19
  %spec.select.i.i = icmp ult i16 %i.s, 144
  br i1 %spec.select.i.i, label %_ZNK4llvm3MVT14is128BitVectorEv.exit, label %bb.d

_ZNK4llvm3MVT14is128BitVectorEv.exit:             ; preds = %bb.c
  %i.t = zext nneg i16 %i.r to i64
  %i.u = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.v, align 16
  %i.w = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 128
  br i1 %i.w, label %.critedge2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i16 %i.r, 17
  br i1 %i.x, label %.critedge2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

.critedge2:                                       ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit, %bb.d
  br i1 %.not.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit18, label %bb.e

bb.e:                                             ; preds = %.critedge2
  %i.y = and i32 %i.d, 8388608
  %.not.i.i15.1 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i15.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit18, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = and i32 %i.d, 16777216
  %.not.i.i15.2 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i15.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit18, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = and i32 %i.d, 33554432
  %.not.i.i15.3 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i15.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = and i32 %i.d, 67108864
  %.not.i.i15.4 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i15.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit18, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = and i32 %i.d, 134217728
  %.not.i.i15.5 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i15.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit18, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = and i32 %i.d, 268435456
  %.not.i.i15.6 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i15.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit18, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = and i32 %i.d, 536870912
  %.not.i.i15.7 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i15.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit18, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit23

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit18: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.critedge2
  %.0613.i.i14.lcssa.wide = phi i64 [ 0, %.critedge2 ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ 7, %bb.k ] ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @_ZZ28CC_PPC64_ELF_Shadow_GPR_RegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE12ELF64ArgGPRs, i64 %.0613.i.i14.lcssa.wide
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !305
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.ag) #7
  %i.ah = shl nuw nsw i64 1, %.0613.i.i14.lcssa.wide
  %i.ai = and i64 %i.ah, 85
  %.not.not = icmp eq i64 %i.ai, 0
  %.pre63 = load ptr, ptr %i.a, align 8, !tbaa !303 ; 3 uses
  br i1 %.not.not, label %bb.l, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit23

bb.l:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit18
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre63, i64 64
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !304 ; 8 uses
  %i.al = and i32 %i.ak, 4194304
  %.not.i.i20 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i20, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i22, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = and i32 %i.ak, 8388608
  %.not.i.i20.1 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i20.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i22, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = and i32 %i.ak, 16777216
  %.not.i.i20.2 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i20.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i22, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = and i32 %i.ak, 33554432
  %.not.i.i20.3 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i20.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i22, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = and i32 %i.ak, 67108864
  %.not.i.i20.4 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i20.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i22, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = and i32 %i.ak, 134217728
  %.not.i.i20.5 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i20.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i22, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = and i32 %i.ak, 268435456
  %.not.i.i20.6 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i20.6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i22, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = and i32 %i.ak, 536870912
  %.not.i.i20.7 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i20.7, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i22, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit23

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i22: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.0613.i.i19.lcssa.wide = phi i64 [ 0, %bb.l ], [ 1, %bb.m ], [ 2, %bb.n ], [ 3, %bb.o ], [ 4, %bb.p ], [ 5, %bb.q ], [ 6, %bb.r ], [ 7, %bb.s ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_ZZ28CC_PPC64_ELF_Shadow_GPR_RegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE12ELF64ArgGPRs, i64 %.0613.i.i19.lcssa.wide
  %i.au = load i16, ptr %i.at, align 2, !tbaa !305
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.au) #7
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !303
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit23

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit23: ; preds = %bb.s, %bb.k, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i22, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit18
  %i.av = phi ptr [ %.pre63, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit18 ], [ %i.b, %bb.k ], [ %.pre, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i22 ], [ %.pre63, %bb.s ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !304 ; 8 uses
  %i.ay = and i32 %i.ax, 4194304
  %.not.i.i25 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i25, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit23
  %i.az = and i32 %i.ax, 8388608
  %.not.i.i25.1 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i25.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = and i32 %i.ax, 16777216
  %.not.i.i25.2 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i25.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split, label %bb.v
end_hunk_1
