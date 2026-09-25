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
  tail call void @_ZN4llvm16MCTargetStreamerC2ERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #10
  store ptr getelementptr inbounds nuw inrange(-16, 392) (i8, ptr @_ZTVN4llvm17ARMTargetStreamerE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11 ; 6 uses
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
  tail call void @_ZN4llvm11SmallVectorISt4pairIPNS_9MCSectionENS_12ConstantPoolEELj0EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #10
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
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.g, i64 noundef %i.m, i64 noundef 8) #10
  br label %_ZNKSt14default_deleteIN4llvm22AssemblerConstantPoolsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm22AssemblerConstantPoolsEEclEPS1_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #12
  br label %_ZNSt10unique_ptrIN4llvm22AssemblerConstantPoolsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm22AssemblerConstantPoolsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm22AssemblerConstantPoolsEEclEPS1_.exit.i
  tail call void @_ZN4llvm16MCTargetStreamerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #10
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm16MCTargetStreamerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17ARMTargetStreamerD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm17ARMTargetStreamerD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #10
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #12
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
  %i.e = tail call noundef ptr @_ZN4llvm22AssemblerConstantPools8addEntryERNS_10MCStreamerEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.d, ptr noundef %1, i32 noundef 4, ptr %2) #10
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
  tail call void @_ZN4llvm22AssemblerConstantPools21emitForCurrentSectionERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.d) #10
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !19, !nonnull !20, !align !21
  tail call void @_ZN4llvm22AssemblerConstantPools27clearCacheForCurrentSectionERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(304) %i.f) #10
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
  tail call void @_ZN4llvm22AssemblerConstantPools7emitAllERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.d) #10
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
  %i.a = alloca [4 x i8], align 1                 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
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
  %i.l = trunc i32 %1 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.l, ptr %i.m, align 1, !tbaa !250
  %i.n = lshr i32 %1, 8
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.o, ptr %i.p, align 1, !tbaa !250
  %i.q = lshr i32 %1, 16
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !250
  %i.t = lshr i32 %1, 24
  %i.u = trunc nuw i32 %i.t to i8
  store i8 %i.u, ptr %i.a, align 1, !tbaa !250
  br label %.loopexit

.preheader.split.us.preheader:                    ; preds = %.preheader
  %3 = lshr i32 %1, 24
  %4 = trunc nuw i32 %3 to i8
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %4, ptr %5, align 1, !tbaa !250
  %6 = lshr i32 %1, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %7, ptr %8, align 1, !tbaa !250
  %9 = lshr i32 %1, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %10, ptr %11, align 1, !tbaa !250
  %12 = trunc i32 %1 to i8
  store i8 %12, ptr %i.a, align 1, !tbaa !250
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.v = icmp eq i8 %2, 110
  %i.w = select i1 %i.v, i32 2, i32 4             ; 9 uses
  br i1 %i.j, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.b
  %i.x = add nsw i32 %i.w, -2                     ; 3 uses
  %i.y = lshr exact i32 %i.x, 1
  %i.z = add nuw i32 %i.y, 1                      ; 2 uses
  %i.aa = icmp eq i32 %i.x, 0
  br i1 %i.aa, label %.split.epil.preheader, label %.split.preheader.new

.split.preheader.new:                             ; preds = %.split.preheader
  %unroll_iter = and i32 %i.z, -2
  %i.ab = trunc i32 %1 to i8
  br label %.split

.split.us.preheader:                              ; preds = %bb.b
  %i.ac = add nsw i32 %i.w, -2                    ; 3 uses
  %i.ad = lshr exact i32 %i.ac, 1
  %i.ae = add nuw i32 %i.ad, 1                    ; 2 uses
  %i.af = icmp eq i32 %i.ac, 0
  br i1 %i.af, label %.split.us.epil.preheader, label %.split.us.preheader.new

.split.us.preheader.new:                          ; preds = %.split.us.preheader
  %unroll_iter87 = and i32 %i.ae, -2
  %i.ag = trunc i32 %1 to i8
  br label %.split.us

.split.us:                                        ; preds = %.split.us, %.split.us.preheader.new
  %indvars.iv45 = phi i64 [ 0, %.split.us.preheader.new ], [ %indvars.iv.next46.1, %.split.us ] ; 4 uses
  %niter88 = phi i32 [ 0, %.split.us.preheader.new ], [ %niter88.next.1, %.split.us ]
  %i.ah = trunc nuw i64 %indvars.iv45 to i32
  %i.ai = shl i32 %i.ah, 3
  %i.aj = trunc i64 %indvars.iv45 to i32
  %i.ak = sub i32 %i.w, %i.aj                     ; 2 uses
  %i.al = add nsw i32 %i.ak, -2
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.am
  store i8 %i.ag, ptr %i.an, align 1, !tbaa !250
  %i.ao = or disjoint i32 %i.ai, 8
  %i.ap = lshr i32 %1, %i.ao
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = add nsw i32 %i.ak, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  store i8 %i.aq, ptr %i.at, align 1, !tbaa !250
  %indvars.iv.next46 = or disjoint i64 %indvars.iv45, 2 ; 2 uses
  %i.au = trunc nuw i64 %indvars.iv.next46 to i32
  %i.av = shl i32 %i.au, 3                        ; 2 uses
  %i.aw = lshr i32 %1, %i.av
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = trunc i64 %indvars.iv.next46 to i32
  %i.az = sub i32 %i.w, %i.ay                     ; 2 uses
  %i.ba = add nsw i32 %i.az, -2
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  store i8 %i.ax, ptr %i.bc, align 1, !tbaa !250
  %i.bd = or disjoint i32 %i.av, 8
  %i.be = lshr i32 %1, %i.bd
  %i.bf = trunc nuw i32 %i.be to i8
  %i.bg = add nsw i32 %i.az, -1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !250
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 4 ; 2 uses
  %niter88.next.1 = add i32 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i32 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %.split39.us.loopexit.unr-lcssa, label %.split.us, !llvm.loop !39

.split39.us.loopexit.unr-lcssa:                   ; preds = %.split.us
  %i.bj = and i32 %i.ac, 2
  %lcmp.mod85.not.not = icmp eq i32 %i.bj, 0
  br i1 %lcmp.mod85.not.not, label %.split.us.epil.preheader, label %.split39.us

.split.us.epil.preheader:                         ; preds = %.split39.us.loopexit.unr-lcssa, %.split.us.preheader
  %indvars.iv45.epil.init = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next46.1, %.split39.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.bk = trunc nuw i64 %indvars.iv45.epil.init to i32
  %i.bl = shl i32 %i.bk, 3                        ; 2 uses
  %i.bm = lshr i32 %1, %i.bl
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = trunc i64 %indvars.iv45.epil.init to i32
  %i.bp = sub i32 %i.w, %i.bo                     ; 2 uses
  %i.bq = add nsw i32 %i.bp, -2
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  store i8 %i.bn, ptr %i.bs, align 1, !tbaa !250
  %i.bt = or disjoint i32 %i.bl, 8
  %i.bu = lshr i32 %1, %i.bt
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = add nsw i32 %i.bp, -1
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  store i8 %i.bv, ptr %i.by, align 1, !tbaa !250
  br label %.split39.us

.split39.us.loopexit82.unr-lcssa:                 ; preds = %.split
  %i.bz = and i32 %i.x, 2
  %lcmp.mod.not.not = icmp eq i32 %i.bz, 0
  br i1 %lcmp.mod.not.not, label %.split.epil.preheader, label %.split39.us

.split.epil.preheader:                            ; preds = %.split39.us.loopexit82.unr-lcssa, %.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next.1, %.split39.us.loopexit82.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i32 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.ca = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.cb = shl i32 %i.ca, 3                        ; 2 uses
  %i.cc = or disjoint i32 %i.cb, 8
  %i.cd = lshr i32 %1, %i.cc
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = trunc i64 %indvars.iv.epil.init to i32
  %i.cg = sub i32 %i.w, %i.cf                     ; 2 uses
  %i.ch = add nsw i32 %i.cg, -2
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  store i8 %i.ce, ptr %i.cj, align 1, !tbaa !250
  %i.ck = lshr i32 %1, %i.cb
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = add nsw i32 %i.cg, -1
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cn
  store i8 %i.cl, ptr %i.co, align 1, !tbaa !250
  br label %.split39.us

.split39.us:                                      ; preds = %.split.epil.preheader, %.split39.us.loopexit82.unr-lcssa, %.split.us.epil.preheader, %.split39.us.loopexit.unr-lcssa
  %.pre-phi = zext nneg i32 %i.w to i64
  br label %.loopexit

.split:                                           ; preds = %.split, %.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.split.preheader.new ], [ %indvars.iv.next.1, %.split ] ; 4 uses
  %niter = phi i32 [ 0, %.split.preheader.new ], [ %niter.next.1, %.split ]
  %i.cp = trunc nuw i64 %indvars.iv to i32
  %i.cq = shl i32 %i.cp, 3
  %i.cr = or disjoint i32 %i.cq, 8
  %i.cs = lshr i32 %1, %i.cr
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = trunc i64 %indvars.iv to i32
  %i.cv = sub i32 %i.w, %i.cu                     ; 2 uses
  %i.cw = add nsw i32 %i.cv, -2
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cx
  store i8 %i.ct, ptr %i.cy, align 1, !tbaa !250
  %i.cz = add nsw i32 %i.cv, -1
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.da
  store i8 %i.ab, ptr %i.db, align 1, !tbaa !250
  %indvars.iv.next = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.dc = trunc nuw i64 %indvars.iv.next to i32
  %i.dd = shl i32 %i.dc, 3                        ; 2 uses
  %i.de = or disjoint i32 %i.dd, 8
  %i.df = lshr i32 %1, %i.de
  %i.dg = trunc nuw i32 %i.df to i8
  %i.dh = trunc i64 %indvars.iv.next to i32
  %i.di = sub i32 %i.w, %i.dh                     ; 2 uses
  %i.dj = add nsw i32 %i.di, -2
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dk
  store i8 %i.dg, ptr %i.dl, align 1, !tbaa !250
  %i.dm = lshr i32 %1, %i.dd
  %i.dn = trunc i32 %i.dm to i8
  %i.do = add nsw i32 %i.di, -1
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dp
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !250
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split39.us.loopexit82.unr-lcssa, label %.split, !llvm.loop !40

.loopexit:                                        ; preds = %.preheader.split.preheader, %.preheader.split.us.preheader, %.split39.us
  %.0 = phi i64 [ %.pre-phi, %.split39.us ], [ 4, %.preheader.split.us.preheader ], [ 4, %.preheader.split.preheader ]
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 504
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr nonnull %i.a, i64 %.0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
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
end_hunk_0
