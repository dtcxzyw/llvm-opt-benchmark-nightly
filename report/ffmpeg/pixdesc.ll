Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pixdesc?download=true
inline.NumInlined: 22
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 41
begin_hunk_0_@av_write_image_line2:bb.a
  %i.sd = getelementptr inbounds i8, ptr %.097155.prol, i64 %i.ru ; 2 uses
  %i.se = add nsw i32 %i.rv, -1                   ; 2 uses
  %prol.iter281.next = add i32 %prol.iter281, 1   ; 2 uses
  %prol.iter281.cmp.not = icmp eq i32 %prol.iter281.next, %xtraiter279
  br i1 %prol.iter281.cmp.not, label %.lr.ph156.split.prol.loopexit, label %.lr.ph156.split.prol, !llvm.loop !65

.lr.ph156.split.prol.loopexit:                    ; preds = %.lr.ph156.split.prol, %.lr.ph156.split.preheader
  %.unr282 = phi i32 [ %i.rq, %.lr.ph156.split.preheader ], [ %i.se, %.lr.ph156.split.prol ]
  %.097155.unr = phi ptr [ %i.rs, %.lr.ph156.split.preheader ], [ %i.sd, %.lr.ph156.split.prol ]
  %.4154.unr = phi ptr [ %0, %.lr.ph156.split.preheader ], [ %i.rw, %.lr.ph156.split.prol ]
  %i.sf = icmp ult i32 %i.rq, 3
  br i1 %i.sf, label %.loopexit, label %.lr.ph156.split

.lr.ph156.split.us.preheader:                     ; preds = %.lr.ph156
  %xtraiter283 = and i32 %7, 3                    ; 2 uses
  %lcmp.mod284.not = icmp eq i32 %xtraiter283, 0
  br i1 %lcmp.mod284.not, label %.lr.ph156.split.us.prol.loopexit, label %.lr.ph156.split.us.prol

.lr.ph156.split.us.prol:                          ; preds = %.lr.ph156.split.us.preheader, %.lr.ph156.split.us.prol
  %i.sg = phi i32 [ %i.so, %.lr.ph156.split.us.prol ], [ %i.rq, %.lr.ph156.split.us.preheader ]
  %.097155.us.prol = phi ptr [ %i.sn, %.lr.ph156.split.us.prol ], [ %i.rs, %.lr.ph156.split.us.preheader ] ; 3 uses
  %.4110153.us.prol = phi ptr [ %i.sh, %.lr.ph156.split.us.prol ], [ %0, %.lr.ph156.split.us.preheader ] ; 2 uses
  %prol.iter285 = phi i32 [ %prol.iter285.next, %.lr.ph156.split.us.prol ], [ 0, %.lr.ph156.split.us.preheader ]
  %i.sh = getelementptr inbounds nuw i8, ptr %.4110153.us.prol, i64 4 ; 2 uses
  %i.si = load i32, ptr %.4110153.us.prol, align 4, !tbaa !12
  %i.sj = shl i32 %i.si, %.sroa.8.0.copyload
  %i.sk = load i8, ptr %.097155.us.prol, align 1, !tbaa !19
  %i.sl = trunc i32 %i.sj to i8
  %i.sm = or i8 %i.sk, %i.sl
  store i8 %i.sm, ptr %.097155.us.prol, align 1, !tbaa !19
  %i.sn = getelementptr inbounds i8, ptr %.097155.us.prol, i64 %i.ru ; 2 uses
  %i.so = add nsw i32 %i.sg, -1                   ; 2 uses
  %prol.iter285.next = add i32 %prol.iter285, 1   ; 2 uses
  %prol.iter285.cmp.not = icmp eq i32 %prol.iter285.next, %xtraiter283
  br i1 %prol.iter285.cmp.not, label %.lr.ph156.split.us.prol.loopexit, label %.lr.ph156.split.us.prol, !llvm.loop !66

.lr.ph156.split.us.prol.loopexit:                 ; preds = %.lr.ph156.split.us.prol, %.lr.ph156.split.us.preheader
  %.unr286 = phi i32 [ %i.rq, %.lr.ph156.split.us.preheader ], [ %i.so, %.lr.ph156.split.us.prol ]
  %.097155.us.unr = phi ptr [ %i.rs, %.lr.ph156.split.us.preheader ], [ %i.sn, %.lr.ph156.split.us.prol ]
  %.4110153.us.unr = phi ptr [ %0, %.lr.ph156.split.us.preheader ], [ %i.sh, %.lr.ph156.split.us.prol ]
  %i.sp = icmp ult i32 %i.rq, 3
  br i1 %i.sp, label %.loopexit, label %.lr.ph156.split.us

.lr.ph156.split.us:                               ; preds = %.lr.ph156.split.us.prol.loopexit, %.lr.ph156.split.us
  %i.sq = phi i32 [ %i.tt, %.lr.ph156.split.us ], [ %.unr286, %.lr.ph156.split.us.prol.loopexit ] ; 2 uses
  %.097155.us = phi ptr [ %i.ts, %.lr.ph156.split.us ], [ %.097155.us.unr, %.lr.ph156.split.us.prol.loopexit ] ; 3 uses
  %.4110153.us = phi ptr [ %i.tm, %.lr.ph156.split.us ], [ %.4110153.us.unr, %.lr.ph156.split.us.prol.loopexit ] ; 5 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.4110153.us, i64 4
  %i.ss = load i32, ptr %.4110153.us, align 4, !tbaa !12
  %i.st = shl i32 %i.ss, %.sroa.8.0.copyload
  %i.su = load i8, ptr %.097155.us, align 1, !tbaa !19
  %i.sv = trunc i32 %i.st to i8
  %i.sw = or i8 %i.su, %i.sv
  store i8 %i.sw, ptr %.097155.us, align 1, !tbaa !19
  %i.sx = getelementptr inbounds i8, ptr %.097155.us, i64 %i.ru ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.4110153.us, i64 8
  %i.sz = load i32, ptr %i.sr, align 4, !tbaa !12
  %i.ta = shl i32 %i.sz, %.sroa.8.0.copyload
  %i.tb = load i8, ptr %i.sx, align 1, !tbaa !19
  %i.tc = trunc i32 %i.ta to i8
  %i.td = or i8 %i.tb, %i.tc
  store i8 %i.td, ptr %i.sx, align 1, !tbaa !19
  %i.te = getelementptr inbounds i8, ptr %i.sx, i64 %i.ru ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.4110153.us, i64 12
  %i.tg = load i32, ptr %i.sy, align 4, !tbaa !12
  %i.th = shl i32 %i.tg, %.sroa.8.0.copyload
  %i.ti = load i8, ptr %i.te, align 1, !tbaa !19
  %i.tj = trunc i32 %i.th to i8
  %i.tk = or i8 %i.ti, %i.tj
  store i8 %i.tk, ptr %i.te, align 1, !tbaa !19
  %i.tl = getelementptr inbounds i8, ptr %i.te, i64 %i.ru ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.4110153.us, i64 16
  %i.tn = load i32, ptr %i.tf, align 4, !tbaa !12
  %i.to = shl i32 %i.tn, %.sroa.8.0.copyload
  %i.tp = load i8, ptr %i.tl, align 1, !tbaa !19
  %i.tq = trunc i32 %i.to to i8
  %i.tr = or i8 %i.tp, %i.tq
  store i8 %i.tr, ptr %i.tl, align 1, !tbaa !19
  %i.ts = getelementptr inbounds i8, ptr %i.tl, i64 %i.ru
  %i.tt = add nsw i32 %i.sq, -4
  %.not118.us.3 = icmp eq i32 %i.sq, 3
  br i1 %.not118.us.3, label %.loopexit, label %.lr.ph156.split.us, !llvm.loop !67

.lr.ph156.split:                                  ; preds = %.lr.ph156.split.prol.loopexit, %.lr.ph156.split
  %i.tu = phi i32 [ %i.vb, %.lr.ph156.split ], [ %.unr282, %.lr.ph156.split.prol.loopexit ] ; 2 uses
  %.097155 = phi ptr [ %i.va, %.lr.ph156.split ], [ %.097155.unr, %.lr.ph156.split.prol.loopexit ] ; 3 uses
  %.4154 = phi ptr [ %i.ut, %.lr.ph156.split ], [ %.4154.unr, %.lr.ph156.split.prol.loopexit ] ; 5 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.4154, i64 2
  %i.tw = load i16, ptr %.4154, align 2, !tbaa !21
  %i.tx = zext i16 %i.tw to i32
  %i.ty = shl i32 %i.tx, %.sroa.8.0.copyload
  %i.tz = load i8, ptr %.097155, align 1, !tbaa !19
  %i.ua = trunc i32 %i.ty to i8
  %i.ub = or i8 %i.tz, %i.ua
  store i8 %i.ub, ptr %.097155, align 1, !tbaa !19
  %i.uc = getelementptr inbounds i8, ptr %.097155, i64 %i.ru ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.4154, i64 4
  %i.ue = load i16, ptr %i.tv, align 2, !tbaa !21
  %i.uf = zext i16 %i.ue to i32
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
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %bb.f ] ; 4 uses
  %i.d = getelementptr inbounds nuw [112 x i8], ptr @av_pix_fmt_descriptors, i64 %indvars.iv.i ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !26
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %.05) #16
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %.split.loop.exit13.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = tail call i32 @av_match_name(ptr noundef nonnull %.05, ptr noundef %i.h) #17
  %.not10.i = icmp eq i32 %i.i, 0
  br i1 %.not10.i, label %bb.f, label %get_pix_fmt_internal.exit.a

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 267
  br i1 %exitcond.not.i, label %get_pix_fmt_internal.exit.thread.a, label %bb.d, !llvm.loop !0

.split.loop.exit13.i:                             ; preds = %bb.d
  %1 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.j

get_pix_fmt_internal.exit.a:                      ; preds = %bb.e
  %.08.i = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.j

get_pix_fmt_internal.exit.thread.a:               ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.4, ptr noundef nonnull %.05, ptr noundef nonnull @.str.5) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %get_pix_fmt_internal.exit.thread.a
  %indvars.iv.i8 = phi i64 [ 0, %get_pix_fmt_internal.exit.thread.a ], [ %indvars.iv.next.i13, %bb.i ] ; 4 uses
  %i.k = getelementptr inbounds nuw [112 x i8], ptr @av_pix_fmt_descriptors, i64 %indvars.iv.i8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !26
  %i.m = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %i.a) #16
  %.not.i9 = icmp eq i32 %i.m, 0
  br i1 %.not.i9, label %.split.loop.exit13.i15, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = call i32 @av_match_name(ptr noundef nonnull %i.a, ptr noundef %i.o) #17
  %.not10.i10 = icmp eq i32 %i.p, 0
  br i1 %.not10.i10, label %bb.i, label %.split.loop.exit15.i11

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i8, 1 ; 2 uses
  %exitcond.not.i14 = icmp eq i64 %indvars.iv.next.i13, 267
  br i1 %exitcond.not.i14, label %get_pix_fmt_internal.exit16, label %bb.g, !llvm.loop !0

.split.loop.exit13.i15:                           ; preds = %bb.g
  %i.q = trunc nuw nsw i64 %indvars.iv.i8 to i32
  br label %get_pix_fmt_internal.exit16

.split.loop.exit15.i11:                           ; preds = %bb.h
  %i.r = trunc nuw nsw i64 %indvars.iv.i8 to i32
  br label %get_pix_fmt_internal.exit16

get_pix_fmt_internal.exit16:                      ; preds = %bb.i, %.split.loop.exit13.i15, %.split.loop.exit15.i11
  %.08.i12 = phi i32 [ %i.r, %.split.loop.exit15.i11 ], [ %i.q, %.split.loop.exit13.i15 ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.j

bb.j:                                             ; preds = %.split.loop.exit13.i, %get_pix_fmt_internal.exit.a, %get_pix_fmt_internal.exit16
  %.0 = phi i32 [ %.08.i12, %get_pix_fmt_internal.exit16 ], [ %1, %.split.loop.exit13.i ], [ %.08.i, %get_pix_fmt_internal.exit.a ]
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
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
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
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.r = and i64 %indvars.iv.next, 4294967295
  %or.cond.1 = icmp eq i64 %i.r, 1
  %i.s = select i1 %or.cond.1, i32 0, i32 %i.g
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv.next
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
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
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
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
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [20 x i8], ptr %i.k, i64 %indvars.iv.next ; 2 uses
  %i.ao = and i64 %indvars.iv.next, 4294967295
  %or.cond.1 = icmp eq i64 %i.ao, 1
  %i.ap = select i1 %or.cond.1, i32 0, i32 %i.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !33
  %i.as = shl i32 %i.ar, %i.ap
  %i.at = load i32, ptr %i.an, align 4, !tbaa !34
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.au
  store i32 %i.as, ptr %i.av, align 4, !tbaa !12
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

end_hunk_0
