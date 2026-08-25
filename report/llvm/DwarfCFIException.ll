Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DwarfCFIException?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4llvm17AsmPrinterHandler11beginModuleEPNS_6ModuleE = comdat any

$_ZN4llvm17AsmPrinterHandler13setSymbolSizeEPKNS_8MCSymbolEm = comdat any

$_ZN4llvm17AsmPrinterHandler16beginInstructionEPKNS_12MachineInstrE = comdat any

$_ZN4llvm17AsmPrinterHandler14endInstructionEv = comdat any

$_ZN4llvm17AsmPrinterHandler18beginCodeAlignmentERKNS_17MachineBasicBlockE = comdat any

$_ZN4llvm17AsmPrinterHandler12beginFuncletERKNS_17MachineBasicBlockEPNS_8MCSymbolE = comdat any

$_ZN4llvm17AsmPrinterHandler10endFuncletEv = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN4llvm17DwarfCFIExceptionE = hidden unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr null, ptr @_ZN4llvm17DwarfCFIExceptionD2Ev, ptr @_ZN4llvm17DwarfCFIExceptionD0Ev, ptr @_ZN4llvm17AsmPrinterHandler11beginModuleEPNS_6ModuleE, ptr @_ZN4llvm17DwarfCFIException9endModuleEv, ptr @_ZN4llvm17DwarfCFIException13beginFunctionEPKNS_15MachineFunctionE, ptr @_ZN4llvm17AsmPrinterHandler15markFunctionEndEv, ptr @_ZN4llvm17DwarfCFIException11endFunctionEPKNS_15MachineFunctionE, ptr @_ZN4llvm17DwarfCFIException22beginBasicBlockSectionERKNS_17MachineBasicBlockE, ptr @_ZN4llvm17DwarfCFIException20endBasicBlockSectionERKNS_17MachineBasicBlockE, ptr @_ZN4llvm17AsmPrinterHandler13setSymbolSizeEPKNS_8MCSymbolEm, ptr @_ZN4llvm17AsmPrinterHandler16beginInstructionEPKNS_12MachineInstrE, ptr @_ZN4llvm17AsmPrinterHandler14endInstructionEv, ptr @_ZN4llvm17AsmPrinterHandler18beginCodeAlignmentERKNS_17MachineBasicBlockE, ptr @_ZN4llvm17AsmPrinterHandler12beginFuncletERKNS_17MachineBasicBlockEPNS_8MCSymbolE, ptr @_ZN4llvm17AsmPrinterHandler10endFuncletEv, ptr @_ZN4llvm10EHStreamer20computeCallSiteTableERNS_15SmallVectorImplINS0_13CallSiteEntryEEERNS1_INS0_13CallSiteRangeEEERKNS1_IPKNS_14LandingPadInfoEEERKNS1_IjEE, ptr @_ZN4llvm10EHStreamer13emitTypeInfosEjPNS_8MCSymbolE] }, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN4llvm17DwarfCFIExceptionC1EPNS_10AsmPrinterE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm17DwarfCFIExceptionC2EPNS_10AsmPrinterE
@_ZN4llvm17DwarfCFIExceptionD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4llvm17DwarfCFIExceptionD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm17DwarfCFIExceptionC2EPNS_10AsmPrinterE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm10EHStreamerC2EPNS_10AsmPrinterE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #10
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN4llvm17DwarfCFIExceptionE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  ret void
}

declare hidden void @_ZN4llvm10EHStreamerC2EPNS_10AsmPrinterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm17DwarfCFIExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN4llvm17DwarfCFIExceptionE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #11
  br label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4llvm10EHStreamerD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #10
  ret void
}

; Function Attrs: nounwind
declare hidden void @_ZN4llvm10EHStreamerD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm17DwarfCFIExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN4llvm17DwarfCFIExceptionE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm17DwarfCFIExceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #11, !inline_history !16
  br label %_ZN4llvm17DwarfCFIExceptionD2Ev.exit

_ZN4llvm17DwarfCFIExceptionD2Ev.exit:             ; preds = %bb.a, %bb.b
  tail call void @_ZN4llvm10EHStreamerD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(56) %0) #10, !inline_history !16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #11
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm17DwarfCFIException14addPersonalityEPKNS_11GlobalValueE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 9 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.j = and i64 %i.g, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.j ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.v, %bb.f ] ; 9 uses
  %i.k = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !18
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.w = add nsw i64 %.052.i.i.i.i, -1
  %i.x = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.x, label %bb.b, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !20

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.f
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.e, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.y = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.y, label %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !18
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.h
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.ab, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !18
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !18
  %i.ag = icmp eq ptr %i.af, %1
  %spec.select.i.i.i.i = select i1 %i.ag, ptr %.sroa.032.2.i.i.i.i, ptr %i.d
  br label %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit21: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit23: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit: ; preds = %bb.b, %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit21, %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit23, %bb.g, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.g ], [ %i.aj, %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit23 ], [ %i.ai, %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit21 ], [ %i.ah, %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %bb.b ]
  %.not = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.d
  br i1 %.not, label %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.thread, label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE9push_backERKS3_.exit

_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.d, %i.al
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.thread
  store ptr %1, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.am, ptr %i.c, align 8, !tbaa !22
  br label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit.thread
  %i.an = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.an, label %bb.l, label %_ZNKSt6vectorIPKN4llvm11GlobalValueESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

_ZNKSt6vectorIPKN4llvm11GlobalValueESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ao = ashr exact i64 %i.g, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #13 ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.g ; 2 uses
  store ptr %1, ptr %i.av, align 8, !tbaa !18
  %i.aw = icmp sgt i64 %i.g, 0
  br i1 %i.aw, label %bb.m, label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIPKN4llvm11GlobalValueESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %i.b, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIPKN4llvm11GlobalValueESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.not.i17.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #11
  br label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.au, ptr %i.a, align 8, !tbaa !10
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  store ptr %i.ay, ptr %i.ak, align 8, !tbaa !15
  br label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j, %_ZN4llvm12is_containedIRSt6vectorIPKNS_11GlobalValueESaIS4_EES4_EEbOT_RKT0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm17DwarfCFIException9endModuleEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28, !nonnull !157, !align !158 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.f = load i32, ptr %i.e, align 8, !tbaa !159
  switch i32 %i.f, label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE5clearEv.exit [
    i32 1, label %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit.thread
    i32 3, label %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit.thread
    i32 7, label %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit.thread
    i32 4, label %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit
  ]

_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit:         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.h = load i32, ptr %i.g, align 8, !tbaa !184
  switch i32 %i.h, label %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit.thread [
    i32 6, label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE5clearEv.exit
    i32 0, label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE5clearEv.exit
  ]

_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit.thread:  ; preds = %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit, %bb.a, %bb.a, %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(976) ptr @_ZNK4llvm10AsmPrinter18getObjFileLoweringEv(ptr noundef nonnull align 8 dereferenceable(1073) %i.b) #10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 936
  %i.k = load i32, ptr %i.j, align 8, !tbaa !185
  %i.l = and i32 %i.k, 128
  %.not.not = icmp eq i32 %i.l, 0
  br i1 %.not.not, label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  %.not12 = icmp eq ptr %i.n, %i.p
  br i1 %.not12, label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !10  ; 2 uses
  %.pre14 = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = icmp eq ptr %.pre14, %.pre
  br i1 %i.q, label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  store ptr %.pre, ptr %i.o, align 8, !tbaa !22
  br label %_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE5clearEv.exit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.08.013 = phi ptr [ %i.ae, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.08.013, align 8, !tbaa !18
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.t = tail call noundef ptr @_ZNK4llvm10AsmPrinter9getSymbolEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1073) %i.s, ptr noundef %i.r) #10
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !195
  %i.x = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10AsmPrinter13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1073) %i.u) #10
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !196
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(976) %i.i, ptr noundef nonnull align 8 dereferenceable(304) %i.w, ptr noundef nonnull align 8 dereferenceable(912) %i.x, ptr noundef %i.t, ptr noundef %i.aa) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZNSt6vectorIPKN4llvm11GlobalValueESaIS3_EE5clearEv.exit: ; preds = %bb.b, %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit, %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit, %bb.a, %bb.c, %._crit_edge, %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit.thread
  ret void
}

declare noundef nonnull align 8 dereferenceable(976) ptr @_ZNK4llvm10AsmPrinter18getObjFileLoweringEv(ptr noundef nonnull align 8 dereferenceable(1073)) local_unnamed_addr #1

declare noundef ptr @_ZNK4llvm10AsmPrinter9getSymbolEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1073), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10AsmPrinter13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1073)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm17DwarfCFIException13beginFunctionEPKNS_15MachineFunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((24, 28)) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  store i8 0, ptr %i.a, align 2, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !202
  %i.c = load ptr, ptr %1, align 8, !tbaa !203, !nonnull !157, !align !158 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !301
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !301
  %i.h = icmp eq ptr %i.e, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = tail call noundef i32 @_ZNK4llvm10AsmPrinter25getFunctionCFISectionTypeERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1073) %i.j, ptr noundef nonnull align 8 dereferenceable(1065) %1) #10
  %i.l = icmp ne i32 %i.k, 0                      ; 2 uses
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.n = tail call noundef nonnull align 8 dereferenceable(976) ptr @_ZNK4llvm10AsmPrinter18getObjFileLoweringEv(ptr noundef nonnull align 8 dereferenceable(1073) %i.m) #10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 936
  %i.p = load i32, ptr %i.o, align 8, !tbaa !185  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !302
  %i.s = and i16 %i.r, 8
  %.not27 = icmp eq i16 %i.s, 0
  br i1 %.not27, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = tail call noundef ptr @_ZNK4llvm8Function16getPersonalityFnEv(ptr noundef nonnull align 8 dereferenceable(140) %i.c) #10
  %i.u = tail call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t) #10 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !307
  %i.w = add i8 %i.v, -14
  %switch.selectcmp.i.i.i.i.i.i.i.i = icmp ult i8 %i.w, 4
  %spec.select.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i.i, ptr %i.u, ptr null ; 5 uses
  %.pre = load i16, ptr %i.q, align 2, !tbaa !302
  %.pre30 = and i16 %.pre, 8
  %i.x = icmp eq i16 %.pre30, 0
  br i1 %i.x, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = tail call noundef i32 @_ZN4llvm21classifyEHPersonalityEPKNS_5ValueE(ptr noundef %spec.select.i.i) #10
  %cond.i.not = icmp eq i32 %i.y, 0
  br i1 %cond.i.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.aa = tail call noundef i32 @_ZNK4llvm13AttributeList14getUWTableKindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #10
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.e, label %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.c, i32 noundef 45) #10
  br i1 %i.ab, label %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit, label %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit.thread

_ZNK4llvm8Function21needsUnwindTableEntryEv.exit.thread: ; preds = %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.ac, align 1, !tbaa !308
  br label %bb.f

_ZNK4llvm8Function21needsUnwindTableEntryEv.exit: ; preds = %bb.e
  %i.ad = load i16, ptr %i.q, align 2, !tbaa !302
  %i.ae = and i16 %i.ad, 8                        ; 2 uses
  %.not29 = icmp eq i16 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.lobit = lshr exact i16 %i.ae, 3
  %i.ag = trunc nuw nsw i16 %.lobit to i8
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !308
  %i.ah = icmp eq i32 %i.p, 255
  %or.cond.not = or i1 %i.h, %i.ah
  %or.cond = and i1 %or.cond.not, %.not29
  br i1 %or.cond, label %bb.g, label %bb.f

.critedge:                                        ; preds = %bb.a, %bb.b, %bb.c
  %.035 = phi ptr [ %spec.select.i.i, %bb.c ], [ %spec.select.i.i, %bb.b ], [ null, %bb.a ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.ai, align 1, !tbaa !308
  %.old = icmp eq i32 %i.p, 255
  %or.cond.not.old = or i1 %i.h, %.old
  br i1 %or.cond.not.old, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit.thread, %.critedge, %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit
  %.034 = phi ptr [ %spec.select.i.i, %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit.thread ], [ %.035, %.critedge ], [ %spec.select.i.i, %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit ]
  %i.aj = icmp ne ptr %.034, null
  %i.ak = zext i1 %i.aj to i8
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit, %bb.f, %.critedge
  %i.al = phi i8 [ %i.ak, %bb.f ], [ 0, %.critedge ], [ 0, %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit ] ; 3 uses
  store i8 %i.al, ptr %i.b, align 8, !tbaa !202
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 940
  %i.an = load i32, ptr %i.am, align 4, !tbaa !309
  %.not = icmp eq i32 %i.an, 255
  %i.ao = select i1 %.not, i8 0, i8 %i.al
  store i8 %i.ao, ptr %i.a, align 2, !tbaa !197
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !310, !nonnull !157, !align !158
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !311, !nonnull !157, !align !158 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 296
  %i.au = load i32, ptr %i.at, align 8, !tbaa !159
  switch i32 %i.au, label %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit.thread26 [
    i32 0, label %bb.h
    i32 1, label %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit.thread
    i32 3, label %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit.thread
    i32 7, label %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit.thread
    i32 4, label %_ZNK4llvm9MCAsmInfo12usesCFIForEHEv.exit
  ]
end_hunk_0
