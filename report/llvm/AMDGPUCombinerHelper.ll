Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUCombinerHelper?download=true
inline.NumInlined: 743
inline.NumDeleted: 379
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.llvm::fltSemantics" = type <{ i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8] }>
%"class.llvm::APFloat" = type { %"union.llvm::APFloat::Storage" }
%"union.llvm::APFloat::Storage" = type { %"class.llvm::detail::DoubleAPFloat", [8 x i8] }
%"class.llvm::detail::DoubleAPFloat" = type { ptr, ptr }
%"class.llvm::APInt" = type <{ %union.anon.168, i32, [4 x i8] }>
%union.anon.168 = type { i64 }
%"class.std::optional.181" = type { %"struct.std::_Optional_base.182" }
%"struct.std::_Optional_base.182" = type { %"struct.std::_Optional_payload.184" }
%"struct.std::_Optional_payload.184" = type { %"struct.std::_Optional_payload.base.188", [7 x i8] }
%"struct.std::_Optional_payload.base.188" = type { %"struct.std::_Optional_payload_base.base.187" }
%"struct.std::_Optional_payload_base.base.187" = type { %"union.std::_Optional_payload_base<llvm::FPValueAndVReg>::_Storage", i8 }
%"union.std::_Optional_payload_base<llvm::FPValueAndVReg>::_Storage" = type { %"struct.llvm::FPValueAndVReg" }
%"struct.llvm::FPValueAndVReg" = type <{ %"class.llvm::APFloat", %"class.llvm::Register", [4 x i8] }>
%"class.llvm::Register" = type { i32 }
%"struct.llvm::MIPatternMatch::GFCstOrSplatGFCstMatch" = type { ptr }
%"class.llvm::DstOp" = type <{ %union.anon.147, i32, [4 x i8] }>
%union.anon.147 = type { %"struct.llvm::MachineRegisterInfo::VRegAttrs" }
%"struct.llvm::MachineRegisterInfo::VRegAttrs" = type { %"class.llvm::PointerUnion", %"class.llvm::LLT" }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.91" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.91" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.92" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.92" = type { %"struct.llvm::detail::PunnedPointer.93" }
%"struct.llvm::detail::PunnedPointer.93" = type { [8 x i8] }
%"class.llvm::LLT" = type { i64 }
%"class.llvm::SrcOp" = type <{ %union.anon.148, i32, [4 x i8] }>
%union.anon.148 = type { %"class.llvm::MachineInstrBuilder" }
%"class.llvm::MachineInstrBuilder" = type { ptr, ptr }
%"struct.llvm::LegalityQuery" = type { i32, %"class.llvm::ArrayRef.149", %"class.llvm::ArrayRef.150" }
%"class.llvm::ArrayRef.149" = type { ptr, i64 }
%"class.llvm::ArrayRef.150" = type { ptr, i64 }
%"class.std::optional.151" = type { %"struct.std::_Optional_base.152" }
%"struct.std::_Optional_base.152" = type { %"struct.std::_Optional_payload.154" }
%"struct.std::_Optional_payload.154" = type { %"struct.std::_Optional_payload.base.158", [7 x i8] }
%"struct.std::_Optional_payload.base.158" = type { %"struct.std::_Optional_payload_base.base.157" }
%"struct.std::_Optional_payload_base.base.157" = type <{ %"union.std::_Optional_payload_base<llvm::APFloat>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::APFloat>::_Storage" = type { %"class.llvm::APFloat" }
%class.anon.161 = type <{ ptr, %"class.llvm::LLT", %"class.llvm::Register", i32, i32, [4 x i8], %"class.std::optional.151", ptr, %"class.llvm::Register", [4 x i8] }>
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::optional.162" = type { %"struct.std::_Optional_base.163" }
%"struct.std::_Optional_base.163" = type { %"struct.std::_Optional_payload.165" }
%"struct.std::_Optional_payload.165" = type { %"struct.std::_Optional_payload.base.170", [7 x i8] }
%"struct.std::_Optional_payload.base.170" = type { %"struct.std::_Optional_payload_base.base.169" }
%"struct.std::_Optional_payload_base.base.169" = type <{ %"union.std::_Optional_payload_base<llvm::ValueAndVReg>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::ValueAndVReg>::_Storage" = type { %"struct.llvm::ValueAndVReg" }
%"struct.llvm::ValueAndVReg" = type { %"class.llvm::APInt", %"class.llvm::Register", [4 x i8] }

$_ZNK4llvm3LLTeqERKS0_ = comdat any

$_ZN4llvm14MIPatternMatch22GFCstOrSplatGFCstMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE = comdat any

$_ZN4llvm7APFloatD2Ev = comdat any

$_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN4llvm11APFloatBase18semPPCDoubleDoubleE = external global %"struct.llvm::fltSemantics", align 4
@_ZZL8isInv2PiRKN4llvm7APFloatEE4KF16 = internal global %"class.llvm::APFloat" zeroinitializer, align 8
@_ZGVZL8isInv2PiRKN4llvm7APFloatEE4KF16 = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@_ZZL8isInv2PiRKN4llvm7APFloatEE4KF32 = internal global %"class.llvm::APFloat" zeroinitializer, align 8
@_ZGVZL8isInv2PiRKN4llvm7APFloatEE4KF32 = internal global i64 0, align 8
@_ZZL8isInv2PiRKN4llvm7APFloatEE4KF64 = internal global %"class.llvm::APFloat" zeroinitializer, align 8
@_ZGVZL8isInv2PiRKN4llvm7APFloatEE4KF64 = internal global i64 0, align 8
@_ZN4llvm11APFloatBase11semIEEEhalfE = external global %"struct.llvm::fltSemantics", align 4
@_ZN4llvm11APFloatBase13semIEEEsingleE = external global %"struct.llvm::fltSemantics", align 4
@_ZN4llvm11APFloatBase13semIEEEdoubleE = external global %"struct.llvm::fltSemantics", align 4
@_ZN4llvm3LLT11ExtendedLLTE = external local_unnamed_addr global i8, align 1

@_ZN4llvm20AMDGPUCombinerHelperC1ERNS_19GISelChangeObserverERNS_16MachineIRBuilderEbPNS_18GISelValueTrackingEPNS_20MachineDominatorTreeEPKNS_13LegalizerInfoERKNS_12GCNSubtargetE = unnamed_addr alias void (ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr), ptr @_ZN4llvm20AMDGPUCombinerHelperC2ERNS_19GISelChangeObserverERNS_16MachineIRBuilderEbPNS_18GISelValueTrackingEPNS_20MachineDominatorTreeEPKNS_13LegalizerInfoERKNS_12GCNSubtargetE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20AMDGPUCombinerHelperC2ERNS_19GISelChangeObserverERNS_16MachineIRBuilderEbPNS_18GISelValueTrackingEPNS_20MachineDominatorTreeEPKNS_13LegalizerInfoERKNS_12GCNSubtargetE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(520232) %7) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm14CombinerHelperC2ERNS_19GISelChangeObserverERNS_16MachineIRBuilderEbPNS_18GISelValueTrackingEPNS_20MachineDominatorTreeEPKNS_13LegalizerInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %7, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 912
  store ptr %i.c, ptr %i.b, align 8, !tbaa !90
  ret void
}

declare void @_ZN4llvm14CombinerHelperC2ERNS_19GISelChangeObserverERNS_16MachineIRBuilderEbPNS_18GISelValueTrackingEPNS_20MachineDominatorTreeEPKNS_13LegalizerInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm20AMDGPUCombinerHelper17matchFoldableFnegERNS_12MachineInstrERPS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %6 = alloca %"class.std::optional.181", align 8 ; 17 uses
  %7 = alloca %"struct.llvm::MIPatternMatch::GFCstOrSplatGFCstMatch", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.g = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.f, i32 %i.d) #12
  store ptr %i.g, ptr %2, align 8, !tbaa !45
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.i = tail call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.h, i32 %i.d) #12
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !41, !nonnull !42, !align !43
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.k = getelementptr i8, ptr %.val19, i64 4
  %.val19.val = load i32, ptr %i.k, align 4, !tbaa !29
  %i.l = tail call fastcc noundef zeroext i1 @_ZL21allUsesHaveSourceModsRN4llvm12MachineInstrERNS_19MachineRegisterInfoEj(i32 %.val19.val, ptr noundef nonnull align 8 dereferenceable(520) %i.j, i32 noundef 0)
  br i1 %i.l, label %bb.ah, label %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !45     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46
  switch i32 %i.o, label %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit [
    i32 193, label %bb.e
    i32 194, label %bb.e
    i32 195, label %bb.e
    i32 196, label %bb.e
    i32 197, label %bb.e
    i32 224, label %bb.e
    i32 225, label %bb.e
    i32 226, label %bb.e
    i32 227, label %bb.e
    i32 228, label %bb.e
    i32 229, label %bb.e
    i32 271, label %bb.e
    i32 212, label %bb.e
    i32 92, label %bb.e
    i32 213, label %bb.e
    i32 283, label %bb.e
    i32 284, label %bb.e
    i32 93, label %bb.e
    i32 96, label %bb.e
    i32 223, label %bb.e
    i32 4162, label %bb.e
    i32 4147, label %bb.e
    i32 4143, label %bb.e
    i32 139, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.m) #12
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !29
  switch i32 %i.v, label %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit [
    i32 3457, label %bb.e
    i32 3458, label %bb.e
    i32 3535, label %bb.e
    i32 2497, label %bb.e
    i32 2496, label %bb.e
    i32 2494, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !41, !nonnull !42, !align !43
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.x = getelementptr i8, ptr %.val18, i64 4
  %.val18.val = load i32, ptr %i.x, align 4, !tbaa !29
  %i.y = tail call fastcc noundef zeroext i1 @_ZL21allUsesHaveSourceModsRN4llvm12MachineInstrERNS_19MachineRegisterInfoEj(i32 %.val18.val, ptr noundef nonnull align 8 dereferenceable(520) %i.w, i32 noundef 4)
  br i1 %i.y, label %bb.ah, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %2, align 8, !tbaa !45
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.ab = getelementptr i8, ptr %i.z, i64 32
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.ac = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ad = tail call fastcc noundef zeroext i1 @_ZL21allUsesHaveSourceModsRN4llvm12MachineInstrERNS_19MachineRegisterInfoEj(i32 %.val.val, ptr noundef nonnull align 8 dereferenceable(520) %i.aa, i32 noundef 4)
  br i1 %i.ad, label %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, label %bb.ah

_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit: ; preds = %bb.d, %bb.c, %bb.f, %bb.b
  %i.ae = load ptr, ptr %2, align 8, !tbaa !45    ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !46
  switch i32 %i.ag, label %bb.ag [
    i32 224, label %bb.g
    i32 225, label %bb.g
    i32 226, label %bb.g
    i32 227, label %bb.g
    i32 228, label %bb.g
    i32 229, label %bb.g
    i32 4147, label %bb.g
    i32 4143, label %bb.g
    i32 193, label %bb.ad
    i32 194, label %bb.ad
    i32 196, label %bb.ad
    i32 197, label %bb.ad
    i32 195, label %bb.ah
    i32 212, label %bb.ah
    i32 92, label %bb.ah
    i32 213, label %bb.ah
    i32 283, label %bb.ah
    i32 284, label %bb.ah
    i32 93, label %bb.ah
    i32 96, label %bb.ah
    i32 271, label %bb.ah
    i32 223, label %bb.ah
    i32 4162, label %bb.ah
    i32 139, label %bb.ae
    i32 141, label %bb.ae
  ]

bb.g:                                             ; preds = %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 68
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !41, !nonnull !42, !align !43
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i8 0, ptr %i.am, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store ptr %6, ptr %7, align 8
  %i.an = call noundef zeroext i1 @_ZN4llvm14MIPatternMatch22GFCstOrSplatGFCstMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(520) %i.al, i32 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br i1 %i.an, label %bb.h, label %_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %6, align 8, !tbaa !29
  %.not.i.i.i.i = icmp eq ptr %i.ao, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %.0.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i.i, ptr %i.aq, ptr %6
  %.0.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.0.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 20
  %i.ar = load i8, ptr %.0.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.as = and i8 %i.ar, 15
  %or.cond.not.i = icmp eq i8 %i.as, 3
  br i1 %or.cond.not.i, label %_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ae) #12
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !205, !nonnull !42, !align !43
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 780
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !371, !range !52, !noundef !42
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.az = load atomic i8, ptr @_ZGVZL8isInv2PiRKN4llvm7APFloatEE4KF16 acquire, align 8
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.k, label %bb.o, !prof !372

bb.k:                                             ; preds = %bb.j
  %i.bb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL8isInv2PiRKN4llvm7APFloatEE4KF16) #12
  %.not.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 16, ptr %i.bc, align 8, !tbaa !54
  store i64 12568, ptr %3, align 8, !tbaa !29
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF16, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase11semIEEEhalfE, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !54
  %i.be = icmp ugt i32 %i.bd, 64
  br i1 %i.be, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.bf) #13
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.bh = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm7APFloatD2Ev, ptr nonnull @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF16, ptr nonnull @__dso_handle) #12 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL8isInv2PiRKN4llvm7APFloatEE4KF16) #12
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i, %bb.k, %bb.j
  %i.bi = load atomic i8, ptr @_ZGVZL8isInv2PiRKN4llvm7APFloatEE4KF32 acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.p, label %bb.t, !prof !372

bb.p:                                             ; preds = %bb.o
  %i.bk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL8isInv2PiRKN4llvm7APFloatEE4KF32) #12
  %.not3.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not3.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 32, ptr %i.bl, align 8, !tbaa !54
  store i64 1042479491, ptr %4, align 8, !tbaa !29
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF32, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEsingleE, ptr noundef nonnull align 8 dereferenceable(12) %4) #12
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !54
  %i.bn = icmp ugt i32 %i.bm, 64
  br i1 %i.bn, label %bb.r, label %_ZN4llvm5APIntD2Ev.exit5.i.i

bb.r:                                             ; preds = %bb.q
  %i.bo = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZN4llvm5APIntD2Ev.exit5.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #13
  br label %_ZN4llvm5APIntD2Ev.exit5.i.i

_ZN4llvm5APIntD2Ev.exit5.i.i:                     ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.bq = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm7APFloatD2Ev, ptr nonnull @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF32, ptr nonnull @__dso_handle) #12 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL8isInv2PiRKN4llvm7APFloatEE4KF32) #12
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit5.i.i, %bb.p, %bb.o
  %i.br = load atomic i8, ptr @_ZGVZL8isInv2PiRKN4llvm7APFloatEE4KF64 acquire, align 8
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.u, label %bb.y, !prof !372

bb.u:                                             ; preds = %bb.t
  %i.bt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL8isInv2PiRKN4llvm7APFloatEE4KF64) #12
  %.not4.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not4.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 64, ptr %i.bu, align 8, !tbaa !54
  store i64 4594902181429758082, ptr %5, align 8, !tbaa !29
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF64, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE, ptr noundef nonnull align 8 dereferenceable(12) %5) #12
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !54
  %i.bw = icmp ugt i32 %i.bv, 64
  br i1 %i.bw, label %bb.w, label %_ZN4llvm5APIntD2Ev.exit6.i.i

bb.w:                                             ; preds = %bb.v
  %i.bx = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN4llvm5APIntD2Ev.exit6.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #13
  br label %_ZN4llvm5APIntD2Ev.exit6.i.i

_ZN4llvm5APIntD2Ev.exit6.i.i:                     ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.bz = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm7APFloatD2Ev, ptr nonnull @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF64, ptr nonnull @__dso_handle) #12 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL8isInv2PiRKN4llvm7APFloatEE4KF64) #12
  br label %bb.y

bb.y:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit6.i.i, %bb.u, %bb.t
  %i.ca = load ptr, ptr %6, align 8, !tbaa !29    ; 3 uses
  %i.cb = load ptr, ptr @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF16, align 8, !tbaa !29
  %.not.i.i6.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i.i6.i, label %bb.z, label %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit.thread.i.i

bb.z:                                             ; preds = %bb.y
  %.not5.i.i.i = icmp eq ptr %i.ca, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not5.i.i.i, label %.split.i.i, label %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit.i.i

.split.i.i:                                       ; preds = %bb.z
  %i.cc = call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF16) #12
  br i1 %i.cc, label %_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread.i, label %thread-pre-split.i.i

_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit.i.i: ; preds = %bb.z
  %i.cd = call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF16) #12
  br i1 %i.cd, label %_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread.i, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit.i.i, %.split.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !29
  br label %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit.thread.i.i

_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit.thread.i.i: ; preds = %thread-pre-split.i.i, %bb.y
  %i.ce = phi ptr [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.ca, %bb.y ] ; 2 uses
  %i.cf = load ptr, ptr @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF32, align 8, !tbaa !29
  %.not.i7.i.i = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i7.i.i, label %bb.aa, label %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit10.thread.i.i

bb.aa:                                            ; preds = %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit.thread.i.i
  %.not5.i9.i.i = icmp eq ptr %i.ce, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not5.i9.i.i, label %.split17.i.i, label %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit10.i.i

.split17.i.i:                                     ; preds = %bb.aa
  %i.cg = call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF32) #12
  br i1 %i.cg, label %_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread.i, label %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit10.thread.i.i

_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit10.i.i: ; preds = %bb.aa
  %i.ch = call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF32) #12
  br i1 %i.ch, label %_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread.i, label %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit10.thread.i.i

_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit10.thread.i.i: ; preds = %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit10.i.i, %.split17.i.i, %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit.thread.i.i
  %i.ci = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.cj = load ptr, ptr @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF64, align 8, !tbaa !29
  %.not.i11.i.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i11.i.i, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit10.thread.i.i
  %.not5.i13.i.i = icmp eq ptr %i.ci, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not5.i13.i.i, label %_ZL8isInv2PiRKN4llvm7APFloatE.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.ab
  %i.ck = call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF64) #12
  br i1 %i.ck, label %_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread.i, label %.critedge.i

_ZL8isInv2PiRKN4llvm7APFloatE.exit.i:             ; preds = %bb.ab
  %i.cl = call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) @_ZZL8isInv2PiRKN4llvm7APFloatEE4KF64) #12
  br i1 %i.cl, label %_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread.i, label %.critedge.i

.critedge.i:                                      ; preds = %_ZL8isInv2PiRKN4llvm7APFloatE.exit.i, %.split.i, %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit10.thread.i.i, %bb.i
  br label %_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread.i

_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread.i:      ; preds = %.critedge.i, %_ZL8isInv2PiRKN4llvm7APFloatE.exit.i, %.split.i, %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit10.i.i, %.split17.i.i, %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit.i.i, %.split.i.i, %bb.h, %bb.g
  %i.cm = phi i1 [ false, %_ZL8isInv2PiRKN4llvm7APFloatE.exit.i ], [ false, %bb.h ], [ true, %.critedge.i ], [ true, %bb.g ], [ false, %.split.i ], [ false, %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit10.i.i ], [ false, %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit.i.i ], [ false, %.split17.i.i ], [ false, %.split.i.i ]
  %i.cn = load i8, ptr %i.am, align 8, !tbaa !48, !range !52, !noundef !42
  %i.co = trunc nuw i8 %i.cn to i1
  store i8 0, ptr %i.am, align 8, !tbaa !48
  br i1 %i.co, label %bb.ac, label %_ZL26isConstantCostlierToNegateRN4llvm12MachineInstrENS_8RegisterERNS_19MachineRegisterInfoE.exit

bb.ac:                                            ; preds = %_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread.i
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %6) #12
  br label %_ZL26isConstantCostlierToNegateRN4llvm12MachineInstrENS_8RegisterERNS_19MachineRegisterInfoE.exit

_ZL26isConstantCostlierToNegateRN4llvm12MachineInstrENS_8RegisterERNS_19MachineRegisterInfoE.exit: ; preds = %_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ah

bb.ad:                                            ; preds = %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit
  %i.cp = getelementptr i8, ptr %i.ae, i64 44
  %.val21 = load i32, ptr %i.cp, align 4, !tbaa !55
  %i.cq = and i32 %.val21, 64
  %i.cr = icmp ne i32 %i.cq, 0
  br label %bb.ah

bb.ae:                                            ; preds = %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit
  %i.cs = tail call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ae) #12
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !28
  %i.cv = zext i32 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !29
  switch i32 %i.cy, label %bb.ag [
    i32 3457, label %bb.ah
    i32 3458, label %bb.ah
    i32 3535, label %bb.ah
    i32 2497, label %bb.ah
    i32 2496, label %bb.ah
    i32 2494, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.cz = load ptr, ptr %2, align 8, !tbaa !45
  %i.da = getelementptr i8, ptr %i.cz, i64 44
  %.val20 = load i32, ptr %i.da, align 4, !tbaa !55
  %i.db = and i32 %.val20, 64
  %i.dc = icmp ne i32 %i.db, 0
  br label %bb.ah

bb.ag:                                            ; preds = %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %bb.ae
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit, %bb.e, %bb.f, %bb.b, %bb.ad, %_ZL26isConstantCostlierToNegateRN4llvm12MachineInstrENS_8RegisterERNS_19MachineRegisterInfoE.exit
  %.1 = phi i1 [ false, %bb.b ], [ true, %bb.ae ], [ %i.cm, %_ZL26isConstantCostlierToNegateRN4llvm12MachineInstrENS_8RegisterERNS_19MachineRegisterInfoE.exit ], [ %i.cr, %bb.ad ], [ false, %bb.e ], [ true, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit ], [ false, %bb.f ], [ true, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit ], [ true, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit ], [ true, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit ], [ true, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit ], [ true, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit ], [ true, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit ], [ true, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit ], [ true, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit ], [ true, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit ], [ true, %_ZL15fnegFoldsIntoMIRKN4llvm12MachineInstrE.exit ], [ false, %bb.ag ], [ %i.dc, %bb.af ], [ true, %bb.ae ], [ true, %bb.ae ], [ true, %bb.ae ], [ true, %bb.ae ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL21allUsesHaveSourceModsRN4llvm12MachineInstrERNS_19MachineRegisterInfoEj(i32 %.32.val.4.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0, i32 noundef range(i32 0, 5) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %.32.val.4.val, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = and i32 %.32.val.4.val, 2147483647
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = zext nneg i32 %.32.val.4.val to i64
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %.0.in.i.i.i = select i1 %i.a, ptr %i.g, ptr %i.k
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !375 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %.0.i.i.i, align 8
  %i.m = and i32 %i.l, -2130706432
  %or.cond.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %or.cond.not.i.i.i, label %.lr.ph, label %.critedge2.i.i.i.i

.critedge2.i.i.i.i:                               ; preds = %bb.b, %bb.c
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.c ], [ %.0.i.i.i, %bb.b ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !29 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.critedge2.i.i.i.i
  %i.n = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.o = and i32 %i.n, -2130706432
  %or.cond.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %or.cond.not.i.i.i.i, label %.lr.ph, label %.critedge2.i.i.i.i, !llvm.loop !373

.lr.ph:                                           ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i, %bb.b ], [ %storemerge.i.i.i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i, %.lr.ph
  %.01515 = phi i32 [ 0, %.lr.ph ], [ %.217, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i ] ; 3 uses
  %.sroa.01.014 = phi ptr [ %.sroa.0.0.i.i, %.lr.ph ], [ %storemerge.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.014, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !378  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !29   ; 4 uses
  %i.v = icmp ugt i64 %i.u, 7
  br i1 %i.v, label %bb.d, label %_ZNK4llvm12MachineInstr11memoperandsEv.exit.thread.i

bb.d:                                             ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit
end_hunk_0
begin_hunk_1_@_ZNK4llvm20AMDGPUCombinerHelper24matchConstantIs32BitMaskENS_8RegisterE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %i.h = icmp ult i32 %i.g, 65
  %i.i = load ptr, ptr %2, align 8                ; 3 uses
  %spec.select.i = select i1 %i.h, ptr %2, ptr %i.i
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !29 ; 5 uses
  %.not.i.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i.i, label %_ZN4llvm16isShiftedMask_64EmRjS0_.exit.thread, label %_ZN4llvm16isShiftedMask_64Em.exit.i

_ZN4llvm16isShiftedMask_64Em.exit.i:              ; preds = %bb.b
  %i.j = add i64 %.0.i, -1
  %i.k = or i64 %i.j, %.0.i                       ; 2 uses
  %i.l = add i64 %i.k, 1
  %i.m = and i64 %i.l, %i.k
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN4llvm16isShiftedMask_64EmRjS0_.exit.thread

bb.c:                                             ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i
  %i.o = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i) ; 2 uses
  %i.p = icmp samesign ugt i64 %i.o, 31
  br i1 %i.p, label %bb.d, label %_ZN4llvm16isShiftedMask_64EmRjS0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = trunc nuw nsw i64 %i.o to i32
  %i.r = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i, i1 true) ; 2 uses
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = icmp eq i64 %i.r, 0
  %i.u = sub nuw nsw i32 64, %i.q
  %i.v = icmp eq i32 %i.u, %i.s
  %i.w = or i1 %i.t, %i.v
  br label %_ZN4llvm16isShiftedMask_64EmRjS0_.exit.thread

_ZN4llvm16isShiftedMask_64EmRjS0_.exit.thread:    ; preds = %bb.b, %_ZN4llvm16isShiftedMask_64Em.exit.i, %bb.d, %bb.c
  %.1 = phi i1 [ %i.w, %bb.d ], [ false, %bb.c ], [ false, %_ZN4llvm16isShiftedMask_64Em.exit.i ], [ false, %bb.b ] ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !397
  %i.x = icmp ult i32 %i.g, 65
  %i.y = icmp eq ptr %i.i, null
  %or.cond = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond, label %_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16isShiftedMask_64EmRjS0_.exit.thread
  call void @_ZdaPv(ptr noundef nonnull %i.i) #13
  br label %_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZN4llvm16isShiftedMask_64EmRjS0_.exit.thread, %bb.e
  %.111 = phi i1 [ %.1, %bb.e ], [ %.1, %_ZN4llvm16isShiftedMask_64EmRjS0_.exit.thread ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %.111
}

declare void @_ZN4llvm34getIConstantVRegValWithLookThroughENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind writable sret(%"class.std::optional.162") align 8, i32, ptr noundef nonnull align 8 dereferenceable(520), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm14MIPatternMatch22GFCstOrSplatGFCstMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::optional.181", align 8 ; 9 uses
  %4 = alloca %"class.std::optional.181", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN4llvm17getFConstantSplatENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.181") align 8 %3, i32 %2, ptr noundef nonnull align 8 dereferenceable(520) %1, i1 noundef zeroext true) #12
  %i.a = load ptr, ptr %0, align 8, !tbaa !400, !nonnull !42, !align !43 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !48, !range !52, !noundef !42
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !52
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond.i.i.i.i.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %3) #12 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !68
  store i32 %i.k, ptr %i.i, align 8, !tbaa !68
  br label %_ZNSt8optionalIN4llvm14FPValueAndVRegEEaSEOS2_.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm7APFloat7StorageC1EOS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !68
  store i32 %i.n, ptr %i.l, align 8, !tbaa !68
  store i8 1, ptr %i.b, align 8, !tbaa !48
  br label %_ZNSt8optionalIN4llvm14FPValueAndVRegEEaSEOS2_.exit

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !48
  br i1 %i.d, label %bb.f, label %_ZNSt8optionalIN4llvm14FPValueAndVRegEEaSEOS2_.exit

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.a) #12
  br label %_ZNSt8optionalIN4llvm14FPValueAndVRegEEaSEOS2_.exit

_ZNSt8optionalIN4llvm14FPValueAndVRegEEaSEOS2_.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %i.o = load i8, ptr %i.b, align 8, !tbaa !48, !range !52, !noundef !42
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt8optionalIN4llvm14FPValueAndVRegEEaSEOS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN4llvm34getFConstantVRegValWithLookThroughENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.181") align 8 %4, i32 %2, ptr noundef nonnull align 8 dereferenceable(520) %1, i1 noundef zeroext true) #12
  %i.q = load ptr, ptr %0, align 8, !tbaa !400, !nonnull !42, !align !43 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 4 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !48, !range !52, !noundef !42
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !range !52
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %or.cond.i.i.i.i.i10 = select i1 %i.t, i1 %i.w, i1 false
  br i1 %or.cond.i.i.i.i.i10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %4) #12 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !68
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !68
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm7APFloat7StorageC1EOS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %4) #12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !68
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !68
  store i8 1, ptr %i.r, align 8, !tbaa !48
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  store i8 0, ptr %i.r, align 8, !tbaa !48
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.q) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.j, %bb.k, %bb.l
  %i.ae = load i8, ptr %i.r, align 8, !tbaa !48, !range !52, !noundef !42
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i8, ptr %i.u, align 8, !tbaa !48, !range !52, !noundef !42
  %i.ah = trunc nuw i8 %i.ag to i1
  store i8 0, ptr %i.u, align 8, !tbaa !48
  br i1 %i.ah, label %bb.n, label %_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %4) #12
  br label %_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt8optionalIN4llvm14FPValueAndVRegEEaSEOS2_.exit, %_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit
  %i.ai = phi i1 [ %i.af, %_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit ], [ true, %_ZNSt8optionalIN4llvm14FPValueAndVRegEEaSEOS2_.exit ]
  %i.aj = load i8, ptr %i.e, align 8, !tbaa !48, !range !52, !noundef !42
  %i.ak = trunc nuw i8 %i.aj to i1
  store i8 0, ptr %i.e, align 8, !tbaa !48
  br i1 %i.ak, label %bb.o, label %_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit12

bb.o:                                             ; preds = %.critedge
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %3) #12
  br label %_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit12

_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit12: ; preds = %.critedge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i1 %i.ai
}

declare void @_ZN4llvm17getFConstantSplatENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind writable sret(%"class.std::optional.181") align 8, i32, ptr noundef nonnull align 8 dereferenceable(520), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN4llvm34getFConstantVRegValWithLookThroughENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind writable sret(%"class.std::optional.181") align 8, i32, ptr noundef nonnull align 8 dereferenceable(520), i1 noundef zeroext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN4llvm7APFloat7StorageC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7APFloatD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

declare noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !401
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.b, ptr %i.c, align 8, !tbaa !410
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = ptrtoint ptr %1 to i64
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29   ; 3 uses
  %i.h = icmp ugt i64 %i.g, 7
  br i1 %i.h, label %bb.b, label %_ZNK4llvm12MachineInstr13getPCSectionsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %i.g, 7
  %.not.i = icmp eq i64 %i.i, 3
  %i.j = and i64 %i.g, -8
  %i.k = inttoptr i64 %i.j to ptr                 ; 6 uses
  br i1 %.not.i, label %bb.c, label %_ZNK4llvm12MachineInstr13getPCSectionsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.m = load i8, ptr %i.l, align 1, !tbaa !411, !range !52, !noundef !42
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZNK4llvm12MachineInstr13getPCSectionsEv.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i32, ptr %i.k, align 8, !tbaa !57
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.t = load i8, ptr %i.s, align 4, !tbaa !412, !range !52, !noundef !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.v = load i8, ptr %i.u, align 1, !tbaa !413, !range !52, !noundef !42
  %narrow.i.i.i.i.i.i = add nuw nsw i8 %i.v, %i.t
  %i.w = zext nneg i8 %narrow.i.i.i.i.i.i to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.z = load i8, ptr %i.y, align 2, !tbaa !414, !range !52, !noundef !42
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !415
  br label %_ZNK4llvm12MachineInstr13getPCSectionsEv.exit

_ZNK4llvm12MachineInstr13getPCSectionsEv.exit:    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.1.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.ac, %bb.d ], [ null, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.1.i, ptr %i.ad, align 8, !tbaa !416
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !29  ; 3 uses
  %i.af = icmp ugt i64 %i.ae, 7
  br i1 %i.af, label %bb.e, label %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit

bb.e:                                             ; preds = %_ZNK4llvm12MachineInstr13getPCSectionsEv.exit
  %i.ag = and i64 %i.ae, 7
  %.not.i7 = icmp eq i64 %i.ag, 3
  %i.ah = and i64 %i.ae, -8
  %i.ai = inttoptr i64 %i.ah to ptr               ; 7 uses
  br i1 %.not.i7, label %bb.f, label %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 9
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !417, !range !52, !noundef !42
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !57
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !412, !range !52, !noundef !42
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %i.at = load i8, ptr %i.as, align 1, !tbaa !413, !range !52, !noundef !42
  %narrow.i.i.i.i.i.i8 = add nuw nsw i8 %i.at, %i.ar
  %i.au = zext nneg i8 %narrow.i.i.i.i.i.i8 to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !414, !range !52, !noundef !42
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 7
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !411, !range !52, !noundef !42
  %narrow.i.i = add nuw nsw i8 %i.az, %i.ax
  %i.ba = zext nneg i8 %narrow.i.i to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !415
  br label %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit

_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit:  ; preds = %_ZNK4llvm12MachineInstr13getPCSectionsEv.exit, %bb.e, %bb.f, %bb.g
  %.1.i6 = phi ptr [ null, %_ZNK4llvm12MachineInstr13getPCSectionsEv.exit ], [ null, %bb.e ], [ %i.bc, %bb.g ], [ null, %bb.f ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.1.i6, ptr %i.bd, align 8, !tbaa !418
  %i.be = load i64, ptr %i.f, align 8, !tbaa !29  ; 3 uses
  %i.bf = icmp ugt i64 %i.be, 7
  br i1 %i.bf, label %bb.h, label %_ZNK4llvm12MachineInstr21getDeactivationSymbolEv.exit

bb.h:                                             ; preds = %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit
  %i.bg = and i64 %i.be, 7
  %.not.i10 = icmp eq i64 %i.bg, 3
  %i.bh = and i64 %i.be, -8
  %i.bi = inttoptr i64 %i.bh to ptr               ; 8 uses
  br i1 %.not.i10, label %bb.i, label %_ZNK4llvm12MachineInstr21getDeactivationSymbolEv.exit

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !419, !range !52, !noundef !42
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.j, label %_ZNK4llvm12MachineInstr21getDeactivationSymbolEv.exit

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bn = load i32, ptr %i.bi, align 8, !tbaa !57
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !412, !range !52, !noundef !42
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 5
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !413, !range !52, !noundef !42
  %narrow.i.i.i.i.i.i.i.i = add nuw nsw i8 %i.bt, %i.br
  %i.bu = zext nneg i8 %narrow.i.i.i.i.i.i.i.i to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !414, !range !52, !noundef !42
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 7
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !411, !range !52, !noundef !42
  %narrow.i.i.i.i.i.i.i = add nuw nsw i8 %i.bz, %i.bx
  %i.ca = zext nneg i8 %narrow.i.i.i.i.i.i.i to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !420, !range !52, !noundef !42
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ce
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = add i64 %i.cg, 7
  %i.ci = and i64 %i.ch, -8
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !421
  br label %_ZNK4llvm12MachineInstr21getDeactivationSymbolEv.exit

_ZNK4llvm12MachineInstr21getDeactivationSymbolEv.exit: ; preds = %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit, %bb.h, %bb.i, %bb.j
  %.1.i9 = phi ptr [ null, %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit ], [ null, %bb.h ], [ %i.ck, %bb.j ], [ null, %bb.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.1.i9, ptr %i.cl, align 8, !tbaa !422
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

declare noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), i8 noundef signext, ptr noundef) local_unnamed_addr #1

declare void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29)) local_unnamed_addr #1

declare noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm6detail9IEEEFloat15getExactLog2AbsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm6detail13DoubleAPFloat15getExactLog2AbsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_20AMDGPUCombinerHelper34matchCombineFmulWithSelectToFldexpERNS0_12MachineInstrES6_RSt8functionIS3_EE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #0 align 2 {
bb.a:
  %2 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %3 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 8 uses
  %4 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %5 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 9 uses
  %6 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %7 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %8 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %9 = alloca %"class.llvm::SrcOp", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %11 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %12 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %13 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !87    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i64 %i.d, 60
  %i.f = add nsw i64 %i.e, -5
  %switch.selectcmp.i.i.i.i.i = icmp ult i64 %i.f, 4
end_hunk_1
