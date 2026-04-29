inline.NumInlined: 51
inline.NumDeleted: 4
begin_hunk_0_@computeBiPredSSE2:bb.a
  %narrow = add nuw nsw i32 %i.af, 1
  %i.ag = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check = icmp ult i32 %2, 13
  %n.vec = and i64 %i.ag, 2147483644              ; 4 uses
  %.cast = trunc nuw nsw i64 %n.vec to i32
  %i.ah = shl i32 %.cast, 2
  %i.ai = shl nuw nsw i64 %n.vec, 3               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert289 = insertelement <4 x i32> poison, i32 %i.x, i64 0
end_hunk_0
begin_hunk_1_@computeBiPredSSE2:bb.a
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader109.us
  %i.av = getelementptr i8, ptr %.lcssa122128.us, i64 %i.ai ; 2 uses
  %i.aw = getelementptr i8, ptr %.lcssa116119129.us, i64 %i.ai ; 2 uses
  %i.ax = getelementptr i8, ptr %.lcssa117126127.us, i64 %i.ai ; 2 uses
  %i.ay = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.098131.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ay, %vector.ph ], [ %i.ij, %vector.body ]
  %offset.idx = shl i64 %index, 3                 ; 6 uses
  %8 = or disjoint i64 %offset.idx, 8             ; 3 uses
  %9 = or disjoint i64 %offset.idx, 16            ; 3 uses
  %10 = or disjoint i64 %offset.idx, 24           ; 3 uses
  %next.gep304.a = getelementptr i8, ptr %.lcssa122128.us, i64 %offset.idx ; 4 uses
  %i.az = getelementptr i8, ptr %.lcssa122128.us, i64 %8 ; 4 uses
  %next.gep305.a = getelementptr i8, ptr %.lcssa122128.us, i64 %9 ; 4 uses
  %i.ba = getelementptr i8, ptr %.lcssa122128.us, i64 %10 ; 4 uses
  %next.gep306.a = getelementptr i8, ptr %.lcssa116119129.us, i64 %offset.idx ; 4 uses
  %next.gep308.a = getelementptr i8, ptr %.lcssa116119129.us, i64 %8 ; 4 uses
  %i.bb = getelementptr i8, ptr %.lcssa116119129.us, i64 %9 ; 4 uses
  %next.gep309.a = getelementptr i8, ptr %.lcssa116119129.us, i64 %10 ; 4 uses
  %i.bc = getelementptr i8, ptr %.lcssa117126127.us, i64 %offset.idx ; 4 uses
  %next.gep310 = getelementptr i8, ptr %.lcssa117126127.us, i64 %8 ; 4 uses
  %i.bd = getelementptr i8, ptr %.lcssa117126127.us, i64 %9 ; 4 uses
  %next.gep311 = getelementptr i8, ptr %.lcssa117126127.us, i64 %10 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %next.gep304.a, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bg = getelementptr inbounds nuw i8, ptr %next.gep305.a, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bi = load i16, ptr %next.gep304.a, align 2, !tbaa !40
  %i.bj = load i16, ptr %i.az, align 2, !tbaa !40
  %i.bk = load i16, ptr %next.gep305.a, align 2, !tbaa !40
  %i.bl = load i16, ptr %i.ba, align 2, !tbaa !40
  %i.bm = insertelement <4 x i16> poison, i16 %i.bi, i64 0
  %i.bn = insertelement <4 x i16> %i.bm, i16 %i.bj, i64 1
  %i.bo = insertelement <4 x i16> %i.bn, i16 %i.bk, i64 2
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bl, i64 3
  %i.bq = zext <4 x i16> %i.bp to <4 x i32>
  %i.br = mul nsw <4 x i32> %broadcast.splat, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %next.gep306.a, i64 2
  %i.bt = getelementptr inbounds nuw i8, ptr %next.gep308.a, i64 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bv = getelementptr inbounds nuw i8, ptr %next.gep309.a, i64 2
  %i.bw = load i16, ptr %next.gep306.a, align 2, !tbaa !40
  %i.bx = load i16, ptr %next.gep308.a, align 2, !tbaa !40
  %i.by = load i16, ptr %i.bb, align 2, !tbaa !40
  %i.bz = load i16, ptr %next.gep309.a, align 2, !tbaa !40
  %i.ca = insertelement <4 x i16> poison, i16 %i.bw, i64 0
  %i.cb = insertelement <4 x i16> %i.ca, i16 %i.bx, i64 1
  %i.cc = insertelement <4 x i16> %i.cb, i16 %i.by, i64 2
end_hunk_1
begin_hunk_2_@computeBiPredSSE2:bb.a
  %i.cj = add nsw <4 x i32> %i.ci, %broadcast.splat296
  %i.ck = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cj, <4 x i32> zeroinitializer)
  %i.cl = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ck, <4 x i32> %broadcast.splat298)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %next.gep310, i64 2
  %i.co = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.cp = getelementptr inbounds nuw i8, ptr %next.gep311, i64 2
  %i.cq = load i16, ptr %i.bc, align 2, !tbaa !40
  %i.cr = load i16, ptr %next.gep310, align 2, !tbaa !40
  %i.cs = load i16, ptr %i.bd, align 2, !tbaa !40
  %i.ct = load i16, ptr %next.gep311, align 2, !tbaa !40
  %i.cu = insertelement <4 x i16> poison, i16 %i.cq, i64 0
  %i.cv = insertelement <4 x i16> %i.cu, i16 %i.cr, i64 1
end_hunk_2
begin_hunk_3_@computeBiPredSSE2:bb.a
  %i.cz = sub nsw <4 x i32> %i.cy, %i.cl          ; 2 uses
  %i.da = mul nsw <4 x i32> %i.cz, %i.cz
  %i.db = add <4 x i32> %i.da, %vec.phi
  %i.dc = getelementptr inbounds nuw i8, ptr %next.gep304.a, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %next.gep305.a, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.dg = load i16, ptr %i.be, align 2, !tbaa !40
  %i.dh = load i16, ptr %i.bf, align 2, !tbaa !40
  %i.di = load i16, ptr %i.bg, align 2, !tbaa !40
end_hunk_3
begin_hunk_4_@computeBiPredSSE2:bb.a
  %i.dn = insertelement <4 x i16> %i.dm, i16 %i.dj, i64 3
  %i.do = zext <4 x i16> %i.dn to <4 x i32>
  %i.dp = mul nsw <4 x i32> %broadcast.splat, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %next.gep306.a, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %next.gep308.a, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %next.gep309.a, i64 4
  %i.du = load i16, ptr %i.bs, align 2, !tbaa !40
  %i.dv = load i16, ptr %i.bt, align 2, !tbaa !40
  %i.dw = load i16, ptr %i.bu, align 2, !tbaa !40
end_hunk_4
begin_hunk_5_@computeBiPredSSE2:bb.a
  %i.eh = add nsw <4 x i32> %i.eg, %broadcast.splat296
  %i.ei = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eh, <4 x i32> zeroinitializer)
  %i.ej = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ei, <4 x i32> %broadcast.splat298)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %next.gep310, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.en = getelementptr inbounds nuw i8, ptr %next.gep311, i64 4
  %i.eo = load i16, ptr %i.cm, align 2, !tbaa !40
  %i.ep = load i16, ptr %i.cn, align 2, !tbaa !40
  %i.eq = load i16, ptr %i.co, align 2, !tbaa !40
end_hunk_5
begin_hunk_6_@computeBiPredSSE2:bb.a
  %i.ex = sub nsw <4 x i32> %i.ew, %i.ej          ; 2 uses
  %i.ey = mul nsw <4 x i32> %i.ex, %i.ex
  %i.ez = add <4 x i32> %i.db, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %next.gep304.a, i64 6
  %i.fb = getelementptr inbounds nuw i8, ptr %i.az, i64 6
  %i.fc = getelementptr inbounds nuw i8, ptr %next.gep305.a, i64 6
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  %i.fe = load i16, ptr %i.dc, align 2, !tbaa !40
  %i.ff = load i16, ptr %i.dd, align 2, !tbaa !40
  %i.fg = load i16, ptr %i.de, align 2, !tbaa !40
end_hunk_6
begin_hunk_7_@computeBiPredSSE2:bb.a
  %i.fl = insertelement <4 x i16> %i.fk, i16 %i.fh, i64 3
  %i.fm = zext <4 x i16> %i.fl to <4 x i32>
  %i.fn = mul nsw <4 x i32> %broadcast.splat, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %next.gep306.a, i64 6
  %i.fp = getelementptr inbounds nuw i8, ptr %next.gep308.a, i64 6
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bb, i64 6
  %i.fr = getelementptr inbounds nuw i8, ptr %next.gep309.a, i64 6
  %i.fs = load i16, ptr %i.dq, align 2, !tbaa !40
  %i.ft = load i16, ptr %i.dr, align 2, !tbaa !40
  %i.fu = load i16, ptr %i.ds, align 2, !tbaa !40
end_hunk_7
begin_hunk_8_@computeBiPredSSE2:bb.a
  %i.gf = add nsw <4 x i32> %i.ge, %broadcast.splat296
  %i.gg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gf, <4 x i32> zeroinitializer)
  %i.gh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gg, <4 x i32> %broadcast.splat298)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  %i.gj = getelementptr inbounds nuw i8, ptr %next.gep310, i64 6
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %i.gl = getelementptr inbounds nuw i8, ptr %next.gep311, i64 6
  %i.gm = load i16, ptr %i.ek, align 2, !tbaa !40
  %i.gn = load i16, ptr %i.el, align 2, !tbaa !40
  %i.go = load i16, ptr %i.em, align 2, !tbaa !40
end_hunk_8
begin_hunk_9_@computeBiPredSSE2:bb.a
  %i.ne = sext i16 %i.nd to i32                   ; 3 uses
  %i.nf = zext nneg i32 %i.ka to i64              ; 2 uses
  %min.iters.check358 = icmp ult i32 %i.ka, 4
  %n.vec361 = and i64 %i.nf, 2147483644           ; 4 uses
  %i.ng = trunc nuw nsw i64 %n.vec361 to i32
  %i.nh = shl nuw nsw i64 %n.vec361, 2            ; 3 uses
  %broadcast.splatinsert363 = insertelement <4 x i32> poison, i32 %i.mz, i64 0
  %broadcast.splat364 = shufflevector <4 x i32> %broadcast.splatinsert363, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert365 = insertelement <4 x i32> poison, i32 %i.nb, i64 0
end_hunk_9
begin_hunk_10_@computeBiPredSSE2:bb.a
  br i1 %min.iters.check358, label %scalar.ph357.preheader, label %vector.ph359

vector.ph359:                                     ; preds = %.preheader.us.us.1
  %i.ni = getelementptr i8, ptr %.lcssa141148154.us.us.1, i64 %i.nh
  %i.nj = getelementptr i8, ptr %.lcssa142145155.us.us.1, i64 %i.nh
  %i.nk = getelementptr i8, ptr %.lcssa143152153.us.us.1, i64 %i.nh
  %i.nl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.3157.us.us.1, i64 0
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph359
  %index376 = phi i64 [ 0, %vector.ph359 ], [ %index.next393, %vector.body375 ] ; 2 uses
  %vec.phi377 = phi <4 x i32> [ %i.nl, %vector.ph359 ], [ %i.on, %vector.body375 ]
  %offset.idx378 = shl i64 %index376, 2           ; 3 uses
  %next.gep379 = getelementptr i8, ptr %.lcssa141148154.us.us.1, i64 %offset.idx378
  %next.gep381 = getelementptr i8, ptr %.lcssa142145155.us.us.1, i64 %offset.idx378
  %next.gep383 = getelementptr i8, ptr %.lcssa143152153.us.us.1, i64 %offset.idx378
  %wide.vec384 = load <8 x i16>, ptr %next.gep379, align 2, !tbaa !40 ; 2 uses
  %strided.vec385 = shufflevector <8 x i16> %wide.vec384, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec386 = shufflevector <8 x i16> %wide.vec384, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
end_hunk_10
begin_hunk_11_@computeBiPredSSE2:bb.a
  %i.qt = sext i16 %i.qs to i32                   ; 3 uses
  %i.qu = zext nneg i32 %i.ka to i64              ; 2 uses
  %min.iters.check316 = icmp ult i32 %i.ka, 4
  %n.vec319 = and i64 %i.qu, 2147483644           ; 4 uses
  %i.qv = trunc nuw nsw i64 %n.vec319 to i32
  %i.qw = shl nuw nsw i64 %n.vec319, 2            ; 3 uses
  %broadcast.splatinsert321 = insertelement <4 x i32> poison, i32 %i.qo, i64 0
  %broadcast.splat322 = shufflevector <4 x i32> %broadcast.splatinsert321, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert323 = insertelement <4 x i32> poison, i32 %i.qq, i64 0
end_hunk_11
begin_hunk_12_@computeBiPredSSE2:bb.a
  br i1 %min.iters.check316, label %scalar.ph315.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %.preheader.us.us
  %i.qx = getelementptr i8, ptr %.lcssa141148154.us.us, i64 %i.qw
  %i.qy = getelementptr i8, ptr %.lcssa142145155.us.us, i64 %i.qw
  %i.qz = getelementptr i8, ptr %.lcssa143152153.us.us, i64 %i.qw
  %i.ra = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.3157.us.us, i64 0
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph317
  %index334 = phi i64 [ 0, %vector.ph317 ], [ %index.next349, %vector.body333 ] ; 2 uses
  %vec.phi335 = phi <4 x i32> [ %i.ra, %vector.ph317 ], [ %i.sc, %vector.body333 ]
  %offset.idx336 = shl i64 %index334, 2           ; 3 uses
  %next.gep337 = getelementptr i8, ptr %.lcssa141148154.us.us, i64 %offset.idx336
  %next.gep339 = getelementptr i8, ptr %.lcssa142145155.us.us, i64 %offset.idx336
  %next.gep341 = getelementptr i8, ptr %.lcssa143152153.us.us, i64 %offset.idx336
  %wide.vec = load <8 x i16>, ptr %next.gep337, align 2, !tbaa !40 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec342.a = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
end_hunk_12
