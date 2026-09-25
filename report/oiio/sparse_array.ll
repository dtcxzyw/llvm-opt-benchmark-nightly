Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/sparse_array?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@opj_sparse_array_int32_free:bb.a

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.g = phi i32 [ %i.d, %.lr.ph ], [ %i.l, %bb.d ]
  %i.h = phi i32 [ %i.c, %.lr.ph ], [ %i.m, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @opj_free(ptr noundef nonnull %i.k) #7
  %.pre = load i32, ptr %i.a, align 8, !tbaa !15
  %.pre16 = load i32, ptr %i.b, align 4, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %i.g, %bb.b ], [ %.pre16, %bb.c ] ; 2 uses
  %i.m = phi i32 [ %i.h, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = mul i32 %i.l, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  tail call void @opj_free(ptr noundef %i.r) #7
  tail call void @opj_free(ptr noundef nonnull %0) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @opj_sparse_array_is_region_valid(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %.not = icmp uge i32 %1, %i.a
  %.not16 = icmp ule i32 %3, %1
  %or.cond.not21 = or i1 %.not16, %.not
  %i.b = icmp ugt i32 %3, %i.a
  %or.cond19 = or i1 %i.b, %or.cond.not21
  br i1 %or.cond19, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12   ; 2 uses
  %.not17 = icmp ult i32 %2, %i.d
  %.not18 = icmp ugt i32 %4, %2
  %or.cond20 = and i1 %.not18, %.not17
  br i1 %or.cond20, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ule i32 %4, %i.d
  %i.f = zext i1 %i.e to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define noundef i32 @opj_sparse_array_int32_read(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @opj_sparse_array_int32_read_or_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @opj_sparse_array_int32_read_or_write(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 6 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %.not.i = icmp uge i32 %1, %i.c
  %.not16.i = icmp ule i32 %3, %1
  %or.cond.not21.i = or i1 %.not16.i, %.not.i
  %i.d = icmp ugt i32 %3, %i.c
  %or.cond19.i = or i1 %i.d, %or.cond.not21.i
  br i1 %or.cond19.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12   ; 2 uses
  %.not17.i = icmp uge i32 %2, %i.f
  %.not18.i = icmp ule i32 %4, %2
  %or.cond20.i.not521 = or i1 %.not18.i, %.not17.i
  %.not414 = icmp ugt i32 %4, %i.f
  %or.cond415 = or i1 %.not414, %or.cond20.i.not521
  br i1 %or.cond415, label %.critedge, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.h = udiv i32 %1, %i.b
  %i.i = urem i32 %1, %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not410 = icmp eq i32 %9, 0
  %i.l = zext i32 %i.b to i64                     ; 43 uses
  %i.m = icmp eq i32 %6, 1                        ; 3 uses
  %i.n = zext i32 %7 to i64                       ; 53 uses
  %i.o = icmp eq i32 %6, 2
  %i.p = icmp eq i32 %6, 8                        ; 2 uses
  %i.q = load i32, ptr %i.g, align 4, !tbaa !14
  %i.r = udiv i32 %2, %i.q
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %..critedge412_crit_edge.us
  %.0384518.us = phi i32 [ %i.pv, %..critedge412_crit_edge.us ], [ %i.r, %.split.us.preheader ] ; 3 uses
  %.0385517.us = phi i32 [ %i.pw, %..critedge412_crit_edge.us ], [ %2, %.split.us.preheader ] ; 4 uses
  %i.s = icmp eq i32 %.0385517.us, %2
  %i.t = load i32, ptr %i.g, align 4, !tbaa !14   ; 4 uses
  br i1 %i.s, label %bb.c, label %.lr.ph516.us

bb.c:                                             ; preds = %.split.us
  %i.u = urem i32 %2, %i.t
  %i.v = sub nuw i32 %i.t, %i.u
  br label %.lr.ph516.us

.lr.ph516.us:                                     ; preds = %.split.us, %bb.c
  %i.w = phi i32 [ %i.v, %bb.c ], [ %i.t, %.split.us ] ; 2 uses
  %i.x = sub i32 %i.t, %i.w
  %i.y = sub nuw i32 %4, %.0385517.us
  %i.z = tail call noundef i32 @llvm.umin.i32(i32 %i.w, i32 %i.y) ; 24 uses
  %i.aa = zext i32 %i.x to i64
  %i.ab = mul nuw i64 %i.aa, %i.l                 ; 2 uses
  %i.ac = sub i32 %.0385517.us, %2
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw i64 %i.ad, %i.n
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ae ; 6 uses
  %i.ag = icmp eq i32 %i.z, 1
  %or.cond.us = and i1 %i.o, %i.ag
  %i.ah = icmp ne i32 %i.z, 0                     ; 3 uses
  %.not = icmp eq i32 %i.z, 0                     ; 9 uses
  %i.ai = add i32 %i.z, -1                        ; 7 uses
  %xtraiter703 = and i32 %i.z, 7                  ; 3 uses
  %i.aj = icmp ult i32 %i.ai, 7
  %unroll_iter707 = and i32 %i.z, -8
  %lcmp.mod705.not = icmp eq i32 %xtraiter703, 0
  %lcmp.mod706 = icmp ne i32 %xtraiter703, 0
  %xtraiter710 = and i32 %i.z, 3                  ; 3 uses
  %i.ak = icmp ult i32 %i.ai, 3
  %unroll_iter714 = and i32 %i.z, -4
  %lcmp.mod712.not = icmp eq i32 %xtraiter710, 0
  %lcmp.mod713 = icmp ne i32 %xtraiter710, 0
  %xtraiter716 = and i32 %i.z, 3                  ; 3 uses
  %i.al = icmp ult i32 %i.ai, 3
  %unroll_iter720 = and i32 %i.z, -4
  %lcmp.mod718.not = icmp eq i32 %xtraiter716, 0
  %lcmp.mod719 = icmp ne i32 %xtraiter716, 0
  %xtraiter730 = and i32 %i.z, 7                  ; 3 uses
  %i.am = icmp ult i32 %i.ai, 7
  %unroll_iter734 = and i32 %i.z, -8
  %lcmp.mod732.not = icmp eq i32 %xtraiter730, 0
  %lcmp.mod733 = icmp ne i32 %xtraiter730, 0
  %xtraiter743 = and i32 %i.z, 7                  ; 3 uses
  %i.an = icmp ult i32 %i.ai, 7
  %unroll_iter747 = and i32 %i.z, -8
  %lcmp.mod745.not = icmp eq i32 %xtraiter743, 0
  %lcmp.mod746 = icmp ne i32 %xtraiter743, 0
  %xtraiter750 = and i32 %i.z, 3                  ; 3 uses
  %i.ao = icmp ult i32 %i.ai, 3
  %unroll_iter754 = and i32 %i.z, -4
  %lcmp.mod752.not = icmp eq i32 %xtraiter750, 0
  %lcmp.mod753 = icmp ne i32 %xtraiter750, 0
  %xtraiter756 = and i32 %i.z, 3                  ; 3 uses
  %i.ap = icmp ult i32 %i.ai, 3
  %unroll_iter760 = and i32 %i.z, -4
  %lcmp.mod758.not = icmp eq i32 %xtraiter756, 0
  %lcmp.mod759 = icmp ne i32 %xtraiter756, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph516.us, %.loopexit.us
  %.0380513.us = phi i32 [ %i.h, %.lr.ph516.us ], [ %i.nn, %.loopexit.us ] ; 3 uses
  %.0381512.us = phi i32 [ %1, %.lr.ph516.us ], [ %i.no, %.loopexit.us ] ; 7 uses
  %i.aq = icmp eq i32 %.0381512.us, %1
  %i.ar = sub i32 %i.b, %i.i
  %spec.select = select i1 %i.aq, i32 %i.ar, i32 %i.b ; 2 uses
  %i.as = sub i32 %i.b, %spec.select              ; 2 uses
  %i.at = sub nuw i32 %3, %.0381512.us
  %i.au = tail call noundef i32 @llvm.umin.i32(i32 %spec.select, i32 %i.at) ; 28 uses
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !15
  %i.ax = mul i32 %i.aw, %.0384518.us
  %i.ay = add i32 %i.ax, %.0380513.us
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  br i1 %.not410, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.bc, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr [4 x i8], ptr %i.bb, i64 %i.ab
  %i.be = zext i32 %i.as to i64
  %i.bf = getelementptr [4 x i8], ptr %i.bd, i64 %i.be ; 17 uses
  %i.bg = sub i32 %.0381512.us, %1                ; 2 uses
  br i1 %i.m, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = mul i32 %i.bg, %6
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bi ; 13 uses
  %i.bk = icmp eq i32 %i.au, 1
  br i1 %i.bk, label %.preheader437.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %or.cond.us, label %.preheader441.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = icmp ugt i32 %i.au, 7
  %or.cond4.us = and i1 %i.p, %i.bl
  br i1 %or.cond4.us, label %.preheader442.us, label %.preheader444.us

.preheader421.us.new:                             ; preds = %.preheader421.us, %.preheader421.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader421.us.new ], [ 0, %.preheader421.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader421.us.new ], [ 0, %.preheader421.us ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.4449.us, i64 %indvars.iv
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !6
  %i.bo = trunc nuw i64 %indvars.iv to i32
  %i.bp = mul i32 %6, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.2365450.us, i64 %i.bq
  store i32 %i.bn, ptr %i.br, align 4, !tbaa !6
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.4449.us, i64 %indvars.iv.next
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !6
  %i.bu = trunc nuw i64 %indvars.iv.next to i32
  %i.bv = mul i32 %6, %i.bu
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.2365450.us, i64 %i.bw
  store i32 %i.bt, ptr %i.bx, align 4, !tbaa !6
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.4449.us, i64 %indvars.iv.next.1
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !6
  %i.ca = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.cb = mul i32 %6, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.2365450.us, i64 %i.cc
  store i32 %i.bz, ptr %i.cd, align 4, !tbaa !6
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.4449.us, i64 %indvars.iv.next.2
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !6
  %i.cg = trunc nuw i64 %indvars.iv.next.2 to i32
  %i.ch = mul i32 %6, %i.cg
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.2365450.us, i64 %i.ci
  store i32 %i.cf, ptr %i.cj, align 4, !tbaa !6
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader421.us.new, !llvm.loop !22

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv551 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next552, %.lr.ph.us ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.3456.us, i64 %indvars.iv551
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !6
  %i.cm = shl i64 %indvars.iv551, 3
  %i.cn = and i64 %i.cm, 4294967264
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.1364457.us, i64 %i.cn
  store i32 %i.cl, ptr %i.co, align 4, !tbaa !6
  %i.cp = or disjoint i64 %indvars.iv551, 1       ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.3456.us, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !6
  %i.cs = shl i64 %i.cp, 3
  %i.ct = and i64 %i.cs, 4294967272
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.1364457.us, i64 %i.ct
  store i32 %i.cr, ptr %i.cu, align 4, !tbaa !6
  %i.cv = or disjoint i64 %indvars.iv551, 2       ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.3456.us, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !6
  %i.cy = shl i64 %i.cv, 3
  %i.cz = and i64 %i.cy, 4294967280
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.1364457.us, i64 %i.cz
  store i32 %i.cx, ptr %i.da, align 4, !tbaa !6
  %i.db = or disjoint i64 %indvars.iv551, 3       ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.3456.us, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !6
  %i.de = shl i64 %i.db, 3
  %i.df = and i64 %i.de, 4294967288
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.1364457.us, i64 %i.df
  store i32 %i.dd, ptr %i.dg, align 4, !tbaa !6
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 4 ; 4 uses
  %i.dh = icmp samesign ult i64 %indvars.iv.next552, %i.ou
  br i1 %i.dh, label %.lr.ph.us, label %.preheader419.us, !llvm.loop !23

.lr.ph453.us:                                     ; preds = %.preheader419.us, %.lr.ph453.us
  %indvars.iv554 = phi i64 [ %indvars.iv.next555, %.lr.ph453.us ], [ %indvars.iv.next552, %.preheader419.us ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.3456.us, i64 %indvars.iv554
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !6
  %i.dk = shl i64 %indvars.iv554, 3
  %i.dl = and i64 %i.dk, 4294967288
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.1364457.us, i64 %i.dl
  store i32 %i.dj, ptr %i.dm, align 4, !tbaa !6
  %indvars.iv.next555 = add nuw nsw i64 %indvars.iv554, 1 ; 2 uses
  %exitcond558.not = icmp eq i64 %indvars.iv.next555, %wide.trip.count557
  br i1 %exitcond558.not, label %._crit_edge454.us, label %.lr.ph453.us, !llvm.loop !24

._crit_edge454.us:                                ; preds = %.lr.ph453.us, %.preheader419.us
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.1364457.us, i64 %i.n
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.3456.us, i64 %i.l
  %i.dp = add nuw i32 %.5455.us, 1                ; 2 uses
  %exitcond559.not = icmp eq i32 %i.dp, %i.z
  br i1 %exitcond559.not, label %.loopexit.us, label %.lr.ph.us.preheader, !llvm.loop !25

.lr.ph459.us:                                     ; preds = %.lr.ph459.us.preheader, %.lr.ph459.us
  %indvars.iv560 = phi i64 [ 0, %.lr.ph459.us.preheader ], [ %indvars.iv.next561, %.lr.ph459.us ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv560
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !6
  %i.ds = shl nuw nsw i64 %indvars.iv560, 1
  %i.dt = and i64 %i.ds, 4294967288
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.dt
  store i32 %i.dr, ptr %i.du, align 4, !tbaa !6
  %i.dv = or disjoint i64 %indvars.iv560, 1       ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !6
  %i.dy = shl nuw nsw i64 %i.dv, 1
  %i.dz = and i64 %i.dy, 4294967290
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.dz
  store i32 %i.dx, ptr %i.ea, align 4, !tbaa !6
  %i.eb = or disjoint i64 %indvars.iv560, 2       ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !6
  %i.ee = shl nuw nsw i64 %i.eb, 1
  %i.ef = and i64 %i.ee, 4294967292
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ef
  store i32 %i.ed, ptr %i.eg, align 4, !tbaa !6
  %i.eh = or disjoint i64 %indvars.iv560, 3       ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !6
  %i.ek = shl nuw nsw i64 %i.eh, 1
  %i.el = and i64 %i.ek, 4294967294
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.el
  store i32 %i.ej, ptr %i.em, align 4, !tbaa !6
  %indvars.iv.next561 = add nuw nsw i64 %indvars.iv560, 4 ; 3 uses
  %i.en = icmp samesign ult i64 %indvars.iv.next561, %i.oh
  br i1 %i.en, label %.lr.ph459.us, label %.preheader439.us.loopexit, !llvm.loop !26

.lr.ph462.us:                                     ; preds = %.lr.ph462.us.prol.loopexit, %.lr.ph462.us
  %indvars.iv563 = phi i64 [ %indvars.iv.next564.3, %.lr.ph462.us ], [ %indvars.iv563.unr, %.lr.ph462.us.prol.loopexit ] ; 6 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv563
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !6
  %i.eq = shl nuw i64 %indvars.iv563, 1
  %i.er = and i64 %i.eq, 4294967294
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.er
  store i32 %i.ep, ptr %i.es, align 4, !tbaa !6
  %indvars.iv.next564 = add nuw nsw i64 %indvars.iv563, 1 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next564
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !6
  %i.ev = shl nuw i64 %indvars.iv.next564, 1
  %i.ew = and i64 %i.ev, 4294967294
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ew
  store i32 %i.eu, ptr %i.ex, align 4, !tbaa !6
  %indvars.iv.next564.1 = add nuw nsw i64 %indvars.iv563, 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next564.1
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !6
  %i.fa = shl nuw i64 %indvars.iv.next564.1, 1
  %i.fb = and i64 %i.fa, 4294967294
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.fb
  store i32 %i.ez, ptr %i.fc, align 4, !tbaa !6
  %indvars.iv.next564.2 = add nuw nsw i64 %indvars.iv563, 3 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next564.2
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !6
  %i.ff = shl nuw i64 %indvars.iv.next564.2, 1
  %i.fg = and i64 %i.ff, 4294967294
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.fg
  store i32 %i.fe, ptr %i.fh, align 4, !tbaa !6
  %indvars.iv.next564.3 = add nuw nsw i64 %indvars.iv563, 4 ; 2 uses
  %exitcond567.not.3 = icmp eq i64 %indvars.iv.next564.3, %wide.trip.count566
  br i1 %exitcond567.not.3, label %.loopexit.us, label %.lr.ph462.us, !llvm.loop !27

.lr.ph466.us:                                     ; preds = %.lr.ph466.us.preheader, %.lr.ph466.us
  %.0363465.us = phi ptr [ %i.ge, %.lr.ph466.us ], [ %i.bj, %.lr.ph466.us.preheader ] ; 2 uses
  %.2370464.us = phi ptr [ %i.gf, %.lr.ph466.us ], [ %i.bf, %.lr.ph466.us.preheader ] ; 2 uses
  %niter708 = phi i32 [ %niter708.next.7, %.lr.ph466.us ], [ 0, %.lr.ph466.us.preheader ]
  %i.fi = load i32, ptr %.2370464.us, align 4, !tbaa !6
  store i32 %i.fi, ptr %.0363465.us, align 4, !tbaa !6
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.0363465.us, i64 %i.n ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.2370464.us, i64 %i.l ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !6
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !6
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.n ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.l ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !6
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !6
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.n ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.l ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !6
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !6
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.n ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.l ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !6
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !6
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.n ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.l ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !6
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !6
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.n ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.l ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !6
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !6
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.n ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.l ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !6
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !6
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.n ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.l ; 2 uses
  %niter708.next.7 = add i32 %niter708, 8         ; 2 uses
  %niter708.ncmp.7 = icmp eq i32 %niter708.next.7, %unroll_iter707
  br i1 %niter708.ncmp.7, label %.loopexit.us.loopexit695.unr-lcssa, label %.lr.ph466.us, !llvm.loop !28

bb.j:                                             ; preds = %bb.f
  %i.gg = zext i32 %i.bg to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.gg ; 4 uses
  %i.gi = icmp eq i32 %i.au, 4
  br i1 %i.gi, label %.preheader433.us, label %.preheader435.us

.lr.ph470.us.new:                                 ; preds = %.lr.ph470.us, %.lr.ph470.us.new
  %.1367469.us = phi ptr [ %i.gp, %.lr.ph470.us.new ], [ %i.gh, %.lr.ph470.us ] ; 2 uses
  %.1369468.us = phi ptr [ %i.gq, %.lr.ph470.us.new ], [ %i.bf, %.lr.ph470.us ] ; 2 uses
  %niter715 = phi i32 [ %niter715.next.3, %.lr.ph470.us.new ], [ 0, %.lr.ph470.us ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.1367469.us, ptr align 4 %.1369468.us, i64 %i.ow, i1 false)
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.1367469.us, i64 %i.n ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.1369468.us, i64 %i.l ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gj, ptr nonnull align 4 %i.gk, i64 %i.ow, i1 false)
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.n ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.l ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gl, ptr nonnull align 4 %i.gm, i64 %i.ow, i1 false)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.n ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.l ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gn, ptr nonnull align 4 %i.go, i64 %i.ow, i1 false)
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.n ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.l ; 2 uses
  %niter715.next.3 = add i32 %niter715, 4         ; 2 uses
  %niter715.ncmp.3 = icmp eq i32 %niter715.next.3, %unroll_iter714
  br i1 %niter715.ncmp.3, label %.loopexit.us.loopexit694.unr-lcssa, label %.lr.ph470.us.new, !llvm.loop !29

.lr.ph474.us:                                     ; preds = %.lr.ph474.us.preheader, %.lr.ph474.us
  %.0366473.us = phi ptr [ %i.gx, %.lr.ph474.us ], [ %i.gh, %.lr.ph474.us.preheader ] ; 2 uses
  %.0368472.us = phi ptr [ %i.gy, %.lr.ph474.us ], [ %i.bf, %.lr.ph474.us.preheader ] ; 2 uses
  %niter721 = phi i32 [ %niter721.next.3, %.lr.ph474.us ], [ 0, %.lr.ph474.us.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.0366473.us, ptr noundef nonnull align 4 dereferenceable(16) %.0368472.us, i64 16, i1 false)
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.0366473.us, i64 %i.n ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.0368472.us, i64 %i.l ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gr, ptr noundef nonnull align 4 dereferenceable(16) %i.gs, i64 16, i1 false)
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.n ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.l ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gt, ptr noundef nonnull align 4 dereferenceable(16) %i.gu, i64 16, i1 false)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.n ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.l ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gv, ptr noundef nonnull align 4 dereferenceable(16) %i.gw, i64 16, i1 false)
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.n ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.l ; 2 uses
  %niter721.next.3 = add i32 %niter721, 4         ; 2 uses
  %niter721.ncmp.3 = icmp eq i32 %niter721.next.3, %unroll_iter720
  br i1 %niter721.ncmp.3, label %.loopexit.us.loopexit693.unr-lcssa, label %.lr.ph474.us, !llvm.loop !30

bb.k:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gz = icmp ne i32 %i.au, 0
  %or.cond519 = and i1 %i.ah, %i.gz
  br i1 %or.cond519, label %.preheader418.us.preheader, label %.loopexit.us

.preheader418.us.preheader:                       ; preds = %bb.l
  %i.ha = sub i32 %.0381512.us, %1
  %i.hb = mul i32 %i.ha, %6
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.hc
  %wide.trip.count574 = zext i32 %i.au to i64     ; 2 uses
  %xtraiter723 = and i64 %wide.trip.count574, 3   ; 3 uses
  %i.he = icmp ult i32 %i.au, 4
  %unroll_iter727 = and i64 %wide.trip.count574, 4294967292
  %lcmp.mod725.not = icmp eq i64 %xtraiter723, 0
  %lcmp.mod726 = icmp ne i64 %xtraiter723, 0
  br label %.preheader418.us

.preheader418.us.new:                             ; preds = %.preheader418.us, %.preheader418.us.new
  %indvars.iv571 = phi i64 [ %indvars.iv.next572.3, %.preheader418.us.new ], [ 0, %.preheader418.us ] ; 5 uses
  %niter728 = phi i64 [ %niter728.next.3, %.preheader418.us.new ], [ 0, %.preheader418.us ]
  %i.hf = trunc nuw i64 %indvars.iv571 to i32
  %i.hg = mul i32 %6, %i.hf
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.0372479.us, i64 %i.hh
  store i32 0, ptr %i.hi, align 4, !tbaa !6
  %i.hj = trunc i64 %indvars.iv571 to i32
  %i.hk = or disjoint i32 %i.hj, 1
  %i.hl = mul i32 %6, %i.hk
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.0372479.us, i64 %i.hm
  store i32 0, ptr %i.hn, align 4, !tbaa !6
  %i.ho = trunc i64 %indvars.iv571 to i32
  %i.hp = or disjoint i32 %i.ho, 2
  %i.hq = mul i32 %6, %i.hp
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.0372479.us, i64 %i.hr
  store i32 0, ptr %i.hs, align 4, !tbaa !6
  %i.ht = trunc i64 %indvars.iv571 to i32
  %i.hu = or disjoint i32 %i.ht, 3
  %i.hv = mul i32 %6, %i.hu
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.0372479.us, i64 %i.hw
  store i32 0, ptr %i.hx, align 4, !tbaa !6
  %indvars.iv.next572.3 = add nuw nsw i64 %indvars.iv571, 4 ; 2 uses
  %niter728.next.3 = add i64 %niter728, 4         ; 2 uses
  %niter728.ncmp.3 = icmp eq i64 %niter728.next.3, %unroll_iter727
  br i1 %niter728.ncmp.3, label %._crit_edge477.us.unr-lcssa, label %.preheader418.us.new, !llvm.loop !31

bb.m:                                             ; preds = %bb.k
  br i1 %.not, label %.loopexit.us, label %.lr.ph483.us

.lr.ph483.us.new:                                 ; preds = %.lr.ph483.us, %.lr.ph483.us.new
  %.0373481.us = phi ptr [ %i.if, %.lr.ph483.us.new ], [ %i.pf, %.lr.ph483.us ] ; 2 uses
  %niter735 = phi i32 [ %niter735.next.7, %.lr.ph483.us.new ], [ 0, %.lr.ph483.us ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0373481.us, i8 0, i64 %i.ph, i1 false)
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.0373481.us, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hy, i8 0, i64 %i.ph, i1 false)
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hz, i8 0, i64 %i.ph, i1 false)
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ia, i8 0, i64 %i.ph, i1 false)
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ib, i8 0, i64 %i.ph, i1 false)
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ic, i8 0, i64 %i.ph, i1 false)
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.id, i8 0, i64 %i.ph, i1 false)
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ie, i8 0, i64 %i.ph, i1 false)
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.n ; 2 uses
  %niter735.next.7 = add i32 %niter735, 8         ; 2 uses
  %niter735.ncmp.7 = icmp eq i32 %niter735.next.7, %unroll_iter734
  br i1 %niter735.ncmp.7, label %.loopexit.us.loopexit691.unr-lcssa, label %.lr.ph483.us.new, !llvm.loop !32

bb.n:                                             ; preds = %bb.d
  br i1 %i.bc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ig = load i32, ptr %i.a, align 8, !tbaa !13
  %i.ih = zext i32 %i.ig to i64
  %i.ii = load i32, ptr %i.g, align 4, !tbaa !14
  %i.ij = zext i32 %i.ii to i64
  %i.ik = shl nuw nsw i64 %i.ih, 2
  %i.il = mul i64 %i.ik, %i.ij
  %i.im = tail call ptr @opj_calloc(i64 noundef 1, i64 noundef %i.il) #7 ; 3 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.io = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.ip = load i32, ptr %i.k, align 8, !tbaa !15
  %i.iq = mul i32 %i.ip, %.0384518.us
  %i.ir = add i32 %i.iq, %.0380513.us
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.is
  store ptr %i.im, ptr %i.it, align 8, !tbaa !19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.0374.us = phi ptr [ %i.im, %bb.p ], [ %i.bb, %bb.n ]
  %i.iu = getelementptr [4 x i8], ptr %.0374.us, i64 %i.ab
  %i.iv = zext i32 %i.as to i64
  %i.iw = getelementptr [4 x i8], ptr %i.iu, i64 %i.iv ; 8 uses
  %i.ix = sub i32 %.0381512.us, %1                ; 2 uses
  br i1 %i.m, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.iy = mul i32 %i.ix, %6
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.iz ; 4 uses
  %i.jb = icmp eq i32 %i.au, 1
  br i1 %i.jb, label %.preheader425.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jc = icmp ugt i32 %i.au, 7
  %or.cond6.us = and i1 %i.p, %i.jc
  br i1 %or.cond6.us, label %.preheader427.us, label %.preheader429.us

.preheader417.us.new:                             ; preds = %.preheader417.us, %.preheader417.us.new
  %indvars.iv578 = phi i64 [ %indvars.iv.next579.3, %.preheader417.us.new ], [ 0, %.preheader417.us ] ; 6 uses
  %niter742 = phi i64 [ %niter742.next.3, %.preheader417.us.new ], [ 0, %.preheader417.us ]
  %i.jd = trunc nuw i64 %indvars.iv578 to i32
  %i.je = mul i32 %6, %i.jd
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.2489.us, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !6
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.2353488.us, i64 %indvars.iv578
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !6
  %indvars.iv.next579 = or disjoint i64 %indvars.iv578, 1 ; 2 uses
  %i.jj = trunc nuw i64 %indvars.iv.next579 to i32
  %i.jk = mul i32 %6, %i.jj
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.2489.us, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !6
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.2353488.us, i64 %indvars.iv.next579
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !6
  %indvars.iv.next579.1 = or disjoint i64 %indvars.iv578, 2 ; 2 uses
  %i.jp = trunc nuw i64 %indvars.iv.next579.1 to i32
  %i.jq = mul i32 %6, %i.jp
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.2489.us, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !6
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.2353488.us, i64 %indvars.iv.next579.1
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !6
  %indvars.iv.next579.2 = or disjoint i64 %indvars.iv578, 3 ; 2 uses
  %i.jv = trunc nuw i64 %indvars.iv.next579.2 to i32
  %i.jw = mul i32 %6, %i.jv
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.2489.us, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !6
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.2353488.us, i64 %indvars.iv.next579.2
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !6
  %indvars.iv.next579.3 = add nuw nsw i64 %indvars.iv578, 4 ; 2 uses
  %niter742.next.3 = add i64 %niter742, 4         ; 2 uses
  %niter742.ncmp.3 = icmp eq i64 %niter742.next.3, %unroll_iter741
  br i1 %niter742.ncmp.3, label %._crit_edge486.us.unr-lcssa, label %.preheader417.us.new, !llvm.loop !33

.lr.ph491.us:                                     ; preds = %.lr.ph491.us.preheader, %.lr.ph491.us
  %indvars.iv584 = phi i64 [ 0, %.lr.ph491.us.preheader ], [ %indvars.iv.next585, %.lr.ph491.us ] ; 6 uses
  %i.kb = shl i64 %indvars.iv584, 3
  %i.kc = and i64 %i.kb, 4294967264
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.1350498.us, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !6
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.1352497.us, i64 %indvars.iv584
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !6
  %i.kg = or disjoint i64 %indvars.iv584, 1       ; 2 uses
  %i.kh = shl i64 %i.kg, 3
  %i.ki = and i64 %i.kh, 4294967272
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.1350498.us, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !6
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.1352497.us, i64 %i.kg
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !6
  %i.km = or disjoint i64 %indvars.iv584, 2       ; 2 uses
  %i.kn = shl i64 %i.km, 3
  %i.ko = and i64 %i.kn, 4294967280
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.1350498.us, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !6
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.1352497.us, i64 %i.km
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !6
  %i.ks = or disjoint i64 %indvars.iv584, 3       ; 2 uses
  %i.kt = shl i64 %i.ks, 3
  %i.ku = and i64 %i.kt, 4294967288
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.1350498.us, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !6
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.1352497.us, i64 %i.ks
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !6
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv584, 4 ; 4 uses
  %i.ky = icmp samesign ult i64 %indvars.iv.next585, %i.ps
  br i1 %i.ky, label %.lr.ph491.us, label %.preheader.us, !llvm.loop !34

.lr.ph494.us:                                     ; preds = %.preheader.us, %.lr.ph494.us
  %indvars.iv587 = phi i64 [ %indvars.iv.next588, %.lr.ph494.us ], [ %indvars.iv.next585, %.preheader.us ] ; 3 uses
  %i.kz = shl i64 %indvars.iv587, 3
  %i.la = and i64 %i.kz, 4294967288
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.1350498.us, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !6
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.1352497.us, i64 %indvars.iv587
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !6
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 2 uses
  %exitcond591.not = icmp eq i64 %indvars.iv.next588, %wide.trip.count590
  br i1 %exitcond591.not, label %._crit_edge495.us, label %.lr.ph494.us, !llvm.loop !35

._crit_edge495.us:                                ; preds = %.lr.ph494.us, %.preheader.us
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.1350498.us, i64 %i.n
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.1352497.us, i64 %i.l
  %i.lg = add nuw i32 %.10496.us, 1               ; 2 uses
  %exitcond592.not = icmp eq i32 %i.lg, %i.z
  br i1 %exitcond592.not, label %.loopexit.us, label %.lr.ph491.us.preheader, !llvm.loop !36

.lr.ph502.us:                                     ; preds = %.lr.ph502.us.preheader, %.lr.ph502.us
  %.0349501.us = phi ptr [ %i.md, %.lr.ph502.us ], [ %i.ja, %.lr.ph502.us.preheader ] ; 2 uses
  %.0351500.us = phi ptr [ %i.me, %.lr.ph502.us ], [ %i.iw, %.lr.ph502.us.preheader ] ; 2 uses
  %niter748 = phi i32 [ %niter748.next.7, %.lr.ph502.us ], [ 0, %.lr.ph502.us.preheader ]
  %i.lh = load i32, ptr %.0349501.us, align 4, !tbaa !6
  store i32 %i.lh, ptr %.0351500.us, align 4, !tbaa !6
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.0349501.us, i64 %i.n ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.0351500.us, i64 %i.l ; 2 uses
  %i.lk = load i32, ptr %i.li, align 4, !tbaa !6
  store i32 %i.lk, ptr %i.lj, align 4, !tbaa !6
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.n ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.l ; 2 uses
  %i.ln = load i32, ptr %i.ll, align 4, !tbaa !6
  store i32 %i.ln, ptr %i.lm, align 4, !tbaa !6
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.n ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.l ; 2 uses
  %i.lq = load i32, ptr %i.lo, align 4, !tbaa !6
  store i32 %i.lq, ptr %i.lp, align 4, !tbaa !6
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.n ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %i.l ; 2 uses
  %i.lt = load i32, ptr %i.lr, align 4, !tbaa !6
  store i32 %i.lt, ptr %i.ls, align 4, !tbaa !6
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.n ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.l ; 2 uses
  %i.lw = load i32, ptr %i.lu, align 4, !tbaa !6
  store i32 %i.lw, ptr %i.lv, align 4, !tbaa !6
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.n ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.l ; 2 uses
  %i.lz = load i32, ptr %i.lx, align 4, !tbaa !6
  store i32 %i.lz, ptr %i.ly, align 4, !tbaa !6
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.n ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.l ; 2 uses
  %i.mc = load i32, ptr %i.ma, align 4, !tbaa !6
  store i32 %i.mc, ptr %i.mb, align 4, !tbaa !6
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.n ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.l ; 2 uses
  %niter748.next.7 = add i32 %niter748, 8         ; 2 uses
  %niter748.ncmp.7 = icmp eq i32 %niter748.next.7, %unroll_iter747
  br i1 %niter748.ncmp.7, label %.loopexit.us.loopexit688.unr-lcssa, label %.lr.ph502.us, !llvm.loop !37

bb.t:                                             ; preds = %bb.q
  %i.mf = zext i32 %i.ix to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.mf ; 4 uses
  %i.mh = icmp eq i32 %i.au, 4
  br i1 %i.mh, label %.preheader422.us, label %.preheader423.us

.lr.ph506.us.new:                                 ; preds = %.lr.ph506.us, %.lr.ph506.us.new
  %.1355505.us = phi ptr [ %i.mp, %.lr.ph506.us.new ], [ %i.mg, %.lr.ph506.us ] ; 2 uses
  %.1357504.us = phi ptr [ %i.mo, %.lr.ph506.us.new ], [ %i.iw, %.lr.ph506.us ] ; 2 uses
  %niter755 = phi i32 [ %niter755.next.3, %.lr.ph506.us.new ], [ 0, %.lr.ph506.us ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.1357504.us, ptr align 4 %.1355505.us, i64 %i.pu, i1 false)
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.1357504.us, i64 %i.l ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.1355505.us, i64 %i.n ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mi, ptr align 4 %i.mj, i64 %i.pu, i1 false)
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.l ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.n ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mk, ptr align 4 %i.ml, i64 %i.pu, i1 false)
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.l ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.n ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mm, ptr align 4 %i.mn, i64 %i.pu, i1 false)
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.l ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.n ; 2 uses
  %niter755.next.3 = add i32 %niter755, 4         ; 2 uses
  %niter755.ncmp.3 = icmp eq i32 %niter755.next.3, %unroll_iter754
  br i1 %niter755.ncmp.3, label %.loopexit.us.loopexit687.unr-lcssa, label %.lr.ph506.us.new, !llvm.loop !38

.lr.ph510.us:                                     ; preds = %.lr.ph510.us.preheader, %.lr.ph510.us
  %.0354509.us = phi ptr [ %i.mx, %.lr.ph510.us ], [ %i.mg, %.lr.ph510.us.preheader ] ; 2 uses
  %.0356508.us = phi ptr [ %i.mw, %.lr.ph510.us ], [ %i.iw, %.lr.ph510.us.preheader ] ; 2 uses
  %niter761 = phi i32 [ %niter761.next.3, %.lr.ph510.us ], [ 0, %.lr.ph510.us.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.0356508.us, ptr noundef nonnull align 4 dereferenceable(16) %.0354509.us, i64 16, i1 false)
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.0356508.us, i64 %i.l ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.0354509.us, i64 %i.n ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mq, ptr noundef nonnull align 4 dereferenceable(16) %i.mr, i64 16, i1 false)
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.l ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.n ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ms, ptr noundef nonnull align 4 dereferenceable(16) %i.mt, i64 16, i1 false)
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.l ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.n ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mu, ptr noundef nonnull align 4 dereferenceable(16) %i.mv, i64 16, i1 false)
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.l ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.n ; 2 uses
  %niter761.next.3 = add i32 %niter761, 4         ; 2 uses
  %niter761.ncmp.3 = icmp eq i32 %niter761.next.3, %unroll_iter760
  br i1 %niter761.ncmp.3, label %.loopexit.us.loopexit.unr-lcssa, label %.lr.ph510.us, !llvm.loop !39

.loopexit.us.loopexit.unr-lcssa:                  ; preds = %.lr.ph510.us
  br i1 %lcmp.mod758.not, label %.loopexit.us, label %.lr.ph510.us.epil.preheader

.lr.ph510.us.epil.preheader:                      ; preds = %.loopexit.us.loopexit.unr-lcssa, %.lr.ph510.us.preheader
  %.0354509.us.epil.init = phi ptr [ %i.mg, %.lr.ph510.us.preheader ], [ %i.mx, %.loopexit.us.loopexit.unr-lcssa ]
  %.0356508.us.epil.init = phi ptr [ %i.iw, %.lr.ph510.us.preheader ], [ %i.mw, %.loopexit.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod759)
  br label %.lr.ph510.us.epil
end_hunk_0
begin_hunk_1_@opj_sparse_array_int32_read_or_write:bb.a

.preheader444.us:                                 ; preds = %bb.i
  %i.oi = icmp ne i32 %i.au, 0
  %or.cond = and i1 %i.ah, %i.oi
  br i1 %or.cond, label %.preheader421.us.preheader, label %.loopexit.us

.preheader421.us.preheader:                       ; preds = %.preheader444.us
  %wide.trip.count = zext i32 %i.au to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.oj = icmp ult i32 %i.au, 4
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod700 = icmp ne i64 %xtraiter, 0
  br label %.preheader421.us

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader421.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader421.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader421.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod700)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.x ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.x ]
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.4449.us, i64 %indvars.iv.epil
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !6
  %i.om = trunc nuw i64 %indvars.iv.epil to i32
  %i.on = mul i32 %6, %i.om
  %i.oo = zext i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.2365450.us, i64 %i.oo
  store i32 %i.ol, ptr %i.op, align 4, !tbaa !6
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.x, !llvm.loop !49

._crit_edge.us:                                   ; preds = %bb.x, %._crit_edge.us.unr-lcssa
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.2365450.us, i64 %i.n
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.4449.us, i64 %i.l
  %i.os = add nuw i32 %.6448.us, 1                ; 2 uses
  %exitcond550.not = icmp eq i32 %i.os, %i.z
  br i1 %exitcond550.not, label %.loopexit.us, label %.preheader421.us, !llvm.loop !50

.preheader420.lr.ph.us:                           ; preds = %.preheader442.us
  %i.ot = and i32 %i.au, -4
  %i.ou = zext i32 %i.ot to i64
  %wide.trip.count557 = zext i32 %i.au to i64
  br label %.lr.ph.us.preheader

.lr.ph470.us:                                     ; preds = %.preheader435.us
  %i.ov = zext i32 %i.au to i64
  %i.ow = shl nuw nsw i64 %i.ov, 2                ; 5 uses
  br i1 %i.ak, label %.epil.preheader709, label %.lr.ph470.us.new

._crit_edge477.us.unr-lcssa:                      ; preds = %.preheader418.us.new
  br i1 %lcmp.mod725.not, label %._crit_edge477.us, label %.epil.preheader722

.epil.preheader722:                               ; preds = %._crit_edge477.us.unr-lcssa, %.preheader418.us
  %indvars.iv571.epil.init = phi i64 [ 0, %.preheader418.us ], [ %indvars.iv.next572.3, %._crit_edge477.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod726)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader722
  %indvars.iv571.epil = phi i64 [ %indvars.iv571.epil.init, %.epil.preheader722 ], [ %indvars.iv.next572.epil, %bb.y ] ; 2 uses
  %epil.iter724 = phi i64 [ 0, %.epil.preheader722 ], [ %epil.iter724.next, %bb.y ]
  %i.ox = trunc nuw i64 %indvars.iv571.epil to i32
  %i.oy = mul i32 %6, %i.ox
  %i.oz = zext i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.0372479.us, i64 %i.oz
  store i32 0, ptr %i.pa, align 4, !tbaa !6
  %indvars.iv.next572.epil = add nuw nsw i64 %indvars.iv571.epil, 1
  %epil.iter724.next = add i64 %epil.iter724, 1   ; 2 uses
  %epil.iter724.cmp.not = icmp eq i64 %epil.iter724.next, %xtraiter723
  br i1 %epil.iter724.cmp.not, label %._crit_edge477.us, label %bb.y, !llvm.loop !51

._crit_edge477.us:                                ; preds = %bb.y, %._crit_edge477.us.unr-lcssa
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.0372479.us, i64 %i.n
  %i.pc = add nuw i32 %.1376478.us, 1             ; 2 uses
  %exitcond576.not = icmp eq i32 %i.pc, %i.z
  br i1 %exitcond576.not, label %.loopexit.us, label %.preheader418.us, !llvm.loop !52

.lr.ph483.us:                                     ; preds = %bb.m
  %i.pd = sub i32 %.0381512.us, %1
  %i.pe = zext i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.pe ; 2 uses
  %i.pg = zext i32 %i.au to i64
  %i.ph = shl nuw nsw i64 %i.pg, 2                ; 9 uses
  br i1 %i.am, label %.epil.preheader729, label %.lr.ph483.us.new

._crit_edge486.us.unr-lcssa:                      ; preds = %.preheader417.us.new
  br i1 %lcmp.mod739.not, label %._crit_edge486.us, label %.epil.preheader736

.epil.preheader736:                               ; preds = %._crit_edge486.us.unr-lcssa, %.preheader417.us
  %indvars.iv578.epil.init = phi i64 [ 0, %.preheader417.us ], [ %indvars.iv.next579.3, %._crit_edge486.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod740)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader736
  %indvars.iv578.epil = phi i64 [ %indvars.iv578.epil.init, %.epil.preheader736 ], [ %indvars.iv.next579.epil, %bb.z ] ; 3 uses
  %epil.iter738 = phi i64 [ 0, %.epil.preheader736 ], [ %epil.iter738.next, %bb.z ]
  %i.pi = trunc nuw i64 %indvars.iv578.epil to i32
  %i.pj = mul i32 %6, %i.pi
  %i.pk = zext i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %.2489.us, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !6
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.2353488.us, i64 %indvars.iv578.epil
  store i32 %i.pm, ptr %i.pn, align 4, !tbaa !6
  %indvars.iv.next579.epil = add nuw nsw i64 %indvars.iv578.epil, 1
  %epil.iter738.next = add i64 %epil.iter738, 1   ; 2 uses
  %epil.iter738.cmp.not = icmp eq i64 %epil.iter738.next, %xtraiter737
  br i1 %epil.iter738.cmp.not, label %._crit_edge486.us, label %bb.z, !llvm.loop !53

._crit_edge486.us:                                ; preds = %bb.z, %._crit_edge486.us.unr-lcssa
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.2489.us, i64 %i.n
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %.2353488.us, i64 %i.l
  %i.pq = add nuw i32 %.11487.us, 1               ; 2 uses
  %exitcond583.not = icmp eq i32 %i.pq, %i.z
  br i1 %exitcond583.not, label %.loopexit.us, label %.preheader417.us, !llvm.loop !54

.preheader416.lr.ph.us:                           ; preds = %.preheader427.us
  %i.pr = and i32 %i.au, -4
  %i.ps = zext i32 %i.pr to i64
  %wide.trip.count590 = zext i32 %i.au to i64
  br label %.lr.ph491.us.preheader

.lr.ph506.us:                                     ; preds = %.preheader423.us
  %i.pt = zext i32 %i.au to i64
  %i.pu = shl nuw nsw i64 %i.pt, 2                ; 5 uses
  br i1 %i.ao, label %.epil.preheader749, label %.lr.ph506.us.new

..critedge412_crit_edge.us:                       ; preds = %.loopexit.us
  %i.pv = add i32 %.0384518.us, 1
  %i.pw = add i32 %i.z, %.0385517.us              ; 2 uses
  %i.px = icmp ult i32 %i.pw, %4
  br i1 %i.px, label %.split.us, label %.critedge, !llvm.loop !55

.critedge:                                        ; preds = %..critedge412_crit_edge.us, %bb.o, %bb.a, %bb.b
  %.4390 = phi i32 [ %8, %bb.b ], [ %8, %bb.a ], [ 0, %bb.o ], [ 1, %..critedge412_crit_edge.us ]
  ret i32 %.4390
}

; Function Attrs: nounwind uwtable
define noundef i32 @opj_sparse_array_int32_write(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @opj_sparse_array_int32_read_or_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"any p2 pointer", !7, i64 0}
!9 = !{!"p2 int", !8, i64 0}
!10 = !{!"opj_sparse_array_int32", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !9, i64 24}
!11 = !{!10, !5, i64 0}
!12 = !{!10, !5, i64 4}
!13 = !{!10, !5, i64 8}
!14 = !{!10, !5, i64 12}
!15 = !{!10, !5, i64 16}
!16 = !{!10, !5, i64 20}
!17 = !{!10, !9, i64 24}
!18 = !{!"p1 int", !7, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20, !56}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20, !56}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20, !56}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !57}
!41 = distinct !{!41, !57}
!42 = distinct !{!42, !57}
!43 = distinct !{!43, !57}
!44 = distinct !{!44, !57}
!45 = distinct !{!45, !57}
!46 = distinct !{!46, !57}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !57}
!49 = distinct !{!49, !57}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !57}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !57}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
