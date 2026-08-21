inline.NumInlined: 201
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@stbte__fillrect:bb.a
  %i.i = and i32 %i.h, 8388607
  store i32 %i.i, ptr %i.b, align 4, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !80   ; 2 uses
  %i.l = icmp slt i32 %i.k, 8388606
  %i.m = zext i1 %i.l to i32
  %i.n = add nsw i32 %i.k, %i.m
  store i32 %i.n, ptr %i.j, align 8, !tbaa !80
  store i32 0, ptr %i.a, align 4, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 800876
  store i8 0, ptr %i.o, align 4, !tbaa !39
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !82
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !83
  %spec.select = tail call i32 @llvm.smax.i32(i32 %1, i32 %3) ; 2 uses
  %spec.select40 = tail call i32 @llvm.smin.i32(i32 %1, i32 %3) ; 2 uses
  %.030 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4) ; 2 uses
  %.028 = tail call i32 @llvm.smax.i32(i32 %2, i32 %4) ; 2 uses
  %.not39 = icmp eq i32 %5, 0
  br i1 %.not39, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %bb.a, %.split.us.us
  %.042.us = phi i32 [ %i.r, %.split.us.us ], [ %.030, %bb.a ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us
  %.02641.us.us = phi i32 [ %spec.select40, %.preheader.us ], [ %i.q, %bb.b ] ; 3 uses
  %i.p = tail call i32 @stbte__erase(ptr noundef %0, i32 noundef %.02641.us.us, i32 noundef %.042.us, i32 noundef 1) ; 0 uses
  %i.q = add i32 %.02641.us.us, 1
  %exitcond48.not = icmp eq i32 %.02641.us.us, %spec.select
  br i1 %exitcond48.not, label %.split.us.us, label %bb.b, !llvm.loop !153

.split.us.us:                                     ; preds = %bb.b
  %i.r = add i32 %.042.us, 1
  %exitcond49.not = icmp eq i32 %.042.us, %.028
  br i1 %exitcond49.not, label %.split45.us, label %.preheader.us, !llvm.loop !154

.preheader:                                       ; preds = %bb.a, %.split
  %.042 = phi i32 [ %i.t, %.split ], [ %.030, %bb.a ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %.02641 = phi i32 [ %spec.select40, %.preheader ], [ %i.s, %bb.c ] ; 3 uses
  tail call void @stbte__brush(ptr noundef %0, i32 noundef %.02641, i32 noundef %.042)
  %i.s = add i32 %.02641, 1
  %exitcond.not = icmp eq i32 %.02641, %spec.select
  br i1 %exitcond.not, label %.split, label %bb.c, !llvm.loop !153

.split:                                           ; preds = %bb.c
  %i.t = add i32 %.042, 1
  %exitcond47.not = icmp eq i32 %.042, %.028
  br i1 %exitcond47.not, label %.split45.us, label %.preheader, !llvm.loop !154

.split45.us:                                      ; preds = %.split, %.split.us.us
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !82
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %stbte__end_undo.exit, label %bb.d

bb.d:                                             ; preds = %.split45.us
  %i.v = load i32, ptr %i.b, align 4, !tbaa !79   ; 2 uses
  %i.w = add i32 %i.v, 8388607
  %i.x = and i32 %i.w, 8388607                    ; 3 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !21
  %i.ac = icmp eq i16 %i.ab, -2
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.x, ptr %i.b, align 4, !tbaa !79
  %i.ad = load i32, ptr %i.j, align 8, !tbaa !80
  %i.ae = add nsw i32 %i.ad, -1
  store i32 %i.ae, ptr %i.j, align 8, !tbaa !80
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = phi i32 [ %i.x, %bb.e ], [ %i.v, %bb.d ]
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.ag
  store i16 -4, ptr %i.ah, align 2, !tbaa !21
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !82
  br label %stbte__end_undo.exit

stbte__end_undo.exit:                             ; preds = %.split45.us, %bb.f
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__select_rect(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5296), align 8, !tbaa !112
  %i.a = tail call i32 @llvm.smin.i32(i32 %1, i32 %3)
  store i32 %i.a, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5300), align 4, !tbaa !113
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 %3)
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5308), align 4, !tbaa !114
  %i.c = tail call i32 @llvm.smin.i32(i32 %2, i32 %4)
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5304), align 8, !tbaa !115
  %i.d = tail call i32 @llvm.smax.i32(i32 %2, i32 %4)
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5312), align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbte__copy_properties(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !42
  store float %i.a, ptr %0, align 4, !tbaa !42
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__copy_cut(ptr noundef %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 801036
  %i.c = load i32, ptr %i.b, align 4, !tbaa !148  ; 2 uses
  switch i32 %i.c, label %bb.c [
    i32 1, label %stbte__should_copy_properties.exit
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %stbte__should_copy_properties.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.e = load i32, ptr %i.d, align 8, !tbaa !132
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %stbte__should_copy_properties.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.h = load i32, ptr %i.g, align 4, !tbaa !133
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %stbte__should_copy_properties.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 800896
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.l = load i32, ptr %i.k, align 8, !tbaa !29   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader.i, label %stbte__should_copy_properties.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbte__should_copy_properties.exit, label %.lr.ph.i, !llvm.loop !149

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !134
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.f, label %stbte__should_copy_properties.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135
  %.not13.i = icmp eq i32 %i.r, 0
  br i1 %.not13.i, label %bb.e, label %stbte__should_copy_properties.exit

stbte__should_copy_properties.exit:               ; preds = %bb.e, %.lr.ph.i, %bb.f, %bb.a, %bb.b, %bb.c, %bb.d, %.preheader.i
  %.not76 = phi i1 [ true, %bb.d ], [ true, %bb.b ], [ false, %bb.a ], [ true, %bb.c ], [ false, %.preheader.i ], [ false, %bb.e ], [ true, %bb.f ], [ true, %.lr.ph.i ] ; 5 uses
  %.011.i = phi i32 [ 0, %bb.d ], [ 0, %bb.b ], [ %i.c, %bb.a ], [ 0, %bb.c ], [ 1, %.preheader.i ], [ 1, %bb.e ], [ 0, %bb.f ], [ 0, %.lr.ph.i ]
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5296), align 8, !tbaa !112
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.bh, label %bb.g

bb.g:                                             ; preds = %stbte__should_copy_properties.exit
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5308), align 4, !tbaa !114 ; 9 uses
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5300), align 4, !tbaa !113 ; 8 uses
  %i.v = sub nsw i32 %i.t, %i.u                   ; 3 uses
  %i.w = add nsw i32 %i.v, 1                      ; 3 uses
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5312), align 8, !tbaa !116 ; 7 uses
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5304), align 8, !tbaa !115 ; 8 uses
  %i.z = sub nsw i32 %i.x, %i.y                   ; 2 uses
  %i.aa = add nsw i32 %i.z, 1                     ; 2 uses
  %i.ab = sdiv i32 65536, %i.w
  %.not72 = icmp sgt i32 %i.ab, %i.z
  br i1 %.not72, label %.preheader86, label %bb.h

.preheader86:                                     ; preds = %bb.g
  %i.ac = mul nsw i32 %i.aa, %i.w                 ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader85.lr.ph, label %._crit_edge89.split

.preheader85.lr.ph:                               ; preds = %.preheader86
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.preheader85.preheader, label %._crit_edge89.split

.preheader85.preheader:                           ; preds = %.preheader85.lr.ph
  %i.ah = shl nuw i32 %i.af, 1
  %i.ai = zext i32 %i.ah to i64                   ; 9 uses
  %wide.trip.count = zext nneg i32 %i.ac to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.aj = icmp ult i32 %i.ac, 8
  br i1 %i.aj, label %.preheader85.epil.preheader, label %.preheader85.preheader.new

.preheader85.preheader.new:                       ; preds = %.preheader85.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.preheader85

bb.h:                                             ; preds = %bb.g
  store ptr @.str.3, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !83
  store float 3.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5348), align 4, !tbaa !130
  br label %bb.bh

.preheader85:                                     ; preds = %.preheader85, %.preheader85.preheader.new
  %indvar.a = phi i64 [ 0, %.preheader85.preheader.new ], [ %indvar.next.3, %.preheader85 ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader85.preheader.new ], [ %niter.next.3, %.preheader85 ]
  %2 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvar.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %2, i8 -1, i64 %i.ai, i1 false), !tbaa !21
  %3 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvar.a
  %scevgep = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %scevgep, i8 -1, i64 %i.ai, i1 false), !tbaa !21
  %4 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvar.a
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 -1, i64 %i.ai, i1 false), !tbaa !21
  %5 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvar.a
  %scevgep.1 = getelementptr inbounds nuw i8, ptr %5, i64 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %scevgep.1, i8 -1, i64 %i.ai, i1 false), !tbaa !21
  %6 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvar.a
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 -1, i64 %i.ai, i1 false), !tbaa !21
  %7 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvar.a
  %scevgep.2 = getelementptr inbounds nuw i8, ptr %7, i64 80
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %scevgep.2, i8 -1, i64 %i.ai, i1 false), !tbaa !21
  %8 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvar.a
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 96
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.am, i8 -1, i64 %i.ai, i1 false), !tbaa !21
  %9 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvar.a
  %scevgep.3 = getelementptr inbounds nuw i8, ptr %9, i64 112
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %scevgep.3, i8 -1, i64 %i.ai, i1 false), !tbaa !21
  %indvar.next.3 = add nuw nsw i64 %indvar.a, 8   ; 2 uses
  %niter.next.3 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge89.split.loopexit.unr-lcssa, label %.preheader85, !llvm.loop !155

._crit_edge89.split.loopexit.unr-lcssa:           ; preds = %.preheader85
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge89.split, label %.preheader85.epil.preheader

.preheader85.epil.preheader:                      ; preds = %._crit_edge89.split.loopexit.unr-lcssa, %.preheader85.preheader
  %indvar.epil.init = phi i64 [ 0, %.preheader85.preheader ], [ %indvar.next.3, %._crit_edge89.split.loopexit.unr-lcssa ]
  %lcmp.mod341 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod341)
  br label %.preheader85.epil

.preheader85.epil:                                ; preds = %.preheader85.epil, %.preheader85.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader85.epil.preheader ], [ %indvar.next.epil, %.preheader85.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader85.epil.preheader ], [ %epil.iter.next, %.preheader85.epil ]
  %10 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvar.epil
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %10, i8 -1, i64 %i.ai, i1 false), !tbaa !21
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge89.split, label %.preheader85.epil, !llvm.loop !156

._crit_edge89.split:                              ; preds = %._crit_edge89.split.loopexit.unr-lcssa, %.preheader85.epil, %.preheader85.lr.ph, %.preheader86
  %.not73 = icmp eq i32 %1, 0                     ; 3 uses
  br i1 %.not73, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge89.split
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 801052
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !79 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.as
  store i16 -2, ptr %i.at, align 2, !tbaa !21
  %i.au = add nsw i32 %i.ap, 1
  %i.av = and i32 %i.au, 8388607
  store i32 %i.av, ptr %i.ao, align 4, !tbaa !79
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !80 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 8388606
  %i.az = zext i1 %i.ay to i32
  %i.ba = add nsw i32 %i.ax, %i.az
  store i32 %i.ba, ptr %i.aw, align 8, !tbaa !80
  store i32 0, ptr %i.an, align 4, !tbaa !81
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 800876
  store i8 0, ptr %i.bb, align 4, !tbaa !39
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !82
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !83
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge89.split
  %.not74115 = icmp sgt i32 %i.y, %i.x
  br i1 %.not74115, label %._crit_edge118.split, label %.preheader84.lr.ph

.preheader84.lr.ph:                               ; preds = %bb.j
  %.not7594 = icmp sgt i32 %i.u, %i.t
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 800044 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 800896 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 805160 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 800876 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 640000 ; 5 uses
  br i1 %.not7594, label %._crit_edge118.split, label %.preheader84.lr.ph.split

.preheader84.lr.ph.split:                         ; preds = %.preheader84.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !29 ; 16 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.preheader84.lr.ph.split.split.us, label %.preheader84.lr.ph.split.split

.preheader84.lr.ph.split.split.us:                ; preds = %.preheader84.lr.ph.split
  %i.bp = load i32, ptr %i.bc, align 8, !tbaa !132 ; 4 uses
  %i.bq = icmp sgt i32 %i.bp, -1                  ; 3 uses
  br i1 %.not73, label %.preheader84.lr.ph.split.split.us.split.us, label %.preheader84.us.preheader

.preheader84.us.preheader:                        ; preds = %.preheader84.lr.ph.split.split.us
  %i.br = zext nneg i32 %i.bp to i64
  %i.bs = sext i32 %i.u to i64
  %i.bt = add i32 %i.t, 1
  %i.bu = sext i32 %i.y to i64
  %i.bv = add i32 %i.x, 1
  %wide.trip.count179 = zext nneg i32 %i.bn to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 800908
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 800904
  %.not80.us.us.peel = icmp eq i32 %i.bp, 0
  %exitcond180.peel.not = icmp eq i32 %i.bn, 1
  br label %.preheader84.us

.preheader84.lr.ph.split.split.us.split.us:       ; preds = %.preheader84.lr.ph.split.split.us
  br i1 %i.bq, label %.preheader84.lr.ph.split.split.us.split.us.split.us, label %.preheader84.lr.ph.split.split.us.split.us.split

.preheader84.lr.ph.split.split.us.split.us.split.us: ; preds = %.preheader84.lr.ph.split.split.us.split.us
  %i.by = zext nneg i32 %i.bp to i64              ; 8 uses
  %i.bz = sext i32 %i.u to i64                    ; 2 uses
  %i.ca = add i32 %i.t, 1                         ; 2 uses
  %i.cb = sext i32 %i.y to i64                    ; 2 uses
  %i.cc = add i32 %i.x, 1                         ; 2 uses
  %wide.trip.count277 = zext nneg i32 %i.bn to i64 ; 4 uses
  %invariant.gep322 = getelementptr [2 x i8], ptr %0, i64 %i.by ; 2 uses
  %invariant.gep320 = getelementptr [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %i.by ; 2 uses
  br i1 %.not76, label %.preheader84.us.us.us.us.preheader, label %.preheader84.us.us.us.preheader

.preheader84.us.us.us.preheader:                  ; preds = %.preheader84.lr.ph.split.split.us.split.us.split.us
  %xtraiter365 = and i64 %wide.trip.count277, 1
  %i.cd = icmp eq i32 %i.bn, 1
  %unroll_iter369 = and i64 %wide.trip.count277, 2147483646
  %lcmp.mod367.not = icmp eq i64 %xtraiter365, 0
  %lcmp.mod368 = trunc i32 %i.bn to i1
  br label %.preheader84.us.us.us

.preheader84.us.us.us.us.preheader:               ; preds = %.preheader84.lr.ph.split.split.us.split.us.split.us
  %xtraiter372 = and i64 %wide.trip.count277, 1
  %i.ce = icmp eq i32 %i.bn, 1
  %unroll_iter376 = and i64 %wide.trip.count277, 2147483646
  %lcmp.mod374.not = icmp eq i64 %xtraiter372, 0
  %lcmp.mod375 = trunc i32 %i.bn to i1
  br label %.preheader84.us.us.us.us

.preheader84.us.us.us.us:                         ; preds = %.preheader84.us.us.us.us.preheader, %._crit_edge97.split.us.us.split.us.split.us.us.us.split.us.us
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %._crit_edge97.split.us.us.split.us.split.us.us.us.split.us.us ], [ %i.cb, %.preheader84.us.us.us.us.preheader ] ; 2 uses
  %.0117.us.us.us.us = phi i64 [ %indvars.iv.next280, %._crit_edge97.split.us.us.split.us.split.us.us.us.split.us.us ], [ 0, %.preheader84.us.us.us.us.preheader ]
  %gep323 = getelementptr [3200 x i8], ptr %invariant.gep322, i64 %indvars.iv288
  br label %.preheader.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us:               ; preds = %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us, %.preheader84.us.us.us.us
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us ], [ %i.bz, %.preheader84.us.us.us.us ] ; 2 uses
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us ], [ %.0117.us.us.us.us, %.preheader84.us.us.us.us ] ; 2 uses
  %gep319 = getelementptr [16 x i8], ptr %gep323, i64 %indvars.iv281 ; 3 uses
  %gep321 = getelementptr [16 x i8], ptr %invariant.gep320, i64 %indvars.iv279 ; 3 uses
  br i1 %i.ce, label %.epil.preheader371, label %.preheader.us.us.us.us.us.us.us.us.new

.preheader.us.us.us.us.us.us.us.us.new:           ; preds = %.preheader.us.us.us.us.us.us.us.us, %bb.n
  %indvars.iv274 = phi i64 [ %indvars.iv.next275.1, %bb.n ], [ 0, %.preheader.us.us.us.us.us.us.us.us ] ; 3 uses
  %niter377 = phi i64 [ %niter377.next.1, %bb.n ], [ 0, %.preheader.us.us.us.us.us.us.us.us ]
  %.not80.us.us.us.us.us.us.us.us.us.us = icmp eq i64 %indvars.iv274, %i.by
  br i1 %.not80.us.us.us.us.us.us.us.us.us.us, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader.us.us.us.us.us.us.us.us.new
  %i.cf = load i16, ptr %gep319, align 2, !tbaa !21
  store i16 %i.cf, ptr %gep321, align 2, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader.us.us.us.us.us.us.us.us.new
  %indvars.iv.next275 = or disjoint i64 %indvars.iv274, 1
  %.not80.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i64 %indvars.iv.next275, %i.by
  br i1 %.not80.us.us.us.us.us.us.us.us.us.us.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load i16, ptr %gep319, align 2, !tbaa !21
  store i16 %i.cg, ptr %gep321, align 2, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next275.1 = add nuw nsw i64 %indvars.iv274, 2 ; 2 uses
  %niter377.next.1 = add i64 %niter377, 2         ; 2 uses
  %niter377.ncmp.1 = icmp eq i64 %niter377.next.1, %unroll_iter376
  br i1 %niter377.ncmp.1, label %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.preheader.us.us.us.us.us.us.us.us.new, !llvm.loop !158

._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.n
  br i1 %lcmp.mod374.not, label %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us, label %.epil.preheader371

.epil.preheader371:                               ; preds = %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us.unr-lcssa, %.preheader.us.us.us.us.us.us.us.us
  %indvars.iv274.epil.init = phi i64 [ 0, %.preheader.us.us.us.us.us.us.us.us ], [ %indvars.iv.next275.1, %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod375)
  %.not80.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i64 %indvars.iv274.epil.init, %i.by
  br i1 %.not80.us.us.us.us.us.us.us.us.us.us.epil, label %bb.o, label %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us

bb.o:                                             ; preds = %.epil.preheader371
  %i.ch = load i16, ptr %gep319, align 2, !tbaa !21
  store i16 %i.ch, ptr %gep321, align 2, !tbaa !21
  br label %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us

._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us: ; preds = %.epil.preheader371, %bb.o, %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us.unr-lcssa
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, 1 ; 2 uses
  %indvars.iv.next282 = add nsw i64 %indvars.iv281, 1 ; 2 uses
  %lftr.wideiv286 = trunc i64 %indvars.iv.next282 to i32
  %exitcond287.not = icmp eq i32 %i.ca, %lftr.wideiv286
  br i1 %exitcond287.not, label %._crit_edge97.split.us.us.split.us.split.us.us.us.split.us.us, label %.preheader.us.us.us.us.us.us.us.us, !llvm.loop !159

._crit_edge97.split.us.us.split.us.split.us.us.us.split.us.us: ; preds = %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us
  %indvars.iv.next289 = add nsw i64 %indvars.iv288, 1 ; 2 uses
  %lftr.wideiv291 = trunc i64 %indvars.iv.next289 to i32
  %exitcond292.not = icmp eq i32 %i.cc, %lftr.wideiv291
  br i1 %exitcond292.not, label %._crit_edge118.split, label %.preheader84.us.us.us.us, !llvm.loop !160

.preheader84.us.us.us:                            ; preds = %.preheader84.us.us.us.preheader, %._crit_edge97.split.us.us.split.us.split.us.us.us.split
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %._crit_edge97.split.us.us.split.us.split.us.us.us.split ], [ %i.cb, %.preheader84.us.us.us.preheader ] ; 3 uses
  %.0117.us.us.us = phi i64 [ %indvars.iv.next261, %._crit_edge97.split.us.us.split.us.split.us.us.us.split ], [ 0, %.preheader84.us.us.us.preheader ]
  %i.ci = getelementptr inbounds [800 x i8], ptr %i.bl, i64 %indvars.iv269
  %gep318 = getelementptr [3200 x i8], ptr %invariant.gep322, i64 %indvars.iv269
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge92.split.us.split.us.us.us.us.us.us.us, %.preheader84.us.us.us
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %._crit_edge92.split.us.split.us.us.us.us.us.us.us ], [ %i.bz, %.preheader84.us.us.us ] ; 3 uses
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %._crit_edge92.split.us.split.us.us.us.us.us.us.us ], [ %.0117.us.us.us, %.preheader84.us.us.us ] ; 3 uses
  %gep314 = getelementptr [16 x i8], ptr %gep318, i64 %indvars.iv262 ; 3 uses
  %gep316 = getelementptr [16 x i8], ptr %invariant.gep320, i64 %indvars.iv260 ; 3 uses
  br i1 %i.cd, label %.epil.preheader364, label %.preheader.us.us.us.us.us.us.new

.preheader.us.us.us.us.us.us.new:                 ; preds = %.preheader.us.us.us.us.us.us, %bb.s
  %indvars.iv254 = phi i64 [ %indvars.iv.next255.1, %bb.s ], [ 0, %.preheader.us.us.us.us.us.us ] ; 3 uses
  %niter370 = phi i64 [ %niter370.next.1, %bb.s ], [ 0, %.preheader.us.us.us.us.us.us ]
  %.not80.us.us.us.us.us.us.us.us = icmp eq i64 %indvars.iv254, %i.by
  br i1 %.not80.us.us.us.us.us.us.us.us, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.us.us.us.us.us.us.new
  %i.cj = load i16, ptr %gep314, align 2, !tbaa !21
  store i16 %i.cj, ptr %gep316, align 2, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader.us.us.us.us.us.us.new
  %indvars.iv.next255 = or disjoint i64 %indvars.iv254, 1
end_hunk_0
begin_hunk_1_@stbte__copy_cut:bb.a
.preheader84.preheader:                           ; preds = %.preheader84.lr.ph.split.split
  %i.jm = sext i32 %i.u to i64                    ; 5 uses
  %i.jn = add i32 %i.t, 1
  %i.jo = sext i32 %i.y to i64                    ; 2 uses
  %i.jp = add i32 %i.x, 1
  %i.jq = shl nsw i64 %i.jm, 2
  %i.jr = add i64 %i.jq, %i.a
  %i.js = sub i64 add (i64 ptrtoaddr (ptr @stbte__ui to i64), i64 414164), %i.jr
  %.neg = mul nsw i64 %i.jo, -800
  %i.jt = add i64 %.neg, %i.js
  %i.ju = add i32 %i.t, 1
  %i.jv = zext i32 %i.v to i64
  %i.jw = add nuw nsw i64 %i.jv, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 7
  %n.vec = and i64 %i.jw, 8589934584              ; 4 uses
  %i.jx = add nsw i64 %n.vec, %i.jm
  %cmp.n = icmp eq i64 %i.jw, %n.vec
  br label %.preheader84

.preheader84:                                     ; preds = %.preheader84.preheader, %._crit_edge97.split.split
  %indvar330 = phi i64 [ 0, %.preheader84.preheader ], [ %indvar.next331, %._crit_edge97.split.split ] ; 2 uses
  %indvars.iv171 = phi i64 [ %i.jo, %.preheader84.preheader ], [ %indvars.iv.next172, %._crit_edge97.split.split ] ; 2 uses
  %.0117 = phi i64 [ 0, %.preheader84.preheader ], [ %indvars.iv.next.lcssa, %._crit_edge97.split.split ] ; 5 uses
  %i.jy = getelementptr inbounds [800 x i8], ptr %i.bl, i64 %indvars.iv171 ; 6 uses
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader84
  %i.jz = mul nsw i64 %indvar330, -800
  %i.ka = add i64 %i.jt, %i.jz
  %i.kb = shl i64 %.0117, 2
  %i.kc = add i64 %i.ka, %i.kb
  %i.kd = add i64 %i.kc, -1
  %diff.check = icmp ult i64 %i.kd, 31
  br i1 %diff.check, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ke = add i64 %.0117, %n.vec                  ; 2 uses
  %i.kf = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %.0117
  %invariant.gep = getelementptr [4 x i8], ptr %i.jy, i64 %i.jm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kg = getelementptr [4 x i8], ptr %i.kf, i64 %index ; 2 uses
  %gep378 = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %gep378, i64 16
  %wide.load = load <4 x float>, ptr %gep378, align 4, !tbaa !42
  %wide.load332 = load <4 x float>, ptr %i.kh, align 4, !tbaa !42
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store <4 x float> %wide.load, ptr %i.kg, align 4, !tbaa !42
  store <4 x float> %wide.load332, ptr %i.ki, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kj = icmp eq i64 %index.next, %n.vec
  br i1 %i.kj, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge97.split.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.preheader84, %middle.block
  %indvars.iv165.ph = phi i64 [ %i.jm, %vector.memcheck ], [ %i.jm, %.preheader84 ], [ %i.jx, %middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %.0117, %vector.memcheck ], [ %.0117, %.preheader84 ], [ %i.ke, %middle.block ] ; 2 uses
  %i.kk = trunc i64 %indvars.iv165.ph to i32      ; 2 uses
  %i.kl = sub i32 %i.ju, %i.kk
  %i.km = sub i32 %i.t, %i.kk
  %xtraiter342 = and i32 %i.kl, 3                 ; 2 uses
  %lcmp.mod343.not = icmp eq i32 %xtraiter342, 0
  br i1 %lcmp.mod343.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %indvars.iv165.prol = phi i64 [ %indvars.iv.next166.prol, %.preheader.prol ], [ %indvars.iv165.ph, %.preheader.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader.prol ], [ %indvars.iv.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.kn = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv.prol
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %indvars.iv165.prol
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !42
  store float %i.kp, ptr %i.kn, align 4, !tbaa !42
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %indvars.iv.next166.prol = add nsw i64 %indvars.iv165.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter342
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !163

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv.next.lcssa340.unr = phi i64 [ poison, %.preheader.preheader ], [ %indvars.iv.next.prol, %.preheader.prol ]
  %indvars.iv165.unr = phi i64 [ %indvars.iv165.ph, %.preheader.preheader ], [ %indvars.iv.next166.prol, %.preheader.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.preheader ], [ %indvars.iv.next.prol, %.preheader.prol ]
  %i.kq = icmp ult i32 %i.km, 3
  br i1 %i.kq, label %._crit_edge97.split.split, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv165 = phi i64 [ %indvars.iv.next166.3, %.preheader ], [ %indvars.iv165.unr, %.preheader.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader ], [ %indvars.iv.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %indvars.iv165
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !42
  store float %i.kt, ptr %i.kr, align 4, !tbaa !42
  %i.ku = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv
  %i.kv = getelementptr i8, ptr %i.ku, i64 4
  %i.kw = getelementptr [4 x i8], ptr %i.jy, i64 %indvars.iv165
  %i.kx = getelementptr i8, ptr %i.kw, i64 4
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !42
  store float %i.ky, ptr %i.kv, align 4, !tbaa !42
  %i.kz = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv
  %i.la = getelementptr i8, ptr %i.kz, i64 8
  %i.lb = getelementptr [4 x i8], ptr %i.jy, i64 %indvars.iv165
  %i.lc = getelementptr i8, ptr %i.lb, i64 8
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !42
  store float %i.ld, ptr %i.la, align 4, !tbaa !42
  %i.le = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv
  %i.lf = getelementptr i8, ptr %i.le, i64 12
  %i.lg = getelementptr [4 x i8], ptr %i.jy, i64 %indvars.iv165
  %i.lh = getelementptr i8, ptr %i.lg, i64 12
  %i.li = load float, ptr %i.lh, align 4, !tbaa !42
  store float %i.li, ptr %i.lf, align 4, !tbaa !42
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars.iv.next166.3 = add nsw i64 %indvars.iv165, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next166.3 to i32
  %exitcond170.not.3 = icmp eq i32 %i.jn, %lftr.wideiv.3
  br i1 %exitcond170.not.3, label %._crit_edge97.split.split, label %.preheader, !llvm.loop !164

._crit_edge97.split.split:                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ke, %middle.block ], [ %indvars.iv.next.lcssa340.unr, %.preheader.prol.loopexit ], [ %indvars.iv.next.3, %.preheader ]
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, 1 ; 2 uses
  %lftr.wideiv174 = trunc i64 %indvars.iv.next172 to i32
  %exitcond175.not = icmp eq i32 %i.jp, %lftr.wideiv174
  %indvar.next331 = add i64 %indvar330, 1
  br i1 %exitcond175.not, label %._crit_edge118.split, label %.preheader84, !llvm.loop !160

._crit_edge118.split:                             ; preds = %._crit_edge97.split.split, %._crit_edge97.split.us.us.split, %._crit_edge97.split.us.us.split.us.split.split.us136, %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split, %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split.us.us, %._crit_edge97.split.us.us.split.us.split.us.us.us.split, %._crit_edge97.split.us.us.split.us.split.us.us.us.split.us.us, %.preheader84.lr.ph.split.split, %.preheader84.lr.ph, %bb.j
  %i.lj = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4
  %.not.i82 = icmp eq i32 %i.lj, 0
  %or.cond83 = select i1 %.not73, i1 true, i1 %.not.i82
  br i1 %or.cond83, label %stbte__end_undo.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge118.split
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !79 ; 2 uses
  %i.lm = add i32 %i.ll, 8388607
  %i.ln = and i32 %i.lm, 8388607                  ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !28 ; 2 uses
  %i.lq = zext nneg i32 %i.ln to i64
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %i.lp, i64 %i.lq
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !21
  %i.lt = icmp eq i16 %i.ls, -2
  br i1 %i.lt, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 %i.ln, ptr %i.lk, align 4, !tbaa !79
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !80
  %i.lw = add nsw i32 %i.lv, -1
  store i32 %i.lw, ptr %i.lu, align 8, !tbaa !80
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.lx = phi i32 [ %i.ln, %bb.bf ], [ %i.ll, %bb.be ]
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [2 x i8], ptr %i.lp, i64 %i.ly
  store i16 -4, ptr %i.lz, align 2, !tbaa !21
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !82
  br label %stbte__end_undo.exit

stbte__end_undo.exit:                             ; preds = %bb.bg, %._crit_edge118.split
  store i32 %i.w, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316328), align 8, !tbaa !165
  store i32 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316332), align 4, !tbaa !166
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316336), align 8, !tbaa !167
  store i32 %.011.i, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316340), align 4, !tbaa !168
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316320), align 8, !tbaa !169
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316308), align 4, !tbaa !170
  store i32 %i.y, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316312), align 8, !tbaa !171
  br label %bb.bh

bb.bh:                                            ; preds = %stbte__should_copy_properties.exit, %stbte__end_undo.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @stbte__in_rect(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 {
bb.a:
  %.not = icmp sge i32 %0, %2
  %i.a = add nsw i32 %4, %2
  %i.b = icmp slt i32 %0, %i.a
  %or.cond.not17.not19 = select i1 %.not, i1 %i.b, i1 false
  %.not13 = icmp sge i32 %1, %3
  %or.cond15.not = and i1 %.not13, %or.cond.not17.not19
  %i.c = add nsw i32 %5, %3
  %i.d = icmp slt i32 %1, %i.c
  %narrow = select i1 %or.cond15.not, i1 %i.d, i1 false
  %i.e = zext i1 %narrow to i32
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__paste(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 8 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316328), align 8, !tbaa !165 ; 3 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316332), align 4, !tbaa !166 ; 3 uses
  %i.d = ashr i32 %i.b, 1
  %i.e = sub nsw i32 %1, %i.d                     ; 3 uses
  %i.f = ashr i32 %i.c, 1
  %i.g = sub nsw i32 %2, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 801036
  %i.i = load i32, ptr %i.h, align 4, !tbaa !148
  switch i32 %i.i, label %bb.c [
    i32 1, label %stbte__should_copy_properties.exit
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %stbte__should_copy_properties.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.k = load i32, ptr %i.j, align 8, !tbaa !132
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %stbte__should_copy_properties.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.n = load i32, ptr %i.m, align 4, !tbaa !133
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %stbte__should_copy_properties.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 800896
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader.i, label %stbte__should_copy_properties.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbte__should_copy_properties.exit, label %.lr.ph.i, !llvm.loop !149

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !134
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.f, label %stbte__should_copy_properties.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !135
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %bb.e, label %stbte__should_copy_properties.exit

stbte__should_copy_properties.exit:               ; preds = %bb.e, %.lr.ph.i, %bb.f, %bb.a, %bb.b, %bb.c, %bb.d, %.preheader.i
  %i.y = phi i1 [ false, %bb.d ], [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.c ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %bb.f ], [ false, %.lr.ph.i ]
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316340), align 4
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = select i1 %i.y, i1 %i.aa, i1 false
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316336), align 8, !tbaa !167
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.r, label %bb.g

bb.g:                                             ; preds = %stbte__should_copy_properties.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !79 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 12 uses
  %i.aj = sext i32 %i.ag to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.aj
  store i16 -2, ptr %i.ak, align 2, !tbaa !21
  %i.al = add nsw i32 %i.ag, 1
  %i.am = and i32 %i.al, 8388607                  ; 4 uses
  store i32 %i.am, ptr %i.af, align 4, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 5 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !80 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 8388606
  %i.aq = zext i1 %i.ap to i32
  %i.ar = add nsw i32 %i.ao, %i.aq                ; 4 uses
  store i32 %i.ar, ptr %i.an, align 8, !tbaa !80
  store i32 0, ptr %i.ae, align 4, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 800876 ; 3 uses
  store i8 0, ptr %i.as, align 4, !tbaa !39
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !82
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !83
  %i.at = icmp sgt i32 %i.c, 0
  br i1 %i.at, label %.preheader103.lr.ph, label %._crit_edge120.split

.preheader103.lr.ph:                              ; preds = %bb.g
  %i.au = icmp sgt i32 %i.b, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 800004
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 800000
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 640000
  br i1 %i.au, label %.preheader103.preheader, label %._crit_edge120.split

.preheader103.preheader:                          ; preds = %.preheader103.lr.ph
  %i.az = sext i32 %i.e to i64
  %wide.trip.count136 = zext nneg i32 %i.c to i64
  %wide.trip.count131 = zext nneg i32 %i.b to i64
  br label %.preheader103

.preheader103:                                    ; preds = %.preheader103.preheader, %._crit_edge117
  %i.ba = phi i32 [ %i.ar, %.preheader103.preheader ], [ %i.ez, %._crit_edge117 ]
  %i.bb = phi i32 [ %i.am, %.preheader103.preheader ], [ %i.fa, %._crit_edge117 ]
  %indvars.iv133 = phi i64 [ 0, %.preheader103.preheader ], [ %indvars.iv.next134, %._crit_edge117 ] ; 2 uses
  %.0119 = phi i64 [ 0, %.preheader103.preheader ], [ %indvars.iv.next125, %._crit_edge117 ]
  %i.bc = trunc nuw nsw i64 %indvars.iv133 to i32
  %i.bd = add nsw i32 %i.g, %i.bc                 ; 5 uses
  %3 = icmp sgt i32 %i.bd, -1
  %4 = zext nneg i32 %i.bd to i64
  %5 = getelementptr inbounds nuw [3200 x i8], ptr %0, i64 %4 ; 2 uses
  %6 = trunc i32 %i.bd to i16                     ; 2 uses
  %7 = sext i32 %i.bd to i64
  %i.be = getelementptr inbounds [800 x i8], ptr %i.ay, i64 %7 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.be, i64 %i.az
  br label %bb.h

bb.h:                                             ; preds = %.preheader103, %bb.p
  %i.bf = phi i32 [ %i.ba, %.preheader103 ], [ %i.ez, %bb.p ] ; 6 uses
  %i.bg = phi i32 [ %i.bb, %.preheader103 ], [ %i.fa, %bb.p ] ; 6 uses
  %indvars.iv126 = phi i64 [ 0, %.preheader103 ], [ %indvars.iv.next127, %bb.p ] ; 4 uses
  %indvars.iv124 = phi i64 [ %.0119, %.preheader103 ], [ %indvars.iv.next125, %bb.p ] ; 4 uses
  br i1 %3, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bh = load i32, ptr %i.av, align 4, !tbaa !31
  %i.bi = icmp slt i32 %i.bd, %i.bh
  br i1 %i.bi, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %8 = trunc nuw nsw i64 %indvars.iv126 to i32
  %9 = add nsw i32 %i.e, %8                       ; 5 uses
  %i.bj = icmp sgt i32 %9, -1
  br i1 %i.bj, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bk = load i32, ptr %i.aw, align 8, !tbaa !30
  %i.bl = icmp slt i32 %9, %i.bk
  br i1 %i.bl, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bm = load i32, ptr %i.ax, align 8, !tbaa !29 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph107, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %i.bo = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv124
  call void @stbte__paste_stack(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bo, i32 noundef 0)
  br label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.l
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %10
  %i.bp = shl nuw i32 %i.bm, 1
  %i.bq = zext i32 %i.bp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 2 %11, i64 %i.bq, i1 false), !tbaa !21
  %i.br = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv124
  call void @stbte__paste_stack(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.br, i32 noundef 0)
  %12 = zext nneg i32 %9 to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %12
  %i.bt = trunc i32 %9 to i16
  %wide.trip.count = zext nneg i32 %i.bm to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph107, %bb.n
  %i.bu = phi i32 [ %i.bf, %.lr.ph107 ], [ %i.dd, %bb.n ] ; 3 uses
  %i.bv = phi i32 [ %i.bg, %.lr.ph107 ], [ %i.de, %bb.n ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !21 ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv ; 2 uses
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !21 ; 2 uses
  %.not = icmp eq i16 %i.bx, %i.bz
  br i1 %.not, label %bb.n, label %stbte__undo_record.exit

stbte__undo_record.exit:                          ; preds = %bb.m
  %i.ca = zext nneg i32 %i.bv to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ca
  store i16 %i.bz, ptr %i.cb, align 2, !tbaa !21
  %i.cc = add nuw nsw i32 %i.bv, 1
  %i.cd = and i32 %i.cc, 8388607
  %i.ce = icmp slt i32 %i.bu, 8388606
  %i.cf = zext i1 %i.ce to i32
  %i.cg = add nsw i32 %i.bu, %i.cf                ; 2 uses
  %i.ch = zext nneg i32 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ch
  store i16 %i.bt, ptr %i.ci, align 2, !tbaa !21
  %i.cj = add nuw nsw i32 %i.bv, 2
  %i.ck = and i32 %i.cj, 8388607
  %i.cl = icmp slt i32 %i.cg, 8388606
  %i.cm = zext i1 %i.cl to i32
  %i.cn = add nsw i32 %i.cg, %i.cm                ; 2 uses
  %i.co = zext nneg i32 %i.ck to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.co
  store i16 %6, ptr %i.cp, align 2, !tbaa !21
  %i.cq = add nuw nsw i32 %i.bv, 3
  %i.cr = and i32 %i.cq, 8388607
  %i.cs = icmp slt i32 %i.cn, 8388606
  %i.ct = zext i1 %i.cs to i32
  %i.cu = add nsw i32 %i.cn, %i.ct                ; 2 uses
  %i.cv = trunc i64 %indvars.iv to i16
  %i.cw = zext nneg i32 %i.cr to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.cw
  store i16 %i.cv, ptr %i.cx, align 2, !tbaa !21
  %i.cy = add nuw nsw i32 %i.bv, 4
  %i.cz = and i32 %i.cy, 8388607                  ; 2 uses
  store i32 %i.cz, ptr %i.af, align 4, !tbaa !79
  %i.da = icmp slt i32 %i.cu, 8388606
  %i.db = zext i1 %i.da to i32
  %i.dc = add nsw i32 %i.cu, %i.db                ; 2 uses
  store i32 %i.dc, ptr %i.an, align 8, !tbaa !80
  store i32 0, ptr %i.ae, align 4, !tbaa !81
  store i8 0, ptr %i.as, align 4, !tbaa !39
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %stbte__undo_record.exit
  %i.dd = phi i32 [ %i.bu, %bb.m ], [ %i.dc, %stbte__undo_record.exit ] ; 2 uses
  %i.de = phi i32 [ %i.bv, %bb.m ], [ %i.cz, %stbte__undo_record.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge108, label %bb.m, !llvm.loop !172

._crit_edge108:                                   ; preds = %bb.n, %._crit_edge
  %i.df = phi i32 [ %i.bf, %._crit_edge ], [ %i.dd, %bb.n ]
  %i.dg = phi i32 [ %i.bg, %._crit_edge ], [ %i.de, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge108, %bb.k, %bb.j, %bb.i, %bb.h
  %.promoted110 = phi i32 [ %i.df, %._crit_edge108 ], [ %i.bf, %bb.k ], [ %i.bf, %bb.j ], [ %i.bf, %bb.i ], [ %i.bf, %bb.h ] ; 4 uses
  %.promoted = phi i32 [ %i.dg, %._crit_edge108 ], [ %i.bg, %bb.k ], [ %i.bg, %bb.j ], [ %i.bg, %bb.i ], [ %i.bg, %bb.h ] ; 8 uses
  br i1 %i.ab, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.o
  %13 = trunc nuw nsw i64 %indvars.iv126 to i32
  %14 = add nsw i32 %i.e, %13                     ; 2 uses
  %15 = sext i32 %14 to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.be, i64 %15
  %i.di = load float, ptr %i.dh, align 4, !tbaa !42 ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv124
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !42 ; 2 uses
  %i.dl = fcmp une float %i.di, %i.dk
  br i1 %i.dl, label %.preheader.split, label %.split

.preheader.split:                                 ; preds = %.preheader
  %i.dm = trunc i32 %14 to i16
  %i.dn = bitcast float %i.di to i32              ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.dn to i16
  %.sroa.05.2.extract.shift.i = lshr i32 %i.dn, 16
  %.sroa.05.2.extract.trunc.i = trunc nuw i32 %.sroa.05.2.extract.shift.i to i16
  store i8 0, ptr %i.as, align 4, !tbaa !39
  %i.do = zext nneg i32 %.promoted to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.do
  store i16 %.sroa.05.2.extract.trunc.i, ptr %i.dp, align 2, !tbaa !21
  %i.dq = add nuw nsw i32 %.promoted, 1
  %i.dr = and i32 %i.dq, 8388607
  %i.ds = icmp slt i32 %.promoted110, 8388606
  %i.dt = zext i1 %i.ds to i32
  %i.du = add nsw i32 %.promoted110, %i.dt        ; 2 uses
  %i.dv = zext nneg i32 %i.dr to i64
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.dv
  store i16 %.sroa.0.0.extract.trunc.i, ptr %i.dw, align 2, !tbaa !21
  %i.dx = add nuw nsw i32 %.promoted, 2
  %i.dy = and i32 %i.dx, 8388607
  %i.dz = icmp slt i32 %i.du, 8388606
  %i.ea = zext i1 %i.dz to i32
  %i.eb = add nsw i32 %i.du, %i.ea                ; 2 uses
  %i.ec = zext nneg i32 %i.dy to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ec
  store i16 %i.dm, ptr %i.ed, align 2, !tbaa !21
  %i.ee = add nuw nsw i32 %.promoted, 3
  %i.ef = and i32 %i.ee, 8388607
  %i.eg = icmp slt i32 %i.eb, 8388606
  %i.eh = zext i1 %i.eg to i32
  %i.ei = add nsw i32 %i.eb, %i.eh                ; 2 uses
  %i.ej = zext nneg i32 %i.ef to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ej
  store i16 %6, ptr %i.ek, align 2, !tbaa !21
  %i.el = add nuw nsw i32 %.promoted, 4
  %i.em = and i32 %i.el, 8388607
  %i.en = icmp slt i32 %i.ei, 8388606
  %i.eo = zext i1 %i.en to i32
  %i.ep = add nsw i32 %i.ei, %i.eo                ; 2 uses
  %i.eq = zext nneg i32 %i.em to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.eq
  store i16 256, ptr %i.er, align 2, !tbaa !21
  %i.es = add nuw nsw i32 %.promoted, 5
  %i.et = and i32 %i.es, 8388607                  ; 2 uses
  %i.eu = icmp slt i32 %i.ep, 8388606
  %i.ev = zext i1 %i.eu to i32
  %i.ew = add nsw i32 %i.ep, %i.ev                ; 2 uses
  store i32 %i.et, ptr %i.af, align 4, !tbaa !79
  store i32 %i.ew, ptr %i.an, align 8, !tbaa !80
  store i32 0, ptr %i.ae, align 4, !tbaa !81
  br label %.split

.split:                                           ; preds = %.preheader, %.preheader.split
  %i.ex = phi i32 [ %.promoted110, %.preheader ], [ %i.ew, %.preheader.split ]
  %i.ey = phi i32 [ %.promoted, %.preheader ], [ %i.et, %.preheader.split ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv126
  store float %i.dk, ptr %gep, align 4, !tbaa !42
  br label %bb.p

bb.p:                                             ; preds = %.split, %bb.o
  %i.ez = phi i32 [ %i.ex, %.split ], [ %.promoted110, %bb.o ] ; 3 uses
  %i.fa = phi i32 [ %i.ey, %.split ], [ %.promoted, %bb.o ] ; 3 uses
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count131
  br i1 %exitcond132.not, label %._crit_edge117, label %bb.h, !llvm.loop !173

._crit_edge117:                                   ; preds = %bb.p
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge120.split, label %.preheader103, !llvm.loop !174

._crit_edge120.split:                             ; preds = %._crit_edge117, %.preheader103.lr.ph, %bb.g
  %i.fb = phi i32 [ %i.ar, %bb.g ], [ %i.ar, %.preheader103.lr.ph ], [ %i.ez, %._crit_edge117 ]
  %i.fc = phi i32 [ %i.am, %bb.g ], [ %i.am, %.preheader103.lr.ph ], [ %i.fa, %._crit_edge117 ] ; 2 uses
  %i.fd = add nuw nsw i32 %i.fc, 8388607
  %i.fe = and i32 %i.fd, 8388607                  ; 3 uses
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !21
  %i.fi = icmp eq i16 %i.fh, -2
  br i1 %i.fi, label %bb.q, label %stbte__end_undo.exit

bb.q:                                             ; preds = %._crit_edge120.split
  store i32 %i.fe, ptr %i.af, align 4, !tbaa !79
  %i.fj = add nsw i32 %i.fb, -1
  store i32 %i.fj, ptr %i.an, align 8, !tbaa !80
  br label %stbte__end_undo.exit

stbte__end_undo.exit:                             ; preds = %._crit_edge120.split, %bb.q
  %i.fk = phi i32 [ %i.fe, %bb.q ], [ %i.fc, %._crit_edge120.split ]
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.fl
  store i16 -4, ptr %i.fm, align 2, !tbaa !21
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !82
  br label %bb.r

bb.r:                                             ; preds = %stbte__should_copy_properties.exit, %stbte__end_undo.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__drag_update(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 18 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5268), align 4, !tbaa !175 ; 2 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5272), align 8, !tbaa !176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 44), align 4, !tbaa !110
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %stbte__clear_stack.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5260), align 4, !tbaa !177
  %i.f = sub nsw i32 %1, %i.e                     ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %stbte__clear_stack.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5264), align 8, !tbaa !178
  %i.i = sub nsw i32 %2, %i.h                     ; 2 uses
  %i.j = icmp slt i32 %i.f, %i.b
  %i.k = icmp sgt i32 %i.i, -1
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  %i.l = icmp slt i32 %i.i, %i.c
  %or.cond112 = select i1 %or.cond, i1 %i.l, i1 false
  br i1 %or.cond112, label %.preheader124, label %stbte__clear_stack.exit

.preheader124:                                    ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29   ; 5 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %._crit_edge, label %._crit_edge.thread

._crit_edge:                                      ; preds = %.preheader124
  %i.p = sext i32 %2 to i64
  %i.q = getelementptr inbounds [3200 x i8], ptr %0, i64 %i.p
  %i.r = sext i32 %1 to i64
  %i.s = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.r
  %i.t = shl nuw i32 %i.n, 1
  %i.u = zext i32 %i.t to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 2 %i.s, i64 %i.u, i1 false), !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.w = load i32, ptr %i.v, align 4, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.y = load i32, ptr %i.x, align 8, !tbaa !132  ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  %spec.select.i = select i1 %i.z, i32 %i.w, i32 %i.y ; 2 uses
  %i.aa = icmp sgt i32 %spec.select.i, -1
  br i1 %i.aa, label %bb.g, label %.lr.ph.i

._crit_edge.thread:                               ; preds = %.preheader124
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !133
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !132 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  %spec.select.i153 = select i1 %i.af, i32 %i.ac, i32 %i.ae ; 2 uses
  %i.ag = icmp sgt i32 %spec.select.i153, -1
  br i1 %i.ag, label %bb.g, label %stbte__clear_stack.exit

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 800896 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 800908
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !134
  %.not.peel.i = icmp eq i32 %i.ak, 0
  br i1 %.not.peel.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 800904
  %i.am = load i32, ptr %i.al, align 8, !tbaa !135
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = load i16, ptr %i.ai, align 8, !tbaa !40
  store i16 %i.ao, ptr %i.a, align 16, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.n, 1
  br i1 %exitcond.peel.not.i, label %stbte__clear_stack.exit, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.f
  %i.ap = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.ap, 1
  %i.aq = icmp eq i32 %i.n, 2
  br i1 %i.aq, label %.peel.next.i.epil.preheader, label %.peel.next.i.preheader.new

.peel.next.i.preheader.new:                       ; preds = %.peel.next.i.preheader
  %unroll_iter = and i64 %i.ap, -2
  br label %.peel.next.i

bb.g:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %spec.select.i154 = phi i32 [ %spec.select.i153, %._crit_edge.thread ], [ %spec.select.i, %._crit_edge ] ; 2 uses
  %i.ar = icmp eq i32 %spec.select.i154, 0
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %i.at = load i16, ptr %i.as, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = phi i16 [ %i.at, %bb.h ], [ -1, %bb.g ]
  %i.av = zext nneg i32 %spec.select.i154 to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.av
  store i16 %i.au, ptr %i.aw, align 2, !tbaa !21
  br label %stbte__clear_stack.exit

.peel.next.i:                                     ; preds = %bb.n, %.peel.next.i.preheader.new
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i.preheader.new ], [ %indvars.iv.next.i.1, %bb.n ] ; 4 uses
  %niter = phi i64 [ 0, %.peel.next.i.preheader.new ], [ %niter.next.1, %bb.n ]
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !134
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %bb.j, label %.peel.next.i.1

bb.j:                                             ; preds = %.peel.next.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !135
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %.peel.next.i.1

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  store i16 -1, ptr %i.bd, align 2, !tbaa !21
  br label %.peel.next.i.1

.peel.next.i.1:                                   ; preds = %bb.k, %bb.j, %.peel.next.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.next.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !134
  %.not.i.1 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.1, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.peel.next.i.1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !135
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i16 -1, ptr %i.bk, align 2, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.peel.next.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbte__clear_stack.exit.loopexit.unr-lcssa, label %.peel.next.i, !llvm.loop !152

end_hunk_1
