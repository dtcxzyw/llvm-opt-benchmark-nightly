Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pixdesc?download=true
inline.NumInlined: 22
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 39
begin_hunk_0_@av_write_image_line2:bb.a
  %i.ug = shl i32 %i.uf, %.sroa.8.0.copyload
  %i.uh = load i8, ptr %i.uc, align 1, !tbaa !19
  %i.ui = trunc i32 %i.ug to i8
  %i.uj = or i8 %i.uh, %i.ui
  store i8 %i.uj, ptr %i.uc, align 1, !tbaa !19
  %i.uk = getelementptr inbounds i8, ptr %i.uc, i64 %i.ru ; 3 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.4154, i64 6
  %i.um = load i16, ptr %i.ud, align 2, !tbaa !21
  %i.un = zext i16 %i.um to i32
  %i.uo = shl i32 %i.un, %.sroa.8.0.copyload
  %i.up = load i8, ptr %i.uk, align 1, !tbaa !19
  %i.uq = trunc i32 %i.uo to i8
  %i.ur = or i8 %i.up, %i.uq
  store i8 %i.ur, ptr %i.uk, align 1, !tbaa !19
  %i.us = getelementptr inbounds i8, ptr %i.uk, i64 %i.ru ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.4154, i64 8
  %i.uu = load i16, ptr %i.ul, align 2, !tbaa !21
  %i.uv = zext i16 %i.uu to i32
  %i.uw = shl i32 %i.uv, %.sroa.8.0.copyload
  %i.ux = load i8, ptr %i.us, align 1, !tbaa !19
  %i.uy = trunc i32 %i.uw to i8
  %i.uz = or i8 %i.ux, %i.uy
  store i8 %i.uz, ptr %i.us, align 1, !tbaa !19
  %i.va = getelementptr inbounds i8, ptr %i.us, i64 %i.ru
  %i.vb = add nsw i32 %i.tu, -4
  %.not118.3 = icmp eq i32 %i.tu, 3
  br i1 %.not118.3, label %.loopexit, label %.lr.ph156.split, !llvm.loop !67

.lr.ph139.split.split.split:                      ; preds = %.lr.ph139.split.split.split.prol.loopexit, %.lr.ph139.split.split.split
  %i.vc = phi i32 [ %i.vt, %.lr.ph139.split.split.split ], [ %.unr256, %.lr.ph139.split.split.split.prol.loopexit ] ; 2 uses
  %.198138 = phi ptr [ %i.vs, %.lr.ph139.split.split.split ], [ %.198138.unr, %.lr.ph139.split.split.split.prol.loopexit ] ; 3 uses
  %.6137 = phi ptr [ %i.vl, %.lr.ph139.split.split.split ], [ %.6137.unr, %.lr.ph139.split.split.split.prol.loopexit ] ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.6137, i64 2
  %i.ve = load i16, ptr %.6137, align 2, !tbaa !21
  %i.vf = zext i16 %i.ve to i32
  %i.vg = load i32, ptr %.198138, align 1, !tbaa !19
  %i.vh = shl i32 %i.vf, %.sroa.8.0.copyload
  %i.vi = tail call i32 @llvm.bswap.i32(i32 %i.vh)
  %i.vj = or i32 %i.vg, %i.vi
  store i32 %i.vj, ptr %.198138, align 1, !tbaa !19
  %i.vk = getelementptr inbounds i8, ptr %.198138, i64 %i.in ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.6137, i64 4
  %i.vm = load i16, ptr %i.vd, align 2, !tbaa !21
  %i.vn = zext i16 %i.vm to i32
  %i.vo = load i32, ptr %i.vk, align 1, !tbaa !19
  %i.vp = shl i32 %i.vn, %.sroa.8.0.copyload
  %i.vq = tail call i32 @llvm.bswap.i32(i32 %i.vp)
  %i.vr = or i32 %i.vo, %i.vq
  store i32 %i.vr, ptr %i.vk, align 1, !tbaa !19
  %i.vs = getelementptr inbounds i8, ptr %i.vk, i64 %i.in
  %i.vt = add nsw i32 %i.vc, -2
  %.not115.1 = icmp eq i32 %i.vc, 1
  br i1 %.not115.1, label %.loopexit, label %.lr.ph139.split.split.split, !llvm.loop !62

.loopexit:                                        ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %.lr.ph134.split.prol.loopexit, %.lr.ph134.split, %.lr.ph134.split.us.prol.loopexit, %.lr.ph134.split.us, %.lr.ph139.split.split.split.prol.loopexit, %.lr.ph139.split.split.split, %.lr.ph139.split.split.split.us.prol.loopexit, %.lr.ph139.split.split.split.us, %.lr.ph139.split.split.us.split.prol.loopexit, %.lr.ph139.split.split.us.split, %.lr.ph139.split.split.us.split.us.prol.loopexit, %.lr.ph139.split.split.us.split.us, %.lr.ph139.split.us.split.prol.loopexit, %bb.m, %.lr.ph139.split.us.split.us.split.prol.loopexit, %.lr.ph139.split.us.split.us.split, %.lr.ph139.split.us.split.us.split.us.prol.loopexit, %.lr.ph139.split.us.split.us.split.us, %.lr.ph156.split.prol.loopexit, %.lr.ph156.split, %.lr.ph156.split.us.prol.loopexit, %.lr.ph156.split.us, %middle.block, %middle.block225, %bb.e, %bb.d, %.preheader, %bb.n, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @av_write_image_line(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  tail call void @av_write_image_line2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @av_get_pix_fmt_name(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 267
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [112 x i8], ptr @av_pix_fmt_descriptors, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define i32 @av_get_pix_fmt(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str) #16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.2) #16
  %.not7 = icmp eq i32 %i.c, 0
  %spec.store.select = select i1 %.not7, ptr @.str.3, ptr %0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.05 = phi ptr [ %spec.store.select, %bb.b ], [ @.str.1, %bb.a ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.d = getelementptr inbounds nuw [112 x i8], ptr @av_pix_fmt_descriptors, i64 %indvars.iv.i ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !26
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %.05) #16
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %get_pix_fmt_internal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = tail call i32 @av_match_name(ptr noundef nonnull %.05, ptr noundef %i.h) #17
  %.not10.i = icmp eq i32 %i.i, 0
  br i1 %.not10.i, label %bb.f, label %get_pix_fmt_internal.exit

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 267
  br i1 %exitcond.not.i, label %get_pix_fmt_internal.exit.thread, label %bb.d, !llvm.loop !0

get_pix_fmt_internal.exit:                        ; preds = %bb.e, %bb.d
  %.08.i = trunc i64 %indvars.iv.i to i32         ; 2 uses
  %i.j = icmp eq i32 %.08.i, -1
  br i1 %i.j, label %get_pix_fmt_internal.exit.thread, label %bb.j

get_pix_fmt_internal.exit.thread:                 ; preds = %bb.f, %get_pix_fmt_internal.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.4, ptr noundef nonnull %.05, ptr noundef nonnull @.str.5) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %get_pix_fmt_internal.exit.thread
  %indvars.iv.i8 = phi i64 [ 0, %get_pix_fmt_internal.exit.thread ], [ %indvars.iv.next.i13, %bb.i ] ; 4 uses
  %i.l = getelementptr inbounds nuw [112 x i8], ptr @av_pix_fmt_descriptors, i64 %indvars.iv.i8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !26
  %i.n = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.a) #16
  %.not.i9 = icmp eq i32 %i.n, 0
  br i1 %.not.i9, label %.split.loop.exit13.i15, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = call i32 @av_match_name(ptr noundef nonnull %i.a, ptr noundef %i.p) #17
  %.not10.i10 = icmp eq i32 %i.q, 0
  br i1 %.not10.i10, label %bb.i, label %.split.loop.exit15.i11

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i8, 1 ; 2 uses
  %exitcond.not.i14 = icmp eq i64 %indvars.iv.next.i13, 267
  br i1 %exitcond.not.i14, label %get_pix_fmt_internal.exit16, label %bb.g, !llvm.loop !0

.split.loop.exit13.i15:                           ; preds = %bb.g
  %i.r = trunc nuw nsw i64 %indvars.iv.i8 to i32
  br label %get_pix_fmt_internal.exit16

.split.loop.exit15.i11:                           ; preds = %bb.h
  %i.s = trunc nuw nsw i64 %indvars.iv.i8 to i32
  br label %get_pix_fmt_internal.exit16

get_pix_fmt_internal.exit16:                      ; preds = %bb.i, %.split.loop.exit13.i15, %.split.loop.exit15.i11
  %.08.i12 = phi i32 [ %i.s, %.split.loop.exit15.i11 ], [ %i.r, %.split.loop.exit13.i15 ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.j

bb.j:                                             ; preds = %get_pix_fmt_internal.exit16, %get_pix_fmt_internal.exit
  %.0 = phi i32 [ %.08.i12, %get_pix_fmt_internal.exit16 ], [ %.08.i, %get_pix_fmt_internal.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @av_get_bits_per_pixel(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 2, !tbaa !29
  %i.f = zext i8 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, %i.c               ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !30    ; 4 uses
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i8 %i.i to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.01415 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.x, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.k = and i64 %indvars.iv, 4294967294
  %or.cond = icmp eq i64 %i.k, 2
  %i.l = select i1 %or.cond, i32 0, i32 %i.g
  %i.m = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i32, ptr %i.n, align 4, !tbaa !32
  %i.p = shl i32 %i.o, %i.l
  %i.q = add nsw i32 %i.p, %.01415
  %i.r = and i64 %indvars.iv, 4294967294
  %or.cond.1 = icmp eq i64 %i.r, 0
  %i.s = select i1 %or.cond.1, i32 0, i32 %i.g
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 60
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32
  %i.w = shl i32 %i.v, %i.s
  %i.x = add nsw i32 %i.w, %i.q                   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01415.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = trunc i8 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.y = trunc i64 %indvars.iv.epil.init to i32
  %i.z = add i32 %i.y, -1
  %or.cond.epil = icmp ult i32 %i.z, 2
  %i.aa = select i1 %or.cond.epil, i32 0, i32 %i.g
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = shl i32 %i.ad, %i.aa
  %i.af = add nsw i32 %i.ae, %.01415.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.014.lcssa = phi i32 [ 0, %bb.a ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ], [ %i.af, %.lr.ph.epil.preheader ]
  %i.ag = ashr i32 %.014.lcssa, %i.g
  ret i32 %i.ag
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @av_get_padded_bits_per_pixel(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !28
  %i.d = zext i8 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.f = load i8, ptr %i.e, align 2, !tbaa !29
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, %i.d               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !30    ; 4 uses
  %.not26 = icmp eq i8 %i.j, 0
  br i1 %.not26, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %wide.trip.count = zext i8 %i.j to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i8 %i.j, 1
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod37 = trunc i8 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.m = getelementptr inbounds nuw [20 x i8], ptr %i.k, i64 %indvars.iv.epil.init ; 2 uses
  %i.n = trunc i64 %indvars.iv.epil.init to i32
  %i.o = add i32 %i.n, -1
  %or.cond.epil = icmp ult i32 %i.o, 2
  %i.p = select i1 %or.cond.epil, i32 0, i32 %i.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33
  %i.s = shl i32 %i.r, %i.p
  %i.t = load i32, ptr %i.m, align 4, !tbaa !34
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.u
  store i32 %i.s, ptr %i.v, align 4, !tbaa !12
  br label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %.preheader.loopexit.unr-lcssa, %.epil.preheader
  %i.w = load <4 x i32>, ptr %i.a, align 16, !tbaa !12
  %i.x = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.w)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.y = phi i32 [ %i.x, %.preheader.loopexit ], [ 0, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !17
  %i.ab = and i64 %i.aa, 4
  %.not = icmp eq i64 %i.ab, 0
  %i.ac = shl nsw i32 %i.y, 3
  %spec.select = select i1 %.not, i32 %i.ac, i32 %i.y
  %i.ad = ashr i32 %spec.select, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %i.ad

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.af = and i64 %indvars.iv, 4294967294
  %or.cond = icmp eq i64 %i.af, 2
  %i.ag = select i1 %or.cond, i32 0, i32 %i.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33
  %i.aj = shl i32 %i.ai, %i.ag
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !34
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.al
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !12
  %1 = getelementptr inbounds nuw [20 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.an = and i64 %indvars.iv, 4294967294
  %or.cond.1 = icmp eq i64 %i.an, 0
  %i.ao = select i1 %or.cond.1, i32 0, i32 %i.h
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !33
  %i.ar = shl i32 %i.aq, %i.ao
  %i.as = load i32, ptr %2, align 4, !tbaa !34
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.at
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind uwtable
define noundef ptr @av_get_pix_fmt_string(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %i.b, ptr noundef nonnull @.str.6) #17 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64
  %i.e = getelementptr inbounds nuw [112 x i8], ptr @av_pix_fmt_descriptors, i64 %i.d ; 7 uses
  %i.f = sext i32 %1 to i64
  %i.g = load ptr, ptr %i.e, align 16, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !30    ; 5 uses
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.o = load i8, ptr %i.n, align 2, !tbaa !29
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %i.p, %i.m               ; 4 uses
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %av_get_bits_per_pixel.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext i8 %i.i to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.r = icmp eq i8 %i.i, 1
  br i1 %i.r, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 5 uses
  %.01415.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.af, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.s = and i64 %indvars.iv.i, 4294967294
  %or.cond.i = icmp eq i64 %i.s, 2
  %i.t = select i1 %or.cond.i, i32 0, i32 %i.q
  %i.u = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !32
  %i.x = shl i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, %.01415.i
  %i.z = and i64 %indvars.iv.i, 4294967294
  %or.cond.i.1 = icmp eq i64 %i.z, 0
  %i.aa = select i1 %or.cond.i.1, i32 0, i32 %i.q
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 60
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = shl i32 %i.ad, %i.aa
  %i.af = add nsw i32 %i.ae, %i.y                 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %av_get_bits_per_pixel.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

av_get_bits_per_pixel.exit.loopexit.unr-lcssa:    ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %av_get_bits_per_pixel.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %av_get_bits_per_pixel.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %av_get_bits_per_pixel.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01415.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.af, %av_get_bits_per_pixel.exit.loopexit.unr-lcssa ]
  %lcmp.mod11 = trunc i8 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.ag = trunc i64 %indvars.iv.i.epil.init to i32
  %i.ah = add i32 %i.ag, -1
  %or.cond.i.epil = icmp ult i32 %i.ah, 2
  %i.ai = select i1 %or.cond.i.epil, i32 0, i32 %i.q
  %i.aj = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %indvars.iv.i.epil.init
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %i.am = shl i32 %i.al, %i.ai
  %i.an = add nsw i32 %i.am, %.01415.i.epil.init
  br label %av_get_bits_per_pixel.exit

av_get_bits_per_pixel.exit:                       ; preds = %.lr.ph.i.epil.preheader, %av_get_bits_per_pixel.exit.loopexit.unr-lcssa, %bb.c
  %.014.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.af, %av_get_bits_per_pixel.exit.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.i.epil.preheader ]
  %i.ao = ashr i32 %.014.lcssa.i, %i.q
  %i.ap = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %i.f, ptr noundef nonnull @.str.7, ptr noundef %i.g, i32 noundef %i.j, i32 noundef %i.ao) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %av_get_bits_per_pixel.exit, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @av_pix_fmt_desc_get(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %or.cond = icmp ugt i32 %0, 266
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [112 x i8], ptr @av_pix_fmt_descriptors, i64 %i.a
  %.0 = select i1 %or.cond, ptr null, ptr %i.b
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define noundef ptr @av_pix_fmt_desc_next(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ]    ; 2 uses
  %i.a = ptrtoint ptr %.0 to i64
  %i.b = sub i64 %i.a, ptrtoint (ptr @av_pix_fmt_descriptors to i64)
  %i.c = sdiv exact i64 %i.b, 112
  %i.d = icmp ult i64 %i.c, 266
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 112 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %.not8 = icmp eq ptr %i.f, null
  br i1 %.not8, label %.preheader, label %.loopexit, !llvm.loop !72

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.a
  %.06 = phi ptr [ @av_pix_fmt_descriptors, %bb.a ], [ null, %.preheader ], [ %i.e, %bb.b ]
  ret ptr %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @av_pix_fmt_desc_get_id(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult ptr %0, @av_pix_fmt_descriptors
  %i.b = icmp uge ptr %0, getelementptr inbounds nuw (i8, ptr @av_pix_fmt_descriptors, i64 29904)
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.c, ptrtoint (ptr @av_pix_fmt_descriptors to i64)
  %i.e = sdiv exact i64 %i.d, 112
  %i.f = trunc i64 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -38, 1) i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 266
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [112 x i8], ptr @av_pix_fmt_descriptors, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !28
  %i.e = zext i8 %i.d to i32
  store i32 %i.e, ptr %1, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.g = load i8, ptr %i.f, align 2, !tbaa !29
  %i.h = zext i8 %i.g to i32
  store i32 %i.h, ptr %2, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -38, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i32 @av_pix_fmt_count_planes(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 9 uses
  %or.cond.i = icmp ugt i32 %0, 266
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [112 x i8], ptr @av_pix_fmt_descriptors, i64 %i.b ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %or.cond.i, label %.loopexit, label %.preheader16

.preheader16:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !30    ; 3 uses
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  %wide.trip.count = zext i8 %i.e to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i8 %i.e, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 252
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.i = load i32, ptr %i.h, align 4, !tbaa !34
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.j
  store i32 1, ptr %i.k, align 4, !tbaa !12
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.loopexit, label %bb.b, !llvm.loop !73

.preheader.loopexit:                              ; preds = %bb.b, %.preheader.loopexit.unr-lcssa
  %i.l = load <4 x i32>, ptr %i.a, align 16, !tbaa !12
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.l)
  br label %.loopexit

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 8, !tbaa !34
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.p
  store i32 1, ptr %i.q, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !34
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.u
  store i32 1, ptr %i.v, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load i32, ptr %i.x, align 16, !tbaa !34
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.z
  store i32 1, ptr %i.aa, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 60
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !34
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ae
  store i32 1, ptr %i.af, align 4, !tbaa !12
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
end_hunk_0
begin_hunk_1_@get_pix_fmt_score:bb.a
  %i.go = or i32 %.7140, 4
  %spec.select189 = select i1 %.not171, i32 %.7140, i32 %i.go
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae
  %i.gp = or i32 %.7140, 4
  %spec.select190 = select i1 %.not170, i32 %.7140, i32 %i.gp
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ae
  %i.gq = add nsw i32 %.0.i208, -4
  %or.cond7 = icmp ult i32 %i.gq, -3
  %i.gr = or i32 %.7140, 4
  %spec.select191 = select i1 %or.cond7, i32 %i.gr, i32 %.7140
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  %.not172 = icmp eq i32 %.0.i208, %.0.i211
  %i.gs = or i32 %.7140, 4
  %spec.select192 = select i1 %.not172, i32 %.7140, i32 %i.gs
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %.8141 = phi i32 [ %spec.select190, %bb.ah ], [ %spec.select189, %bb.ag ], [ %.7140, %bb.ad ], [ %spec.select192, %bb.aj ], [ %spec.select188, %bb.af ], [ %spec.select191, %bb.ai ] ; 3 uses
  %i.gt = and i32 %.8141, 4
  %.not173 = icmp eq i32 %i.gt, 0
  br i1 %.not173, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gu = shl nuw nsw i32 %.0131312, 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !32
  %.193 = tail call i32 @llvm.smin.i32(i32 %i.gw, i32 %i.gy)
  %i.gz = add nsw i32 %.193, -1
  %i.ha = lshr i32 %i.gu, %i.gz
  %i.hb = sub nsw i32 %.7, %i.ha
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.8 = phi i32 [ %i.hb, %bb.al ], [ %.7, %bb.ak ] ; 2 uses
  %i.hc = and i32 %3, 32
  %.not175 = icmp eq i32 %i.hc, 0
  %or.cond194 = or i1 %.not175, %or.cond9.not237  ; 2 uses
  %i.hd = or i32 %.8141, 32
  %i.he = add nsw i32 %.8, -131072
  %.9142 = select i1 %or.cond194, i32 %.8141, i32 %i.hd ; 3 uses
  %.9 = select i1 %or.cond194, i32 %.8, i32 %i.he ; 3 uses
  %i.hf = load i64, ptr %i.h, align 16, !tbaa !17
  %i.hg = and i64 %i.hf, 128
  %.not176 = icmp eq i64 %i.hg, 0
  br i1 %.not176, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.hh = and i64 %i.f, 128
  %.not177 = icmp eq i64 %i.hh, 0
  %i.hi = and i32 %3, 8
  %.not178 = icmp eq i32 %i.hi, 0
  %or.cond195 = or i1 %.not178, %.not177
  br i1 %or.cond195, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hj = or i32 %.9142, 8
  %i.hk = add nsw i32 %.9, -65536
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.10143 = phi i32 [ %.9142, %bb.am ], [ %i.hj, %bb.ao ], [ %.9142, %bb.an ] ; 4 uses
  %.10 = phi i32 [ %.9, %bb.am ], [ %i.hk, %bb.ao ], [ %.9, %bb.an ] ; 4 uses
  br i1 %i.aa, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.hl = and i32 %3, 16
  %i.hm = icmp ne i32 %i.hl, 0
  %or.cond11 = and i1 %.not.i.not, %i.hm
  br i1 %or.cond11, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not171, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hn = and i64 %i.f, 128
  %.not179 = icmp eq i64 %i.hn, 0
  %i.ho = and i32 %3, 8
  %.not180 = icmp eq i32 %i.ho, 0
  %or.cond196 = or i1 %.not180, %.not179
  br i1 %or.cond196, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hp = or i32 %.10143, 16
  %i.hq = add nsw i32 %.10, -65536
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.aq, %bb.ap
  %.11144 = phi i32 [ %i.hp, %bb.at ], [ %.10143, %bb.ap ], [ %.10143, %bb.as ], [ %.10143, %bb.aq ]
  %.11 = phi i32 [ %i.hq, %bb.at ], [ %.10, %bb.ap ], [ %.10, %bb.as ], [ %.10, %bb.aq ]
  store i32 %.11144, ptr %2, align 4, !tbaa !12
  br label %get_pix_fmt_depth.exit.thread

get_pix_fmt_depth.exit.thread:                    ; preds = %bb.e, %get_pix_fmt_depth.exit, %bb.f, %bb.d, %bb.a, %bb.au
  %.0145 = phi i32 [ %., %bb.d ], [ -4, %bb.a ], [ %.11, %bb.au ], [ 2147483647, %bb.e ], [ -3, %get_pix_fmt_depth.exit ], [ -3, %bb.f ]
  ret i32 %.0145
}

; Function Attrs: nounwind uwtable
define i32 @av_find_best_pix_fmt_of_2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x i32], align 16               ; 7 uses
  %i.c = alloca [4 x i32], align 16               ; 7 uses
  %i.d = alloca [4 x i32], align 16               ; 7 uses
  %i.e = alloca [4 x i32], align 16               ; 7 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %or.cond.i = icmp ugt i32 %0, 266               ; 2 uses
  %i.h = zext nneg i32 %0 to i64
  %i.i = getelementptr inbounds nuw [112 x i8], ptr @av_pix_fmt_descriptors, i64 %i.h ; 6 uses
  %or.cond.i48 = icmp ugt i32 %1, 266
  %i.j = zext nneg i32 %1 to i64
  %i.k = getelementptr inbounds nuw [112 x i8], ptr @av_pix_fmt_descriptors, i64 %i.j ; 6 uses
  %brmerge = or i1 %or.cond.i, %or.cond.i48
  %.mux = select i1 %or.cond.i, i32 %1, i32 %0
  br i1 %brmerge, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not44 = icmp eq ptr %4, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %4, align 4, !tbaa !12
  %i.m = xor i32 %i.l, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.m, %bb.c ], [ -1, %bb.b ]   ; 2 uses
  %.not45 = icmp eq i32 %3, 0
  %i.o = and i32 %i.n, -9
  %spec.select = select i1 %.not45, i32 %i.o, i32 %i.n ; 2 uses
  %i.p = call fastcc i32 @get_pix_fmt_score(i32 noundef %0, i32 noundef %2, ptr noundef %i.f, i32 noundef %spec.select) ; 2 uses
  %i.q = call fastcc i32 @get_pix_fmt_score(i32 noundef %1, i32 noundef %2, ptr noundef %i.g, i32 noundef %spec.select) ; 2 uses
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28
  %i.u = zext i8 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.w = load i8, ptr %i.v, align 2, !tbaa !29
  %i.x = zext i8 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, %i.u               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !30   ; 8 uses
  %.not26.i = icmp eq i8 %i.aa, 0                 ; 2 uses
  br i1 %.not26.i, label %av_get_padded_bits_per_pixel.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %wide.trip.count.i = zext i8 %i.aa to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ac = icmp eq i8 %i.aa, 1
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 254
  br label %bb.f

.preheader.loopexit.i.unr-lcssa:                  ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod115 = trunc i8 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.ad = getelementptr inbounds nuw [20 x i8], ptr %i.ab, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ae = trunc i64 %indvars.iv.i.epil.init to i32
  %i.af = add i32 %i.ae, -1
  %or.cond.i50.epil = icmp ult i32 %i.af, 2
  %i.ag = select i1 %or.cond.i50.epil, i32 0, i32 %i.y
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33
  %i.aj = shl i32 %i.ai, %i.ag
  %i.ak = load i32, ptr %i.ad, align 4, !tbaa !34
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.al
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !12
  br label %.preheader.loopexit.i

.preheader.loopexit.i:                            ; preds = %.preheader.loopexit.i.unr-lcssa, %.epil.preheader
  %i.an = load <4 x i32>, ptr %i.e, align 16, !tbaa !12
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.an)
  br label %av_get_padded_bits_per_pixel.exit

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %i.ap = getelementptr inbounds nuw [20 x i8], ptr %i.ab, i64 %indvars.iv.i ; 2 uses
  %i.aq = and i64 %indvars.iv.i, 4294967294
  %or.cond.i50 = icmp eq i64 %i.aq, 2
  %i.ar = select i1 %or.cond.i50, i32 0, i32 %i.y
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !33
  %i.au = shl i32 %i.at, %i.ar
  %i.av = load i32, ptr %i.ap, align 8, !tbaa !34
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4, !tbaa !12
  %5 = getelementptr inbounds nuw [20 x i8], ptr %i.ab, i64 %indvars.iv.i ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ay = and i64 %indvars.iv.i, 4294967294
  %or.cond.i50.1 = icmp eq i64 %i.ay, 0
  %i.az = select i1 %or.cond.i50.1, i32 0, i32 %i.y
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !33
  %i.bc = shl i32 %i.bb, %i.az
  %i.bd = load i32, ptr %6, align 4, !tbaa !34
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.be
  store i32 %i.bc, ptr %i.bf, align 4, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.i.unr-lcssa, label %bb.f, !llvm.loop !2

av_get_padded_bits_per_pixel.exit:                ; preds = %bb.e, %.preheader.loopexit.i
  %i.bg = phi i32 [ %i.ao, %.preheader.loopexit.i ], [ 0, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bi = load i64, ptr %i.bh, align 16, !tbaa !17
  %i.bj = and i64 %i.bi, 4
  %.not.i = icmp eq i64 %i.bj, 0                  ; 2 uses
  %i.bk = shl nsw i32 %i.bg, 3
  %spec.select.i = select i1 %.not.i, i32 %i.bk, i32 %i.bg
  %i.bl = ashr i32 %spec.select.i, %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !28
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !29
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.br, %i.bo            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !30  ; 8 uses
  %.not26.i51 = icmp eq i8 %i.bu, 0               ; 2 uses
  br i1 %.not26.i51, label %av_get_padded_bits_per_pixel.exit68, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %av_get_padded_bits_per_pixel.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %wide.trip.count.i53 = zext i8 %i.bu to i64     ; 2 uses
  %xtraiter117 = and i64 %wide.trip.count.i53, 1
  %i.bw = icmp eq i8 %i.bu, 1
  br i1 %i.bw, label %.epil.preheader116, label %.lr.ph.i52.new

.lr.ph.i52.new:                                   ; preds = %.lr.ph.i52
  %unroll_iter120 = and i64 %wide.trip.count.i53, 254
  br label %bb.g

.preheader.loopexit.i58.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.preheader.loopexit.i58, label %.epil.preheader116

.epil.preheader116:                               ; preds = %.preheader.loopexit.i58.unr-lcssa, %.lr.ph.i52
  %indvars.iv.i54.epil.init = phi i64 [ 0, %.lr.ph.i52 ], [ %indvars.iv.next.i56.1, %.preheader.loopexit.i58.unr-lcssa ] ; 2 uses
  %lcmp.mod119 = trunc i8 %i.bu to i1
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %i.bx = getelementptr inbounds nuw [20 x i8], ptr %i.bv, i64 %indvars.iv.i54.epil.init ; 2 uses
  %i.by = trunc i64 %indvars.iv.i54.epil.init to i32
  %i.bz = add i32 %i.by, -1
  %or.cond.i55.epil = icmp ult i32 %i.bz, 2
  %i.ca = select i1 %or.cond.i55.epil, i32 0, i32 %i.bs
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !33
  %i.cd = shl i32 %i.cc, %i.ca
  %i.ce = load i32, ptr %i.bx, align 4, !tbaa !34
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cf
  store i32 %i.cd, ptr %i.cg, align 4, !tbaa !12
  br label %.preheader.loopexit.i58

.preheader.loopexit.i58:                          ; preds = %.preheader.loopexit.i58.unr-lcssa, %.epil.preheader116
  %i.ch = load <4 x i32>, ptr %i.d, align 16, !tbaa !12
  %i.ci = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ch)
  br label %av_get_padded_bits_per_pixel.exit68

bb.g:                                             ; preds = %bb.g, %.lr.ph.i52.new
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph.i52.new ], [ %indvars.iv.next.i56.1, %bb.g ] ; 5 uses
  %niter121 = phi i64 [ 0, %.lr.ph.i52.new ], [ %niter121.next.1, %bb.g ]
  %i.cj = getelementptr inbounds nuw [20 x i8], ptr %i.bv, i64 %indvars.iv.i54 ; 2 uses
  %i.ck = and i64 %indvars.iv.i54, 4294967294
  %or.cond.i55 = icmp eq i64 %i.ck, 2
  %i.cl = select i1 %or.cond.i55, i32 0, i32 %i.bs
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !33
  %i.co = shl i32 %i.cn, %i.cl
  %i.cp = load i32, ptr %i.cj, align 8, !tbaa !34
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cq
  store i32 %i.co, ptr %i.cr, align 4, !tbaa !12
  %7 = getelementptr inbounds nuw [20 x i8], ptr %i.bv, i64 %indvars.iv.i54 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.cs = and i64 %indvars.iv.i54, 4294967294
  %or.cond.i55.1 = icmp eq i64 %i.cs, 0
  %i.ct = select i1 %or.cond.i55.1, i32 0, i32 %i.bs
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !33
  %i.cw = shl i32 %i.cv, %i.ct
  %i.cx = load i32, ptr %8, align 4, !tbaa !34
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cy
  store i32 %i.cw, ptr %i.cz, align 4, !tbaa !12
  %indvars.iv.next.i56.1 = add nuw nsw i64 %indvars.iv.i54, 2 ; 2 uses
  %niter121.next.1 = add i64 %niter121, 2         ; 2 uses
  %niter121.ncmp.1 = icmp eq i64 %niter121.next.1, %unroll_iter120
  br i1 %niter121.ncmp.1, label %.preheader.loopexit.i58.unr-lcssa, label %bb.g, !llvm.loop !2

av_get_padded_bits_per_pixel.exit68:              ; preds = %av_get_padded_bits_per_pixel.exit, %.preheader.loopexit.i58
  %i.da = phi i32 [ %i.ci, %.preheader.loopexit.i58 ], [ 0, %av_get_padded_bits_per_pixel.exit ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 16, !tbaa !17
  %i.dd = and i64 %i.dc, 4
  %.not.i66 = icmp eq i64 %i.dd, 0                ; 2 uses
  %i.de = shl nsw i32 %i.da, 3
  %spec.select.i67 = select i1 %.not.i66, i32 %i.de, i32 %i.da
  %i.df = ashr i32 %spec.select.i67, %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %.not46 = icmp eq i32 %i.bl, %i.df
  br i1 %.not46, label %bb.k, label %bb.h

bb.h:                                             ; preds = %av_get_padded_bits_per_pixel.exit68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %.not26.i, label %av_get_padded_bits_per_pixel.exit86, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.h
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %wide.trip.count.i71 = zext i8 %i.aa to i64     ; 2 uses
  %xtraiter123 = and i64 %wide.trip.count.i71, 1
  %i.dh = icmp eq i8 %i.aa, 1
  br i1 %i.dh, label %.epil.preheader122, label %.lr.ph.i70.new

.lr.ph.i70.new:                                   ; preds = %.lr.ph.i70
  %unroll_iter126 = and i64 %wide.trip.count.i71, 254
  br label %bb.i

.preheader.loopexit.i76.unr-lcssa:                ; preds = %bb.i
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %.preheader.loopexit.i76, label %.epil.preheader122

.epil.preheader122:                               ; preds = %.preheader.loopexit.i76.unr-lcssa, %.lr.ph.i70
  %indvars.iv.i72.epil.init = phi i64 [ 0, %.lr.ph.i70 ], [ %indvars.iv.next.i74.1, %.preheader.loopexit.i76.unr-lcssa ] ; 2 uses
  %lcmp.mod125 = trunc i8 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.di = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv.i72.epil.init ; 2 uses
  %i.dj = trunc i64 %indvars.iv.i72.epil.init to i32
  %i.dk = add i32 %i.dj, -1
  %or.cond.i73.epil = icmp ult i32 %i.dk, 2
  %i.dl = select i1 %or.cond.i73.epil, i32 0, i32 %i.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !33
  %i.do = shl i32 %i.dn, %i.dl
  %i.dp = load i32, ptr %i.di, align 4, !tbaa !34
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dq
  store i32 %i.do, ptr %i.dr, align 4, !tbaa !12
  br label %.preheader.loopexit.i76

.preheader.loopexit.i76:                          ; preds = %.preheader.loopexit.i76.unr-lcssa, %.epil.preheader122
  %i.ds = load <4 x i32>, ptr %i.c, align 16, !tbaa !12
  %i.dt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ds)
  br label %av_get_padded_bits_per_pixel.exit86

bb.i:                                             ; preds = %bb.i, %.lr.ph.i70.new
  %indvars.iv.i72 = phi i64 [ 0, %.lr.ph.i70.new ], [ %indvars.iv.next.i74.1, %bb.i ] ; 5 uses
  %niter127 = phi i64 [ 0, %.lr.ph.i70.new ], [ %niter127.next.1, %bb.i ]
  %i.du = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv.i72 ; 2 uses
  %i.dv = and i64 %indvars.iv.i72, 4294967294
  %or.cond.i73 = icmp eq i64 %i.dv, 2
  %i.dw = select i1 %or.cond.i73, i32 0, i32 %i.y
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !33
  %i.dz = shl i32 %i.dy, %i.dw
  %i.ea = load i32, ptr %i.du, align 8, !tbaa !34
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.eb
  store i32 %i.dz, ptr %i.ec, align 4, !tbaa !12
  %9 = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv.i72 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.ed = and i64 %indvars.iv.i72, 4294967294
  %or.cond.i73.1 = icmp eq i64 %i.ed, 0
  %i.ee = select i1 %or.cond.i73.1, i32 0, i32 %i.y
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !33
  %i.eh = shl i32 %i.eg, %i.ee
  %i.ei = load i32, ptr %10, align 4, !tbaa !34
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ej
  store i32 %i.eh, ptr %i.ek, align 4, !tbaa !12
  %indvars.iv.next.i74.1 = add nuw nsw i64 %indvars.iv.i72, 2 ; 2 uses
  %niter127.next.1 = add i64 %niter127, 2         ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %.preheader.loopexit.i76.unr-lcssa, label %bb.i, !llvm.loop !2

av_get_padded_bits_per_pixel.exit86:              ; preds = %bb.h, %.preheader.loopexit.i76
  %i.el = phi i32 [ %i.dt, %.preheader.loopexit.i76 ], [ 0, %bb.h ] ; 2 uses
  %i.em = shl nsw i32 %i.el, 3
  %spec.select.i85 = select i1 %.not.i, i32 %i.em, i32 %i.el
  %i.en = ashr i32 %spec.select.i85, %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br i1 %.not26.i51, label %av_get_padded_bits_per_pixel.exit104, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %av_get_padded_bits_per_pixel.exit86
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %wide.trip.count.i89 = zext i8 %i.bu to i64     ; 2 uses
  %xtraiter129 = and i64 %wide.trip.count.i89, 1
  %i.ep = icmp eq i8 %i.bu, 1
  br i1 %i.ep, label %.epil.preheader128, label %.lr.ph.i88.new

.lr.ph.i88.new:                                   ; preds = %.lr.ph.i88
  %unroll_iter132 = and i64 %wide.trip.count.i89, 254
  br label %bb.j

.preheader.loopexit.i94.unr-lcssa:                ; preds = %bb.j
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.preheader.loopexit.i94, label %.epil.preheader128

.epil.preheader128:                               ; preds = %.preheader.loopexit.i94.unr-lcssa, %.lr.ph.i88
  %indvars.iv.i90.epil.init = phi i64 [ 0, %.lr.ph.i88 ], [ %indvars.iv.next.i92.1, %.preheader.loopexit.i94.unr-lcssa ] ; 2 uses
  %lcmp.mod131 = trunc i8 %i.bu to i1
  tail call void @llvm.assume(i1 %lcmp.mod131)
  %i.eq = getelementptr inbounds nuw [20 x i8], ptr %i.eo, i64 %indvars.iv.i90.epil.init ; 2 uses
  %i.er = trunc i64 %indvars.iv.i90.epil.init to i32
  %i.es = add i32 %i.er, -1
  %or.cond.i91.epil = icmp ult i32 %i.es, 2
  %i.et = select i1 %or.cond.i91.epil, i32 0, i32 %i.bs
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !33
  %i.ew = shl i32 %i.ev, %i.et
  %i.ex = load i32, ptr %i.eq, align 4, !tbaa !34
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ey
  store i32 %i.ew, ptr %i.ez, align 4, !tbaa !12
  br label %.preheader.loopexit.i94

.preheader.loopexit.i94:                          ; preds = %.preheader.loopexit.i94.unr-lcssa, %.epil.preheader128
  %i.fa = load <4 x i32>, ptr %i.b, align 16, !tbaa !12
  %i.fb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fa)
  br label %av_get_padded_bits_per_pixel.exit104

bb.j:                                             ; preds = %bb.j, %.lr.ph.i88.new
  %indvars.iv.i90 = phi i64 [ 0, %.lr.ph.i88.new ], [ %indvars.iv.next.i92.1, %bb.j ] ; 5 uses
  %niter133 = phi i64 [ 0, %.lr.ph.i88.new ], [ %niter133.next.1, %bb.j ]
  %i.fc = getelementptr inbounds nuw [20 x i8], ptr %i.eo, i64 %indvars.iv.i90 ; 2 uses
  %i.fd = and i64 %indvars.iv.i90, 4294967294
  %or.cond.i91 = icmp eq i64 %i.fd, 2
  %i.fe = select i1 %or.cond.i91, i32 0, i32 %i.bs
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !33
  %i.fh = shl i32 %i.fg, %i.fe
  %i.fi = load i32, ptr %i.fc, align 8, !tbaa !34
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !12
  %11 = getelementptr inbounds nuw [20 x i8], ptr %i.eo, i64 %indvars.iv.i90 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.fl = and i64 %indvars.iv.i90, 4294967294
  %or.cond.i91.1 = icmp eq i64 %i.fl, 0
  %i.fm = select i1 %or.cond.i91.1, i32 0, i32 %i.bs
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !33
  %i.fp = shl i32 %i.fo, %i.fm
  %i.fq = load i32, ptr %12, align 4, !tbaa !34
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fr
  store i32 %i.fp, ptr %i.fs, align 4, !tbaa !12
  %indvars.iv.next.i92.1 = add nuw nsw i64 %indvars.iv.i90, 2 ; 2 uses
  %niter133.next.1 = add i64 %niter133, 2         ; 2 uses
  %niter133.ncmp.1 = icmp eq i64 %niter133.next.1, %unroll_iter132
  br i1 %niter133.ncmp.1, label %.preheader.loopexit.i94.unr-lcssa, label %bb.j, !llvm.loop !2

av_get_padded_bits_per_pixel.exit104:             ; preds = %av_get_padded_bits_per_pixel.exit86, %.preheader.loopexit.i94
  %i.ft = phi i32 [ %i.fb, %.preheader.loopexit.i94 ], [ 0, %av_get_padded_bits_per_pixel.exit86 ] ; 2 uses
  %i.fu = shl nsw i32 %i.ft, 3
  %spec.select.i103 = select i1 %.not.i66, i32 %i.fu, i32 %i.ft
  %i.fv = ashr i32 %spec.select.i103, %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.fw = icmp slt i32 %i.en, %i.fv
  %i.fx = select i1 %i.fw, i32 %1, i32 %0
  br label %bb.m

bb.k:                                             ; preds = %av_get_padded_bits_per_pixel.exit68
  %i.fy = icmp ult i8 %i.aa, %i.bu
  %i.fz = select i1 %i.fy, i32 %1, i32 %0
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.ga = icmp slt i32 %i.p, %i.q
  %i.gb = select i1 %i.ga, i32 %1, i32 %0
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %av_get_padded_bits_per_pixel.exit104, %bb.k, %bb.l
  %.037 = phi i32 [ %i.fx, %av_get_padded_bits_per_pixel.exit104 ], [ %i.fz, %bb.k ], [ %i.gb, %bb.l ], [ %.mux, %bb.a ] ; 2 uses
  %.not47 = icmp eq ptr %4, null
  br i1 %.not47, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.not.i105 = icmp eq i32 %3, 0
  %i.gc = select i1 %.not.i105, i32 -9, i32 -1
  %i.gd = call fastcc i32 @get_pix_fmt_score(i32 noundef %.037, i32 noundef %2, ptr noundef %i.a, i32 noundef %i.gc) ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 0
  %i.gf = load i32, ptr %i.a, align 4
  %.0.i106 = select i1 %i.ge, i32 %i.gd, i32 %i.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store i32 %.0.i106, ptr %4, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  ret i32 %.037
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @av_color_range_name(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @color_range_names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -22, 3) i32 @av_color_range_from_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.292) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.293) #16
  %.not.1 = icmp eq i32 %i.b, 0
  br i1 %.not.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.294) #16
  %.not.2 = icmp eq i32 %i.c, 0
  %spec.select = select i1 %.not.2, i32 2, i32 -22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.05 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  ret i32 %.05
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @av_color_primaries_name(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 23
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @color_primaries_names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %or.cond = icmp eq i32 %0, 256
  %.str.307. = select i1 %or.cond, ptr @.str.307, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %.str.307., %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -22, 257) i32 @av_color_primaries_from_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.295) #16
  %.not18 = icmp eq i32 %i.a, 0
  br i1 %.not18, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.296) #16
  %.not18.1 = icmp eq i32 %i.b, 0
  br i1 %.not18.1, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.292) #16
  %.not18.2 = icmp eq i32 %i.c, 0
  br i1 %.not18.2, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.295) #16
  %.not18.3 = icmp eq i32 %i.d, 0
  br i1 %.not18.3, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.297) #16
  %.not18.4 = icmp eq i32 %i.e, 0
  br i1 %.not18.4, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.298) #16
  %.not18.5 = icmp eq i32 %i.f, 0
  br i1 %.not18.5, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.299) #16
  %.not18.6 = icmp eq i32 %i.g, 0
  br i1 %.not18.6, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.300) #16
  %.not18.7 = icmp eq i32 %i.h, 0
  br i1 %.not18.7, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.301) #16
  %.not18.8 = icmp eq i32 %i.i, 0
  br i1 %.not18.8, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.302) #16
  %.not18.9 = icmp eq i32 %i.j, 0
  br i1 %.not18.9, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.303) #16
  %.not18.10 = icmp eq i32 %i.k, 0
  br i1 %.not18.10, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.304) #16
  %.not18.11 = icmp eq i32 %i.l, 0
  br i1 %.not18.11, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.305) #16
  %.not18.12 = icmp eq i32 %i.m, 0
  br i1 %.not18.12, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.306) #16
  %.not18.22 = icmp eq i32 %i.n, 0
  br i1 %.not18.22, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.307) #16
  %.not = icmp eq i32 %i.o, 0
  %spec.select = select i1 %.not, i32 256, i32 -22
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.012 = phi i32 [ %spec.select, %bb.o ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %bb.m ], [ 22, %bb.n ]
  ret i32 %.012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @av_color_transfer_name(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 19
end_hunk_1
