Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DeltaTree?download=true
inline.NumInlined: 69
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.(anonymous namespace)::DeltaTreeNode::InsertResult" = type { ptr, ptr, %"struct.(anonymous namespace)::SourceDelta" }
%"struct.(anonymous namespace)::SourceDelta" = type { i32, i32 }

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8

@_ZN4llvm9DeltaTreeC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm9DeltaTreeC2Ev
@_ZN4llvm9DeltaTreeC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm9DeltaTreeC2ERKS0_
@_ZN4llvm9DeltaTreeD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm9DeltaTreeD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9DeltaTreeC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 0, ptr %i.b, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  store i8 1, ptr %i.c, align 1, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i32 0, ptr %i.d, align 4, !tbaa !12
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9DeltaTreeC2ERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 0, ptr %i.b, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  store i8 1, ptr %i.c, align 1, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i32 0, ptr %i.d, align 4, !tbaa !12
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9DeltaTreeD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  tail call fastcc void @_ZN12_GLOBAL__N_113DeltaTreeNode7DestroyEv(ptr noundef nonnull align 4 dereferenceable(128) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113DeltaTreeNode7DestroyEv(ptr noundef nonnull align 4 dereferenceable(128) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 121
  %.val = load i8, ptr %i.a, align 1, !tbaa !11, !range !16, !noundef !17
  %i.b = trunc nuw i8 %.val to i1
  br i1 %i.b, label %_ZN12_GLOBAL__N_121DeltaTreeInteriorNodeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i8, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = zext i8 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  tail call fastcc void @_ZN12_GLOBAL__N_113DeltaTreeNode7DestroyEv(ptr noundef nonnull align 4 dereferenceable(128) %i.h), !inline_history !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not.i = icmp eq i64 %indvars.iv, %i.f
  br i1 %.not.i, label %_ZN12_GLOBAL__N_121DeltaTreeInteriorNodeD2Ev.exit, label %bb.c, !llvm.loop !29

_ZN12_GLOBAL__N_121DeltaTreeInteriorNodeD2Ev.exit: ; preds = %bb.c, %bb.a
  %.sink = phi i64 [ 128, %bb.a ], [ 256, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm9DeltaTree10getDeltaAtEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.037.in = phi ptr [ %0, %bb.a ], [ %i.ax, %bb.h ]
  %.035 = phi i32 [ 0, %bb.a ], [ %.4.lcssa99, %bb.h ] ; 3 uses
  %.037 = load ptr, ptr %.037.in, align 8, !tbaa !34 ; 8 uses
  %i.a = getelementptr i8, ptr %.037, i64 120
  %.037.val46 = load i8, ptr %i.a, align 4, !tbaa !10 ; 3 uses
  %i.b = zext i8 %.037.val46 to i32
  %.not55 = icmp eq i8 %.037.val46, 0
  br i1 %.not55, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.c = zext i8 %.037.val46 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.13656 = phi i32 [ %.035, %.lr.ph.preheader ], [ %i.h, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.037, i64 %indvars.iv ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22
  %.not42 = icmp ult i32 %i.e, %1                 ; 2 uses
  br i1 %.not42, label %bb.c, label %._crit_edge.split.loop.exit

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add nsw i32 %i.g, %.13656                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge.split.loop.exit:                      ; preds = %.lr.ph
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.split.loop.exit
  %.136.lcssa = phi i32 [ %.13656, %._crit_edge.split.loop.exit ], [ %i.h, %bb.c ] ; 4 uses
  %.034.lcssa = phi i32 [ %i.i, %._crit_edge.split.loop.exit ], [ %i.b, %bb.c ] ; 5 uses
  %i.j = getelementptr i8, ptr %.037, i64 121
  %.val.val.i.i = load i8, ptr %i.j, align 1, !tbaa !11, !range !16, !noundef !17
  %i.k = trunc nuw i8 %.val.val.i.i to i1
  br i1 %i.k, label %.loopexit, label %.preheader

._crit_edge.thread:                               ; preds = %bb.b
  %i.l = getelementptr i8, ptr %.037, i64 121
  %.val.val.i.i82 = load i8, ptr %i.l, align 1, !tbaa !11, !range !16, !noundef !17
  %i.m = trunc nuw i8 %.val.val.i.i82 to i1
  br i1 %i.m, label %.loopexit, label %._crit_edge69._crit_edge

.preheader:                                       ; preds = %._crit_edge
  %.not4465 = icmp eq i32 %.034.lcssa, 0
  br i1 %.not4465, label %._crit_edge69, label %.lr.ph68

.lr.ph68:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %.037, i64 128 ; 5 uses
  %i.o = zext i32 %.034.lcssa to i64              ; 2 uses
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.p = icmp ult i32 %.034.lcssa, 4
  br i1 %i.p, label %.epil.preheader, label %.lr.ph68.new

.lr.ph68.new:                                     ; preds = %.lr.ph68
  %unroll_iter = and i64 %i.o, 4294967292
  br label %bb.e

._crit_edge69.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge69, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge69.loopexit.unr-lcssa, %.lr.ph68
  %indvars.iv76.epil.init = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next77.3, %._crit_edge69.loopexit.unr-lcssa ]
  %.466.epil.init = phi i32 [ %.136.lcssa, %.lr.ph68 ], [ %i.am, %._crit_edge69.loopexit.unr-lcssa ]
  %lcmp.mod122 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv76.epil = phi i64 [ %indvars.iv76.epil.init, %.epil.preheader ], [ %indvars.iv.next77.epil, %bb.d ] ; 2 uses
  %.466.epil = phi i32 [ %.466.epil.init, %.epil.preheader ], [ %i.t, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv76.epil
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.s = getelementptr i8, ptr %i.r, i64 124
  %.val47.epil = load i32, ptr %i.s, align 4, !tbaa !12
  %i.t = add nsw i32 %.val47.epil, %.466.epil     ; 2 uses
  %indvars.iv.next77.epil = add nuw nsw i64 %indvars.iv76.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge69, label %bb.d, !llvm.loop !31

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit.unr-lcssa, %bb.d, %.preheader
  %.034.lcssa8794 = phi i32 [ 0, %.preheader ], [ %.034.lcssa, %bb.d ], [ %.034.lcssa, %._crit_edge69.loopexit.unr-lcssa ] ; 2 uses
  %.4.lcssa = phi i32 [ %.136.lcssa, %.preheader ], [ %i.am, %._crit_edge69.loopexit.unr-lcssa ], [ %i.t, %bb.d ] ; 3 uses
  br i1 %.not42, label %._crit_edge69._crit_edge, label %bb.f

._crit_edge69._crit_edge:                         ; preds = %._crit_edge.thread, %._crit_edge69
  %.4.lcssa100 = phi i32 [ %.4.lcssa, %._crit_edge69 ], [ %.035, %._crit_edge.thread ]
  %.034.lcssa879498 = phi i32 [ %.034.lcssa8794, %._crit_edge69 ], [ 0, %._crit_edge.thread ]
  %.pre = zext nneg i32 %.034.lcssa879498 to i64
  br label %bb.h

bb.e:                                             ; preds = %bb.e, %.lr.ph68.new
  %indvars.iv76 = phi i64 [ 0, %.lr.ph68.new ], [ %indvars.iv.next77.3, %bb.e ] ; 5 uses
  %.466 = phi i32 [ %.136.lcssa, %.lr.ph68.new ], [ %i.am, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph68.new ], [ %niter.next.3, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv76
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.w = getelementptr i8, ptr %i.v, i64 124
  %.val47 = load i32, ptr %i.w, align 4, !tbaa !12
  %i.x = add nsw i32 %.val47, %.466
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv76
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.ab = getelementptr i8, ptr %i.aa, i64 124
  %.val47.1 = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ac = add nsw i32 %.val47.1, %i.x
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19
  %i.ag = getelementptr i8, ptr %i.af, i64 124
  %.val47.2 = load i32, ptr %i.ag, align 4, !tbaa !12
  %i.ah = add nsw i32 %.val47.2, %i.ac
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv76
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.al = getelementptr i8, ptr %i.ak, i64 124
  %.val47.3 = load i32, ptr %i.al, align 4, !tbaa !12
  %i.am = add nsw i32 %.val47.3, %i.ah            ; 3 uses
  %indvars.iv.next77.3 = add nuw nsw i64 %indvars.iv76, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge69.loopexit.unr-lcssa, label %bb.e, !llvm.loop !32

bb.f:                                             ; preds = %._crit_edge69
  %i.an = zext nneg i32 %.034.lcssa8794 to i64    ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.037, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = icmp eq i32 %i.ap, %1
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.037, i64 128
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.an
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !19
  %i.au = getelementptr i8, ptr %i.at, i64 124
  %.val = load i32, ptr %i.au, align 4, !tbaa !12
  %i.av = add nsw i32 %.val, %.4.lcssa
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge69._crit_edge, %bb.f
  %.4.lcssa99 = phi i32 [ %.4.lcssa100, %._crit_edge69._crit_edge ], [ %.4.lcssa, %bb.f ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge69._crit_edge ], [ %i.an, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.037, i64 128
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.pre-phi
  br label %bb.b, !llvm.loop !33

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge.thread, %bb.g
  %.140.ph = phi i32 [ %i.av, %bb.g ], [ %.136.lcssa, %._crit_edge ], [ %.035, %._crit_edge.thread ]
  ret i32 %.140.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9DeltaTree8AddDeltaEji(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.(anonymous namespace)::DeltaTreeNode::InsertResult", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.b = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113DeltaTreeNode11DoInsertionEjiPNS0_12InsertResultE(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #6 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 121
  store i8 0, ptr %i.e, align 1, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.g = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr %i.g, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr %i.j, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  store i64 %i.m, ptr %i.c, align 8, !tbaa !26
  %i.n = getelementptr i8, ptr %i.g, i64 124
  %.val7.i = load i32, ptr %i.n, align 4, !tbaa !12
  %i.o = getelementptr i8, ptr %i.j, i64 124
  %.val.i = load i32, ptr %i.o, align 4, !tbaa !12
  %i.p = add nsw i32 %.val.i, %.val7.i
  %i.q = lshr i64 %i.m, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = add nsw i32 %i.p, %i.r
  store i32 %i.s, ptr %i.f, align 4, !tbaa !12
  store i8 1, ptr %i.d, align 8, !tbaa !10
  store ptr %i.c, ptr %0, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113DeltaTreeNode11DoInsertionEjiPNS0_12InsertResultE(ptr noundef nonnull align 4 dereferenceable(128) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = add nsw i32 %i.b, %2
  store i32 %i.c, ptr %i.a, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val119290 = load i8, ptr %i.d, align 4, !tbaa !10 ; 4 uses
  %i.e = zext i8 %.val119290 to i32               ; 2 uses
  %.not155291 = icmp ne i8 %.val119290, 0         ; 3 uses
  br i1 %.not155291, label %.lr.ph.preheader, label %.critedge114.thread

.lr.ph.preheader:                                 ; preds = %bb.a, %tailrecurse.backedge
  %i.f = phi i32 [ %i.ao, %tailrecurse.backedge ], [ %i.e, %bb.a ] ; 3 uses
  %.val119295 = phi i8 [ %.val119, %tailrecurse.backedge ], [ %.val119290, %bb.a ] ; 3 uses
  %ret.known.tr294 = phi i1 [ true, %tailrecurse.backedge ], [ false, %bb.a ] ; 4 uses
  %.tr125293 = phi ptr [ null, %tailrecurse.backedge ], [ %3, %bb.a ] ; 4 uses
  %.tr292 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 10 uses
  %i.g = zext i8 %.val119295 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.tr292, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22   ; 2 uses
  %i.j = icmp ugt i32 %1, %i.i                    ; 3 uses
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %.not, label %.critedge114, label %.lr.ph, !llvm.loop !36

.critedge:                                        ; preds = %.lr.ph
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = icmp eq i32 %i.i, %1
  br i1 %i.l, label %bb.c, label %.critedge114

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.tr292, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27
  %i.p = add nsw i32 %i.o, %2
  store i32 %i.p, ptr %i.n, align 4, !tbaa !27
  br label %bb.p

.critedge114:                                     ; preds = %bb.b, %.critedge
  %.0105134 = phi i32 [ %i.k, %.critedge ], [ %i.f, %bb.b ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.tr292, i64 121
  %.val = load i8, ptr %i.q, align 1, !tbaa !11, !range !16, !noundef !17
  %i.r = trunc nuw i8 %.val to i1
  br i1 %i.r, label %bb.d, label %.loopexit

.critedge114.thread:                              ; preds = %tailrecurse.backedge, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 4 uses
  %.tr125.lcssa = phi ptr [ %3, %bb.a ], [ null, %tailrecurse.backedge ]
  %.val119.lcssa = phi i8 [ %.val119290, %bb.a ], [ %.val119, %tailrecurse.backedge ]
  %.lcssa265 = phi i32 [ %i.e, %bb.a ], [ %i.ao, %tailrecurse.backedge ]
  %i.s = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 120 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 121
  %.val202 = load i8, ptr %i.t, align 1, !tbaa !11, !range !16, !noundef !17
  %i.u = trunc nuw i8 %.val202 to i1
  br i1 %i.u, label %._crit_edge, label %bb.h

bb.d:                                             ; preds = %.critedge114
  %i.v = icmp eq i8 %.val119295, 15
  br i1 %i.v, label %tailrecurse.backedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.tr292, i64 120 ; 3 uses
  br i1 %i.j, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %.critedge114.thread, %bb.e
  %.tr287 = phi ptr [ %.tr292, %bb.e ], [ %.tr.lcssa, %.critedge114.thread ]
  %ret.known.tr277 = phi i1 [ %ret.known.tr294, %bb.e ], [ %.not155291, %.critedge114.thread ]
  %.val119272 = phi i8 [ %.val119295, %bb.e ], [ %.val119.lcssa, %.critedge114.thread ]
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.s, %.critedge114.thread ]
  %.0105134204210214 = phi i32 [ %.0105134, %bb.e ], [ 0, %.critedge114.thread ]
  %.pre197 = zext nneg i32 %.0105134204210214 to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext nneg i32 %.0105134 to i64           ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.tr292, i64 %i.y ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.aa = sub nuw nsw i32 %i.f, %.0105134
  %i.ab = shl nuw nsw i32 %i.aa, 3
  %i.ac = zext nneg i32 %i.ab to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %4, ptr nonnull align 4 %i.z, i64 %i.ac, i1 false)
  %.pre196 = load i8, ptr %i.w, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.tr286 = phi ptr [ %.tr287, %._crit_edge ], [ %.tr292, %bb.f ]
  %ret.known.tr276 = phi i1 [ %ret.known.tr277, %._crit_edge ], [ %ret.known.tr294, %bb.f ]
  %i.ad = phi ptr [ %i.x, %._crit_edge ], [ %i.w, %bb.f ]
  %.pre-phi.a = phi i64 [ %.pre197, %._crit_edge ], [ %i.y, %bb.f ]
  %i.ae = phi i8 [ %.val119272, %._crit_edge ], [ %.pre196, %bb.f ]
  %.sroa.2.0.insert.ext.i = zext i32 %2 to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %1 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.tr286, i64 %.pre-phi.a
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.af, align 4, !tbaa !26
  %i.ag = add i8 %i.ae, 1
  store i8 %i.ag, ptr %i.ad, align 4, !tbaa !10
  br label %bb.p

tailrecurse.backedge:                             ; preds = %bb.d
  tail call fastcc void @_ZN12_GLOBAL__N_113DeltaTreeNode7DoSplitERNS0_12InsertResultE(ptr noundef nonnull align 4 dereferenceable(128) %.tr292, ptr noundef nonnull align 8 dereferenceable(24) %.tr125293)
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr125293, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !38
  %i.aj = icmp ugt i32 %i.ai, %1
  %spec.select.idx = select i1 %i.aj, i64 0, i64 8
  %spec.select = getelementptr inbounds nuw i8, ptr %.tr125293, i64 %spec.select.idx
  %.tr.be = load ptr, ptr %spec.select, align 8, !tbaa !19 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr.be, i64 124 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12
  %i.am = add nsw i32 %i.al, %2
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %.tr.be, i64 120
  %.val119 = load i8, ptr %i.an, align 4, !tbaa !10 ; 4 uses
  %i.ao = zext i8 %.val119 to i32                 ; 2 uses
  %.not155 = icmp eq i8 %.val119, 0
  br i1 %.not155, label %.critedge114.thread, label %.lr.ph.preheader

.loopexit:                                        ; preds = %.critedge114
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr292, i64 120
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.critedge114.thread
  %.tr288 = phi ptr [ %.tr.lcssa, %.critedge114.thread ], [ %.tr292, %.loopexit ] ; 5 uses
  %.tr125282 = phi ptr [ %.tr125.lcssa, %.critedge114.thread ], [ %.tr125293, %.loopexit ] ; 12 uses
  %ret.known.tr278 = phi i1 [ %.not155291, %.critedge114.thread ], [ %ret.known.tr294, %.loopexit ] ; 2 uses
  %i.aq = phi i32 [ %.lcssa265, %.critedge114.thread ], [ %i.f, %.loopexit ]
  %i.ar = phi ptr [ %i.s, %.critedge114.thread ], [ %i.ap, %.loopexit ] ; 3 uses
  %.not131205 = phi i1 [ true, %.critedge114.thread ], [ %i.j, %.loopexit ]
  %.0105134203 = phi i32 [ 0, %.critedge114.thread ], [ %.0105134, %.loopexit ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.tr288, i64 128 ; 4 uses
  %i.at = zext nneg i32 %.0105134203 to i64       ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19
  %i.aw = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113DeltaTreeNode11DoInsertionEjiPNS0_12InsertResultE(ptr noundef nonnull align 4 dereferenceable(128) %i.av, i32 noundef %1, i32 noundef %2, ptr noundef %.tr125282)
  br i1 %i.aw, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %.val121 = load i8, ptr %i.ar, align 4, !tbaa !10 ; 2 uses
  %i.ax = icmp eq i8 %.val121, 15
  br i1 %i.ax, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not131205, label %.critedge116, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = add nuw i32 %.0105134203, 2
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.az
  %i.bb = add nuw nsw i32 %.0105134203, 1
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bc ; 2 uses
  %i.be = sub nuw nsw i32 %i.aq, %.0105134203
  %i.bf = shl nuw nsw i32 %i.be, 3
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr nonnull align 8 %i.bd, i64 %i.bg, i1 false)
  %i.bh = load ptr, ptr %.tr125282, align 8, !tbaa !24
  store ptr %i.bh, ptr %i.au, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr125282, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  store ptr %i.bj, ptr %i.bd, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.tr288, i64 %i.bc
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.tr288, i64 %i.at
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr nonnull align 4 %i.bl, i64 %i.bg, i1 false)
  %.pre = load i8, ptr %i.ar, align 4, !tbaa !10
  br label %bb.l

.critedge116:                                     ; preds = %bb.j
  %i.bm = load ptr, ptr %.tr125282, align 8, !tbaa !24
  store ptr %i.bm, ptr %i.au, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr125282, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !25
  %i.bp = add nuw i32 %.0105134203, 1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bq
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %.critedge116, %bb.k
  %i.bs = phi i8 [ %.val121, %.critedge116 ], [ %.pre, %bb.k ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr125282, i64 16
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.tr288, i64 %i.at
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !26
  store i64 %i.bv, ptr %i.bu, align 4, !tbaa !26
  %i.bw = add i8 %i.bs, 1
  store i8 %i.bw, ptr %i.ar, align 4, !tbaa !10
  br label %bb.p

bb.m:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %.tr125282, align 8, !tbaa !24
  store ptr %i.bx, ptr %i.au, align 8, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %.tr125282, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !25 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr125282, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.ca, align 8, !tbaa !26 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr125282, i64 20
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !26 ; 2 uses
  tail call fastcc void @_ZN12_GLOBAL__N_113DeltaTreeNode7DoSplitERNS0_12InsertResultE(ptr noundef nonnull align 4 dereferenceable(128) %.tr288, ptr noundef nonnull align 8 dereferenceable(24) %.tr125282)
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !38
  %i.cc = icmp ult i32 %.sroa.0.0.copyload, %i.cb
  %.tr125. = select i1 %i.cc, ptr %.tr125282, ptr %i.by
  %.0 = load ptr, ptr %.tr125., align 8, !tbaa !19 ; 8 uses
  %i.cd = getelementptr i8, ptr %.0, i64 120      ; 3 uses
  %.0.val = load i8, ptr %i.cd, align 4, !tbaa !10 ; 5 uses
  %i.ce = zext i8 %.0.val to i64
  %.not113162 = icmp eq i8 %.0.val, 0
  br i1 %.not113162, label %.critedge118, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %bb.m
  %i.cf = zext i8 %.0.val to i64
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %bb.n
  %indvars.iv192 = phi i64 [ 0, %.lr.ph164.preheader ], [ %indvars.iv.next193, %bb.n ] ; 7 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv192
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !22
  %i.ci = icmp ugt i32 %.sroa.0.0.copyload, %i.ch
  br i1 %i.ci, label %bb.n, label %.critedge117

bb.n:                                             ; preds = %.lr.ph164
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %.not113 = icmp eq i64 %indvars.iv.next193, %i.cf
  br i1 %.not113, label %.critedge118.loopexit, label %.lr.ph164, !llvm.loop !37

.critedge117:                                     ; preds = %.lr.ph164
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv192
  %i.ck = getelementptr inbounds nuw i8, ptr %.0, i64 128 ; 2 uses
  %i.cl = add nuw i64 %indvars.iv192, 2
  %i.cm = and i64 %i.cl, 4294967295
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cm
  %i.co = add nuw i64 %indvars.iv192, 1
  %i.cp = and i64 %i.co, 4294967295               ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cp ; 2 uses
  %i.cr = sub nsw i64 %i.ce, %indvars.iv192
  %i.cs = shl i64 %i.cr, 3
  %i.ct = and i64 %i.cs, 4294967288               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr nonnull align 8 %i.cq, i64 %i.ct, i1 false)
  store ptr %i.bz, ptr %i.cq, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.cp
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr nonnull align 8 %i.cj, i64 %i.ct, i1 false)
  %.pre195 = load i8, ptr %i.cd, align 8, !tbaa !10
  br label %bb.o

.critedge118.loopexit:                            ; preds = %bb.n
  %i.cv = zext i8 %.0.val to i64
  br label %.critedge118

.critedge118:                                     ; preds = %.critedge118.loopexit, %bb.m
  %.1106.lcssa = phi i64 [ 0, %bb.m ], [ %i.cv, %.critedge118.loopexit ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %.1106.lcssa
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 136
  store ptr %i.bz, ptr %i.cx, align 8, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %.critedge118, %.critedge117
  %.pre-phi = phi i64 [ %.1106.lcssa, %.critedge118 ], [ %indvars.iv192, %.critedge117 ]
  %5 = phi i8 [ %.0.val, %.critedge118 ], [ %.pre195, %.critedge117 ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %.pre-phi ; 2 uses
  store i32 %.sroa.0.0.copyload, ptr %i.cy, align 8, !tbaa !26
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx14, align 4, !tbaa !26
  %i.cz = add i8 %5, 1
  store i8 %i.cz, ptr %i.cd, align 8, !tbaa !10
  %i.da = getelementptr i8, ptr %i.bz, i64 124
  %.val120 = load i32, ptr %i.da, align 4, !tbaa !12
  %i.db = add nsw i32 %.val120, %.sroa.6.0.copyload
  %i.dc = getelementptr inbounds nuw i8, ptr %.0, i64 124 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !12
  %i.de = add nsw i32 %i.db, %i.dd
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %bb.h, %bb.g, %bb.c
  %.1 = phi i1 [ %ret.known.tr294, %bb.c ], [ %ret.known.tr278, %bb.h ], [ %ret.known.tr276, %bb.g ], [ %ret.known.tr278, %bb.l ], [ true, %bb.o ]
  ret i1 %.1
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113DeltaTreeNode7DoSplitERNS0_12InsertResultE(ptr noundef nonnull align 4 dereferenceable(128) initializes((120, 121), (124, 128)) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %.val3.val.i.i = load i8, ptr %i.a, align 1, !tbaa !11, !range !16, !noundef !17
  %i.b = trunc nuw i8 %.val3.val.i.i to i1        ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #6 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i8 0, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 121
  store i8 0, ptr %i.e, align 1, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 0, ptr %i.f, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  br label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #6 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store i8 0, ptr %i.j, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 121
  store i8 1, ptr %i.k, align 1, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 124
  store i32 0, ptr %i.l, align 4, !tbaa !12
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.i, %bb.c ]  ; 19 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.0, ptr noundef nonnull align 4 dereferenceable(56) %i.m, i64 56, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 7, ptr %i.n, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 120
  store i8 7, ptr %i.o, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = add nsw i32 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27
  %i.w = add nsw i32 %i.v, %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27
  %i.z = add nsw i32 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !27
  %i.ac = add nsw i32 %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !27
  %i.af = add nsw i32 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 52
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !27
  %i.ai = add nsw i32 %i.ah, %i.af                ; 2 uses
  br i1 %i.b, label %.lr.ph.preheader.i15, label %.lr.ph.preheader.i15.loopexit

.lr.ph.preheader.i15.loopexit:                    ; preds = %.lr.ph.preheader.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.al = getelementptr i8, ptr %i.ak, i64 124
  %.val19.i = load i32, ptr %i.al, align 4, !tbaa !12
  %i.am = add nsw i32 %.val19.i, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %.0, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.ap = getelementptr i8, ptr %i.ao, i64 124
  %.val19.i.1 = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.aq = add nsw i32 %.val19.i.1, %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !19
  %i.at = getelementptr i8, ptr %i.as, i64 124
  %.val19.i.2 = load i32, ptr %i.at, align 4, !tbaa !12
  %i.au = add nsw i32 %.val19.i.2, %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 152
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.ax = getelementptr i8, ptr %i.aw, i64 124
  %.val19.i.3 = load i32, ptr %i.ax, align 4, !tbaa !12
  %i.ay = add nsw i32 %.val19.i.3, %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 160
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.bb = getelementptr i8, ptr %i.ba, i64 124
  %.val19.i.4 = load i32, ptr %i.bb, align 4, !tbaa !12
  %i.bc = add nsw i32 %.val19.i.4, %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %.0, i64 168
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !19
  %i.bf = getelementptr i8, ptr %i.be, i64 124
  %.val19.i.5 = load i32, ptr %i.bf, align 4, !tbaa !12
  %i.bg = add nsw i32 %.val19.i.5, %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %.0, i64 176
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.bj = getelementptr i8, ptr %i.bi, i64 124
  %.val19.i.6 = load i32, ptr %i.bj, align 4, !tbaa !12
  %i.bk = add nsw i32 %.val19.i.6, %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %.0, i64 184
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !19
  %i.bn = getelementptr i8, ptr %i.bm, i64 124
  %.val19.i.7 = load i32, ptr %i.bn, align 4, !tbaa !12
  %i.bo = add nsw i32 %.val19.i.7, %i.bk
  br label %.lr.ph.preheader.i15

.lr.ph.preheader.i15:                             ; preds = %.lr.ph.preheader.i15.loopexit, %.lr.ph.preheader.i
  %.2.i = phi i32 [ %i.ai, %.lr.ph.preheader.i ], [ %i.bo, %.lr.ph.preheader.i15.loopexit ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0, i64 124
  store i32 %.2.i, ptr %i.bp, align 4, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !27
  %i.bu = add nsw i32 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !27
  %i.bx = add nsw i32 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !27
  %i.ca = add nsw i32 %i.bz, %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !27
  %i.cd = add nsw i32 %i.cc, %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !27
  %i.cg = add nsw i32 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !27
  %i.cj = add nsw i32 %i.ci, %i.cg                ; 2 uses
  %.val3.val.i.i.i23 = load i8, ptr %i.a, align 1, !tbaa !11, !range !16, !noundef !17
  %i.ck = trunc nuw i8 %.val3.val.i.i.i23 to i1
  br i1 %i.ck, label %_ZN12_GLOBAL__N_113DeltaTreeNode25RecomputeFullDeltaLocallyEv.exit30, label %_ZN12_GLOBAL__N_113DeltaTreeNode25RecomputeFullDeltaLocallyEv.exit30.loopexit

_ZN12_GLOBAL__N_113DeltaTreeNode25RecomputeFullDeltaLocallyEv.exit30.loopexit: ; preds = %.lr.ph.preheader.i15
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !19
  %i.cn = getelementptr i8, ptr %i.cm, i64 124
  %.val19.i26 = load i32, ptr %i.cn, align 4, !tbaa !12
  %i.co = add nsw i32 %.val19.i26, %i.cj
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !19
  %i.cr = getelementptr i8, ptr %i.cq, i64 124
  %.val19.i26.1 = load i32, ptr %i.cr, align 4, !tbaa !12
  %i.cs = add nsw i32 %.val19.i26.1, %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !19
  %i.cv = getelementptr i8, ptr %i.cu, i64 124
  %.val19.i26.2 = load i32, ptr %i.cv, align 4, !tbaa !12
  %i.cw = add nsw i32 %.val19.i26.2, %i.cs
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !19
  %i.cz = getelementptr i8, ptr %i.cy, i64 124
  %.val19.i26.3 = load i32, ptr %i.cz, align 4, !tbaa !12
  %i.da = add nsw i32 %.val19.i26.3, %i.cw
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !19
  %i.dd = getelementptr i8, ptr %i.dc, i64 124
  %.val19.i26.4 = load i32, ptr %i.dd, align 4, !tbaa !12
  %i.de = add nsw i32 %.val19.i26.4, %i.da
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !19
  %i.dh = getelementptr i8, ptr %i.dg, i64 124
  %.val19.i26.5 = load i32, ptr %i.dh, align 4, !tbaa !12
  %i.di = add nsw i32 %.val19.i26.5, %i.de
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !19
  %i.dl = getelementptr i8, ptr %i.dk, i64 124
  %.val19.i26.6 = load i32, ptr %i.dl, align 4, !tbaa !12
  %i.dm = add nsw i32 %.val19.i26.6, %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !19
  %i.dp = getelementptr i8, ptr %i.do, i64 124
  %.val19.i26.7 = load i32, ptr %i.dp, align 4, !tbaa !12
  %i.dq = add nsw i32 %.val19.i26.7, %i.dm
  br label %_ZN12_GLOBAL__N_113DeltaTreeNode25RecomputeFullDeltaLocallyEv.exit30

_ZN12_GLOBAL__N_113DeltaTreeNode25RecomputeFullDeltaLocallyEv.exit30: ; preds = %_ZN12_GLOBAL__N_113DeltaTreeNode25RecomputeFullDeltaLocallyEv.exit30.loopexit, %.lr.ph.preheader.i15
end_hunk_0
