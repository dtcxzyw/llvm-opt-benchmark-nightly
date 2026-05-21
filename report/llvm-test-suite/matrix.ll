inline.NumInlined: 21
inline.NumDeleted: 11
begin_hunk_0_@_Z10zeromatrixiiPPi:bb.a
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge11.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !17

._crit_edge11.loopexit.unr-lcssa:                 ; preds = %.preheader.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge11, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._crit_edge11.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next.7, %._crit_edge11.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.preheader.us.epil

.preheader.us.epil:                               ; preds = %.preheader.us.epil, %.preheader.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader.us.epil.preheader ], [ %indvars.iv.next.epil, %.preheader.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.us.epil.preheader ], [ %epil.iter.next, %.preheader.us.epil ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %i.d, i1 false), !tbaa !4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge11, label %.preheader.us.epil, !llvm.loop !18

._crit_edge11:                                    ; preds = %._crit_edge11.loopexit.unr-lcssa, %.preheader.us.epil, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @_Z10freematrixiPPi(i32 noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.d) #13
  %i.e = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_Z5mmultiiPPiS0_S0_(i32 noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly returned captures(ret: address, provenance) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader24.us.preheader, label %._crit_edge

.preheader24.us.preheader:                        ; preds = %bb.a
  %wide.trip.count40 = zext nneg i32 %0 to i64
  %wide.trip.count35 = zext nneg i32 %1 to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count35, 3       ; 3 uses
  %i.c = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count35, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod44 = icmp ne i64 %xtraiter, 0
  br label %.preheader24.us

.preheader24.us:                                  ; preds = %.preheader24.us.preheader, %._crit_edge28.split.us.us
  %indvars.iv37 = phi i64 [ 0, %.preheader24.us.preheader ], [ %indvars.iv.next38, %._crit_edge28.split.us.us ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv37
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv37
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !8    ; 5 uses
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader24.us
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %._crit_edge.us.us ], [ 0, %.preheader24.us ] ; 7 uses
  br i1 %i.c, label %.epil.preheader, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 6 uses
  %.026.us.us = phi i32 [ %i.am, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv32
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = mul nsw i32 %i.m, %i.i
  %i.o = add nsw i32 %i.n, %.026.us.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv32
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = mul nsw i32 %i.u, %i.q
  %i.w = add nsw i32 %i.v, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv32
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = mul nsw i32 %i.ac, %i.y
  %i.ae = add nsw i32 %i.ad, %i.w
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = mul nsw i32 %i.ak, %i.ag
  %i.am = add nsw i32 %i.al, %i.ae                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !21

._crit_edge.us.us.unr-lcssa:                      ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next.3, %._crit_edge.us.us.unr-lcssa ]
  %.026.us.us.epil.init = phi i32 [ 0, %.preheader.us.us ], [ %i.am, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.b ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 3 uses
  %.026.us.us.epil = phi i32 [ %i.au, %bb.b ], [ %.026.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.epil
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv32
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = mul nsw i32 %i.as, %i.ao
  %i.au = add nsw i32 %i.at, %.026.us.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !22

._crit_edge.us.us:                                ; preds = %bb.b, %._crit_edge.us.us.unr-lcssa
  %.lcssa = phi i32 [ %i.am, %._crit_edge.us.us.unr-lcssa ], [ %i.au, %bb.b ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv32
  store i32 %.lcssa, ptr %i.av, align 4, !tbaa !4
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %._crit_edge28.split.us.us, label %.preheader.us.us, !llvm.loop !23

._crit_edge28.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %._crit_edge, label %.preheader24.us, !llvm.loop !24

._crit_edge:                                      ; preds = %._crit_edge28.split.us.us, %bb.a
  ret ptr %4
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %0, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #13, !inline_history !27
  %i.e = trunc i64 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 100000, %bb.a ] ; 2 uses
  %i.g = tail call noalias dereferenceable_or_null(240) ptr @malloc(i64 noundef 240) #12 ; 33 uses
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i, %bb.c
  %indvars.iv30.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next31.i, %.lr.ph.us.i ] ; 2 uses
  %.01418.us.i = phi i32 [ 1, %bb.c ], [ %i.ab, %.lr.ph.us.i ] ; 4 uses
  %i.h = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #12 ; 10 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv30.i
  store ptr %i.h, ptr %i.i, align 8, !tbaa !8
  %i.j = insertelement <4 x i32> poison, i32 %.01418.us.i, i64 0
  %i.k = shufflevector <4 x i32> %i.j, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.l = add nuw nsw <4 x i32> %i.k, <i32 4, i32 5, i32 6, i32 7>
  %i.m = add nuw nsw <4 x i32> %i.k, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.m, ptr %i.h, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = add nuw nsw <4 x i32> %i.k, <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.l, ptr %i.n, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.q = add nuw nsw <4 x i32> %i.k, <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.o, ptr %i.p, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.s = add nuw nsw <4 x i32> %i.k, <i32 16, i32 17, i32 18, i32 19>
  store <4 x i32> %i.q, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.u = add nuw nsw <4 x i32> %i.k, <i32 20, i32 21, i32 22, i32 23>
  store <4 x i32> %i.s, ptr %i.t, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.w = add nuw nsw <4 x i32> %i.k, <i32 24, i32 25, i32 26, i32 27>
  store <4 x i32> %i.u, ptr %i.v, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.y = add nuw nsw i32 %.01418.us.i, 28
  store <4 x i32> %i.w, ptr %i.x, align 4, !tbaa !4
  %i.z = add nuw nsw i32 %.01418.us.i, 29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i32 %i.y, ptr %i.aa, align 4, !tbaa !4
  %i.ab = add nuw nsw i32 %.01418.us.i, 30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i32 %i.z, ptr %i.ac, align 4, !tbaa !4
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, 30
  br i1 %exitcond34.not.i, label %_Z8mkmatrixii.exit, label %.lr.ph.us.i, !llvm.loop !16

_Z8mkmatrixii.exit:                               ; preds = %.lr.ph.us.i
  %i.ad = tail call noalias dereferenceable_or_null(240) ptr @malloc(i64 noundef 240) #12 ; 45 uses
  br label %.lr.ph.us.i15

.lr.ph.us.i15:                                    ; preds = %.lr.ph.us.i15, %_Z8mkmatrixii.exit
  %indvars.iv30.i16 = phi i64 [ 0, %_Z8mkmatrixii.exit ], [ %indvars.iv.next31.i23, %.lr.ph.us.i15 ] ; 2 uses
  %.01418.us.i17 = phi i32 [ 1, %_Z8mkmatrixii.exit ], [ %i.ay, %.lr.ph.us.i15 ] ; 4 uses
  %i.ae = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #12 ; 10 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv30.i16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !8
  %i.ag = insertelement <4 x i32> poison, i32 %.01418.us.i17, i64 0
  %i.ah = shufflevector <4 x i32> %i.ag, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.ai = add nuw nsw <4 x i32> %i.ah, <i32 4, i32 5, i32 6, i32 7>
  %i.aj = add nuw nsw <4 x i32> %i.ah, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.aj, ptr %i.ae, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.al = add nuw nsw <4 x i32> %i.ah, <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.ai, ptr %i.ak, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.an = add nuw nsw <4 x i32> %i.ah, <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.al, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ap = add nuw nsw <4 x i32> %i.ah, <i32 16, i32 17, i32 18, i32 19>
  store <4 x i32> %i.an, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ar = add nuw nsw <4 x i32> %i.ah, <i32 20, i32 21, i32 22, i32 23>
  store <4 x i32> %i.ap, ptr %i.aq, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.at = add nuw nsw <4 x i32> %i.ah, <i32 24, i32 25, i32 26, i32 27>
  store <4 x i32> %i.ar, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.av = add nuw nsw i32 %.01418.us.i17, 28
  store <4 x i32> %i.at, ptr %i.au, align 4, !tbaa !4
  %i.aw = add nuw nsw i32 %.01418.us.i17, 29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !4
  %i.ay = add nuw nsw i32 %.01418.us.i17, 30
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 116
  store i32 %i.aw, ptr %i.az, align 4, !tbaa !4
  %indvars.iv.next31.i23 = add nuw nsw i64 %indvars.iv30.i16, 1 ; 2 uses
  %exitcond34.not.i24 = icmp eq i64 %indvars.iv.next31.i23, 30
  br i1 %exitcond34.not.i24, label %_Z8mkmatrixii.exit25, label %.lr.ph.us.i15, !llvm.loop !16

_Z8mkmatrixii.exit25:                             ; preds = %.lr.ph.us.i15
  %i.ba = tail call noalias dereferenceable_or_null(240) ptr @malloc(i64 noundef 240) #12 ; 34 uses
  br label %.lr.ph.us.i26

.lr.ph.us.i26:                                    ; preds = %.lr.ph.us.i26, %_Z8mkmatrixii.exit25
  %indvars.iv30.i27 = phi i64 [ 0, %_Z8mkmatrixii.exit25 ], [ %indvars.iv.next31.i34, %.lr.ph.us.i26 ] ; 2 uses
  %.01418.us.i28 = phi i32 [ 1, %_Z8mkmatrixii.exit25 ], [ %i.bv, %.lr.ph.us.i26 ] ; 4 uses
  %i.bb = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #12 ; 10 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv30.i27
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !8
  %i.bd = insertelement <4 x i32> poison, i32 %.01418.us.i28, i64 0
  %i.be = shufflevector <4 x i32> %i.bd, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.bf = add nuw nsw <4 x i32> %i.be, <i32 4, i32 5, i32 6, i32 7>
  %i.bg = add nuw nsw <4 x i32> %i.be, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.bg, ptr %i.bb, align 4, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = add nuw nsw <4 x i32> %i.be, <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.bf, ptr %i.bh, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bk = add nuw nsw <4 x i32> %i.be, <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.bi, ptr %i.bj, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bm = add nuw nsw <4 x i32> %i.be, <i32 16, i32 17, i32 18, i32 19>
  store <4 x i32> %i.bk, ptr %i.bl, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bo = add nuw nsw <4 x i32> %i.be, <i32 20, i32 21, i32 22, i32 23>
  store <4 x i32> %i.bm, ptr %i.bn, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bq = add nuw nsw <4 x i32> %i.be, <i32 24, i32 25, i32 26, i32 27>
  store <4 x i32> %i.bo, ptr %i.bp, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.bs = add nuw nsw i32 %.01418.us.i28, 28
  store <4 x i32> %i.bq, ptr %i.br, align 4, !tbaa !4
  %i.bt = add nuw nsw i32 %.01418.us.i28, 29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !4
  %i.bv = add nuw nsw i32 %.01418.us.i28, 30
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 116
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !4
  %indvars.iv.next31.i34 = add nuw nsw i64 %indvars.iv30.i27, 1 ; 2 uses
  %exitcond34.not.i35 = icmp eq i64 %indvars.iv.next31.i34, 30
  br i1 %exitcond34.not.i35, label %_Z8mkmatrixii.exit36.preheader, label %.lr.ph.us.i26, !llvm.loop !16

_Z8mkmatrixii.exit36.preheader:                   ; preds = %.lr.ph.us.i26
  %i.bx = icmp sgt i32 %i.f, 0
  br i1 %i.bx, label %.preheader24.us.i.preheader.preheader, label %_Z8mkmatrixii.exit36._crit_edge

.preheader24.us.i.preheader.preheader:            ; preds = %_Z8mkmatrixii.exit36.preheader
  %i.by = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.cg = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !8 ; 6 uses
  %i.ch = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !8 ; 6 uses
  %i.ci = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !8 ; 6 uses
  %i.cj = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !8 ; 6 uses
  %i.ck = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !8 ; 6 uses
  %i.cl = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !8 ; 6 uses
  %i.cm = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !8 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.co = load <8 x ptr>, ptr %i.cn, align 8, !tbaa !8 ; 18 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  %i.cq = load <4 x ptr>, ptr %i.cp, align 8, !tbaa !8 ; 10 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !8  ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ad, i64 224
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !8  ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ad, i64 232
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !8  ; 4 uses
  %scevgep57 = getelementptr i8, ptr %i.by, i64 120
  %i.cx = getelementptr i8, <2 x ptr> %i.cg, i64 120
  %i.cy = getelementptr i8, <2 x ptr> %i.ch, i64 120
  %i.cz = getelementptr i8, <2 x ptr> %i.ci, i64 120
  %i.da = getelementptr i8, <2 x ptr> %i.cj, i64 120
  %i.db = getelementptr i8, <2 x ptr> %i.ck, i64 120
  %i.dc = getelementptr i8, <2 x ptr> %i.cl, i64 120
  %i.dd = getelementptr i8, <2 x ptr> %i.cm, i64 120
  %i.de = getelementptr i8, <8 x ptr> %i.co, i64 120
  %i.df = getelementptr i8, <4 x ptr> %i.cq, i64 120
  %scevgep84 = getelementptr i8, ptr %i.cs, i64 120
  %scevgep85 = getelementptr i8, ptr %i.cu, i64 120
  %scevgep86 = getelementptr i8, ptr %i.cw, i64 120
  %i.dg = shufflevector <2 x ptr> %i.dd, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dh = shufflevector <2 x ptr> %i.dc, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.di = shufflevector <2 x ptr> %i.db, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dj = shufflevector <2 x ptr> %i.da, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <2 x ptr> %i.cz, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dl = shufflevector <2 x ptr> %i.cy, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dm = shufflevector <2 x ptr> %i.cx, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dn = shufflevector <2 x ptr> %i.cg, <2 x ptr> poison, <16 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <2 x ptr> %i.cm, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dp = shufflevector <2 x ptr> %i.cl, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <2 x ptr> %i.ck, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <2 x ptr> %i.cj, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <2 x ptr> %i.ci, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <2 x ptr> %i.ch, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.du = extractelement <2 x ptr> %i.cm, i64 0
  %i.dv = extractelement <2 x ptr> %i.cm, i64 1
  %i.dw = extractelement <2 x ptr> %i.cl, i64 0
  %i.dx = extractelement <2 x ptr> %i.cl, i64 1
  %i.dy = extractelement <2 x ptr> %i.ck, i64 0
  %i.dz = extractelement <2 x ptr> %i.ck, i64 1
  %i.ea = extractelement <2 x ptr> %i.cj, i64 0
  %i.eb = extractelement <2 x ptr> %i.cj, i64 1
  %i.ec = extractelement <2 x ptr> %i.ci, i64 0
  %i.ed = extractelement <2 x ptr> %i.ci, i64 1
  %i.ee = extractelement <2 x ptr> %i.ch, i64 0
  %i.ef = extractelement <2 x ptr> %i.ch, i64 1
  %i.eg = extractelement <2 x ptr> %i.cg, i64 0
  %i.eh = extractelement <2 x ptr> %i.cg, i64 1
  %i.ei = extractelement <8 x ptr> %i.co, i64 0
  %i.ej = extractelement <8 x ptr> %i.co, i64 1
  %i.ek = extractelement <8 x ptr> %i.co, i64 2
  %i.el = extractelement <8 x ptr> %i.co, i64 3
  %i.em = extractelement <8 x ptr> %i.co, i64 4
  %i.en = extractelement <8 x ptr> %i.co, i64 5
  %i.eo = extractelement <8 x ptr> %i.co, i64 6
  %i.ep = extractelement <8 x ptr> %i.co, i64 7
  %i.eq = extractelement <4 x ptr> %i.cq, i64 0
  %i.er = extractelement <4 x ptr> %i.cq, i64 1
  %i.es = extractelement <4 x ptr> %i.cq, i64 2
  %i.et = extractelement <4 x ptr> %i.cq, i64 3
  %i.eu = extractelement <2 x ptr> %i.cg, i64 0
  %i.ev = extractelement <2 x ptr> %i.cg, i64 1
  %i.ew = extractelement <2 x ptr> %i.ch, i64 0
  %i.ex = extractelement <2 x ptr> %i.ch, i64 1
  %i.ey = extractelement <2 x ptr> %i.ci, i64 0
  %i.ez = extractelement <2 x ptr> %i.ci, i64 1
  %i.fa = extractelement <2 x ptr> %i.cj, i64 0
  %i.fb = extractelement <2 x ptr> %i.cj, i64 1
  %i.fc = extractelement <2 x ptr> %i.ck, i64 0
  %i.fd = extractelement <2 x ptr> %i.ck, i64 1
  %i.fe = extractelement <2 x ptr> %i.cl, i64 0
  %i.ff = extractelement <2 x ptr> %i.cl, i64 1
  %i.fg = extractelement <2 x ptr> %i.cm, i64 0
  %i.fh = extractelement <2 x ptr> %i.cm, i64 1
  %i.fi = extractelement <8 x ptr> %i.co, i64 0
  %i.fj = extractelement <8 x ptr> %i.co, i64 1
  %i.fk = extractelement <8 x ptr> %i.co, i64 2
  %i.fl = extractelement <8 x ptr> %i.co, i64 3
  %i.fm = extractelement <8 x ptr> %i.co, i64 4
  %i.fn = extractelement <8 x ptr> %i.co, i64 5
  %i.fo = extractelement <8 x ptr> %i.co, i64 6
  %i.fp = extractelement <8 x ptr> %i.co, i64 7
  %i.fq = extractelement <4 x ptr> %i.cq, i64 0
  %i.fr = extractelement <4 x ptr> %i.cq, i64 1
  %i.fs = extractelement <4 x ptr> %i.cq, i64 2
  %i.ft = extractelement <4 x ptr> %i.cq, i64 3
  br label %.preheader24.us.i.preheader

.preheader24.us.i.preheader:                      ; preds = %.preheader24.us.i.preheader.preheader, %_Z5mmultiiPPiS0_S0_.exit
  %.01450 = phi i32 [ %i.tg, %_Z5mmultiiPPiS0_S0_.exit ], [ 0, %.preheader24.us.i.preheader.preheader ]
  br label %.preheader24.us.i

.preheader24.us.i:                                ; preds = %.preheader24.us.i.preheader, %._crit_edge28.split.us.us.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %._crit_edge28.split.us.us.i ], [ 0, %.preheader24.us.i.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv37.i
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv37.i
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !8  ; 9 uses
  %i.fx = load ptr, ptr %i.fu, align 8, !tbaa !8  ; 33 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 12 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 20 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 28 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 36 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fx, i64 40 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 44 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fx, i64 48 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 52 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 56 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fx, i64 60 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fx, i64 64 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fx, i64 68 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fx, i64 72 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fx, i64 76 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fx, i64 80 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fx, i64 84 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fx, i64 88 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fx, i64 92 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fx, i64 96 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fx, i64 100 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fx, i64 104 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fx, i64 108 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fx, i64 112 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fx, i64 116 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fw, i64 120 ; 6 uses
  %scevgep56 = getelementptr i8, ptr %i.fx, i64 120
  %i.hb = insertelement <16 x ptr> poison, ptr %i.fw, i64 0
  %i.hc = shufflevector <16 x ptr> %i.hb, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.hd = insertelement <16 x ptr> poison, ptr %scevgep56, i64 0
  %i.he = insertelement <16 x ptr> %i.hd, ptr %scevgep57, i64 1
  %i.hf = shufflevector <16 x ptr> %i.he, <16 x ptr> %i.dg, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17>
  %i.hg = shufflevector <16 x ptr> %i.hf, <16 x ptr> %i.dh, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 14, i32 15>
  %i.hh = shufflevector <16 x ptr> %i.hg, <16 x ptr> %i.di, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.hi = shufflevector <16 x ptr> %i.hh, <16 x ptr> %i.dj, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hj = shufflevector <16 x ptr> %i.hi, <16 x ptr> %i.dk, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hk = shufflevector <16 x ptr> %i.hj, <16 x ptr> %i.dl, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 16, i32 17, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hl = shufflevector <16 x ptr> %i.hk, <16 x ptr> %i.dm, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hm = icmp ult <16 x ptr> %i.hc, %i.hl
  %i.hn = insertelement <16 x ptr> %i.dn, ptr %i.fx, i64 0
  %i.ho = insertelement <16 x ptr> %i.hn, ptr %i.by, i64 1
  %i.hp = shufflevector <16 x ptr> %i.ho, <16 x ptr> %i.do, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17>
  %i.hq = shufflevector <16 x ptr> %i.hp, <16 x ptr> %i.dp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 14, i32 15>
  %i.hr = shufflevector <16 x ptr> %i.hq, <16 x ptr> %i.dq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.hs = shufflevector <16 x ptr> %i.hr, <16 x ptr> %i.dr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ht = shufflevector <16 x ptr> %i.hs, <16 x ptr> %i.ds, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 16, i32 17, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
end_hunk_0
