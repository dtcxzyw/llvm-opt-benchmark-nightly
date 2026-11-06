Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMTargetStreamer?download=true
inline.NumInlined: 219
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4llvm11SmallVectorISt4pairIPNS_9MCSectionENS_12ConstantPoolEELj0EED2Ev = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN4llvm17ARMTargetStreamerE = unnamed_addr constant { [51 x ptr] } { [51 x ptr] [ptr null, ptr null, ptr @_ZN4llvm17ARMTargetStreamerD1Ev, ptr @_ZN4llvm17ARMTargetStreamerD0Ev, ptr @_ZN4llvm16MCTargetStreamer9emitLabelEPNS_8MCSymbolE, ptr @_ZN4llvm16MCTargetStreamer14emitAssignmentEPNS_8MCSymbolEPKNS_6MCExprE, ptr @_ZN4llvm16MCTargetStreamer14prettyPrintAsmERNS_13MCInstPrinterEmRKNS_6MCInstERKNS_15MCSubtargetInfoERNS_11raw_ostreamE, ptr @_ZN4llvm16MCTargetStreamer22emitDwarfFileDirectiveENS_9StringRefE, ptr @_ZN4llvm16MCTargetStreamer13changeSectionEPKNS_9MCSectionEPS1_jRNS_11raw_ostreamE, ptr @_ZN4llvm16MCTargetStreamer9emitValueEPKNS_6MCExprE, ptr @_ZN4llvm16MCTargetStreamer12emitRawBytesENS_9StringRefE, ptr @_ZN4llvm17ARMTargetStreamer17emitConstantPoolsEv, ptr @_ZN4llvm16MCTargetStreamer6finishEv, ptr @_ZN4llvm17ARMTargetStreamer11emitFnStartEv, ptr @_ZN4llvm17ARMTargetStreamer9emitFnEndEv, ptr @_ZN4llvm17ARMTargetStreamer14emitCantUnwindEv, ptr @_ZN4llvm17ARMTargetStreamer15emitPersonalityEPKNS_8MCSymbolE, ptr @_ZN4llvm17ARMTargetStreamer20emitPersonalityIndexEj, ptr @_ZN4llvm17ARMTargetStreamer15emitHandlerDataEv, ptr @_ZN4llvm17ARMTargetStreamer9emitSetFPENS_10MCRegisterES1_l, ptr @_ZN4llvm17ARMTargetStreamer9emitMovSPENS_10MCRegisterEl, ptr @_ZN4llvm17ARMTargetStreamer7emitPadEl, ptr @_ZN4llvm17ARMTargetStreamer11emitRegSaveERKNS_15SmallVectorImplINS_10MCRegisterEEEb, ptr @_ZN4llvm17ARMTargetStreamer13emitUnwindRawElRKNS_15SmallVectorImplIhEE, ptr @_ZN4llvm17ARMTargetStreamer12switchVendorENS_9StringRefE, ptr @_ZN4llvm17ARMTargetStreamer13emitAttributeEjj, ptr @_ZN4llvm17ARMTargetStreamer17emitTextAttributeEjNS_9StringRefE, ptr @_ZN4llvm17ARMTargetStreamer20emitIntTextAttributeEjjNS_9StringRefE, ptr @_ZN4llvm17ARMTargetStreamer7emitFPUENS_3ARM7FPUKindE, ptr @_ZN4llvm17ARMTargetStreamer8emitArchENS_3ARM8ArchKindE, ptr @_ZN4llvm17ARMTargetStreamer17emitArchExtensionEm, ptr @_ZN4llvm17ARMTargetStreamer14emitObjectArchENS_3ARM8ArchKindE, ptr @_ZN4llvm17ARMTargetStreamer22finishAttributeSectionEv, ptr @_ZN4llvm17ARMTargetStreamer8emitInstEjc, ptr @_ZN4llvm17ARMTargetStreamer29annotateTLSDescriptorSequenceEPKNS_15MCSymbolRefExprE, ptr @_ZN4llvm17ARMTargetStreamer17emitSyntaxUnifiedEv, ptr @_ZN4llvm17ARMTargetStreamer10emitCode16Ev, ptr @_ZN4llvm17ARMTargetStreamer10emitCode32Ev, ptr @_ZN4llvm17ARMTargetStreamer13emitThumbFuncEPNS_8MCSymbolE, ptr @_ZN4llvm17ARMTargetStreamer12emitThumbSetEPNS_8MCSymbolEPKNS_6MCExprE, ptr @_ZN4llvm17ARMTargetStreamer23emitARMWinCFIAllocStackEjb, ptr @_ZN4llvm17ARMTargetStreamer24emitARMWinCFISaveRegMaskEjb, ptr @_ZN4llvm17ARMTargetStreamer19emitARMWinCFISaveSPEj, ptr @_ZN4llvm17ARMTargetStreamer22emitARMWinCFISaveFRegsEjj, ptr @_ZN4llvm17ARMTargetStreamer19emitARMWinCFISaveLREj, ptr @_ZN4llvm17ARMTargetStreamer22emitARMWinCFIPrologEndEb, ptr @_ZN4llvm17ARMTargetStreamer16emitARMWinCFINopEb, ptr @_ZN4llvm17ARMTargetStreamer24emitARMWinCFIEpilogStartEj, ptr @_ZN4llvm17ARMTargetStreamer22emitARMWinCFIEpilogEndEv, ptr @_ZN4llvm17ARMTargetStreamer19emitARMWinCFICustomEj, ptr @_ZN4llvm17ARMTargetStreamer5resetEv] }, align 8
@.str = private unnamed_addr constant [6 x i8] c"aeabi\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cortex-a9\00", align 1

@_ZN4llvm17ARMTargetStreamerC1ERNS_10MCStreamerE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm17ARMTargetStreamerC2ERNS_10MCStreamerE
@_ZN4llvm17ARMTargetStreamerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm17ARMTargetStreamerD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamerC2ERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm16MCTargetStreamerC2ERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #11
  store ptr getelementptr inbounds nuw inrange(-16, 392) (i8, ptr @_ZTVN4llvm17ARMTargetStreamerE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 0, ptr %i.f, align 4, !tbaa !34
  store ptr %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

declare void @_ZN4llvm16MCTargetStreamerC2ERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(304)) unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamerD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 392) (i8, ptr @_ZTVN4llvm17ARMTargetStreamerE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm22AssemblerConstantPoolsESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @_ZN4llvm11SmallVectorISt4pairIPNS_9MCSectionENS_12ConstantPoolEELj0EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt14default_deleteIN4llvm22AssemblerConstantPoolsEEclEPS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.h = zext i32 %i.e to i64                     ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 4
  %i.j = add nuw nsw i64 %i.h, 31
  %i.k = lshr i64 %i.j, 3
  %i.l = and i64 %i.k, 1073741820
  %i.m = add nuw nsw i64 %i.l, %i.i
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.g, i64 noundef %i.m, i64 noundef 8) #11
  br label %_ZNKSt14default_deleteIN4llvm22AssemblerConstantPoolsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm22AssemblerConstantPoolsEEclEPS1_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #13
  br label %_ZNSt10unique_ptrIN4llvm22AssemblerConstantPoolsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm22AssemblerConstantPoolsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm22AssemblerConstantPoolsEEclEPS1_.exit.i
  tail call void @_ZN4llvm16MCTargetStreamerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #11
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm16MCTargetStreamerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamerD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm17ARMTargetStreamerD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm17ARMTargetStreamer20addConstantPoolEntryEPKNS_6MCExprENS_5SMLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19, !nonnull !20, !align !21
  %i.e = tail call noundef ptr @_ZN4llvm22AssemblerConstantPools8addEntryERNS_10MCStreamerEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.d, ptr noundef %1, i32 noundef 4, ptr %2) #11
  ret ptr %i.e
}

declare noundef ptr @_ZN4llvm22AssemblerConstantPools8addEntryERNS_10MCStreamerEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(304), ptr noundef, i32 noundef, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer23emitCurrentConstantPoolEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19, !nonnull !20, !align !21
  tail call void @_ZN4llvm22AssemblerConstantPools21emitForCurrentSectionERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.d) #11
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !19, !nonnull !20, !align !21
  tail call void @_ZN4llvm22AssemblerConstantPools27clearCacheForCurrentSectionERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(304) %i.f) #11
  ret void
}

declare void @_ZN4llvm22AssemblerConstantPools21emitForCurrentSectionERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #1

declare void @_ZN4llvm22AssemblerConstantPools27clearCacheForCurrentSectionERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer17emitConstantPoolsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19, !nonnull !20, !align !21
  tail call void @_ZN4llvm22AssemblerConstantPools7emitAllERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.d) #11
  ret void
}

declare void @_ZN4llvm22AssemblerConstantPools7emitAllERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer5resetEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer8emitInstEjc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i8 noundef signext %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19, !nonnull !20, !align !21 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81, !nonnull !20, !align !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !227, !nonnull !20, !align !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !248, !range !249, !noundef !20
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  %i.k = icmp eq i8 %2, 0
  br i1 %i.k, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %i.j, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %3 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %i.a, align 4, !tbaa !250
  br label %.loopexit

.preheader.split.us.preheader:                    ; preds = %.preheader
  store i32 %1, ptr %i.a, align 4, !tbaa !250
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i8 %2, 110
  %i.m = select i1 %i.l, i32 2, i32 4             ; 9 uses
  br i1 %i.j, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.b
  %i.n = add nsw i32 %i.m, -2                     ; 3 uses
  %i.o = lshr exact i32 %i.n, 1
  %i.p = add nuw i32 %i.o, 1                      ; 2 uses
  %i.q = icmp eq i32 %i.n, 0
  br i1 %i.q, label %.split.epil.preheader, label %.split.preheader.new

.split.preheader.new:                             ; preds = %.split.preheader
  %unroll_iter = and i32 %i.p, -2
  %i.r = trunc i32 %1 to i8
  br label %.split

.split.us.preheader:                              ; preds = %bb.b
  %i.s = add nsw i32 %i.m, -2                     ; 3 uses
  %i.t = lshr exact i32 %i.s, 1
  %i.u = add nuw i32 %i.t, 1                      ; 2 uses
  %i.v = icmp eq i32 %i.s, 0
  br i1 %i.v, label %.split.us.epil.preheader, label %.split.us.preheader.new

.split.us.preheader.new:                          ; preds = %.split.us.preheader
  %unroll_iter87 = and i32 %i.u, -2
  %i.w = trunc i32 %1 to i8
  br label %.split.us

.split.us:                                        ; preds = %.split.us, %.split.us.preheader.new
  %indvars.iv45 = phi i64 [ 0, %.split.us.preheader.new ], [ %indvars.iv.next46.1, %.split.us ] ; 4 uses
  %niter88 = phi i32 [ 0, %.split.us.preheader.new ], [ %niter88.next.1, %.split.us ]
  %i.x = trunc nuw i64 %indvars.iv45 to i32
  %i.y = shl i32 %i.x, 3
  %i.z = trunc i64 %indvars.iv45 to i32
  %i.aa = sub i32 %i.m, %i.z                      ; 2 uses
  %i.ab = add nsw i32 %i.aa, -2
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ac
  store i8 %i.w, ptr %i.ad, align 2, !tbaa !250
  %i.ae = or disjoint i32 %i.y, 8
  %i.af = lshr i32 %1, %i.ae
  %i.ag = trunc i32 %i.af to i8
  %i.ah = add nsw i32 %i.aa, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 %i.ag, ptr %i.aj, align 1, !tbaa !250
  %indvars.iv.next46 = or disjoint i64 %indvars.iv45, 2 ; 2 uses
  %i.ak = trunc nuw i64 %indvars.iv.next46 to i32
  %i.al = shl i32 %i.ak, 3                        ; 2 uses
  %i.am = lshr i32 %1, %i.al
  %i.an = trunc i32 %i.am to i8
  %i.ao = trunc i64 %indvars.iv.next46 to i32
  %i.ap = sub i32 %i.m, %i.ao                     ; 2 uses
  %i.aq = add nsw i32 %i.ap, -2
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  store i8 %i.an, ptr %i.as, align 1, !tbaa !250
  %i.at = or disjoint i32 %i.al, 8
  %i.au = lshr i32 %1, %i.at
  %i.av = trunc nuw i32 %i.au to i8
  %i.aw = add nsw i32 %i.ap, -1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !250
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 4 ; 2 uses
  %niter88.next.1 = add i32 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i32 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %.split39.us.loopexit.unr-lcssa, label %.split.us, !llvm.loop !39

.split39.us.loopexit.unr-lcssa:                   ; preds = %.split.us
  %i.az = and i32 %i.s, 2
  %lcmp.mod85.not.not = icmp eq i32 %i.az, 0
  br i1 %lcmp.mod85.not.not, label %.split.us.epil.preheader, label %.split39.us

.split.us.epil.preheader:                         ; preds = %.split39.us.loopexit.unr-lcssa, %.split.us.preheader
  %indvars.iv45.epil.init = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next46.1, %.split39.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ba = trunc nuw i64 %indvars.iv45.epil.init to i32
  %i.bb = shl i32 %i.ba, 3                        ; 2 uses
  %i.bc = lshr i32 %1, %i.bb
  %i.bd = trunc i32 %i.bc to i8
  %i.be = trunc i64 %indvars.iv45.epil.init to i32
  %i.bf = sub i32 %i.m, %i.be                     ; 2 uses
  %i.bg = add nsw i32 %i.bf, -2
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  store i8 %i.bd, ptr %i.bi, align 1, !tbaa !250
  %i.bj = or disjoint i32 %i.bb, 8
  %i.bk = lshr i32 %1, %i.bj
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = add nsw i32 %i.bf, -1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !250
  br label %.split39.us

.split39.us.loopexit82.unr-lcssa:                 ; preds = %.split
  %i.bp = and i32 %i.n, 2
  %lcmp.mod.not.not = icmp eq i32 %i.bp, 0
  br i1 %lcmp.mod.not.not, label %.split.epil.preheader, label %.split39.us

.split.epil.preheader:                            ; preds = %.split39.us.loopexit82.unr-lcssa, %.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next.1, %.split39.us.loopexit82.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i32 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.bq = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.br = shl i32 %i.bq, 3                        ; 2 uses
  %i.bs = or disjoint i32 %i.br, 8
  %i.bt = lshr i32 %1, %i.bs
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = trunc i64 %indvars.iv.epil.init to i32
  %i.bw = sub i32 %i.m, %i.bv                     ; 2 uses
  %i.bx = add nsw i32 %i.bw, -2
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by
  store i8 %i.bu, ptr %i.bz, align 1, !tbaa !250
  %i.ca = lshr i32 %1, %i.br
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = add nsw i32 %i.bw, -1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cd
  store i8 %i.cb, ptr %i.ce, align 1, !tbaa !250
  br label %.split39.us

.split39.us:                                      ; preds = %.split.epil.preheader, %.split39.us.loopexit82.unr-lcssa, %.split.us.epil.preheader, %.split39.us.loopexit.unr-lcssa
  %.pre-phi = zext nneg i32 %i.m to i64
  br label %.loopexit

.split:                                           ; preds = %.split, %.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.split.preheader.new ], [ %indvars.iv.next.1, %.split ] ; 4 uses
  %niter = phi i32 [ 0, %.split.preheader.new ], [ %niter.next.1, %.split ]
  %i.cf = trunc nuw i64 %indvars.iv to i32
  %i.cg = shl i32 %i.cf, 3
  %i.ch = or disjoint i32 %i.cg, 8
  %i.ci = lshr i32 %1, %i.ch
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = trunc i64 %indvars.iv to i32
  %i.cl = sub i32 %i.m, %i.ck                     ; 2 uses
  %i.cm = add nsw i32 %i.cl, -2
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cn
  store i8 %i.cj, ptr %i.co, align 2, !tbaa !250
  %i.cp = add nsw i32 %i.cl, -1
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cq
  store i8 %i.r, ptr %i.cr, align 1, !tbaa !250
  %indvars.iv.next = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.cs = trunc nuw i64 %indvars.iv.next to i32
  %i.ct = shl i32 %i.cs, 3                        ; 2 uses
  %i.cu = or disjoint i32 %i.ct, 8
  %i.cv = lshr i32 %1, %i.cu
  %i.cw = trunc nuw i32 %i.cv to i8
  %i.cx = trunc i64 %indvars.iv.next to i32
  %i.cy = sub i32 %i.m, %i.cx                     ; 2 uses
  %i.cz = add nsw i32 %i.cy, -2
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.da
  store i8 %i.cw, ptr %i.db, align 1, !tbaa !250
  %i.dc = lshr i32 %1, %i.ct
  %i.dd = trunc i32 %i.dc to i8
  %i.de = add nsw i32 %i.cy, -1
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  store i8 %i.dd, ptr %i.dg, align 1, !tbaa !250
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split39.us.loopexit82.unr-lcssa, label %.split, !llvm.loop !40

.loopexit:                                        ; preds = %.preheader.split.preheader, %.preheader.split.us.preheader, %.split39.us
  %.0 = phi i64 [ %.pre-phi, %.split39.us ], [ 4, %.preheader.split.us.preheader ], [ 4, %.preheader.split.preheader ]
  %i.dh = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 504
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr nonnull %i.a, i64 %.0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer11emitFnStartEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer9emitFnEndEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer14emitCantUnwindEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer15emitPersonalityEPKNS_8MCSymbolE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer20emitPersonalityIndexEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer15emitHandlerDataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer9emitSetFPENS_10MCRegisterES1_l(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2, i64 %3) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer9emitMovSPENS_10MCRegisterEl(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i64 %2) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer7emitPadEl(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer11emitRegSaveERKNS_15SmallVectorImplINS_10MCRegisterEEEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 1 captures(none) %1, i1 zeroext %2) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer13emitUnwindRawElRKNS_15SmallVectorImplIhEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, ptr nofree nonnull readnone align 1 captures(none) %2) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer12switchVendorENS_9StringRefE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer13emitAttributeEjj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer17emitTextAttributeEjNS_9StringRefE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer20emitIntTextAttributeEjjNS_9StringRefE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2, ptr nofree readnone captures(none) %3, i64 %4) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer8emitArchENS_3ARM8ArchKindE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer17emitArchExtensionEm(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer14emitObjectArchENS_3ARM8ArchKindE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer7emitFPUENS_3ARM7FPUKindE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer22finishAttributeSectionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer29annotateTLSDescriptorSequenceEPKNS_15MCSymbolRefExprE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer17emitSyntaxUnifiedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer10emitCode16Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer10emitCode32Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer13emitThumbFuncEPNS_8MCSymbolE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer12emitThumbSetEPNS_8MCSymbolEPKNS_6MCExprE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer23emitARMWinCFIAllocStackEjb(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i1 zeroext %2) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer24emitARMWinCFISaveRegMaskEjb(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i1 zeroext %2) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer19emitARMWinCFISaveSPEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer22emitARMWinCFISaveFRegsEjj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer19emitARMWinCFISaveLREj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer16emitARMWinCFINopEb(ptr nofree nonnull readnone align 8 captures(none) %0, i1 zeroext %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer22emitARMWinCFIPrologEndEb(ptr nofree nonnull readnone align 8 captures(none) %0, i1 zeroext %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer24emitARMWinCFIEpilogStartEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer22emitARMWinCFIEpilogEndEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer19emitARMWinCFICustomEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamer20emitTargetAttributesERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull @.str, i64 5) #11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !252  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !253  ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %i.g, 7
  br i1 %.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread59, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 1
  %i.j = xor i32 %i.i, 1701733735
  %i.k = getelementptr i8, ptr %i.e, i64 3
  %i.l = load i32, ptr %i.k, align 1
  %i.m = xor i32 %i.l, 1667854949
  %i.n = or i32 %i.j, %i.m
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread59

_ZNK4llvm9StringRef11starts_withES0_.exit.thread59: ; preds = %bb.b, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.s = load i64, ptr %i.r, align 8, !tbaa !254
  %i.t = and i64 %i.s, 67108864
  %.not = icmp eq i64 %i.t, 0
  %i.u = load ptr, ptr %0, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread59
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 5, ptr nonnull @.str.2, i64 9) #11
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.y = load i64, ptr %i.x, align 8, !tbaa !254
  %i.z = and i64 %i.y, 50331648
  %or.cond.not = icmp eq i64 %i.z, 0
  br i1 %or.cond.not, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %0, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 48) #11
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread

bb.e:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread59
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 5, ptr %i.e, i64 %i.g) #11
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %bb.c, %bb.e, %bb.d, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %.pr = load i64, ptr %i.f, align 8, !tbaa !253
  %.not.i.i = icmp eq i64 %.pr, 6
  br i1 %.not.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.i

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !252 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = xor i32 %i.ae, 1633907576
  %i.ag = getelementptr i8, ptr %i.ad, i64 4
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = zext i16 %i.ah to i32
  %i.aj = xor i32 %i.ai, 25964
  %i.ak = or i32 %i.af, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread18.i:     ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !254 ; 12 uses
  %i.aq = and i64 %i.ap, 18014398509481984
  %.not.i51 = icmp eq i64 %i.aq, 0
  br i1 %.not.i51, label %bb.f, label %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit

bb.f:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.i
  %i.ar = and i64 %i.ap, 8796093022208
  %.not21.i = icmp eq i64 %i.ar, 0
  br i1 %.not21.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.at = load i64, ptr %i.as, align 8, !tbaa !254
  %i.au = and i64 %i.at, 2305843009213693952
  %.not32.i = icmp eq i64 %i.au, 0
  %..i = select i1 %.not32.i, i32 14, i32 15
  br label %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit

bb.h:                                             ; preds = %bb.f
  %i.av = and i64 %i.ap, 17592186044416
  %.not22.i = icmp eq i64 %i.av, 0
  br i1 %.not22.i, label %bb.i, label %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = and i64 %i.ap, 4398046511104
  %.not23.i = icmp eq i64 %i.aw, 0
  br i1 %.not23.i, label %bb.j, label %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit

bb.j:                                             ; preds = %bb.i
  %i.ax = and i64 %i.ap, 1099511627776
  %.not24.i = icmp eq i64 %i.ax, 0
  br i1 %.not24.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !254
  %i.ba = and i64 %i.az, 68719476744
  %or.cond.i = icmp eq i64 %i.ba, 68719476744
  %spec.select.i = select i1 %or.cond.i, i32 13, i32 10
  br label %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit

bb.l:                                             ; preds = %bb.j
  %i.bb = and i64 %i.ap, 549755813888
  %.not25.i = icmp eq i64 %i.bb, 0
  br i1 %.not25.i, label %bb.m, label %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = and i64 %i.ap, 2199023255552
  %.not26.i = icmp eq i64 %i.bc, 0
  br i1 %.not26.i, label %bb.n, label %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit

bb.n:                                             ; preds = %bb.m
  %i.bd = and i64 %i.ap, 137438953472
  %.not27.i = icmp eq i64 %i.bd, 0
  br i1 %.not27.i, label %bb.o, label %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit

bb.o:                                             ; preds = %bb.n
  %i.be = and i64 %i.ap, 274877906944
  %.not28.i = icmp eq i64 %i.be, 0
  br i1 %.not28.i, label %bb.p, label %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit

bb.p:                                             ; preds = %bb.o
  %i.bf = and i64 %i.ap, 17179869184
  %.not29.i = icmp eq i64 %i.bf, 0
  br i1 %.not29.i, label %bb.q, label %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit

bb.q:                                             ; preds = %bb.p
  %i.bg = and i64 %i.ap, 34359738368
  %.not30.i = icmp eq i64 %i.bg, 0
  br i1 %.not30.i, label %bb.r, label %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit

bb.r:                                             ; preds = %bb.q
  %i.bh = and i64 %i.ap, 8589934592
  %.not31.i = icmp eq i64 %i.bh, 0
  %.16.i = select i1 %.not31.i, i32 1, i32 2
  br label %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit

_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.i, %bb.g, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i = phi i32 [ 3, %bb.q ], [ 5, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ %..i, %bb.g ], [ 22, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.i ], [ %.16.i, %bb.r ], [ 21, %bb.h ], [ 17, %bb.i ], [ 4, %bb.p ], [ %spec.select.i, %bb.k ], [ 8, %bb.l ], [ 16, %bb.m ], [ 12, %bb.n ], [ 6, %bb.o ]
  %i.bi = load ptr, ptr %0, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 184
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 6, i32 noundef %.0.i) #11
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !254
  %i.bn = and i64 %i.bm, 8796093022208
  %.not63 = icmp eq i64 %i.bn, 0
  br i1 %.not63, label %bb.s, label %.sink.split

bb.s:                                             ; preds = %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !254 ; 2 uses
  %i.bq = and i64 %i.bp, 2305843009213693952
  %.not64 = icmp eq i64 %i.bq, 0
  br i1 %.not64, label %bb.t, label %.sink.split

bb.t:                                             ; preds = %bb.s
  %i.br = and i64 %i.bp, 68719476736
  %.not65 = icmp eq i64 %i.br, 0
  br i1 %.not65, label %bb.u, label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.s, %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit
  %.sink = phi i32 [ 65, %_ZL13getArchForCPURKN4llvm15MCSubtargetInfoE.exit ], [ 82, %bb.s ], [ 77, %bb.t ]
  %i.bs = load ptr, ptr %0, align 8, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 184
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 7, i32 noundef %.sink) #11
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 8 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !254
  %i.bx = and i64 %i.bw, 70368744177664
  %.not66 = icmp eq i64 %i.bx, 0
  %i.by = zext i1 %.not66 to i32
  %i.bz = load ptr, ptr %0, align 8, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 184
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 8, i32 noundef %i.by) #11
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 11 uses
  %.val50 = load i64, ptr %i.cc, align 8, !tbaa !254 ; 4 uses
  %i.cd = and i64 %.val50, 2748779069440
  %or.cond.not.i = icmp eq i64 %i.cd, 2199023255552
  %i.ce = and i64 %.val50, 4398046511104
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = or i1 %or.cond.not.i, %i.cf
  br i1 %i.cg, label %.sink.split114, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = and i64 %.val50, 2048
  %.not67 = icmp eq i64 %i.ch, 0
  br i1 %.not67, label %bb.w, label %.sink.split114

bb.w:                                             ; preds = %bb.v
  %i.ci = and i64 %.val50, 8589934592
  %.not68 = icmp eq i64 %i.ci, 0
  br i1 %.not68, label %bb.x, label %.sink.split114

.sink.split114:                                   ; preds = %bb.w, %bb.v, %bb.u
  %.sink115 = phi i32 [ 3, %bb.u ], [ 2, %bb.v ], [ 1, %bb.w ]
  %i.cj = load ptr, ptr %0, align 8, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 184
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 9, i32 noundef %.sink115) #11
  br label %bb.x

bb.x:                                             ; preds = %.sink.split114, %bb.w
  %i.cm = load i64, ptr %i.bv, align 8, !tbaa !254 ; 12 uses
  %i.cn = and i64 %i.cm, 8796093022208
  %.not69 = icmp eq i64 %i.cn, 0
  br i1 %.not69, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = and i64 %i.cm, 4096
  %.not84 = icmp eq i64 %i.co, 0
  br i1 %.not84, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = load i64, ptr %i.bl, align 8, !tbaa !254
  %.not87 = icmp sgt i64 %i.cp, -1
  %i.cq = load ptr, ptr %0, align 8, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 208
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  br i1 %.not87, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 22) #11
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 21) #11
  br label %bb.af

bb.ac:                                            ; preds = %bb.y
  %i.ct = load i64, ptr %i.cc, align 8, !tbaa !254
  %i.cu = and i64 %i.ct, 8388608
  %.not85 = icmp eq i64 %i.cu, 0
  br i1 %.not85, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = load ptr, ptr %0, align 8, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 208
  %i.cx = load ptr, ptr %i.cw, align 8
  tail call void %i.cx(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 20) #11
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cy = and i64 %i.cm, 256
  %.not86 = icmp eq i64 %i.cy, 0
  %i.cz = select i1 %.not86, i32 18, i32 19
  %i.da = load ptr, ptr %0, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 208
  %i.dc = load ptr, ptr %i.db, align 8
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.cz) #11
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.aa, %bb.ab
  %i.dd = load i64, ptr %i.cc, align 8, !tbaa !254 ; 2 uses
  %i.de = and i64 %i.dd, 8796093022208
  %.not88 = icmp eq i64 %i.de, 0
  br i1 %.not88, label %bb.ax, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.df = and i64 %i.dd, 35184372088832
  %.not89 = icmp eq i64 %i.df, 0
  %i.dg = select i1 %.not89, i32 3, i32 4
  %i.dh = load ptr, ptr %0, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 184
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 12, i32 noundef %i.dg) #11
  br label %bb.ax

bb.ah:                                            ; preds = %bb.x
  %i.dk = and i64 %i.cm, 16384
  %.not70 = icmp eq i64 %i.dk, 0
  br i1 %.not70, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = and i64 %i.cm, 1
  %.not81 = icmp eq i64 %i.dl, 0
  br i1 %.not81, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dm = load ptr, ptr %0, align 8, !tbaa !9
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 208
  %i.do = load ptr, ptr %i.dn, align 8
  tail call void %i.do(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 15) #11
  br label %bb.ax

bb.ak:                                            ; preds = %bb.ai
  %i.dp = and i64 %i.cm, 1024
  %.not82 = icmp eq i64 %i.dp, 0
  %i.dq = select i1 %.not82, i32 14, i32 13
  %i.dr = load ptr, ptr %0, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 208
  %i.dt = load ptr, ptr %i.ds, align 8
  tail call void %i.dt(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.dq) #11
  %i.du = load i64, ptr %i.cc, align 8, !tbaa !254
  %i.dv = and i64 %i.du, 2147483648
  %.not83 = icmp eq i64 %i.dv, 0
  br i1 %.not83, label %bb.ax, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dw = load ptr, ptr %0, align 8, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 224
  %i.dy = load ptr, ptr %i.dx, align 8
  tail call void %i.dy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2147484680) #11
  br label %bb.ax

bb.am:                                            ; preds = %bb.ah
  %i.dz = load i64, ptr %i.cc, align 8, !tbaa !254 ; 3 uses
  %i.ea = and i64 %i.dz, 33554432
  %.not71 = icmp eq i64 %i.ea, 0
  br i1 %.not71, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eb = and i64 %i.cm, 1
  %.not79 = icmp eq i64 %i.eb, 0
  %i.ec = and i64 %i.cm, 1024
  %.not80 = icmp eq i64 %i.ec, 0
  %i.ed = select i1 %.not80, i32 12, i32 11
  %i.ee = select i1 %.not79, i32 %i.ed, i32 10
  %i.ef = load ptr, ptr %0, align 8, !tbaa !9
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 208
  %i.eh = load ptr, ptr %i.eg, align 8
  tail call void %i.eh(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.ee) #11
  br label %bb.ax

bb.ao:                                            ; preds = %bb.am
  %i.ei = and i64 %i.dz, 2097152
  %.not72 = icmp eq i64 %i.ei, 0
  br i1 %.not72, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ej = and i64 %i.cm, 1
  %.not74 = icmp eq i64 %i.ej, 0
  br i1 %.not74, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ek = and i64 %i.cm, 256
  %.not78 = icmp eq i64 %i.ek, 0
  %i.el = select i1 %.not78, i32 4, i32 5
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.em = and i64 %i.cm, 1024
  %.not75 = icmp eq i64 %i.em, 0
  %i.en = and i64 %i.cm, 256
  %.not76 = icmp eq i64 %i.en, 0                  ; 2 uses
  br i1 %.not75, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eo = select i1 %.not76, i32 6, i32 7
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.ep = select i1 %.not76, i32 8, i32 9
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.aq
  %i.eq = phi i32 [ %i.el, %bb.aq ], [ %i.eo, %bb.as ], [ %i.ep, %bb.at ]
  %i.er = load ptr, ptr %0, align 8, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 208
  %i.et = load ptr, ptr %i.es, align 8
  tail call void %i.et(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.eq) #11
  br label %bb.ax

bb.av:                                            ; preds = %bb.ao
  %i.eu = and i64 %i.dz, 262144
  %.not73 = icmp eq i64 %i.eu, 0
  br i1 %.not73, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ev = load ptr, ptr %0, align 8, !tbaa !9
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 208
  %i.ex = load ptr, ptr %i.ew, align 8
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 3) #11
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ak, %bb.al, %bb.aj, %bb.au, %bb.aw, %bb.av, %bb.an, %bb.af, %bb.ag
  %i.ey = load i64, ptr %i.cc, align 8, !tbaa !254
  %i.ez = and i64 %i.ey, 262144
  %.not90 = icmp ne i64 %i.ez, 0
  %.pre104 = load i64, ptr %i.bv, align 8, !tbaa !254 ; 2 uses
  %i.fa = and i64 %.pre104, 1024
  %.not91 = icmp eq i64 %i.fa, 0
  %or.cond = select i1 %.not90, i1 %.not91, i1 false
  br i1 %or.cond, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fb = load ptr, ptr %0, align 8, !tbaa !9
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 184
  %i.fd = load ptr, ptr %i.fc, align 8
  tail call void %i.fd(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 27, i32 noundef 1) #11
  %.pre = load i64, ptr %i.bv, align 8, !tbaa !254
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fe = phi i64 [ %.pre, %bb.ay ], [ %.pre104, %bb.ax ] ; 2 uses
  %i.ff = and i64 %i.fe, 256
  %.not92 = icmp eq i64 %i.ff, 0
  br i1 %.not92, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fg = load ptr, ptr %0, align 8, !tbaa !9
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 184
  %i.fi = load ptr, ptr %i.fh, align 8
  tail call void %i.fi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 36, i32 noundef 1) #11
  %.pre105 = load i64, ptr %i.bv, align 8, !tbaa !254
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fj = phi i64 [ %.pre105, %bb.ba ], [ %i.fe, %bb.az ]
  %i.fk = and i64 %i.fj, 137438953472
  %.not93 = icmp eq i64 %i.fk, 0
  br i1 %.not93, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fl = load ptr, ptr %0, align 8, !tbaa !9
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 184
  %i.fn = load ptr, ptr %i.fm, align 8
  tail call void %i.fn(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 42, i32 noundef 1) #11
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.fo = load i64, ptr %i.cc, align 8, !tbaa !254 ; 2 uses
  %i.fp = and i64 %i.fo, 2147483648
  %.not94 = icmp eq i64 %i.fp, 0
  br i1 %.not94, label %bb.be, label %.sink.split119

bb.be:                                            ; preds = %bb.bd
  %i.fq = and i64 %i.fo, 4294967296
  %.not95 = icmp eq i64 %i.fq, 0
  br i1 %.not95, label %bb.bf, label %.sink.split119

.sink.split119:                                   ; preds = %bb.be, %bb.bd
  %.sink120 = phi i32 [ 2, %bb.bd ], [ 1, %bb.be ]
  %i.fr = load ptr, ptr %0, align 8, !tbaa !9
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 184
  %i.ft = load ptr, ptr %i.fs, align 8
  tail call void %i.ft(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 48, i32 noundef %.sink120) #11
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split119, %bb.be
  %i.fu = load i64, ptr %i.bv, align 8, !tbaa !254 ; 2 uses
  %i.fv = and i64 %i.fu, 16777216
  %.not96 = icmp ne i64 %i.fv, 0
  %.pre108.pre109 = load i64, ptr %i.cc, align 8, !tbaa !254 ; 2 uses
  %i.fw = and i64 %.pre108.pre109, 8796093022208
  %.not97 = icmp eq i64 %i.fw, 0
  %or.cond124 = select i1 %.not96, i1 %.not97, i1 false
  br i1 %or.cond124, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fx = load ptr, ptr %0, align 8, !tbaa !9
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 184
  %i.fz = load ptr, ptr %i.fy, align 8
  tail call void %i.fz(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 44, i32 noundef 2) #11
  %.pre106 = load i64, ptr %i.bv, align 8, !tbaa !254
  %.pre108.pre = load i64, ptr %i.cc, align 8, !tbaa !254
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pre108 = phi i64 [ %.pre108.pre, %bb.bg ], [ %.pre108.pre109, %bb.bf ] ; 4 uses
  %i.ga = phi i64 [ %.pre106, %bb.bg ], [ %i.fu, %bb.bf ]
  %i.gb = and i64 %i.ga, 8
  %.not98 = icmp eq i64 %i.gb, 0
  br i1 %.not98, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gc = and i64 %.pre108, 2748779069440
  %or.cond.not.i52 = icmp eq i64 %i.gc, 2199023255552
  %i.gd = and i64 %.pre108, 4398046511104
  %i.ge = icmp ne i64 %i.gd, 0
  %i.gf = or i1 %or.cond.not.i52, %i.ge
  br i1 %i.gf, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.gg = load ptr, ptr %0, align 8, !tbaa !9
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 184
  %i.gi = load ptr, ptr %i.gh, align 8
  tail call void %i.gi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 46, i32 noundef 1) #11
  %.pre107 = load i64, ptr %i.cc, align 8, !tbaa !254
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.gj = phi i64 [ %.pre107, %bb.bj ], [ %.pre108, %bb.bi ], [ %.pre108, %bb.bh ]
  %i.gk = and i64 %i.gj, 1024
  %.not99 = icmp eq i64 %i.gk, 0
  %i.gl = load ptr, ptr %0, align 8, !tbaa !9
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 184
  %i.gn = load ptr, ptr %i.gm, align 8
  %. = zext i1 %.not99 to i32
  tail call void %i.gn(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 34, i32 noundef %.) #11
  %i.go = load i64, ptr %i.cc, align 8, !tbaa !254 ; 2 uses
  %i.gp = and i64 %i.go, 4096
  %.not100 = icmp eq i64 %i.gp, 0
  %i.gq = and i64 %i.go, 268435456
  %.not101 = icmp eq i64 %i.gq, 0                 ; 2 uses
  br i1 %.not100, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gr = load ptr, ptr %0, align 8, !tbaa !9
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 184
  %i.gt = load ptr, ptr %i.gs, align 8            ; 2 uses
  br i1 %.not101, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void %i.gt(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 68, i32 noundef 3) #11
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bl
  tail call void %i.gt(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 68, i32 noundef 1) #11
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bk
  br i1 %.not101, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gu = load ptr, ptr %0, align 8, !tbaa !9
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 184
  %i.gw = load ptr, ptr %i.gv, align 8
  tail call void %i.gw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 68, i32 noundef 2) #11
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bn, %bb.bp, %bb.bo, %bb.bm
  %i.gx = load i64, ptr %i.bv, align 8, !tbaa !254
  %i.gy = and i64 %i.gx, 4503599627370496
  %.not103 = icmp eq i64 %i.gy, 0
  br i1 %.not103, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gz = load ptr, ptr %0, align 8, !tbaa !9
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 184
  %i.hb = load ptr, ptr %i.ha, align 8
  tail call void %i.hb(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 50, i32 noundef 2) #11
  %i.hc = load ptr, ptr %0, align 8, !tbaa !9
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 184
  %i.he = load ptr, ptr %i.hd, align 8
  tail call void %i.he(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 52, i32 noundef 2) #11
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm29createARMObjectTargetStreamerERNS_10MCStreamerERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !255
  switch i32 %i.b, label %bb.e [
    i32 3, label %bb.b
    i32 1, label %bb.c
    i32 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4llvm32createARMObjectTargetELFStreamerERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(304) %0) #11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4llvm36createARMObjectTargetWinCOFFStreamerERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(304) %0) #11
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN4llvm34createARMObjectTargetMachOStreamerERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(304) %0) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 2 uses
  tail call void @_ZN4llvm17ARMTargetStreamerC1ERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(304) %0) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ]
  ret ptr %.0
}

declare noundef ptr @_ZN4llvm32createARMObjectTargetELFStreamerERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm36createARMObjectTargetWinCOFFStreamerERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm34createARMObjectTargetMachOStreamerERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #1

declare void @_ZN4llvm16MCTargetStreamer9emitLabelEPNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare void @_ZN4llvm16MCTargetStreamer14emitAssignmentEPNS_8MCSymbolEPKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN4llvm16MCTargetStreamer14prettyPrintAsmERNS_13MCInstPrinterEmRKNS_6MCInstERKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, i64 noundef, ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN4llvm16MCTargetStreamer22emitDwarfFileDirectiveENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #1

declare void @_ZN4llvm16MCTargetStreamer13changeSectionEPKNS_9MCSectionEPS1_jRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN4llvm16MCTargetStreamer9emitValueEPKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare void @_ZN4llvm16MCTargetStreamer12emitRawBytesENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #1

declare void @_ZN4llvm16MCTargetStreamer6finishEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorISt4pairIPNS_9MCSectionENS_12ConstantPoolEELj0EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %.not4.i = icmp eq i32 %i.c, 0
  br i1 %.not4.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_9MCSectionENS_12ConstantPoolEELb0EE13destroy_rangeEPS5_S7_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = zext i32 %i.c to i64
  %.idx = mul nuw nsw i64 %i.d, 200
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt4pairIPN4llvm9MCSectionENS0_12ConstantPoolEED2Ev.exit.i
  %.05.i = phi ptr [ %i.f, %_ZNSt4pairIPN4llvm9MCSectionENS0_12ConstantPoolEED2Ev.exit.i ], [ %i.e, %.lr.ph.i.preheader ] ; 7 uses
  %i.f = getelementptr inbounds i8, ptr %.05.i, i64 -200 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i, i64 -192
  %i.h = getelementptr inbounds i8, ptr %.05.i, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !259  ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm8DenseMapISt4pairIPKNS_8MCSymbolEjEPKNS_15MCSymbolRefExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds i8, ptr %.05.i, i64 -24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !260
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 24
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #11
  br label %_ZN4llvm8DenseMapISt4pairIPKNS_8MCSymbolEjEPKNS_15MCSymbolRefExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEED2Ev.exit.i.i.i

_ZN4llvm8DenseMapISt4pairIPKNS_8MCSymbolEjEPKNS_15MCSymbolRefExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEED2Ev.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i
  %i.s = getelementptr inbounds i8, ptr %.05.i, i64 -28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !263  ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN4llvm8DenseMapISt4pairIljEPKNS_15MCSymbolRefExprENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8DenseMapISt4pairIPKNS_8MCSymbolEjEPKNS_15MCSymbolRefExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEED2Ev.exit.i.i.i
  %i.v = getelementptr inbounds i8, ptr %.05.i, i64 -48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !264
  %i.x = zext i32 %i.t to i64                     ; 2 uses
  %i.y = mul nuw nsw i64 %i.x, 24
  %i.z = add nuw nsw i64 %i.x, 31
  %i.aa = lshr i64 %i.z, 3
  %i.ab = and i64 %i.aa, 1073741820
  %i.ac = add nuw nsw i64 %i.ab, %i.y
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.w, i64 noundef %i.ac, i64 noundef 8) #11
  br label %_ZN4llvm8DenseMapISt4pairIljEPKNS_15MCSymbolRefExprENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i.i.i

_ZN4llvm8DenseMapISt4pairIljEPKNS_15MCSymbolRefExprENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZN4llvm8DenseMapISt4pairIPKNS_8MCSymbolEjEPKNS_15MCSymbolRefExprENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEED2Ev.exit.i.i.i
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !12  ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.05.i, i64 -176
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt4pairIPN4llvm9MCSectionENS0_12ConstantPoolEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapISt4pairIljEPKNS_15MCSymbolRefExprENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.ad) #11
  br label %_ZNSt4pairIPN4llvm9MCSectionENS0_12ConstantPoolEED2Ev.exit.i

_ZNSt4pairIPN4llvm9MCSectionENS0_12ConstantPoolEED2Ev.exit.i: ; preds = %bb.d, %_ZN4llvm8DenseMapISt4pairIljEPKNS_15MCSymbolRefExprENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit.i.i.i
  %.not.i = icmp eq ptr %i.a, %i.f
  br i1 %.not.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_9MCSectionENS_12ConstantPoolEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit, label %.lr.ph.i, !llvm.loop !256

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_9MCSectionENS_12ConstantPoolEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit: ; preds = %_ZNSt4pairIPN4llvm9MCSectionENS0_12ConstantPoolEED2Ev.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !12
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_9MCSectionENS_12ConstantPoolEELb0EE13destroy_rangeEPS5_S7_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_9MCSectionENS_12ConstantPoolEELb0EE13destroy_rangeEPS5_S7_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_9MCSectionENS_12ConstantPoolEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit, %bb.a
  %i.ag = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_9MCSectionENS_12ConstantPoolEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN4llvm15SmallVectorImplISt4pairIPNS_9MCSectionENS_12ConstantPoolEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_9MCSectionENS_12ConstantPoolEELb0EE13destroy_rangeEPS5_S7_.exit
  tail call void @free(ptr noundef %i.ag) #11
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_9MCSectionENS_12ConstantPoolEEED2Ev.exit

_ZN4llvm15SmallVectorImplISt4pairIPNS_9MCSectionENS_12ConstantPoolEEED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_9MCSectionENS_12ConstantPoolEELb0EE13destroy_rangeEPS5_S7_.exit, %bb.e
  ret void
}

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !10, i64 0, !5, i64 8, !5, i64 12}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !5, i64 8}
!14 = !{!"p1 _ZTSN4llvm22AssemblerConstantPoolsE", !10, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 int", !10, i64 0}
!17 = !{!"p1 _ZTSN4llvm10MCStreamerE", !10, i64 0}
!18 = !{!"_ZTSN4llvm16MCTargetStreamerE", !17, i64 8}
!19 = !{!18, !17, i64 8}
!20 = !{}
!21 = !{i64 8}
!22 = !{!"long", !4, i64 0}
!23 = !{!"p1 omnipotent char", !10, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !22, i64 8, !4, i64 16}
!26 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !4, i64 0}
!27 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !4, i64 0}
!28 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !4, i64 0}
!29 = !{!"_ZTSN4llvm6Triple6OSTypeE", !4, i64 0}
!30 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !4, i64 0}
!31 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !4, i64 0}
!32 = !{!"_ZTSN4llvm6TripleE", !25, i64 0, !26, i64 32, !27, i64 36, !28, i64 40, !29, i64 44, !30, i64 48, !31, i64 52}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!11, !5, i64 12}
!35 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_9MCSectionEjEE", !10, i64 0}
!36 = !{!"_ZTSN4llvm8DenseMapIPNS_9MCSectionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEE", !35, i64 0, !16, i64 8, !5, i64 16, !5, i64 20}
!37 = !{!36, !5, i64 20}
!38 = !{!36, !35, i64 0}
!39 = distinct !{!39, !33, !251}
!40 = distinct !{!40, !33, !251}
!41 = !{!"p1 _ZTSN4llvm9MCContextE", !10, i64 0}
!42 = !{!"p1 _ZTSN4llvm16MCTargetStreamerE", !10, i64 0}
!43 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm16MCTargetStreamerELb0EE", !42, i64 0}
!44 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm16MCTargetStreamerESt14default_deleteIS1_EEE", !43, i64 0}
!45 = !{!"_ZTSSt5tupleIJPN4llvm16MCTargetStreamerESt14default_deleteIS1_EEE", !44, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm16MCTargetStreamerESt14default_deleteIS1_EE", !45, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm16MCTargetStreamerESt14default_deleteIS1_ELb1ELb1EE", !46, i64 0}
!48 = !{!"_ZTSSt10unique_ptrIN4llvm16MCTargetStreamerESt14default_deleteIS1_EE", !47, i64 0}
!49 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairImPNS_9MCSectionEEvEE", !11, i64 0}
!50 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairImPNS_9MCSectionEELb1EEE", !49, i64 0}
!51 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairImPNS_9MCSectionEEEE", !50, i64 0}
!52 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairImPNS_9MCSectionEELj1EEE", !4, i64 0}
!53 = !{!"_ZTSN4llvm11SmallVectorISt4pairImPNS_9MCSectionEELj1EEE", !51, i64 0, !52, i64 16}
!54 = !{!"p1 _ZTSSt10unique_ptrIN4llvm5WinEH9FrameInfoESt14default_deleteIS2_EE", !10, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvm5WinEH9FrameInfoESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvm5WinEH9FrameInfoESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !55, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4llvm5WinEH9FrameInfoESt14default_deleteIS3_EESaIS6_EE", !56, i64 0}
!58 = !{!"_ZTSSt6vectorISt10unique_ptrIN4llvm5WinEH9FrameInfoESt14default_deleteIS3_EESaIS6_EE", !57, i64 0}
!59 = !{!"p1 _ZTSN4llvm5WinEH9FrameInfoE", !10, i64 0}
!60 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIS1_IPNS_9MCSectionEjES4_EvEE", !11, i64 0}
!61 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIS1_IPNS_9MCSectionEjES4_ELb1EEE", !60, i64 0}
!62 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIS1_IPNS_9MCSectionEjES4_EEE", !61, i64 0}
!63 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairIS1_IPNS_9MCSectionEjES4_ELj4EEE", !4, i64 0}
!64 = !{!"_ZTSN4llvm11SmallVectorISt4pairIS1_IPNS_9MCSectionEjES4_ELj4EEE", !62, i64 0, !63, i64 16}
!65 = !{!"p1 _ZTSN4llvm5SMLocE", !10, i64 0}
!66 = !{!"bool", !4, i64 0}
!67 = !{!"p1 _ZTSN4llvm5WinEH9FrameInfo6EpilogE", !10, i64 0}
!68 = !{!"p1 _ZTSN4llvm10MCFragmentE", !10, i64 0}
!69 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_16MCDwarfFrameInfoEvEE", !11, i64 0}
!70 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_16MCDwarfFrameInfoELb0EEE", !69, i64 0}
!71 = !{!"_ZTSN4llvm15SmallVectorImplINS_16MCDwarfFrameInfoEEE", !70, i64 0}
!72 = !{!"_ZTSN4llvm11SmallVectorINS_16MCDwarfFrameInfoELj0EEE", !71, i64 0}
!73 = !{!"p1 _ZTSN4llvm13MCLFIRewriterE", !10, i64 0}
!74 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm13MCLFIRewriterELb0EE", !73, i64 0}
!75 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm13MCLFIRewriterESt14default_deleteIS1_EEE", !74, i64 0}
!76 = !{!"_ZTSSt5tupleIJPN4llvm13MCLFIRewriterESt14default_deleteIS1_EEE", !75, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm13MCLFIRewriterESt14default_deleteIS1_EE", !76, i64 0}
!78 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm13MCLFIRewriterESt14default_deleteIS1_ELb1ELb1EE", !77, i64 0}
!79 = !{!"_ZTSSt10unique_ptrIN4llvm13MCLFIRewriterESt14default_deleteIS1_EE", !78, i64 0}
!80 = !{!"_ZTSN4llvm10MCStreamerE", !41, i64 8, !48, i64 16, !53, i64 24, !58, i64 56, !59, i64 80, !22, i64 88, !4, i64 96, !64, i64 104, !65, i64 248, !5, i64 256, !66, i64 260, !66, i64 261, !66, i64 262, !67, i64 264, !68, i64 272, !72, i64 280, !79, i64 296}
!81 = !{!80, !41, i64 8}
!82 = !{!"_ZTSN4llvm9MCContext11EnvironmentE", !4, i64 0}
!83 = !{!"_ZTSN4llvm9StringRefE", !23, i64 0, !22, i64 8}
!84 = !{!"p1 _ZTSN4llvm9SourceMgrE", !10, i64 0}
!85 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm9SourceMgrELb0EE", !84, i64 0}
!86 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm9SourceMgrESt14default_deleteIS1_EEE", !85, i64 0}
!87 = !{!"_ZTSSt5tupleIJPN4llvm9SourceMgrESt14default_deleteIS1_EEE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm9SourceMgrESt14default_deleteIS1_EE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm9SourceMgrESt14default_deleteIS1_ELb1ELb1EE", !88, i64 0}
!90 = !{!"_ZTSSt10unique_ptrIN4llvm9SourceMgrESt14default_deleteIS1_EE", !89, i64 0}
!91 = !{!"any p2 pointer", !10, i64 0}
!92 = !{!"p2 _ZTSN4llvm6MDNodeE", !91, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm6MDNodeESaIS3_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!94 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm6MDNodeESaIS3_EE12_Vector_implE", !93, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIPKN4llvm6MDNodeESaIS3_EE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIPKN4llvm6MDNodeESaIS3_EE", !95, i64 0}
!97 = !{!"_ZTSSt14_Function_base", !4, i64 0, !10, i64 16}
!98 = !{!"_ZTSSt8functionIFvRKN4llvm12SMDiagnosticEbRKNS0_9SourceMgrERSt6vectorIPKNS0_6MDNodeESaISA_EEEE", !97, i64 0, !10, i64 24}
!99 = !{!"p1 _ZTSN4llvm9MCAsmInfoE", !10, i64 0}
!100 = !{!"p1 _ZTSN4llvm14MCRegisterInfoE", !10, i64 0}
!101 = !{!"p1 _ZTSN4llvm16MCObjectFileInfoE", !10, i64 0}
!102 = !{!"p1 _ZTSN4llvm15MCSubtargetInfoE", !10, i64 0}
!103 = !{!"p1 _ZTSN4llvm15CodeViewContextE", !10, i64 0}
!104 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm15CodeViewContextELb0EE", !103, i64 0}
!105 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm15CodeViewContextESt14default_deleteIS1_EEE", !104, i64 0}
!106 = !{!"_ZTSSt5tupleIJPN4llvm15CodeViewContextESt14default_deleteIS1_EEE", !105, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm15CodeViewContextESt14default_deleteIS1_EE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm15CodeViewContextESt14default_deleteIS1_ELb1ELb1EE", !107, i64 0}
!109 = !{!"_ZTSSt10unique_ptrIN4llvm15CodeViewContextESt14default_deleteIS1_EE", !108, i64 0}
!110 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !11, i64 0}
!111 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !110, i64 0}
!112 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !111, i64 0}
!113 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !4, i64 0}
!114 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !112, i64 0, !113, i64 16}
!115 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !11, i64 0}
!116 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !115, i64 0}
!117 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !116, i64 0}
!118 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !117, i64 0}
!119 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !23, i64 0, !22, i64 8, !114, i64 16, !118, i64 64}
!120 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EEE", !23, i64 0, !22, i64 8, !114, i64 16, !118, i64 64}
!121 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_13MCSectionCOFFEEE", !120, i64 0}
!122 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_20MCSectionDXContainerEEE", !120, i64 0}
!123 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_12MCSectionELFEEE", !120, i64 0}
!124 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_14MCSectionMachOEEE", !120, i64 0}
!125 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_13MCSectionGOFFEEE", !120, i64 0}
!126 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_14MCSectionSPIRVEEE", !120, i64 0}
!127 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_13MCSectionWasmEEE", !120, i64 0}
!128 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_14MCSectionXCOFFEEE", !120, i64 0}
!129 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_6MCInstEEE", !120, i64 0}
!130 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_4wasm13WasmSignatureEEE", !120, i64 0}
!131 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !91, i64 0}
!132 = !{!"_ZTSN4llvm13StringMapImplE", !131, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!133 = !{!"p1 _ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !10, i64 0}
!134 = !{!"_ZTSN4llvm6detail15AllocatorHolderIRNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEE", !133, i64 0}
!135 = !{!"_ZTSN4llvm9StringMapINS_18MCSymbolTableValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEE", !132, i64 0, !134, i64 24}
!136 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt4pairIjjEPNS_8MCSymbolEEE", !10, i64 0}
!137 = !{!"_ZTSN4llvm8DenseMapISt4pairIjjEPNS_8MCSymbolENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !136, i64 0, !16, i64 8, !5, i64 16, !5, i64 20}
!138 = !{!"_ZTSN4llvm9StringMapIPNS_8MCSymbolERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEE", !132, i64 0, !134, i64 24}
!139 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjPNS_7MCLabelEEE", !10, i64 0}
!140 = !{!"_ZTSN4llvm8DenseMapIjPNS_7MCLabelENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEE", !139, i64 0, !16, i64 8, !5, i64 16, !5, i64 20}
!141 = !{!"p1 _ZTSN4llvm14raw_fd_ostreamE", !10, i64 0}
!142 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm14raw_fd_ostreamELb0EE", !141, i64 0}
!143 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm14raw_fd_ostreamESt14default_deleteIS1_EEE", !142, i64 0}
!144 = !{!"_ZTSSt5tupleIJPN4llvm14raw_fd_ostreamESt14default_deleteIS1_EEE", !143, i64 0}
!145 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EE", !144, i64 0}
!146 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm14raw_fd_ostreamESt14default_deleteIS1_ELb1ELb1EE", !145, i64 0}
!147 = !{!"_ZTSSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EE", !146, i64 0}
!148 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !10, i64 0, !22, i64 8, !22, i64 16}
!149 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIcvEE", !148, i64 0}
!150 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIcLb1EEE", !149, i64 0}
!151 = !{!"_ZTSN4llvm15SmallVectorImplIcEE", !150, i64 0}
!152 = !{!"_ZTSN4llvm18SmallVectorStorageIcLj128EEE", !4, i64 0}
!153 = !{!"_ZTSN4llvm11SmallVectorIcLj128EEE", !151, i64 0, !152, i64 24}
!154 = !{!"_ZTSN4llvm11SmallStringILj128EEE", !153, i64 0}
!155 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EvEE", !11, i64 0}
!156 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EEE", !155, i64 0}
!157 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE", !156, i64 0}
!158 = !{!"_ZTSN4llvm11SmallVectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELj0EEE", !157, i64 0}
!159 = !{!"_ZTSSt4lessIjE"}
!160 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !159, i64 0}
!161 = !{!"_ZTSSt14_Rb_tree_color", !4, i64 0}
!162 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!163 = !{!"_ZTSSt18_Rb_tree_node_base", !161, i64 0, !162, i64 8, !162, i64 16, !162, i64 24}
!164 = !{!"_ZTSSt15_Rb_tree_header", !163, i64 0, !22, i64 32}
!165 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN4llvm16MCDwarfLineTableEESt10_Select1stIS4_ESt4lessIjESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !160, i64 0, !164, i64 8}
!166 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjN4llvm16MCDwarfLineTableEESt10_Select1stIS4_ESt4lessIjESaIS4_EE", !165, i64 0}
!167 = !{!"_ZTSSt3mapIjN4llvm16MCDwarfLineTableESt4lessIjESaISt4pairIKjS1_EEE", !166, i64 0}
!168 = !{!"short", !4, i64 0}
!169 = !{!"_ZTSN4llvm10MCDwarfLocE", !5, i64 0, !5, i64 4, !168, i64 8, !4, i64 10, !4, i64 11, !5, i64 12}
!170 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPNS_9MCSectionEEE", !10, i64 0}
!171 = !{!"_ZTSN4llvm8DenseMapIPNS_9MCSectionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEE", !170, i64 0, !16, i64 8, !5, i64 16, !5, i64 20}
!172 = !{!"_ZTSN4llvm6detail12DenseSetImplIPNS_9MCSectionENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEEE", !171, i64 0}
!173 = !{!"_ZTSN4llvm8DenseSetIPNS_9MCSectionENS_12DenseMapInfoIS2_vEEEE", !172, i64 0}
!174 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_9MCSectionEvEE", !11, i64 0}
!175 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_9MCSectionELb1EEE", !174, i64 0}
!176 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_9MCSectionEEE", !175, i64 0}
!177 = !{!"_ZTSN4llvm11SmallVectorIPNS_9MCSectionELj0EEE", !176, i64 0}
!178 = !{!"_ZTSN4llvm9SetVectorIPNS_9MCSectionENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEE", !173, i64 0, !177, i64 24}
!179 = !{!"p1 _ZTSN4llvm20MCGenDwarfLabelEntryE", !10, i64 0}
!180 = !{!"_ZTSNSt12_Vector_baseIN4llvm20MCGenDwarfLabelEntryESaIS1_EE17_Vector_impl_dataE", !179, i64 0, !179, i64 8, !179, i64 16}
!181 = !{!"_ZTSNSt12_Vector_baseIN4llvm20MCGenDwarfLabelEntryESaIS1_EE12_Vector_implE", !180, i64 0}
!182 = !{!"_ZTSSt12_Vector_baseIN4llvm20MCGenDwarfLabelEntryESaIS1_EE", !181, i64 0}
!183 = !{!"_ZTSSt6vectorIN4llvm20MCGenDwarfLabelEntryESaIS1_EE", !182, i64 0}
!184 = !{!"_ZTSN4llvm5dwarf11DwarfFormatE", !4, i64 0}
!185 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !91, i64 0}
!186 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!187 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !186, i64 0}
!188 = !{!"float", !4, i64 0}
!189 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !188, i64 0, !22, i64 8}
!190 = !{!"_ZTSSt10_HashtableIPN4llvm8MCSymbolESt4pairIKS2_NS0_23MCPseudoProbeInlineTreeEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE", !185, i64 0, !22, i64 8, !187, i64 16, !22, i64 24, !189, i64 32, !186, i64 48}
!191 = !{!"_ZTSSt13unordered_mapIPN4llvm8MCSymbolENS0_23MCPseudoProbeInlineTreeESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE", !190, i64 0}
!192 = !{!"_ZTSN4llvm21MCPseudoProbeSectionsE", !191, i64 0}
!193 = !{!"_ZTSN4llvm18MCPseudoProbeTableE", !192, i64 0}
!194 = !{!"_ZTSN4llvm9StringMapIPNS_14MCSectionMachOENS_15MallocAllocatorEEE", !132, i64 0}
end_hunk_0
