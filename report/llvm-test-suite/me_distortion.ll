Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/me_distortion?download=true
inline.NumInlined: 51
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@computeBiPredSSE1:bb.a
  %i.et = sub nsw i32 %i.ej, %i.es
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !7
  %i.ex = add nsw i32 %i.ew, %.4103.us.us
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ez = load i16, ptr %i.eh, align 2, !tbaa !38
  %i.fa = zext i16 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.fc = load i16, ptr %i.ek, align 2, !tbaa !38
  %i.fd = zext i16 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ff = load i16, ptr %i.en, align 2, !tbaa !38
  %i.fg = zext i16 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.fd, 1
  %i.fi = add nuw nsw i32 %i.fh, %i.fg
  %i.fj = lshr i32 %i.fi, 1
  %i.fk = sub nsw i32 %i.fa, %i.fj
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !7
  %i.fo = add nsw i32 %i.ex, %i.fn                ; 5 uses
  %i.fp = add nuw nsw i32 %.1104.us.us, 1         ; 2 uses
  %exitcond183.not = icmp eq i32 %i.fp, %i.bv
  br i1 %exitcond183.not, label %._crit_edge.us124.us, label %bb.e, !llvm.loop !87

._crit_edge.us124.us:                             ; preds = %bb.e
  %scevgep180 = getelementptr i8, ptr %.lcssa105110119.us.us, i64 %i.dq ; 2 uses
  %scevgep181 = getelementptr i8, ptr %.lcssa106112118.us.us, i64 %i.dq ; 2 uses
  %scevgep182 = getelementptr i8, ptr %.lcssa107115117.us.us, i64 %i.dq ; 2 uses
  %.not70.us.us = icmp slt i32 %i.fo, %3
  br i1 %.not70.us.us, label %bb.f, label %.loopexit.split.us

bb.f:                                             ; preds = %._crit_edge.us124.us
  %i.fq = getelementptr inbounds [2 x i8], ptr %scevgep182, i64 %i.cc ; 2 uses
  %i.fr = getelementptr inbounds [2 x i8], ptr %scevgep181, i64 %i.cc ; 2 uses
  %i.fs = add nuw nsw i32 %.164121.us.us, 1       ; 2 uses
  %exitcond184.not = icmp eq i32 %i.fs, %.fr149
  br i1 %exitcond184.not, label %._crit_edge122.split.us.us, label %.preheader.us.us, !llvm.loop !88

._crit_edge122.split.us.us:                       ; preds = %bb.f
  store ptr %i.fr, ptr @ref1_line, align 8, !tbaa !34
  store ptr %i.fq, ptr @ref2_line, align 8, !tbaa !34
  br label %._crit_edge122.us

._crit_edge122.us:                                ; preds = %._crit_edge122.split.us.us, %.preheader.us137.preheader
  %.us-phi127.us = phi i32 [ %.065.lcssa, %.preheader.us137.preheader ], [ %i.fo, %._crit_edge122.split.us.us ] ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %i.ft, ptr @src_line, align 8, !tbaa !34
  %i.fu = load i32, ptr @bipred2_access_method, align 4, !tbaa !7
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !9
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic2_sub, i64 16), align 8, !tbaa !40
  %i.fz = tail call ptr %i.fx(ptr noundef %i.fy, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.fz, ptr @ref2_line, align 8, !tbaa !34
  %i.ga = load i32, ptr @bipred1_access_method, align 4, !tbaa !7
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !9
  %i.ge = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic1_sub, i64 16), align 8, !tbaa !40
  %i.gf = tail call ptr %i.gd(ptr noundef %i.ge, i32 noundef %5, i32 noundef %4) #8 ; 3 uses
  store ptr %i.gf, ptr @ref1_line, align 8, !tbaa !34
  %ref2_line.promoted114.us.1 = load ptr, ptr @ref2_line, align 8 ; 2 uses
  br i1 %i.cb, label %.preheader.us.us.preheader.1, label %.preheader.lr.ph.split.us135.1

.preheader.lr.ph.split.us135.1:                   ; preds = %._crit_edge122.us
  %.not70.us136.1 = icmp slt i32 %.us-phi127.us, %3
  br i1 %.not70.us136.1, label %.preheader.us137.preheader.1, label %.loopexit

.preheader.us137.preheader.1:                     ; preds = %.preheader.lr.ph.split.us135.1
  %scevgep178.1 = getelementptr i8, ptr %ref2_line.promoted114.us.1, i64 %i.dm
  %scevgep179.1 = getelementptr i8, ptr %i.gf, i64 %i.dm
  store ptr %scevgep178.1, ptr @ref2_line, align 8, !tbaa !34
  store ptr %scevgep179.1, ptr @ref1_line, align 8, !tbaa !34
  br label %.loopexit

.preheader.us.us.preheader.1:                     ; preds = %._crit_edge122.us
  %src_line.promoted108.us.1 = load ptr, ptr @src_line, align 8
  br label %.preheader.us.us.1

.preheader.us.us.1:                               ; preds = %bb.h, %.preheader.us.us.preheader.1
  %.164121.us.us.1 = phi i32 [ %i.hu, %bb.h ], [ 0, %.preheader.us.us.preheader.1 ]
  %.3120.us.us.1 = phi i32 [ %i.hq, %bb.h ], [ %.us-phi127.us, %.preheader.us.us.preheader.1 ]
  %.lcssa105110119.us.us.1 = phi ptr [ %scevgep180.1, %bb.h ], [ %src_line.promoted108.us.1, %.preheader.us.us.preheader.1 ] ; 2 uses
  %.lcssa106112118.us.us.1 = phi ptr [ %i.ht, %bb.h ], [ %i.gf, %.preheader.us.us.preheader.1 ] ; 2 uses
  %.lcssa107115117.us.us.1 = phi ptr [ %i.hs, %bb.h ], [ %ref2_line.promoted114.us.1, %.preheader.us.us.preheader.1 ] ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.us.us.1
  %.1104.us.us.1 = phi i32 [ 0, %.preheader.us.us.1 ], [ %i.hr, %bb.g ]
  %.4103.us.us.1 = phi i32 [ %.3120.us.us.1, %.preheader.us.us.1 ], [ %i.hq, %bb.g ]
  %i.gg = phi ptr [ %.lcssa105110119.us.us.1, %.preheader.us.us.1 ], [ %i.ha, %bb.g ] ; 3 uses
  %i.gh = phi ptr [ %.lcssa106112118.us.us.1, %.preheader.us.us.1 ], [ %i.hd, %bb.g ] ; 3 uses
  %i.gi = phi ptr [ %.lcssa107115117.us.us.1, %.preheader.us.us.1 ], [ %i.hg, %bb.g ] ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %i.gk = load i16, ptr %i.gg, align 2, !tbaa !38
  %i.gl = zext i16 %i.gk to i32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gn = load i16, ptr %i.gh, align 2, !tbaa !38
  %i.go = zext i16 %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %i.gq = load i16, ptr %i.gi, align 2, !tbaa !38
  %i.gr = zext i16 %i.gq to i32
  %i.gs = add nuw nsw i32 %i.go, 1
  %i.gt = add nuw nsw i32 %i.gs, %i.gr
  %i.gu = lshr i32 %i.gt, 1
  %i.gv = sub nsw i32 %i.gl, %i.gu
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !7
  %i.gz = add nsw i32 %i.gy, %.4103.us.us.1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.hb = load i16, ptr %i.gj, align 2, !tbaa !38
  %i.hc = zext i16 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.he = load i16, ptr %i.gm, align 2, !tbaa !38
  %i.hf = zext i16 %i.he to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.hh = load i16, ptr %i.gp, align 2, !tbaa !38
  %i.hi = zext i16 %i.hh to i32
  %i.hj = add nuw nsw i32 %i.hf, 1
  %i.hk = add nuw nsw i32 %i.hj, %i.hi
  %i.hl = lshr i32 %i.hk, 1
  %i.hm = sub nsw i32 %i.hc, %i.hl
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !7
  %i.hq = add nsw i32 %i.gz, %i.hp                ; 5 uses
  %i.hr = add nuw nsw i32 %.1104.us.us.1, 1       ; 2 uses
  %exitcond183.1.not = icmp eq i32 %i.hr, %i.bv
  br i1 %exitcond183.1.not, label %._crit_edge.us124.us.1, label %bb.g, !llvm.loop !87

._crit_edge.us124.us.1:                           ; preds = %bb.g
  %scevgep180.1 = getelementptr i8, ptr %.lcssa105110119.us.us.1, i64 %i.dq ; 3 uses
  %scevgep181.1 = getelementptr i8, ptr %.lcssa106112118.us.us.1, i64 %i.dq ; 2 uses
  %scevgep182.1 = getelementptr i8, ptr %.lcssa107115117.us.us.1, i64 %i.dq ; 2 uses
  %.not70.us.us.1 = icmp slt i32 %i.hq, %3
  br i1 %.not70.us.us.1, label %bb.h, label %.loopexit.split.us

bb.h:                                             ; preds = %._crit_edge.us124.us.1
  %i.hs = getelementptr inbounds [2 x i8], ptr %scevgep182.1, i64 %i.cc ; 2 uses
  %i.ht = getelementptr inbounds [2 x i8], ptr %scevgep181.1, i64 %i.cc ; 2 uses
  %i.hu = add nuw nsw i32 %.164121.us.us.1, 1     ; 2 uses
  %exitcond184.1.not = icmp eq i32 %i.hu, %.fr149
  br i1 %exitcond184.1.not, label %._crit_edge122.split.us.us.1, label %.preheader.us.us.1, !llvm.loop !88

._crit_edge122.split.us.us.1:                     ; preds = %bb.h
  store ptr %scevgep180.1, ptr @src_line, align 8, !tbaa !34
  store ptr %i.ht, ptr @ref1_line, align 8, !tbaa !34
  store ptr %i.hs, ptr @ref2_line, align 8, !tbaa !34
  br label %.loopexit

.loopexit.split.us:                               ; preds = %._crit_edge.us124.us, %._crit_edge.us124.us.1
  %.lcssa160.lcssa = phi ptr [ %scevgep180.1, %._crit_edge.us124.us.1 ], [ %scevgep180, %._crit_edge.us124.us ]
  %.lcssa158.lcssa = phi ptr [ %scevgep181.1, %._crit_edge.us124.us.1 ], [ %scevgep181, %._crit_edge.us124.us ]
  %.lcssa156.lcssa = phi ptr [ %scevgep182.1, %._crit_edge.us124.us.1 ], [ %scevgep182, %._crit_edge.us124.us ]
  %.lcssa154.lcssa = phi i32 [ %i.hq, %._crit_edge.us124.us.1 ], [ %i.fo, %._crit_edge.us124.us ]
  store ptr %.lcssa160.lcssa, ptr @src_line, align 8, !tbaa !34
  store ptr %.lcssa158.lcssa, ptr @ref1_line, align 8, !tbaa !34
  store ptr %.lcssa156.lcssa, ptr @ref2_line, align 8, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.lr.ph.split.us135, %.preheader.lr.ph.split.us135.1, %._crit_edge122.split.us.us.1, %.preheader.us137.preheader.1, %.split.preheader, %.loopexit74.split.us, %.preheader73.lr.ph.split, %.loopexit.split.us, %._crit_edge96
  %.168 = phi i32 [ %.065.lcssa, %._crit_edge96 ], [ %i.bd, %.loopexit74.split.us ], [ %.065.lcssa, %.split.preheader ], [ %.lcssa154.lcssa, %.loopexit.split.us ], [ 0, %.preheader73.lr.ph.split ], [ %.us-phi127.us, %.preheader.lr.ph.split.us135.1 ], [ %.065.lcssa, %.preheader.lr.ph.split.us135 ], [ %.us-phi127.us, %.preheader.us137.preheader.1 ], [ %i.hq, %._crit_edge122.split.us.us.1 ]
  ret i32 %.168
}

; Function Attrs: nounwind uwtable
define dso_local i32 @computeBiPredSSE2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !7
  %i.b = add nsw i32 %i.a, 1                      ; 7 uses
  %i.c = load i32, ptr @wp_luma_round, align 4, !tbaa !7
  %i.d = shl nsw i32 %i.c, 1                      ; 7 uses
  %i.e = load i32, ptr @img_padded_size_x, align 4, !tbaa !7 ; 2 uses
  store ptr %0, ptr @src_line, align 8, !tbaa !34
  %i.f = load i32, ptr @bipred2_access_method, align 4, !tbaa !7
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @get_line, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = load ptr, ptr @ref_pic2_sub, align 8, !tbaa !37
  %i.k = tail call ptr %i.i(ptr noundef %i.j, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.k, ptr @ref2_line, align 8, !tbaa !34
  %i.l = load i32, ptr @bipred1_access_method, align 4, !tbaa !7
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @get_line, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.p = load ptr, ptr @ref_pic1_sub, align 8, !tbaa !37
  %i.q = tail call ptr %i.o(ptr noundef %i.p, i32 noundef %5, i32 noundef %4) #8 ; 3 uses
  store ptr %i.q, ptr @ref1_line, align 8, !tbaa !34
  %ref2_line.promoted118 = load ptr, ptr @ref2_line, align 8 ; 2 uses
  %src_line.promoted124 = load ptr, ptr @src_line, align 8
  %i.r = icmp sgt i32 %1, 0
  br i1 %i.r, label %.preheader109.lr.ph, label %._crit_edge132

.preheader109.lr.ph:                              ; preds = %bb.a
  %i.s = sub nsw i32 %i.e, %2
  %i.t = icmp sgt i32 %2, 0
  %i.u = load i16, ptr @weight1, align 2
  %8 = load i16, ptr @weight2, align 2
  %i.v = load i16, ptr @offsetBi, align 2
  %9 = insertelement <3 x i16> poison, i16 %i.u, i64 0
  %10 = insertelement <3 x i16> %9, i16 %8, i64 1
  %11 = insertelement <3 x i16> %10, i16 %i.v, i64 2
  %12 = sext <3 x i16> %11 to <3 x i32>           ; 3 uses
  %i.w = sext i32 %i.s to i64                     ; 2 uses
  br i1 %i.t, label %.preheader109.lr.ph.split.us, label %.preheader109.lr.ph.split

.preheader109.lr.ph.split.us:                     ; preds = %.preheader109.lr.ph
  %i.x = load ptr, ptr @img, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 15520
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41
  %i.aa = shufflevector <3 x i32> %12, <3 x i32> poison, <4 x i32> zeroinitializer
  %i.ab = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %i.ac = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> zeroinitializer
  %13 = shufflevector <3 x i32> %12, <3 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ad = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %i.ae = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> zeroinitializer
  %14 = shufflevector <3 x i32> %12, <3 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.af = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ag = shufflevector <4 x i32> %i.af, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader109.us

.preheader109.us:                                 ; preds = %bb.c, %.preheader109.lr.ph.split.us
  %.099131.us = phi i32 [ 0, %.preheader109.lr.ph.split.us ], [ %i.bi, %bb.c ]
  %.0101130.us = phi i32 [ 0, %.preheader109.lr.ph.split.us ], [ %op.rdx, %bb.c ]
  %.lcssa116119129.us = phi ptr [ %ref2_line.promoted118, %.preheader109.lr.ph.split.us ], [ %i.bg, %bb.c ]
  %.lcssa122128.us = phi ptr [ %i.q, %.preheader109.lr.ph.split.us ], [ %i.bh, %bb.c ]
  %.lcssa117126127.us = phi ptr [ %src_line.promoted124, %.preheader109.lr.ph.split.us ], [ %i.am, %bb.c ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader109.us, %bb.b
  %.098115.us = phi i32 [ 0, %.preheader109.us ], [ %i.be, %bb.b ]
  %.1102114.us = phi i32 [ %.0101130.us, %.preheader109.us ], [ %op.rdx, %bb.b ]
  %i.ah = phi ptr [ %.lcssa122128.us, %.preheader109.us ], [ %i.ak, %bb.b ] ; 2 uses
  %i.ai = phi ptr [ %.lcssa116119129.us, %.preheader109.us ], [ %i.al, %bb.b ] ; 2 uses
  %i.aj = phi ptr [ %.lcssa117126127.us, %.preheader109.us ], [ %i.am, %bb.b ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.an = load <4 x i16>, ptr %i.ah, align 2, !tbaa !38
  %i.ao = zext <4 x i16> %i.an to <4 x i32>
  %i.ap = mul nsw <4 x i32> %i.aa, %i.ao
  %i.aq = load <4 x i16>, ptr %i.ai, align 2, !tbaa !38
  %i.ar = zext <4 x i16> %i.aq to <4 x i32>
  %i.as = mul nsw <4 x i32> %13, %i.ar
  %i.at = add <4 x i32> %i.ap, %i.ac
  %i.au = add <4 x i32> %i.at, %i.as
  %i.av = ashr <4 x i32> %i.au, %i.ae
  %i.aw = add nsw <4 x i32> %i.av, %14
  %i.ax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aw, <4 x i32> zeroinitializer)
  %i.ay = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ag)
  %i.az = load <4 x i16>, ptr %i.aj, align 2, !tbaa !38
  %i.ba = zext <4 x i16> %i.az to <4 x i32>
  %i.bb = sub nsw <4 x i32> %i.ba, %i.ay          ; 2 uses
  %i.bc = mul nsw <4 x i32> %i.bb, %i.bb
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bc)
  %op.rdx = add i32 %i.bd, %.1102114.us           ; 5 uses
  %i.be = add nuw nsw i32 %.098115.us, 4          ; 2 uses
  %i.bf = icmp slt i32 %i.be, %2
  br i1 %i.bf, label %bb.b, label %._crit_edge.us, !llvm.loop !89

bb.c:                                             ; preds = %._crit_edge.us
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.w ; 2 uses
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.w ; 2 uses
  %i.bi = add nuw nsw i32 %.099131.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %1
  br i1 %exitcond.not, label %._crit_edge132.split.us, label %.preheader109.us, !llvm.loop !90

._crit_edge.us:                                   ; preds = %bb.b
  %.not107.us = icmp slt i32 %op.rdx, %3
  br i1 %.not107.us, label %bb.c, label %.loopexit110.split.us

.loopexit110.split.us:                            ; preds = %._crit_edge.us
  store ptr %i.ak, ptr @ref1_line, align 8, !tbaa !34
  store ptr %i.al, ptr @ref2_line, align 8, !tbaa !34
  store ptr %i.am, ptr @src_line, align 8, !tbaa !34
  br label %.loopexit

._crit_edge132.split.us:                          ; preds = %bb.c
  store ptr %i.bh, ptr @ref1_line, align 8, !tbaa !34
  store ptr %i.bg, ptr @ref2_line, align 8, !tbaa !34
  store ptr %i.am, ptr @src_line, align 8, !tbaa !34
  br label %._crit_edge132

.preheader109.lr.ph.split:                        ; preds = %.preheader109.lr.ph
  %.not107 = icmp sgt i32 %3, 0
  br i1 %.not107, label %.preheader109.preheader, label %.loopexit

.preheader109.preheader:                          ; preds = %.preheader109.lr.ph.split
  %i.bj = sext i32 %i.e to i64
  %i.bk = shl nsw i64 %i.bj, 1                    ; 2 uses
  %i.bl = sext i32 %2 to i64
  %i.bm = shl nsw i64 %i.bl, 1                    ; 2 uses
  %i.bn = sub nsw i64 %i.bk, %i.bm
  %i.bo = add nsw i32 %1, -1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = mul i64 %i.bn, %i.bp
  %i.br = add i64 %i.bq, %i.bk
  %i.bs = sub i64 %i.br, %i.bm                    ; 2 uses
  %scevgep = getelementptr i8, ptr %ref2_line.promoted118, i64 %i.bs
  %scevgep212 = getelementptr i8, ptr %i.q, i64 %i.bs
  store ptr %scevgep, ptr @ref2_line, align 8, !tbaa !34
  store ptr %scevgep212, ptr @ref1_line, align 8, !tbaa !34
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %.preheader109.preheader, %._crit_edge132.split.us, %bb.a
  %.0101.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.preheader109.preheader ], [ %op.rdx, %._crit_edge132.split.us ] ; 6 uses
  %i.bt = load i32, ptr @ChromaMEEnable, align 4, !tbaa !7
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %._crit_edge132
  %i.bu = load i32, ptr @shift_cr_x, align 4, !tbaa !7
  %i.bv = ashr i32 %2, %i.bu                      ; 10 uses
  %i.bw = load i32, ptr @shift_cr_y, align 4, !tbaa !7
  %i.bx = ashr i32 %1, %i.bw
  %.fr185 = freeze i32 %i.bx                      ; 4 uses
  %i.by = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !7 ; 2 uses
  %i.bz = sub nsw i32 %i.by, %i.bv
  %i.ca = icmp sgt i32 %.fr185, 0
  %i.cb = icmp sgt i32 %i.bv, 0                   ; 2 uses
  %i.cc = sext i32 %i.bz to i64                   ; 4 uses
  br i1 %i.ca, label %.preheader.lr.ph.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.d
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.cd, ptr @src_line, align 8, !tbaa !34
  %i.ce = load i32, ptr @bipred2_access_method, align 4, !tbaa !7
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !9
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic2_sub, i64 8), align 8, !tbaa !40
  %i.cj = tail call ptr %i.ch(ptr noundef %i.ci, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.cj, ptr @ref2_line, align 8, !tbaa !34
  %i.ck = load i32, ptr @bipred1_access_method, align 4, !tbaa !7
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !9
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic1_sub, i64 8), align 8, !tbaa !40
  %i.cp = tail call ptr %i.cn(ptr noundef %i.co, i32 noundef %5, i32 noundef %4) #8
  store ptr %i.cp, ptr @ref1_line, align 8, !tbaa !34
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %i.cq, ptr @src_line, align 8, !tbaa !34
  %i.cr = load i32, ptr @bipred2_access_method, align 4, !tbaa !7
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !9
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic2_sub, i64 16), align 8, !tbaa !40
  %i.cw = tail call ptr %i.cu(ptr noundef %i.cv, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.cw, ptr @ref2_line, align 8, !tbaa !34
  %i.cx = load i32, ptr @bipred1_access_method, align 4, !tbaa !7
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !9
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic1_sub, i64 16), align 8, !tbaa !40
  %i.dc = tail call ptr %i.da(ptr noundef %i.db, i32 noundef %5, i32 noundef %4) #8
  store ptr %i.dc, ptr @ref1_line, align 8, !tbaa !34
  br label %.loopexit

.preheader.lr.ph.us.preheader:                    ; preds = %bb.d
  %i.dd = sext i32 %i.by to i64
  %i.de = shl nsw i64 %i.dd, 1                    ; 2 uses
  %i.df = sext i32 %i.bv to i64
  %i.dg = shl nsw i64 %i.df, 1                    ; 2 uses
  %i.dh = sub nsw i64 %i.de, %i.dg
  %i.di = add nsw i32 %.fr185, -1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = mul i64 %i.dh, %i.dj
  %i.dl = add i64 %i.dk, %i.de
  %i.dm = sub i64 %i.dl, %i.dg                    ; 4 uses
  %i.dn = add i32 %i.bv, -1
  %i.do = zext i32 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.do, 2
  %i.dq = add nuw nsw i64 %i.dp, 4                ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.dr, ptr @src_line, align 8, !tbaa !34
  %i.ds = load i32, ptr @bipred2_access_method, align 4, !tbaa !7
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !9
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic2_sub, i64 8), align 8, !tbaa !40
  %i.dx = tail call ptr %i.dv(ptr noundef %i.dw, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.dx, ptr @ref2_line, align 8, !tbaa !34
  %i.dy = load i32, ptr @bipred1_access_method, align 4, !tbaa !7
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !9
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic1_sub, i64 8), align 8, !tbaa !40
  %i.ed = tail call ptr %i.eb(ptr noundef %i.ec, i32 noundef %5, i32 noundef %4) #8 ; 3 uses
  store ptr %i.ed, ptr @ref1_line, align 8, !tbaa !34
  %ref2_line.promoted147.us = load ptr, ptr @ref2_line, align 8 ; 2 uses
  br i1 %i.cb, label %.preheader.lr.ph.split.us.us, label %.preheader.lr.ph.split.us171

.preheader.lr.ph.split.us171:                     ; preds = %.preheader.lr.ph.us.preheader
  %.not106.us172 = icmp slt i32 %.0101.lcssa, %3
  br i1 %.not106.us172, label %.preheader.us173.preheader, label %.loopexit

.preheader.us173.preheader:                       ; preds = %.preheader.lr.ph.split.us171
  %scevgep214 = getelementptr i8, ptr %ref2_line.promoted147.us, i64 %i.dm
  %scevgep215 = getelementptr i8, ptr %i.ed, i64 %i.dm
  store ptr %scevgep214, ptr @ref2_line, align 8, !tbaa !34
  store ptr %scevgep215, ptr @ref1_line, align 8, !tbaa !34
  br label %._crit_edge158.us

.preheader.lr.ph.split.us.us:                     ; preds = %.preheader.lr.ph.us.preheader
  %i.ee = load ptr, ptr @img, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 15524
  %src_line.promoted150.us = load ptr, ptr @src_line, align 8
  %i.eg = load i16, ptr @weight1_cr, align 2, !tbaa !38
  %i.eh = sext i16 %i.eg to i32                   ; 3 uses
  %i.ei = load i16, ptr @weight2_cr, align 2, !tbaa !38
  %i.ej = sext i16 %i.ei to i32                   ; 3 uses
  %i.ek = load i32, ptr %i.ef, align 4, !tbaa !42 ; 3 uses
  %i.el = load i16, ptr @offsetBi_cr, align 2, !tbaa !38
  %i.em = sext i16 %i.el to i32                   ; 3 uses
  %i.en = zext nneg i32 %i.bv to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.bv, 4
  %n.vec = and i64 %i.en, 2147483644              ; 4 uses
  %i.eo = trunc nuw nsw i64 %n.vec to i32
  %i.ep = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.eh, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert288 = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat289 = shufflevector <4 x i32> %broadcast.splatinsert288, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert290 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat291 = shufflevector <4 x i32> %broadcast.splatinsert290, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert292 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat293 = shufflevector <4 x i32> %broadcast.splatinsert292, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert294 = insertelement <4 x i32> poison, i32 %i.em, i64 0
  %broadcast.splat295 = shufflevector <4 x i32> %broadcast.splatinsert294, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert296 = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat297 = shufflevector <4 x i32> %broadcast.splatinsert296, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.en
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.e, %.preheader.lr.ph.split.us.us
  %.1100157.us.us = phi i32 [ 0, %.preheader.lr.ph.split.us.us ], [ %i.ic, %bb.e ]
  %.3156.us.us = phi i32 [ %.0101.lcssa, %.preheader.lr.ph.split.us.us ], [ %.lcssa271, %bb.e ] ; 2 uses
  %.lcssa141145155.us.us = phi ptr [ %i.ed, %.preheader.lr.ph.split.us.us ], [ %i.ib, %bb.e ] ; 4 uses
  %.lcssa142148154.us.us = phi ptr [ %ref2_line.promoted147.us, %.preheader.lr.ph.split.us.us ], [ %i.ia, %bb.e ] ; 4 uses
  %.lcssa143152153.us.us = phi ptr [ %src_line.promoted150.us, %.preheader.lr.ph.split.us.us ], [ %scevgep218, %bb.e ] ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us
  %i.eq = getelementptr i8, ptr %.lcssa141145155.us.us, i64 %i.ep
  %i.er = getelementptr i8, ptr %.lcssa142148154.us.us, i64 %i.ep
  %i.es = getelementptr i8, ptr %.lcssa143152153.us.us, i64 %i.ep
  %i.et = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.3156.us.us, i64 0
  br label %vector.body
end_hunk_0
