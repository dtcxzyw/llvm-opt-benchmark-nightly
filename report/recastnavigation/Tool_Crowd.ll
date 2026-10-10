Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Tool_Crowd?download=true
inline.NumInlined: 240
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN14CrowdToolState8addAgentEPKf:bb.a
  %i.as = call noundef i32 @_ZN7dtCrowd8addAgentEPKfPK18dtCrowdAgentParams(ptr noundef nonnull align 8 dereferenceable(5072) %i.d, ptr noundef %1, ptr noundef nonnull %2) #15 ; 3 uses
  %.not15 = icmp eq i32 %i.as, -1
  br i1 %.not15, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !70 ; 2 uses
  %.not16 = icmp eq i32 %i.au, 0
  br i1 %.not16, label %vector.memcheck, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = call noundef zeroext i1 @_ZN7dtCrowd17requestMoveTargetEijPKf(ptr noundef nonnull align 8 dereferenceable(5072) %i.d, i32 noundef %i.as, i32 noundef %i.au, ptr noundef nonnull %i.av) #15 ; 0 uses
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.l, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = sext i32 %i.as to i64                   ; 2 uses
  %i.az = getelementptr inbounds [772 x i8], ptr %i.ax, i64 %i.ay ; 20 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bc = mul nsw i64 %i.ay, 772
  %i.bd = getelementptr i8, ptr %0, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 848
  %i.bf = getelementptr i8, ptr %1, i64 12
  %bound0 = icmp ult ptr %i.az, %i.bf
  %bound1 = icmp ult ptr %1, %i.be
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.bg = load float, ptr %i.bb, align 4, !tbaa !71, !alias.scope !222
  %broadcast.splatinsert24 = insertelement <4 x float> poison, float %i.bg, i64 0 ; 16 uses
  %i.bh = load float, ptr %i.ba, align 4, !tbaa !71, !alias.scope !222
  %broadcast.splatinsert22 = insertelement <4 x float> poison, float %i.bh, i64 0 ; 16 uses
  %i.bi = load float, ptr %1, align 4, !tbaa !71, !alias.scope !222
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bi, i64 0 ; 16 uses
  %i.bj = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bk = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.bj, <8 x float> %i.bk, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.az, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bm = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bn = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.1 = shufflevector <8 x float> %i.bm, <8 x float> %i.bn, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.1, ptr %i.bl, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bp = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bq = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.2 = shufflevector <8 x float> %i.bp, <8 x float> %i.bq, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.2, ptr %i.bo, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  %i.bs = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bt = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.3 = shufflevector <8 x float> %i.bs, <8 x float> %i.bt, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.3, ptr %i.br, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 192
  %i.bv = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bw = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.4 = shufflevector <8 x float> %i.bv, <8 x float> %i.bw, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.4, ptr %i.bu, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 240
  %i.by = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bz = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.5 = shufflevector <8 x float> %i.by, <8 x float> %i.bz, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.5, ptr %i.bx, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 288
  %i.cb = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cc = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.6 = shufflevector <8 x float> %i.cb, <8 x float> %i.cc, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.6, ptr %i.ca, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 336
  %i.ce = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cf = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.7 = shufflevector <8 x float> %i.ce, <8 x float> %i.cf, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.7, ptr %i.cd, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 384
  %i.ch = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ci = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.8 = shufflevector <8 x float> %i.ch, <8 x float> %i.ci, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.8, ptr %i.cg, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cj = getelementptr inbounds nuw i8, ptr %i.az, i64 432
  %i.ck = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cl = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.9 = shufflevector <8 x float> %i.ck, <8 x float> %i.cl, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.9, ptr %i.cj, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cm = getelementptr inbounds nuw i8, ptr %i.az, i64 480
  %i.cn = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.co = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.10 = shufflevector <8 x float> %i.cn, <8 x float> %i.co, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.10, ptr %i.cm, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cp = getelementptr inbounds nuw i8, ptr %i.az, i64 528
  %i.cq = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cr = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.11 = shufflevector <8 x float> %i.cq, <8 x float> %i.cr, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.11, ptr %i.cp, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cs = getelementptr inbounds nuw i8, ptr %i.az, i64 576
  %i.ct = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cu = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.12 = shufflevector <8 x float> %i.ct, <8 x float> %i.cu, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.12, ptr %i.cs, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cv = getelementptr inbounds nuw i8, ptr %i.az, i64 624
  %i.cw = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cx = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.13 = shufflevector <8 x float> %i.cw, <8 x float> %i.cx, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.13, ptr %i.cv, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cy = getelementptr inbounds nuw i8, ptr %i.az, i64 672
  %i.cz = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.da = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.14 = shufflevector <8 x float> %i.cz, <8 x float> %i.da, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.14, ptr %i.cy, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.db = getelementptr inbounds nuw i8, ptr %i.az, i64 720
  %i.dc = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.dd = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.15 = shufflevector <8 x float> %i.dc, <8 x float> %i.dd, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.15, ptr %i.db, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  br label %middle.block

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %i.de = getelementptr inbounds nuw i8, ptr %i.az, i64 768
  store i32 0, ptr %i.de, align 4, !tbaa !85
  br label %bb.m

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx ; 3 uses
  %i.dg = load float, ptr %1, align 4, !tbaa !71
  store float %i.dg, ptr %i.df, align 4, !tbaa !71
  %i.dh = load float, ptr %i.ba, align 4, !tbaa !71
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store float %i.dh, ptr %i.di, align 4, !tbaa !71
  %i.dj = load float, ptr %i.bb, align 4, !tbaa !71
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store float %i.dj, ptr %i.dk, align 4, !tbaa !71
  %i.dl = mul nuw i64 %indvars.iv, 12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.dl ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.do = load float, ptr %1, align 4, !tbaa !71
  store float %i.do, ptr %i.dn, align 4, !tbaa !71
  %i.dp = load float, ptr %i.ba, align 4, !tbaa !71
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store float %i.dp, ptr %i.dq, align 4, !tbaa !71
  %i.dr = load float, ptr %i.bb, align 4, !tbaa !71
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  store float %i.dr, ptr %i.ds, align 4, !tbaa !71
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !218

bb.m:                                             ; preds = %middle.block, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

declare noundef i32 @_ZN7dtCrowd8addAgentEPKfPK18dtCrowdAgentParams(ptr noundef nonnull align 8 dereferenceable(5072), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7dtCrowd17requestMoveTargetEijPKf(ptr noundef nonnull align 8 dereferenceable(5072), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14CrowdToolState11removeAgentEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(98989) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  tail call void @_ZN7dtCrowd11removeAgentEi(ptr noundef nonnull align 8 dereferenceable(5072) %i.d, i32 noundef %1) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37
  %i.g = icmp eq i32 %1, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.e, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare void @_ZN7dtCrowd11removeAgentEi(ptr noundef nonnull align 8 dereferenceable(5072), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN14CrowdToolState14highlightAgentEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(98989) initializes((32, 36)) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.a, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14CrowdToolState13setMoveTargetEPKfb(ptr noundef nonnull align 8 dereferenceable(98989) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit49, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 14 uses
  br i1 %2, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %.not45 = icmp eq i32 %i.g, -1
  br i1 %.not45, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.h = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.e) #15
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph52, label %.loopexit

.lr.ph52:                                         ; preds = %.preheader
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_ZN7dtCrowd8getAgentEi(ptr noundef nonnull align 8 dereferenceable(5072) %i.e, i32 noundef %i.g) #15 ; 5 uses
  %.not46 = icmp eq ptr %i.l, null
  br i1 %.not46, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.l, align 8, !tbaa !67, !range !56, !noundef !57
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 492
  %i.q = load float, ptr %i.p, align 4, !tbaa !93 ; 3 uses
  %i.r = load float, ptr %1, align 4, !tbaa !71
  %i.s = load float, ptr %i.o, align 8, !tbaa !71
  %i.t = fsub float %i.r, %i.s                    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 424
  %i.y = load float, ptr %i.x, align 8, !tbaa !71
  %i.z = fsub float %i.w, %i.y                    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = fmul float %i.t, %i.t
  %i.ac = fmul float %i.z, %i.z
  %i.ad = fadd float %i.ab, %i.ac
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.ad)
  %i.ae = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.af = fmul float %i.t, %i.ae
  %i.ag = fmul float %i.ae, 0.000000e+00
  %i.ah = fmul float %i.z, %i.ae
  %i.ai = fmul float %i.q, %i.af
  store float %i.ai, ptr %i.a, align 4, !tbaa !71
  %i.aj = fmul float %i.q, %i.ag
  store float %i.aj, ptr %i.u, align 4, !tbaa !71
  %i.ak = fmul float %i.q, %i.ah
  store float %i.ak, ptr %i.aa, align 4, !tbaa !71
  %i.al = load i32, ptr %i.f, align 8, !tbaa !37
  %i.am = call noundef zeroext i1 @_ZN7dtCrowd19requestMoveVelocityEiPKf(ptr noundef nonnull align 8 dereferenceable(5072) %i.e, i32 noundef %i.al, ptr noundef nonnull %i.a) #15 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph52, %bb.i
  %.03751 = phi i32 [ 0, %.lr.ph52 ], [ %i.bh, %bb.i ] ; 3 uses
  %i.an = call noundef ptr @_ZN7dtCrowd8getAgentEi(ptr noundef nonnull align 8 dereferenceable(5072) %i.e, i32 noundef %.03751) #15 ; 4 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !67, !range !56, !noundef !57
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 416
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 492
  %i.as = load float, ptr %i.ar, align 4, !tbaa !93 ; 3 uses
  %i.at = load float, ptr %1, align 4, !tbaa !71
  %i.au = load float, ptr %i.aq, align 8, !tbaa !71
  %i.av = fsub float %i.at, %i.au                 ; 3 uses
  %i.aw = load float, ptr %i.j, align 4, !tbaa !71
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 424
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !71
  %i.az = fsub float %i.aw, %i.ay                 ; 3 uses
  %i.ba = fmul float %i.av, %i.av
  %i.bb = fmul float %i.az, %i.az
  %i.bc = fadd float %i.ba, %i.bb
  %sqrt.i.i47 = call float @llvm.sqrt.f32(float %i.bc)
  %i.bd = fdiv float 1.000000e+00, %sqrt.i.i47    ; 3 uses
  %i.be = fmul float %i.av, %i.bd
  %4 = fmul float %i.bd, 0.000000e+00
  %5 = fmul float %i.az, %i.bd
  %6 = fmul float %i.as, %i.be
  store float %6, ptr %i.a, align 4, !tbaa !71
  %7 = fmul float %i.as, %4
  store float %7, ptr %3, align 4, !tbaa !71
  %i.bf = fmul float %i.as, %5
  store float %i.bf, ptr %i.k, align 4, !tbaa !71
  %i.bg = call noundef zeroext i1 @_ZN7dtCrowd19requestMoveVelocityEiPKf(ptr noundef nonnull align 8 dereferenceable(5072) %i.e, i32 noundef %.03751, ptr noundef nonnull %i.a) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bh = add nuw nsw i32 %.03751, 1              ; 2 uses
  %i.bi = call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.e) #15
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.g, label %.loopexit, !llvm.loop !225

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit49

bb.j:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 884
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 896
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !105
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bq = tail call noundef i32 @_ZNK14dtNavMeshQuery15findNearestPolyEPKfS1_PK13dtQueryFilterPjPf(ptr noundef nonnull align 8 dereferenceable(104) %i.bn, ptr noundef %1, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp) #15 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !37 ; 2 uses
  %.not43 = icmp eq i32 %i.bs, -1
  br i1 %.not43, label %.preheader48, label %bb.k

.preheader48:                                     ; preds = %bb.j
  %i.bt = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.e) #15
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph, label %.loopexit49

bb.k:                                             ; preds = %bb.j
  %i.bv = tail call noundef ptr @_ZN7dtCrowd8getAgentEi(ptr noundef nonnull align 8 dereferenceable(5072) %i.e, i32 noundef %i.bs) #15 ; 2 uses
  %.not44 = icmp eq ptr %i.bv, null
  br i1 %.not44, label %.loopexit49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !67, !range !56, !noundef !57
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %.loopexit49

bb.m:                                             ; preds = %bb.l
  %i.by = load i32, ptr %i.br, align 8, !tbaa !37
  %i.bz = load i32, ptr %i.bo, align 4, !tbaa !70
  %i.ca = tail call noundef zeroext i1 @_ZN7dtCrowd17requestMoveTargetEijPKf(ptr noundef nonnull align 8 dereferenceable(5072) %i.e, i32 noundef %i.by, i32 noundef %i.bz, ptr noundef nonnull %i.bp) #15 ; 0 uses
  br label %.loopexit49

.lr.ph:                                           ; preds = %.preheader48, %bb.o
  %.050 = phi i32 [ %i.cg, %bb.o ], [ 0, %.preheader48 ] ; 3 uses
  %i.cb = tail call noundef ptr @_ZN7dtCrowd8getAgentEi(ptr noundef nonnull align 8 dereferenceable(5072) %i.e, i32 noundef %.050) #15
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !67, !range !56, !noundef !57
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.ce = load i32, ptr %i.bo, align 4, !tbaa !70
  %i.cf = tail call noundef zeroext i1 @_ZN7dtCrowd17requestMoveTargetEijPKf(ptr noundef nonnull align 8 dereferenceable(5072) %i.e, i32 noundef %.050, i32 noundef %i.ce, ptr noundef nonnull %i.bp) #15 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.n
  %i.cg = add nuw nsw i32 %.050, 1                ; 2 uses
  %i.ch = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.e) #15
  %i.ci = icmp slt i32 %i.cg, %i.ch
  br i1 %i.ci, label %.lr.ph, label %.loopexit49, !llvm.loop !226

.loopexit49:                                      ; preds = %bb.o, %.preheader48, %.loopexit, %bb.m, %bb.l, %bb.k, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN7dtCrowd19requestMoveVelocityEiPKf(ptr noundef nonnull align 8 dereferenceable(5072), i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK14dtNavMeshQuery15findNearestPolyEPKfS1_PK13dtQueryFilterPjPf(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN14CrowdToolState13hitTestAgentsEPKfS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(98989) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 3 uses
  %i.e = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.d) #15
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %.045 = phi i32 [ 0, %.lr.ph ], [ %i.ca, %bb.n ] ; 3 uses
  %.01444 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.2, %bb.n ] ; 3 uses
  %.01543 = phi i32 [ -1, %.lr.ph ], [ %.217, %bb.n ] ; 2 uses
  %i.k = tail call noundef ptr @_ZN7dtCrowd8getAgentEi(ptr noundef nonnull align 8 dereferenceable(5072) %i.d, i32 noundef %.045) #15 ; 6 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !67, !range !56, !noundef !57
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  %i.p = load float, ptr %i.o, align 8, !tbaa !86 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 484
  %i.r = load float, ptr %i.q, align 4, !tbaa !92
  %i.s = load float, ptr %i.n, align 8, !tbaa !71 ; 2 uses
  %i.t = fsub float %i.s, %i.p                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 420
  %i.v = load float, ptr %i.u, align 4, !tbaa !71 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 424
  %i.x = load float, ptr %i.w, align 8, !tbaa !71 ; 2 uses
  %i.y = fsub float %i.x, %i.p                    ; 2 uses
  %i.z = fadd float %i.p, %i.s                    ; 2 uses
  %i.aa = fadd float %i.r, %i.v                   ; 2 uses
  %i.ab = fadd float %i.p, %i.x                   ; 2 uses
  %i.ac = load float, ptr %2, align 4, !tbaa !71
  %i.ad = load float, ptr %1, align 4, !tbaa !71  ; 5 uses
  %i.ae = fsub float %i.ac, %i.ad                 ; 2 uses
  %i.af = load float, ptr %i.g, align 4, !tbaa !71
  %i.ag = load float, ptr %i.h, align 4, !tbaa !71 ; 5 uses
  %i.ah = fsub float %i.af, %i.ag                 ; 2 uses
  %i.ai = load float, ptr %i.i, align 4, !tbaa !71
  %i.aj = load float, ptr %i.j, align 4, !tbaa !71 ; 5 uses
  %i.ak = fsub float %i.ai, %i.aj                 ; 2 uses
  %i.al = tail call float @llvm.fabs.f32(float %i.ae)
  %i.am = fcmp olt float %i.al, f0x358637BD
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = fcmp olt float %i.ad, %i.t
  %i.ao = fcmp ogt float %i.ad, %i.z
  %or.cond40 = or i1 %i.an, %i.ao
  br i1 %or.cond40, label %_ZN12_GLOBAL__N_112isectSegAABBEPKfS1_S1_S1_RfS2_.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = fdiv float 1.000000e+00, %i.ae          ; 2 uses
  %i.aq = fsub float %i.t, %i.ad
  %i.ar = fmul float %i.aq, %i.ap                 ; 3 uses
  %i.as = fsub float %i.z, %i.ad
  %i.at = fmul float %i.as, %i.ap                 ; 3 uses
  %i.au = fcmp ogt float %i.ar, %i.at             ; 2 uses
  %.047.i = select i1 %i.au, float %i.at, float %i.ar ; 2 uses
  %.0.i = select i1 %i.au, float %i.ar, float %i.at ; 2 uses
  %i.av = fcmp olt float %.047.i, 0.000000e+00
  %.sroa.speculated44.i = select i1 %i.av, float 0.000000e+00, float %.047.i ; 3 uses
  %i.aw = fcmp ogt float %.0.i, f0x7F7FFFFF
  %.sroa.speculated.i = select i1 %i.aw, float f0x7F7FFFFF, float %.0.i ; 2 uses
  %i.ax = fcmp ule float %.sroa.speculated44.i, %.sroa.speculated.i
  br i1 %i.ax, label %bb.g, label %_ZN12_GLOBAL__N_112isectSegAABBEPKfS1_S1_S1_RfS2_.exit

bb.g:                                             ; preds = %bb.e, %bb.f
  %.037 = phi float [ 0.000000e+00, %bb.e ], [ %.sroa.speculated44.i, %bb.f ] ; 4 uses
  %.035 = phi float [ f0x7F7FFFFF, %bb.e ], [ %.sroa.speculated.i, %bb.f ] ; 3 uses
  %i.ay = tail call float @llvm.fabs.f32(float %i.ah)
  %i.az = fcmp olt float %i.ay, f0x358637BD
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = fdiv float 1.000000e+00, %i.ah          ; 2 uses
  %i.bb = fsub float %i.v, %i.ag
  %i.bc = fmul float %i.bb, %i.ba                 ; 3 uses
  %i.bd = fsub float %i.aa, %i.ag
  %i.be = fmul float %i.bd, %i.ba                 ; 3 uses
  %i.bf = fcmp ogt float %i.bc, %i.be             ; 2 uses
  %.047.1.i = select i1 %i.bf, float %i.be, float %i.bc ; 2 uses
  %.0.1.i = select i1 %i.bf, float %i.bc, float %i.be ; 2 uses
  %i.bg = fcmp olt float %.047.1.i, %.037
  %.sroa.speculated44.1.i = select i1 %i.bg, float %.037, float %.047.1.i ; 3 uses
  %i.bh = fcmp olt float %.035, %.0.1.i
  %.sroa.speculated.1.i = select i1 %i.bh, float %.035, float %.0.1.i ; 2 uses
  %i.bi = fcmp ule float %.sroa.speculated44.1.i, %.sroa.speculated.1.i
  br i1 %i.bi, label %bb.j, label %_ZN12_GLOBAL__N_112isectSegAABBEPKfS1_S1_S1_RfS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.bj = fcmp olt float %i.ag, %i.v
  %i.bk = fcmp ogt float %i.ag, %i.aa
  %or.cond41 = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond41, label %_ZN12_GLOBAL__N_112isectSegAABBEPKfS1_S1_S1_RfS2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.138 = phi float [ %.037, %bb.i ], [ %.sroa.speculated44.1.i, %bb.h ] ; 4 uses
  %.136 = phi float [ %.035, %bb.i ], [ %.sroa.speculated.1.i, %bb.h ] ; 2 uses
  %i.bl = tail call float @llvm.fabs.f32(float %i.ak)
  %i.bm = fcmp olt float %i.bl, f0x358637BD
  br i1 %i.bm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = fdiv float 1.000000e+00, %i.ak          ; 2 uses
  %i.bo = fsub float %i.y, %i.aj
  %i.bp = fmul float %i.bo, %i.bn                 ; 3 uses
  %i.bq = fsub float %i.ab, %i.aj
  %i.br = fmul float %i.bq, %i.bn                 ; 3 uses
  %i.bs = fcmp ogt float %i.bp, %i.br             ; 2 uses
  %.047.2.i = select i1 %i.bs, float %i.br, float %i.bp ; 2 uses
  %.0.2.i = select i1 %i.bs, float %i.bp, float %i.br ; 2 uses
end_hunk_0
