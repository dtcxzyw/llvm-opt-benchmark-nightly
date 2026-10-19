Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 269
begin_hunk_0_@ggml_compute_forward_unary:bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 10234, ptr noundef nonnull @.str.2) #17
  unreachable

_ZL25ggml_compute_forward_geluPK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %_ZL17ggml_vec_silu_f16iPtPKt.exit.loopexit.i.i, %bb.t, %_ZL23ggml_vec_gelu_quick_f16iPtPKt.exit.loopexit.i.i, %_ZL23ggml_vec_gelu_quick_f32iPfPKf.exit.loopexit.i.i, %_ZL21ggml_vec_gelu_erf_f16iPtPKt.exit.loopexit.i.i, %_ZL21ggml_vec_gelu_erf_f32iPfPKf.exit.loopexit.i.i, %_ZL17ggml_vec_gelu_f16iPtPKt.exit.loopexit.i.i, %_ZL17ggml_vec_gelu_f32iPfPKf.exit.loopexit.i.i, %.lr.ph.i8.i100, %.thread92.i7.i99, %.thread92.i.i109, %.lr.ph.i8.i73, %.thread92.i7.i72, %.lr.ph.i.i86, %.thread92.i.i85, %.lr.ph.i8.i46, %.thread92.i7.i45, %.lr.ph.i.i60, %.thread92.i.i59, %.lr.ph.i8.i, %.thread92.i7.i, %.lr.ph.i.i, %.thread92.i.i, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare i32 @ggml_get_unary_op(ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_abs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_sgn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_neg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_step(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_tanh(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_elu(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_relu(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_sigmoid(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_hardswish(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_hardsigmoid(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_exp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_floor(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_ceil(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_round(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_trunc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_xielu(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_expm1(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_softplus(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @erff(float noundef) local_unnamed_addr #8

declare void @ggml_vec_silu_f32(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_glu(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ggml_get_glu_op(ptr noundef %1)
  switch i32 %i.a, label %bb.jd [
    i32 0, label %bb.b
    i32 1, label %bb.aw
    i32 2, label %bb.cl
    i32 3, label %bb.dy
    i32 4, label %bb.es
    i32 5, label %bb.ge
    i32 6, label %bb.hq
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 17 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  switch i32 %i.d, label %bb.av [
    i32 0, label %bb.c
    i32 1, label %bb.ab
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37   ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null              ; 4 uses
  br i1 %.not.i.i, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i.i
  %i.q = phi i64 [ %i.n, %bb.d ], [ %i.j, %.thread.i.i ] ; 4 uses
  %i.r = phi ptr [ %i.l, %bb.d ], [ %i.h, %.thread.i.i ] ; 3 uses
  %i.s = phi i64 [ %i.p, %bb.d ], [ %i.j, %.thread.i.i ] ; 4 uses
  %i.t = tail call zeroext i1 @ggml_is_contiguous_1(ptr noundef nonnull %i.c)
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2903, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.171) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = tail call zeroext i1 @ggml_is_contiguous_1(ptr noundef nonnull %1)
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2904, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.172) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  br i1 %.not.i.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call zeroext i1 @ggml_is_contiguous_1(ptr noundef nonnull %i.f)
  br i1 %i.v, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2907, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.173) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = load i32, ptr %i.c, align 8, !tbaa !30
  %i.x = load i32, ptr %i.f, align 8, !tbaa !30
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2908, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.174) #17
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ad = sdiv i64 %i.ac, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ae = phi i64 [ %i.aa, %bb.n ], [ %i.ad, %bb.o ] ; 7 uses
  %i.af = load i32, ptr %0, align 8, !tbaa !35
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i32, ptr %.in.i.i, align 4, !tbaa !36 ; 2 uses
  %i.ah = trunc i64 %i.ae to i32
  %i.ai = tail call i64 @ggml_nrows(ptr noundef nonnull %i.c) ; 2 uses
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !31 ; 3 uses
  %sext.i.i = shl i64 %i.ae, 32
  %i.am = ashr exact i64 %sext.i.i, 32
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2917, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.86) #17
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ao = tail call i64 @ggml_nrows(ptr noundef nonnull %1)
  %sext63.i.i = shl i64 %i.ai, 32
  %i.ap = ashr exact i64 %sext63.i.i, 32
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2918, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.175) #17
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ar = add i32 %i.ag, -1
  %i.as = add i32 %i.ar, %i.aj
  %i.at = sdiv i32 %i.as, %i.ag                   ; 2 uses
  %i.au = mul nsw i32 %i.at, %i.af                ; 3 uses
  %i.av = add nsw i32 %i.au, %i.at
  %i.aw = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.aj) ; 2 uses
  %i.ax = icmp slt i32 %i.au, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZL26ggml_compute_forward_regluPK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.i.i:                                       ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !51
  %.not64.i.i = icmp ne i32 %i.az, 0              ; 2 uses
  %i.ba = select i1 %.not.i.i, i1 %.not64.i.i, i1 false
  %.060.idx.i.i = select i1 %i.ba, i64 %i.al, i64 0 ; 2 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.h, i64 %.060.idx.i.i
  %i.bb = xor i1 %.not64.i.i, true
  %i.bc = select i1 %.not.i.i, i1 %i.bb, i1 false
  %.0.idx.i.i = select i1 %i.bc, i64 %i.al, i64 0 ; 2 uses
  %invariant.gep69.i.i = getelementptr [4 x i8], ptr %i.r, i64 %.0.idx.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !37 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !31 ; 4 uses
  %i.bh = icmp sgt i32 %i.ah, 0
  %wide.trip.count.i.i.i = and i64 %i.ae, 2147483647 ; 7 uses
  br i1 %i.bh, label %.lr.ph.preheader.i.preheader.i.i, label %_ZL26ggml_compute_forward_regluPK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.preheader.i.preheader.i.i:                 ; preds = %.lr.ph.i.i
  %i.bi = sext i32 %i.au to i64                   ; 4 uses
  %wide.trip.count.i.i = sext i32 %i.aw to i64    ; 2 uses
  %i.bj = mul i64 %i.bg, %i.bi
  %scevgep = getelementptr i8, ptr %i.be, i64 %i.bj ; 2 uses
  %i.bk = add nsw i64 %wide.trip.count.i.i, -1    ; 3 uses
  %i.bl = mul i64 %i.bg, %i.bk
  %i.bm = shl nuw nsw i64 %wide.trip.count.i.i.i, 2 ; 3 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %i.bl
  %scevgep335 = getelementptr i8, ptr %i.bn, i64 %i.bm ; 2 uses
  %i.bo = mul i64 %i.s, %i.bi
  %i.bp = shl i64 %.0.idx.i.i, 2                  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.r, i64 %i.bo
  %scevgep336 = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.br = mul i64 %i.s, %i.bk
  %i.bs = getelementptr i8, ptr %i.r, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bp
  %scevgep337 = getelementptr i8, ptr %i.bt, i64 %i.bm
  %i.bu = mul i64 %i.q, %i.bi
  %i.bv = shl i64 %.060.idx.i.i, 2                ; 2 uses
  %i.bw = getelementptr i8, ptr %i.h, i64 %i.bu
  %scevgep338 = getelementptr i8, ptr %i.bw, i64 %i.bv
  %i.bx = mul i64 %i.q, %i.bk
  %i.by = getelementptr i8, ptr %i.h, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bv
  %scevgep339 = getelementptr i8, ptr %i.bz, i64 %i.bm
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i.i.i, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep337
  %bound1 = icmp ult ptr %scevgep336, %scevgep335
  %found.conflict = and i1 %bound0, %bound1
  %i.ca = or i64 %i.s, %i.bg
  %i.cb = icmp slt i64 %i.ca, 0
  %i.cc = or i1 %found.conflict, %i.cb
  %bound0341 = icmp ult ptr %scevgep, %scevgep339
  %bound1342 = icmp ult ptr %scevgep338, %scevgep335
  %found.conflict343 = and i1 %bound0341, %bound1342
  %i.cd = icmp slt i64 %i.q, 0
  %i.ce = or i1 %found.conflict343, %i.cd
  %conflict.rdx = or i1 %i.cc, %i.ce
  %min.iters.check346 = icmp samesign ult i64 %wide.trip.count.i.i.i, 32
  %i.cf = and i64 %i.ae, 24
  %n.vec = and i64 %i.ae, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i.i.i, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cf, 0
  %n.vec356 = and i64 %i.ae, 2147483640           ; 3 uses
  %cmp.n362 = icmp eq i64 %wide.trip.count.i.i.i, %n.vec356
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i, %.lr.ph.preheader.i.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.bi, %.lr.ph.preheader.i.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i ] ; 4 uses
  %i.cg = mul i64 %indvars.iv.i.i, %i.q
  %i.ch = mul i64 %indvars.iv.i.i, %i.s
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.cg ; 7 uses
  %gep70.i.i = getelementptr i8, ptr %invariant.gep69.i.i, i64 %i.ch ; 7 uses
  %i.ci = mul i64 %indvars.iv.i.i, %i.bg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ci ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check346, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %index ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %wide.load = load <8 x float>, ptr %i.ck, align 4, !tbaa !43, !alias.scope !1692 ; 2 uses
  %wide.load347.a = load <8 x float>, ptr %i.cl, align 4, !tbaa !43, !alias.scope !1692 ; 2 uses
  %wide.load348.a = load <8 x float>, ptr %i.cm, align 4, !tbaa !43, !alias.scope !1692 ; 2 uses
  %wide.load349 = load <8 x float>, ptr %i.cn, align 4, !tbaa !43, !alias.scope !1692 ; 2 uses
  %i.co = fcmp ogt <8 x float> %wide.load, zeroinitializer ; 2 uses
  %i.cp = fcmp ogt <8 x float> %wide.load347.a, zeroinitializer ; 2 uses
  %i.cq = fcmp ogt <8 x float> %wide.load348.a, zeroinitializer ; 2 uses
  %i.cr = fcmp ogt <8 x float> %wide.load349, zeroinitializer ; 2 uses
  %i.cs = getelementptr [4 x i8], ptr %gep70.i.i, i64 %index ; 4 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 32
  %i.cu = getelementptr i8, ptr %i.cs, i64 64
  %i.cv = getelementptr i8, ptr %i.cs, i64 96
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.cs, <8 x i1> %i.co, <8 x float> poison), !tbaa !43, !alias.scope !1693
  %wide.masked.load350.a = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ct, <8 x i1> %i.cp, <8 x float> poison), !tbaa !43, !alias.scope !1693
  %wide.masked.load351.a = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.cu, <8 x i1> %i.cq, <8 x float> poison), !tbaa !43, !alias.scope !1693
  %wide.masked.load352 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.cv, <8 x i1> %i.cr, <8 x float> poison), !tbaa !43, !alias.scope !1693
  %i.cw = fmul <8 x float> %wide.load, %wide.masked.load
  %i.cx = fmul <8 x float> %wide.load347.a, %wide.masked.load350.a
  %i.cy = fmul <8 x float> %wide.load348.a, %wide.masked.load351.a
  %i.cz = fmul <8 x float> %wide.load349, %wide.masked.load352
  %predphi = select <8 x i1> %i.co, <8 x float> %i.cw, <8 x float> zeroinitializer
  %predphi353.a = select <8 x i1> %i.cp, <8 x float> %i.cx, <8 x float> zeroinitializer
  %predphi354.a = select <8 x i1> %i.cq, <8 x float> %i.cy, <8 x float> zeroinitializer
  %predphi355 = select <8 x i1> %i.cr, <8 x float> %i.cz, <8 x float> zeroinitializer
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  store <8 x float> %predphi, ptr %i.da, align 4, !tbaa !43, !alias.scope !1694, !noalias !1695
  store <8 x float> %predphi353.a, ptr %i.db, align 4, !tbaa !43, !alias.scope !1694, !noalias !1695
  store <8 x float> %predphi354.a, ptr %i.dc, align 4, !tbaa !43, !alias.scope !1694, !noalias !1695
  store <8 x float> %predphi355, ptr %i.dd, align 4, !tbaa !43, !alias.scope !1694, !noalias !1695
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !1664

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index357 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next361, %vec.epilog.vector.body ] ; 4 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %index357
  %wide.load358 = load <8 x float>, ptr %i.df, align 4, !tbaa !43, !alias.scope !1692 ; 2 uses
  %i.dg = fcmp ogt <8 x float> %wide.load358, zeroinitializer ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %gep70.i.i, i64 %index357
  %wide.masked.load359 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.dh, <8 x i1> %i.dg, <8 x float> poison), !tbaa !43, !alias.scope !1693
  %i.di = fmul <8 x float> %wide.load358, %wide.masked.load359
  %predphi360 = select <8 x i1> %i.dg, <8 x float> %i.di, <8 x float> zeroinitializer
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index357
  store <8 x float> %predphi360, ptr %i.dj, align 4, !tbaa !43, !alias.scope !1694, !noalias !1695
  %index.next361 = add nuw i64 %index357, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next361, %n.vec356
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1665

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n362, label %_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec356, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %bb.v
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %bb.v ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.v ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %indvars.iv.i.i.i.prol
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !43 ; 2 uses
  %i.dn = fcmp ogt float %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i.prol
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %gep70.i.i, i64 %indvars.iv.i.i.i.prol
  %i.dp = load float, ptr %i.do, align 4, !tbaa !43
  %i.dq = fmul float %i.dm, %i.dp
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i.prol
  %i.dr = phi float [ %i.dq, %bb.u ], [ 0.000000e+00, %.lr.ph.i.i.i.prol ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i.prol
  store float %i.dr, ptr %i.ds, align 4, !tbaa !43
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1666

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %bb.v, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %bb.v ]
  %i.dt = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.aa
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %bb.aa ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %indvars.iv.i.i.i
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !43 ; 2 uses
  %i.dx = fcmp ogt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.w, label %.lr.ph.i.i.i.1

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %gep70.i.i, i64 %indvars.iv.i.i.i
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !43
  %i.ea = fmul float %i.dw, %i.dz
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.w, %.lr.ph.i.i.i
  %i.eb = phi float [ %i.ea, %bb.w ], [ 0.000000e+00, %.lr.ph.i.i.i ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i
  store float %i.eb, ptr %i.ec, align 4, !tbaa !43
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %indvars.iv.next.i.i.i
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !43 ; 2 uses
  %i.ef = fcmp ogt float %i.ee, 0.000000e+00
  br i1 %i.ef, label %bb.x, label %.lr.ph.i.i.i.2

bb.x:                                             ; preds = %.lr.ph.i.i.i.1
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %gep70.i.i, i64 %indvars.iv.next.i.i.i
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !43
  %i.ei = fmul float %i.ee, %i.eh
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.x, %.lr.ph.i.i.i.1
  %i.ej = phi float [ %i.ei, %bb.x ], [ 0.000000e+00, %.lr.ph.i.i.i.1 ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next.i.i.i
  store float %i.ej, ptr %i.ek, align 4, !tbaa !43
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.em = load float, ptr %i.el, align 4, !tbaa !43 ; 2 uses
  %i.en = fcmp ogt float %i.em, 0.000000e+00
  br i1 %i.en, label %bb.y, label %.lr.ph.i.i.i.3

bb.y:                                             ; preds = %.lr.ph.i.i.i.2
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %gep70.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !43
  %i.eq = fmul float %i.em, %i.ep
  br label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.y, %.lr.ph.i.i.i.2
  %i.er = phi float [ %i.eq, %bb.y ], [ 0.000000e+00, %.lr.ph.i.i.i.2 ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next.i.i.i.1
  store float %i.er, ptr %i.es, align 4, !tbaa !43
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.eu = load float, ptr %i.et, align 4, !tbaa !43 ; 2 uses
  %i.ev = fcmp ogt float %i.eu, 0.000000e+00
  br i1 %i.ev, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i.i.3
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %gep70.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !43
  %i.ey = fmul float %i.eu, %i.ex
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i.i.3
  %i.ez = phi float [ %i.ey, %bb.z ], [ 0.000000e+00, %.lr.ph.i.i.i.3 ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next.i.i.i.2
  store float %i.ez, ptr %i.fa, align 4, !tbaa !43
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1667

_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.aa, %vec.epilog.middle.block, %middle.block
end_hunk_0
begin_hunk_1_@ggml_compute_forward_add_rel_pos:bb.a
  %exitcond102.not.i = icmp eq i64 %i.by, %i.z
  br i1 %exitcond102.not.i, label %._crit_edge87.i, label %.lr.ph.i, !llvm.loop !1711

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.083.i = phi i64 [ %i.de, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.bz = getelementptr [4 x i8], ptr %i.bo, i64 %.083.i ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !43
  %i.cb = fadd float %i.bk, %i.ca
  store float %i.cb, ptr %i.bz, align 4, !tbaa !43
  %i.cc = mul nuw nsw i64 %.083.i, %i.z
  %i.cd = getelementptr [4 x i8], ptr %i.bp, i64 %i.cc ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !43
  %i.cf = fadd float %i.bi, %i.ce
  store float %i.cf, ptr %i.cd, align 4, !tbaa !43
  %i.cg = or disjoint i64 %.083.i, 1              ; 2 uses
  %i.ch = getelementptr [4 x i8], ptr %i.bo, i64 %i.cg ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !43
  %i.cj = fadd float %i.bk, %i.ci
  store float %i.cj, ptr %i.ch, align 4, !tbaa !43
  %i.ck = mul nuw nsw i64 %i.cg, %i.z
  %i.cl = getelementptr [4 x i8], ptr %i.bp, i64 %i.ck ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !43
  %i.cn = fadd float %i.bi, %i.cm
  store float %i.cn, ptr %i.cl, align 4, !tbaa !43
  %i.co = or disjoint i64 %.083.i, 2              ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.bo, i64 %i.co ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !43
  %i.cr = fadd float %i.bk, %i.cq
  store float %i.cr, ptr %i.cp, align 4, !tbaa !43
  %i.cs = mul nuw nsw i64 %i.co, %i.z
  %i.ct = getelementptr [4 x i8], ptr %i.bp, i64 %i.cs ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !43
  %i.cv = fadd float %i.bi, %i.cu
  store float %i.cv, ptr %i.ct, align 4, !tbaa !43
  %i.cw = or disjoint i64 %.083.i, 3              ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %i.bo, i64 %i.cw ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !43
  %i.cz = fadd float %i.bk, %i.cy
  store float %i.cz, ptr %i.cx, align 4, !tbaa !43
  %i.da = mul nuw nsw i64 %i.cw, %i.z
  %i.db = getelementptr [4 x i8], ptr %i.bp, i64 %i.da ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !43
  %i.dd = fadd float %i.bi, %i.dc
  store float %i.dd, ptr %i.db, align 4, !tbaa !43
  %i.de = add nuw nsw i64 %.083.i, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !1712

_ZL36ggml_compute_forward_add_rel_pos_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge92.i, %bb.f, %.preheader82.lr.ph.i
  ret void

bb.h:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 10406, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_rwkv_wkv6(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31
  %i.p = sdiv i64 %i.i, %i.k                      ; 48 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 24 uses
  %i.s = mul nsw i64 %i.i, %i.g                   ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s ; 5 uses
  %i.u = load i32, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36
  %i.x = sext i32 %i.u to i64
  %i.y = mul nsw i64 %i.k, %i.x
  %i.z = sext i32 %i.w to i64                     ; 2 uses
  %i.aa = sdiv i64 %i.y, %i.z
  %i.ab = add nsw i32 %i.u, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.k, %i.ac
  %i.ae = sdiv i64 %i.ad, %i.z
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.k)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 18 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 248
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 248
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !37 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 248
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37 ; 3 uses
  %i.av = mul nsw i64 %i.p, %i.k                  ; 3 uses
  %i.aw = srem i64 %i.i, %i.k
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 10441, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.176) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ay = icmp eq i32 %i.u, 0
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = shl i64 %i.s, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.az, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57
  tail call void @ggml_barrier(ptr noundef %i.bb)
  %i.bc = sdiv i64 %i.p, 16                       ; 8 uses
  %i.bd = icmp sgt i64 %i.g, 0
  br i1 %i.bd, label %.lr.ph174.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph174.i:                                      ; preds = %bb.f
  %i.be = mul nsw i64 %i.p, %i.i                  ; 3 uses
  %i.bf = sdiv i64 %i.g, %i.o                     ; 6 uses
  %i.bg = shl i64 %i.aa, 32                       ; 3 uses
  %i.bh = ashr exact i64 %i.bg, 32                ; 10 uses
  %i.bi = shl i64 %..i, 32
  %i.bj = ashr exact i64 %i.bi, 32                ; 4 uses
  %i.bk = icmp slt i64 %i.bh, %i.bj
  %i.bl = shl nsw i64 %i.bc, 4                    ; 7 uses
  %i.bm = icmp slt i64 %i.bl, %i.p                ; 2 uses
  %i.bn = icmp sgt i64 %i.p, 0
  %or.cond.i = select i1 %i.bk, i1 %i.bn, i1 false
  br i1 %or.cond.i, label %.lr.ph174.split.us.split.us.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph174.split.us.split.us.i:                    ; preds = %.lr.ph174.i
  %i.bo = icmp samesign ugt i64 %i.p, 15
  br i1 %i.bo, label %.lr.ph174.split.us.split.us.split.us.i, label %.lr.ph174.split.us.split.us.split.i

.lr.ph174.split.us.split.us.split.us.i:           ; preds = %.lr.ph174.split.us.split.us.i
  br i1 %i.bm, label %.lr.ph174.split.us.split.us.split.us.split.us.i.preheader, label %.lr.ph174.split.us.split.us.split.us.split.i.preheader

.lr.ph174.split.us.split.us.split.us.split.i.preheader: ; preds = %.lr.ph174.split.us.split.us.split.us.i
  %xtraiter120 = and i64 %i.bc, 1
  %i.bp = and i64 %i.p, 9223372036854775792
  %i.bq = icmp eq i64 %i.bp, 16
  %unroll_iter = and i64 %i.bc, 576460752303423486
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  %lcmp.mod122 = trunc i64 %i.bc to i1
  br label %.lr.ph174.split.us.split.us.split.us.split.i

.lr.ph174.split.us.split.us.split.us.split.us.i.preheader: ; preds = %.lr.ph174.split.us.split.us.split.us.i
  %i.br = mul i64 %i.p, %i.bh
  %i.bs = shl i64 %i.br, 2
  %i.bt = shl i64 %i.bc, 6                        ; 3 uses
  %i.bu = add i64 %i.bs, %i.bt
  %i.bv = mul i64 %i.k, %i.p
  %i.bw = shl i64 %i.bv, 2
  %i.bx = shl i64 %i.p, 2
  %i.by = add nsw i64 %i.bh, 1
  %i.bz = mul i64 %i.p, %i.by
  %i.ca = shl i64 %i.bz, 2
  %i.cb = mul i64 %i.p, %i.p
  %i.cc = mul i64 %i.cb, %i.bh
  %i.cd = shl i64 %i.cc, 2                        ; 2 uses
  %i.ce = shl i64 %i.g, 2
  %i.cf = shl i64 %i.p, 2                         ; 2 uses
  %i.cg = mul i64 %i.p, %i.p                      ; 2 uses
  %i.ch = shl i64 %i.cg, 2
  %i.ci = ashr exact i64 %i.bg, 30
  %i.cj = add nsw i64 %i.ci, 4
  %i.ck = mul i64 %i.cg, %i.cj                    ; 2 uses
  %i.cl = getelementptr i8, ptr %i.r, i64 %i.cd
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.bt
  %i.cn = getelementptr i8, ptr %i.r, i64 %i.ck
  %xtraiter124 = and i64 %i.bc, 1
  %i.co = and i64 %i.p, 9223372036854775792
  %i.cp = icmp eq i64 %i.co, 16
  %unroll_iter127 = and i64 %i.bc, 576460752303423486
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  %lcmp.mod126 = trunc i64 %i.bc to i1
  %i.cq = sub nsw i64 %i.p, %i.bl                 ; 2 uses
  %min.iters.check95 = icmp ult i64 %i.cq, 8
  %stride.check73 = icmp slt i64 %i.cf, 0
  %i.cr = and i64 %i.p, 7                         ; 2 uses
  %n.vec97 = sub i64 %i.cq, %i.cr                 ; 2 uses
  %i.cs = add i64 %i.bl, %n.vec97
  %cmp.n113 = icmp eq i64 %i.cr, 0
  br label %.lr.ph174.split.us.split.us.split.us.split.us.i

.lr.ph174.split.us.split.us.split.us.split.us.i:  ; preds = %.lr.ph174.split.us.split.us.split.us.split.us.i.preheader, %._crit_edge.split171.us.split.us.us.us.us.us.i
  %.0154172.us.us.us.us.i = phi i64 [ %i.jd, %._crit_edge.split171.us.split.us.us.us.us.us.i ], [ 0, %.lr.ph174.split.us.split.us.split.us.split.us.i.preheader ] ; 5 uses
  %i.ct = mul i64 %i.bw, %.0154172.us.us.us.us.i  ; 2 uses
  %i.cu = add i64 %i.bu, %i.ct
  %i.cv = add i64 %i.ca, %i.ct
  %i.cw = mul i64 %.0154172.us.us.us.us.i, %i.av
  %i.cx = sdiv i64 %.0154172.us.us.us.us.i, %i.bf ; 2 uses
  %i.cy = mul nsw i64 %i.cx, %i.be                ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.cy ; 8 uses
  %i.da = srem i64 %.0154172.us.us.us.us.i, %i.bf
  %.not.us.us.us.us.i = icmp eq i64 %i.da, 0
  br i1 %.not.us.us.us.us.i, label %bb.g, label %.lr.ph.us.us.us.us.i

bb.g:                                             ; preds = %.lr.ph174.split.us.split.us.split.us.split.us.i
  %i.db = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 248
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !37
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cy
  br label %.lr.ph.us.us.us.us.i

.lr.ph.us.us.us.us.i:                             ; preds = %bb.g, %.lr.ph174.split.us.split.us.split.us.split.us.i
  %i.df = phi ptr [ %i.de, %bb.g ], [ %i.cz, %.lr.ph174.split.us.split.us.split.us.split.us.i ] ; 9 uses
  %i.dg = mul i64 %i.cf, %i.cx
  %i.dh = add i64 %i.ce, %i.dg
  %i.di = mul i64 %i.i, %i.dh                     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cm, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.cn, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.df, i64 %i.cd
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.bt
  %i.dn = getelementptr i8, ptr %i.df, i64 %i.ck
  br label %.lr.ph167.us.us.us.us.us.us.i

.lr.ph167.us.us.us.us.us.us.i:                    ; preds = %._crit_edge168.split.us.us.split.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.i
  %indvar60 = phi i64 [ %indvar.next61, %._crit_edge168.split.us.us.split.us.us.us.us.us.us.i ], [ 0, %.lr.ph.us.us.us.us.i ] ; 3 uses
  %.0153169.us.us.us.us.us.us.i = phi i64 [ %i.jc, %._crit_edge168.split.us.us.split.us.us.us.us.us.us.i ], [ %i.bh, %.lr.ph.us.us.us.us.i ] ; 2 uses
  %i.do = mul i64 %i.bx, %indvar60                ; 2 uses
  %i.dp = add i64 %i.cu, %i.do                    ; 2 uses
  %scevgep62.a = getelementptr i8, ptr %i.r, i64 %i.dp ; 2 uses
  %i.dq = add i64 %i.cv, %i.do                    ; 2 uses
  %scevgep63.a = getelementptr i8, ptr %i.r, i64 %i.dq ; 2 uses
  %i.dr = mul i64 %i.ch, %indvar60                ; 4 uses
  %scevgep64.a = getelementptr i8, ptr %i.dj, i64 %i.dr ; 2 uses
  %scevgep65.a = getelementptr i8, ptr %i.dk, i64 %i.dr ; 2 uses
  %scevgep66 = getelementptr i8, ptr %i.ai, i64 %i.dp
  %scevgep67 = getelementptr i8, ptr %i.ai, i64 %i.dq
  %scevgep68 = getelementptr i8, ptr %i.dm, i64 %i.dr
  %scevgep69 = getelementptr i8, ptr %i.dn, i64 %i.dr
  %i.ds = mul i64 %.0153169.us.us.us.us.us.us.i, %i.p ; 3 uses
  %i.dt = add i64 %i.ds, %i.cw                    ; 8 uses
  %i.du = getelementptr [4 x i8], ptr %i.aq, i64 %i.ds
  %i.dv = insertelement <4 x ptr> poison, ptr %scevgep62.a, i64 0
  %i.dw = insertelement <4 x ptr> %i.dv, ptr %scevgep68, i64 1
  %i.dx = insertelement <4 x ptr> %i.dw, ptr %scevgep64.a, i64 2 ; 2 uses
  %i.dy = shufflevector <4 x ptr> %i.dx, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dz = insertelement <4 x ptr> poison, ptr %scevgep67, i64 0
  %i.ea = insertelement <4 x ptr> %i.dz, ptr %scevgep63.a, i64 1
  %i.eb = insertelement <4 x ptr> %i.ea, ptr %scevgep65.a, i64 3 ; 2 uses
  %i.ec = shufflevector <4 x ptr> %i.eb, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ed = shufflevector <4 x ptr> %i.dx, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.ee = insertelement <4 x ptr> %i.ed, ptr %scevgep66, i64 0
  %i.ef = shufflevector <4 x ptr> %i.ee, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.eg = shufflevector <4 x ptr> %i.eb, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.eh = insertelement <4 x ptr> %i.eg, ptr %scevgep69, i64 1
  %i.ei = shufflevector <4 x ptr> %i.eh, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %bound070 = icmp ult ptr %scevgep62.a, %scevgep65.a
  %bound171 = icmp ult ptr %scevgep64.a, %scevgep63.a
  %found.conflict72 = and i1 %bound070, %bound171
  %i.ej = icmp ult <4 x ptr> %i.dy, %i.ec
  %i.ek = icmp ult <4 x ptr> %i.ef, %i.ei
  %i.el = and <4 x i1> %i.ek, %i.ej
  %i.em = bitcast <4 x i1> %i.el to i4
  %i.en = icmp ne i4 %i.em, 0
  %op.rdx = or i1 %i.en, %found.conflict72
  %op.rdx115 = or i1 %op.rdx, %stride.check73
  br label %.lr.ph.us.us.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.us.us.i:                 ; preds = %._crit_edge164.us.us.us.us.us.us.us.us.i, %.lr.ph167.us.us.us.us.us.us.i
  %.0152165.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.lr.ph167.us.us.us.us.us.us.i ], [ %i.jb, %._crit_edge164.us.us.us.us.us.us.us.us.i ] ; 4 uses
  %i.eo = add i64 %.0152165.us.us.us.us.us.us.us.us.i, %i.dt ; 3 uses
  %reass.add.us.us.us.us.us.us.us.us.i = add i64 %.0152165.us.us.us.us.us.us.us.us.i, %i.ds
  %reass.mul.us.us.us.us.us.us.us.us.i = mul i64 %reass.add.us.us.us.us.us.us.us.us.i, %i.p ; 7 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !43 ; 5 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.eo
  %i.es = load float, ptr %i.er, align 4, !tbaa !43 ; 5 uses
  %i.et = getelementptr [4 x i8], ptr %i.du, i64 %.0152165.us.us.us.us.us.us.us.us.i
  %i.eu = load float, ptr %i.et, align 4, !tbaa !43 ; 5 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.eo
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !43 ; 5 uses
  %i.ex = insertelement <16 x float> poison, float %i.eq, i64 0
  %i.ey = shufflevector <16 x float> %i.ex, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ez = insertelement <16 x float> poison, float %i.es, i64 0
  %i.fa = shufflevector <16 x float> %i.ez, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.fb = insertelement <16 x float> poison, float %i.eu, i64 0
  %i.fc = shufflevector <16 x float> %i.fb, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.fd = insertelement <16 x float> poison, float %i.ew, i64 0
  %i.fe = shufflevector <16 x float> %i.fd, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.cp, label %.epil.preheader123, label %.lr.ph.us.us.us.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.us.us.us.i.new:             ; preds = %.lr.ph.us.us.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.us.us.i.new
  %.0151160.us.us.us.us.us.us.us.us.i = phi i64 [ %i.gi, %.lr.ph.us.us.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %niter128 = phi i64 [ %niter128.next.1, %.lr.ph.us.us.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ]
  %i.ff = shl nuw nsw i64 %.0151160.us.us.us.us.us.us.us.us.i, 4 ; 2 uses
  %i.fg = add i64 %i.ff, %i.dt                    ; 2 uses
  %i.fh = add i64 %i.ff, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.fg
  %i.fj = load <16 x float>, ptr %i.fi, align 1, !tbaa !56
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.fh
  %i.fl = load <16 x float>, ptr %i.fk, align 1, !tbaa !56 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fg ; 2 uses
  %i.fn = load <16 x float>, ptr %i.fm, align 1, !tbaa !56
  %i.fo = fmul <16 x float> %i.ey, %i.fj          ; 2 uses
  %i.fp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fo, <16 x float> %i.fc, <16 x float> %i.fl)
  %i.fq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fp, <16 x float> %i.fa, <16 x float> %i.fn)
  store <16 x float> %i.fq, ptr %i.fm, align 1, !tbaa !56
  %i.fr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fl, <16 x float> %i.fe, <16 x float> %i.fo)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.fh
  store <16 x float> %i.fr, ptr %i.fs, align 1, !tbaa !56
  %i.ft = shl i64 %.0151160.us.us.us.us.us.us.us.us.i, 4
  %i.fu = or disjoint i64 %i.ft, 16               ; 2 uses
  %i.fv = add i64 %i.fu, %i.dt                    ; 2 uses
  %i.fw = add i64 %i.fu, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.fv
  %i.fy = load <16 x float>, ptr %i.fx, align 1, !tbaa !56
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.fw
  %i.ga = load <16 x float>, ptr %i.fz, align 1, !tbaa !56 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fv ; 2 uses
  %i.gc = load <16 x float>, ptr %i.gb, align 1, !tbaa !56
  %i.gd = fmul <16 x float> %i.ey, %i.fy          ; 2 uses
  %i.ge = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.gd, <16 x float> %i.fc, <16 x float> %i.ga)
  %i.gf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ge, <16 x float> %i.fa, <16 x float> %i.gc)
  store <16 x float> %i.gf, ptr %i.gb, align 1, !tbaa !56
  %i.gg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ga, <16 x float> %i.fe, <16 x float> %i.gd)
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.fw
  store <16 x float> %i.gg, ptr %i.gh, align 1, !tbaa !56
  %i.gi = add nuw nsw i64 %.0151160.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %niter128.next.1 = add i64 %niter128, 2         ; 2 uses
  %niter128.ncmp.1 = icmp eq i64 %niter128.next.1, %unroll_iter127
  br i1 %niter128.ncmp.1, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.us.us.i.new, !llvm.loop !1713

._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa: ; preds = %.lr.ph.us.us.us.us.us.us.us.us.i.new
  br i1 %lcmp.mod125.not, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader, label %.epil.preheader123

.epil.preheader123:                               ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, %.lr.ph.us.us.us.us.us.us.us.us.i
  %.0151160.us.us.us.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ], [ %i.gi, %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.gj = shl nuw nsw i64 %.0151160.us.us.us.us.us.us.us.us.i.epil.init, 4 ; 2 uses
  %i.gk = add i64 %i.gj, %i.dt                    ; 2 uses
  %i.gl = add i64 %i.gj, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.gk
  %i.gn = load <16 x float>, ptr %i.gm, align 1, !tbaa !56
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.gl
  %i.gp = load <16 x float>, ptr %i.go, align 1, !tbaa !56 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.gk ; 2 uses
  %i.gr = load <16 x float>, ptr %i.gq, align 1, !tbaa !56
  %i.gs = fmul <16 x float> %i.ey, %i.gn          ; 2 uses
  %i.gt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.gs, <16 x float> %i.fc, <16 x float> %i.gp)
  %i.gu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.gt, <16 x float> %i.fa, <16 x float> %i.gr)
  store <16 x float> %i.gu, ptr %i.gq, align 1, !tbaa !56
  %i.gv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.gp, <16 x float> %i.fe, <16 x float> %i.gs)
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.gl
  store <16 x float> %i.gv, ptr %i.gw, align 1, !tbaa !56
  br label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader

._crit_edge.us.us.us.us.us.us.us.us.i.preheader:  ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, %.epil.preheader123
  %brmerge = select i1 %min.iters.check95, i1 true, i1 %op.rdx115
  br i1 %brmerge, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader117, label %vector.ph96

vector.ph96:                                      ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader
  %broadcast.splatinsert98 = insertelement <8 x float> poison, float %i.eq, i64 0
  %broadcast.splat99 = shufflevector <8 x float> %broadcast.splatinsert98, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert100 = insertelement <8 x float> poison, float %i.eu, i64 0
  %broadcast.splat101 = shufflevector <8 x float> %broadcast.splatinsert100, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <8 x float> poison, float %i.es, i64 0
  %broadcast.splat103 = shufflevector <8 x float> %broadcast.splatinsert102, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert104 = insertelement <8 x float> poison, float %i.ew, i64 0
  %broadcast.splat105 = shufflevector <8 x float> %broadcast.splatinsert104, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph96
  %index107 = phi i64 [ 0, %vector.ph96 ], [ %index.next111, %vector.body106 ] ; 2 uses
  %i.gx = add nuw i64 %i.bl, %index107            ; 2 uses
  %i.gy = add i64 %i.gx, %i.dt                    ; 2 uses
  %i.gz = add i64 %i.gx, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.gy
  %wide.load108 = load <8 x float>, ptr %i.ha, align 4, !tbaa !43, !alias.scope !1731
  %i.hb = fmul <8 x float> %broadcast.splat99, %wide.load108 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.gz
  %wide.load109 = load <8 x float>, ptr %i.hc, align 4, !tbaa !43, !alias.scope !1732 ; 2 uses
  %i.hd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hb, <8 x float> %broadcast.splat101, <8 x float> %wide.load109)
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.gy ; 2 uses
  %wide.load110 = load <8 x float>, ptr %i.he, align 4, !tbaa !43, !alias.scope !1733, !noalias !1734
  %i.hf = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hd, <8 x float> %broadcast.splat103, <8 x float> %wide.load110)
end_hunk_1
begin_hunk_2_@ggml_compute_forward_rwkv_wkv6:bb.a
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !43
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ig, float %i.es, float %i.ii)
  store float %i.ij, ptr %i.ih, align 4, !tbaa !43
  %i.ik = tail call float @llvm.fmuladd.f32(float %i.if, float %i.ew, float %i.id)
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.ia
  store float %i.ik, ptr %i.il, align 4, !tbaa !43
  %i.im = add nuw nsw i64 %.0161.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.in = add i64 %i.im, %i.dt                    ; 2 uses
  %i.io = add i64 %i.im, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.in
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !43
  %i.ir = fmul float %i.eq, %i.iq                 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.io
  %i.it = load float, ptr %i.is, align 4, !tbaa !43 ; 2 uses
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.eu, float %i.it)
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.in ; 2 uses
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !43
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.es, float %i.iw)
  store float %i.ix, ptr %i.iv, align 4, !tbaa !43
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.it, float %i.ew, float %i.ir)
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.io
  store float %i.iy, ptr %i.iz, align 4, !tbaa !43
  %i.ja = add nuw nsw i64 %.0161.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %exitcond200.not.i.1 = icmp eq i64 %i.ja, %i.p
  br i1 %exitcond200.not.i.1, label %._crit_edge164.us.us.us.us.us.us.us.us.i, label %._crit_edge.us.us.us.us.us.us.us.us.i, !llvm.loop !1720

._crit_edge164.us.us.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit, %._crit_edge.us.us.us.us.us.us.us.us.i, %middle.block112
  %i.jb = add nuw nsw i64 %.0152165.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond201.not.i = icmp eq i64 %i.jb, %i.p
  br i1 %exitcond201.not.i, label %._crit_edge168.split.us.us.split.us.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.us.us.i, !llvm.loop !1721

._crit_edge168.split.us.us.split.us.us.us.us.us.us.i: ; preds = %._crit_edge164.us.us.us.us.us.us.us.us.i
  %i.jc = add nsw i64 %.0153169.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %i.jc, %i.bj
  %indvar.next61 = add i64 %indvar60, 1
  br i1 %exitcond202.not.i, label %._crit_edge.split171.us.split.us.us.us.us.us.i, label %.lr.ph167.us.us.us.us.us.us.i, !llvm.loop !1722

._crit_edge.split171.us.split.us.us.us.us.us.i:   ; preds = %._crit_edge168.split.us.us.split.us.us.us.us.us.us.i
  %i.jd = add nuw nsw i64 %.0154172.us.us.us.us.i, 1 ; 2 uses
  %exitcond203.not.i = icmp eq i64 %i.jd, %i.g
  br i1 %exitcond203.not.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph174.split.us.split.us.split.us.split.us.i, !llvm.loop !1723

.lr.ph174.split.us.split.us.split.us.split.i:     ; preds = %.lr.ph174.split.us.split.us.split.us.split.i.preheader, %._crit_edge.split171.us.split.us183.us.us.i
  %.0154172.us.us.us.i = phi i64 [ %i.mc, %._crit_edge.split171.us.split.us183.us.us.i ], [ 0, %.lr.ph174.split.us.split.us.split.us.split.i.preheader ] ; 4 uses
  %i.je = mul i64 %.0154172.us.us.us.i, %i.av
  %i.jf = sdiv i64 %.0154172.us.us.us.i, %i.bf
  %i.jg = mul nsw i64 %i.jf, %i.be                ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.jg ; 3 uses
  %i.ji = srem i64 %.0154172.us.us.us.i, %i.bf
  %.not.us.us.us.i = icmp eq i64 %i.ji, 0
  br i1 %.not.us.us.us.i, label %bb.h, label %.lr.ph.us.us.us.i

bb.h:                                             ; preds = %.lr.ph174.split.us.split.us.split.us.split.i
  %i.jj = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 248
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !37
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %bb.h, %.lr.ph174.split.us.split.us.split.us.split.i
  %i.jm = phi ptr [ %i.jl, %bb.h ], [ %i.t, %.lr.ph174.split.us.split.us.split.us.split.i ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jg ; 3 uses
  br label %.lr.ph167.us.us181.us.us.i

.lr.ph167.us.us181.us.us.i:                       ; preds = %._crit_edge168.split.us.us.split.us.us.us.i, %.lr.ph.us.us.us.i
  %.0153169.us.us182.us.us.i = phi i64 [ %i.bh, %.lr.ph.us.us.us.i ], [ %i.mb, %._crit_edge168.split.us.us.split.us.us.us.i ] ; 2 uses
  %i.jo = mul i64 %.0153169.us.us182.us.us.i, %i.p ; 3 uses
  %i.jp = add i64 %i.jo, %i.je                    ; 4 uses
  %i.jq = getelementptr [4 x i8], ptr %i.aq, i64 %i.jo
  br label %.lr.ph.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.i:                          ; preds = %._crit_edge.us.us.us.us.us.i, %.lr.ph167.us.us181.us.us.i
  %.0152165.us.us.us.us.us.i = phi i64 [ 0, %.lr.ph167.us.us181.us.us.i ], [ %i.ma, %._crit_edge.us.us.us.us.us.i ] ; 4 uses
  %i.jr = add i64 %.0152165.us.us.us.us.us.i, %i.jp ; 3 uses
  %reass.add.us.us.us.us.us.i = add i64 %.0152165.us.us.us.us.us.i, %i.jo
  %reass.mul.us.us.us.us.us.i = mul i64 %reass.add.us.us.us.us.us.i, %i.p ; 3 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.jr
  %i.jt = load float, ptr %i.js, align 4, !tbaa !43
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.jr
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !43
  %i.jw = getelementptr [4 x i8], ptr %i.jq, i64 %.0152165.us.us.us.us.us.i
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !43
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.jr
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !43
  %i.ka = insertelement <16 x float> poison, float %i.jt, i64 0
  %i.kb = shufflevector <16 x float> %i.ka, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.kc = insertelement <16 x float> poison, float %i.jv, i64 0
  %i.kd = shufflevector <16 x float> %i.kc, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ke = insertelement <16 x float> poison, float %i.jx, i64 0
  %i.kf = shufflevector <16 x float> %i.ke, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.kg = insertelement <16 x float> poison, float %i.jz, i64 0
  %i.kh = shufflevector <16 x float> %i.kg, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.i.new:                      ; preds = %.lr.ph.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.i.new
  %.0151160.us.us.us.us.us.i = phi i64 [ %i.ll, %.lr.ph.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.i ]
  %i.ki = shl nuw nsw i64 %.0151160.us.us.us.us.us.i, 4 ; 2 uses
  %i.kj = add i64 %i.ki, %i.jp                    ; 2 uses
  %i.kk = add i64 %i.ki, %reass.mul.us.us.us.us.us.i ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.kj
  %i.km = load <16 x float>, ptr %i.kl, align 1, !tbaa !56
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.kk
  %i.ko = load <16 x float>, ptr %i.kn, align 1, !tbaa !56 ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.kj ; 2 uses
  %i.kq = load <16 x float>, ptr %i.kp, align 1, !tbaa !56
  %i.kr = fmul <16 x float> %i.kb, %i.km          ; 2 uses
  %i.ks = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.kr, <16 x float> %i.kf, <16 x float> %i.ko)
  %i.kt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ks, <16 x float> %i.kd, <16 x float> %i.kq)
  store <16 x float> %i.kt, ptr %i.kp, align 1, !tbaa !56
  %i.ku = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ko, <16 x float> %i.kh, <16 x float> %i.kr)
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.kk
  store <16 x float> %i.ku, ptr %i.kv, align 1, !tbaa !56
  %i.kw = shl i64 %.0151160.us.us.us.us.us.i, 4
  %i.kx = or disjoint i64 %i.kw, 16               ; 2 uses
  %i.ky = add i64 %i.kx, %i.jp                    ; 2 uses
  %i.kz = add i64 %i.kx, %reass.mul.us.us.us.us.us.i ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ky
  %i.lb = load <16 x float>, ptr %i.la, align 1, !tbaa !56
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.kz
  %i.ld = load <16 x float>, ptr %i.lc, align 1, !tbaa !56 ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ky ; 2 uses
  %i.lf = load <16 x float>, ptr %i.le, align 1, !tbaa !56
  %i.lg = fmul <16 x float> %i.kb, %i.lb          ; 2 uses
  %i.lh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lg, <16 x float> %i.kf, <16 x float> %i.ld)
  %i.li = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lh, <16 x float> %i.kd, <16 x float> %i.lf)
  store <16 x float> %i.li, ptr %i.le, align 1, !tbaa !56
  %i.lj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ld, <16 x float> %i.kh, <16 x float> %i.lg)
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.kz
  store <16 x float> %i.lj, ptr %i.lk, align 1, !tbaa !56
  %i.ll = add nuw nsw i64 %.0151160.us.us.us.us.us.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.i.unr-lcssa, label %.lr.ph.us.us.us.us.us.i.new, !llvm.loop !1713

._crit_edge.us.us.us.us.us.i.unr-lcssa:           ; preds = %.lr.ph.us.us.us.us.us.i.new
  br i1 %lcmp.mod121.not, label %._crit_edge.us.us.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.lr.ph.us.us.us.us.us.i
  %.0151160.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.i ], [ %i.ll, %._crit_edge.us.us.us.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.lm = shl nuw nsw i64 %.0151160.us.us.us.us.us.i.epil.init, 4 ; 2 uses
  %i.ln = add i64 %i.lm, %i.jp                    ; 2 uses
  %i.lo = add i64 %i.lm, %reass.mul.us.us.us.us.us.i ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ln
  %i.lq = load <16 x float>, ptr %i.lp, align 1, !tbaa !56
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.lo
  %i.ls = load <16 x float>, ptr %i.lr, align 1, !tbaa !56 ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ln ; 2 uses
  %i.lu = load <16 x float>, ptr %i.lt, align 1, !tbaa !56
  %i.lv = fmul <16 x float> %i.kb, %i.lq          ; 2 uses
  %i.lw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lv, <16 x float> %i.kf, <16 x float> %i.ls)
  %i.lx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lw, <16 x float> %i.kd, <16 x float> %i.lu)
  store <16 x float> %i.lx, ptr %i.lt, align 1, !tbaa !56
  %i.ly = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ls, <16 x float> %i.kh, <16 x float> %i.lv)
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.lo
  store <16 x float> %i.ly, ptr %i.lz, align 1, !tbaa !56
  br label %._crit_edge.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.i:                     ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.epil.preheader
  %i.ma = add nuw nsw i64 %.0152165.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond196.not.i = icmp eq i64 %i.ma, %i.p
  br i1 %exitcond196.not.i, label %._crit_edge168.split.us.us.split.us.us.us.i, label %.lr.ph.us.us.us.us.us.i, !llvm.loop !1721

._crit_edge168.split.us.us.split.us.us.us.i:      ; preds = %._crit_edge.us.us.us.us.us.i
  %i.mb = add nsw i64 %.0153169.us.us182.us.us.i, 1 ; 2 uses
  %exitcond197.not.i = icmp eq i64 %i.mb, %i.bj
  br i1 %exitcond197.not.i, label %._crit_edge.split171.us.split.us183.us.us.i, label %.lr.ph167.us.us181.us.us.i, !llvm.loop !1722

._crit_edge.split171.us.split.us183.us.us.i:      ; preds = %._crit_edge168.split.us.us.split.us.us.us.i
  %i.mc = add nuw nsw i64 %.0154172.us.us.us.i, 1 ; 2 uses
  %exitcond198.not.i = icmp eq i64 %i.mc, %i.g
  br i1 %exitcond198.not.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph174.split.us.split.us.split.us.split.i, !llvm.loop !1723

.lr.ph174.split.us.split.us.split.i:              ; preds = %.lr.ph174.split.us.split.us.i
  br i1 %i.bm, label %.lr.ph174.split.us.split.us.split.split.us.i.preheader, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph174.split.us.split.us.split.split.us.i.preheader: ; preds = %.lr.ph174.split.us.split.us.split.i
  %i.md = mul nsw i64 %i.p, %i.bh
  %i.me = shl i64 %i.md, 2                        ; 2 uses
  %i.mf = mul i64 %i.k, %i.p
  %i.mg = shl i64 %i.mf, 2
  %i.mh = shl nuw nsw i64 %i.p, 2
  %i.mi = add nsw i64 %i.bh, 1
  %i.mj = mul nsw i64 %i.p, %i.mi
  %i.mk = shl i64 %i.mj, 2
  %i.ml = mul nuw nsw i64 %i.p, %i.p
  %i.mm = mul nsw i64 %i.ml, %i.bh
  %i.mn = shl i64 %i.mm, 2
  %i.mo = shl i64 %i.g, 2
  %i.mp = shl nuw nsw i64 %i.p, 2
  %i.mq = mul nuw nsw i64 %i.p, %i.p              ; 2 uses
  %i.mr = shl nuw nsw i64 %i.mq, 2
  %i.ms = ashr exact i64 %i.bg, 30
  %i.mt = add nsw i64 %i.ms, 4                    ; 2 uses
  %i.mu = mul nsw i64 %i.mq, %i.mt
  %i.mv = shl i64 %i.i, 2
  %i.mw = mul nsw i64 %i.p, %i.mt
  %i.mx = getelementptr i8, ptr %i.r, i64 %i.mn
  %i.my = getelementptr i8, ptr %i.r, i64 %i.mu
  %i.mz = sub nuw nsw i64 %i.p, %i.bl             ; 2 uses
  %min.iters.check = icmp ult i64 %i.mz, 8
  %i.na = and i64 %i.p, 7                         ; 2 uses
  %n.vec = sub nsw i64 %i.mz, %i.na               ; 2 uses
  %cmp.n = icmp eq i64 %i.na, 0
  br label %.lr.ph174.split.us.split.us.split.split.us.i

.lr.ph174.split.us.split.us.split.split.us.i:     ; preds = %.lr.ph174.split.us.split.us.split.split.us.i.preheader, %._crit_edge.split171.us179.us.us.i
  %.0154172.us.us.us184.i = phi i64 [ %i.ro, %._crit_edge.split171.us179.us.us.i ], [ 0, %.lr.ph174.split.us.split.us.split.split.us.i.preheader ] ; 5 uses
  %i.nb = mul i64 %i.mg, %.0154172.us.us.us184.i  ; 2 uses
  %i.nc = add i64 %i.me, %i.nb
  %i.nd = add i64 %i.mk, %i.nb
  %i.ne = mul i64 %.0154172.us.us.us184.i, %i.av
  %i.nf = sdiv i64 %.0154172.us.us.us184.i, %i.bf ; 3 uses
  %i.ng = mul nsw i64 %i.nf, %i.be                ; 2 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ng ; 4 uses
  %i.ni = srem i64 %.0154172.us.us.us184.i, %i.bf
  %.not.us.us.us185.i = icmp eq i64 %i.ni, 0
  br i1 %.not.us.us.us185.i, label %bb.i, label %.lr.ph.us.us.us186.i

bb.i:                                             ; preds = %.lr.ph174.split.us.split.us.split.split.us.i
  %i.nj = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 248
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !37
  br label %.lr.ph.us.us.us186.i

.lr.ph.us.us.us186.i:                             ; preds = %bb.i, %.lr.ph174.split.us.split.us.split.split.us.i
  %i.nm = phi ptr [ %i.nl, %bb.i ], [ %i.t, %.lr.ph174.split.us.split.us.split.split.us.i ] ; 3 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.ng ; 4 uses
  %i.no = mul i64 %i.mp, %i.nf
  %i.np = add i64 %i.mo, %i.no
  %i.nq = mul i64 %i.i, %i.np                     ; 2 uses
  %i.nr = mul i64 %i.mv, %i.nf                    ; 2 uses
  %i.ns = add i64 %i.me, %i.nr
  %i.nt = mul i64 %i.p, %i.ns
  %i.nu = add i64 %i.mw, %i.nr
  %i.nv = mul i64 %i.p, %i.nu
  %i.nw = getelementptr i8, ptr %i.mx, i64 %i.nq
  %i.nx = getelementptr i8, ptr %i.my, i64 %i.nq
  %i.ny = getelementptr i8, ptr %i.nm, i64 %i.nt
  %i.nz = getelementptr i8, ptr %i.nm, i64 %i.nv
  br label %.lr.ph167.us177.us.us.i

.lr.ph167.us177.us.us.i:                          ; preds = %._crit_edge168.split.us.us.us.i, %.lr.ph.us.us.us186.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge168.split.us.us.us.i ], [ 0, %.lr.ph.us.us.us186.i ] ; 3 uses
  %.0153169.us178.us.us.i = phi i64 [ %i.rn, %._crit_edge168.split.us.us.us.i ], [ %i.bh, %.lr.ph.us.us.us186.i ] ; 2 uses
  %i.oa = mul i64 %i.mh, %indvar                  ; 2 uses
  %i.ob = add i64 %i.nc, %i.oa                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ob ; 2 uses
  %i.oc = add i64 %i.nd, %i.oa                    ; 2 uses
  %scevgep25 = getelementptr i8, ptr %i.r, i64 %i.oc ; 2 uses
  %i.od = mul i64 %i.mr, %indvar                  ; 4 uses
  %scevgep26 = getelementptr i8, ptr %i.nw, i64 %i.od ; 2 uses
  %scevgep27 = getelementptr i8, ptr %i.nx, i64 %i.od ; 2 uses
  %scevgep28 = getelementptr i8, ptr %i.ai, i64 %i.ob
  %scevgep29 = getelementptr i8, ptr %i.ai, i64 %i.oc
  %scevgep30 = getelementptr i8, ptr %i.ny, i64 %i.od
  %scevgep31 = getelementptr i8, ptr %i.nz, i64 %i.od
  %i.oe = mul i64 %.0153169.us178.us.us.i, %i.p   ; 3 uses
  %i.of = add i64 %i.oe, %i.ne                    ; 5 uses
  %i.og = getelementptr [4 x i8], ptr %i.aq, i64 %i.oe
  %i.oh = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.oi = insertelement <4 x ptr> %i.oh, ptr %scevgep30, i64 1
  %i.oj = insertelement <4 x ptr> %i.oi, ptr %scevgep26, i64 2 ; 2 uses
  %i.ok = shufflevector <4 x ptr> %i.oj, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ol = insertelement <4 x ptr> poison, ptr %scevgep29, i64 0
  %i.om = insertelement <4 x ptr> %i.ol, ptr %scevgep25, i64 1
  %i.on = insertelement <4 x ptr> %i.om, ptr %scevgep27, i64 3 ; 2 uses
  %i.oo = shufflevector <4 x ptr> %i.on, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.op = shufflevector <4 x ptr> %i.oj, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.oq = insertelement <4 x ptr> %i.op, ptr %scevgep28, i64 0
  %i.or = shufflevector <4 x ptr> %i.oq, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.os = shufflevector <4 x ptr> %i.on, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ot = insertelement <4 x ptr> %i.os, ptr %scevgep31, i64 1
  %i.ou = shufflevector <4 x ptr> %i.ot, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %bound0 = icmp ult ptr %scevgep, %scevgep27
  %bound1 = icmp ult ptr %scevgep26, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  %i.ov = icmp ult <4 x ptr> %i.ok, %i.oo
  %i.ow = icmp ult <4 x ptr> %i.or, %i.ou
  %i.ox = and <4 x i1> %i.ow, %i.ov
  %i.oy = bitcast <4 x i1> %i.ox to i4
  %i.oz = icmp ne i4 %i.oy, 0
  %op.rdx116 = or i1 %i.oz, %found.conflict
  br label %.lr.ph163.us.us.us.i

.lr.ph163.us.us.us.i:                             ; preds = %._crit_edge164.us.us.us.i, %.lr.ph167.us177.us.us.i
  %.0152165.us.us.us.i = phi i64 [ 0, %.lr.ph167.us177.us.us.i ], [ %i.rm, %._crit_edge164.us.us.us.i ] ; 4 uses
  %i.pa = add i64 %.0152165.us.us.us.i, %i.of     ; 3 uses
  %reass.add.us.us.us.i = add i64 %.0152165.us.us.us.i, %i.oe
  %reass.mul.us.us.us.i = mul i64 %reass.add.us.us.us.i, %i.p ; 4 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.pa
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !43 ; 4 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.pa
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !43 ; 4 uses
  %i.pf = getelementptr [4 x i8], ptr %i.og, i64 %.0152165.us.us.us.i
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !43 ; 4 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.pa
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !43 ; 4 uses
  %brmerge133 = select i1 %min.iters.check, i1 true, i1 %op.rdx116
  br i1 %brmerge133, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph163.us.us.us.i
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.pc, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert51.a = insertelement <8 x float> poison, float %i.pe, i64 0
  %broadcast.splat52.a = shufflevector <8 x float> %broadcast.splatinsert51.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <8 x float> poison, float %i.pg, i64 0
  %broadcast.splat54 = shufflevector <8 x float> %broadcast.splatinsert53, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert55 = insertelement <8 x float> poison, float %i.pi, i64 0
  %broadcast.splat56 = shufflevector <8 x float> %broadcast.splatinsert55, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.pj = add i64 %index, %i.of                   ; 2 uses
  %i.pk = add i64 %index, %reass.mul.us.us.us.i   ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.pj
  %wide.load = load <8 x float>, ptr %i.pl, align 4, !tbaa !43, !alias.scope !1737
  %i.pm = fmul <8 x float> %broadcast.splat, %wide.load ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.pk
  %wide.load57 = load <8 x float>, ptr %i.pn, align 4, !tbaa !43, !alias.scope !1738 ; 2 uses
  %i.po = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.pm, <8 x float> %broadcast.splat54, <8 x float> %wide.load57)
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.pj ; 2 uses
  %wide.load58 = load <8 x float>, ptr %i.pp, align 4, !tbaa !43, !alias.scope !1739, !noalias !1740
  %i.pq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.po, <8 x float> %broadcast.splat52.a, <8 x float> %wide.load58)
  store <8 x float> %i.pq, ptr %i.pp, align 4, !tbaa !43, !alias.scope !1739, !noalias !1740
  %i.pr = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load57, <8 x float> %broadcast.splat56, <8 x float> %i.pm)
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.pk
  store <8 x float> %i.pr, ptr %i.ps, align 4, !tbaa !43, !alias.scope !1741, !noalias !1742
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pt = icmp eq i64 %index.next, %n.vec
  br i1 %i.pt, label %middle.block, label %vector.body, !llvm.loop !1729

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge164.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph163.us.us.us.i, %middle.block
  %.0161.us.us.us.i.ph = phi i64 [ %n.vec, %middle.block ], [ %i.bl, %.lr.ph163.us.us.us.i ] ; 6 uses
  %i.pu = sub nsw i64 %i.p, %.0161.us.us.us.i.ph
  %.neg = add nsw i64 %.0161.us.us.us.i.ph, 1
  %xtraiter = and i64 %i.pu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.pv = add i64 %.0161.us.us.us.i.ph, %i.of     ; 2 uses
  %i.pw = add i64 %.0161.us.us.us.i.ph, %reass.mul.us.us.us.i ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.pv
  %i.py = load float, ptr %i.px, align 4, !tbaa !43
  %i.pz = fmul float %i.pc, %i.py                 ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.pw
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !43 ; 2 uses
  %i.qc = tail call float @llvm.fmuladd.f32(float %i.pz, float %i.pg, float %i.qb)
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.pv ; 2 uses
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !43
  %i.qf = tail call float @llvm.fmuladd.f32(float %i.qc, float %i.pe, float %i.qe)
  store float %i.qf, ptr %i.qd, align 4, !tbaa !43
  %i.qg = tail call float @llvm.fmuladd.f32(float %i.qb, float %i.pi, float %i.pz)
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.pw
  store float %i.qg, ptr %i.qh, align 4, !tbaa !43
  %i.qi = add nuw nsw i64 %.0161.us.us.us.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0161.us.us.us.i.unr = phi i64 [ %.0161.us.us.us.i.ph, %scalar.ph.preheader ], [ %i.qi, %scalar.ph.prol ]
  %i.qj = icmp eq i64 %i.p, %.neg
  br i1 %i.qj, label %._crit_edge164.us.us.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0161.us.us.us.i = phi i64 [ %i.rl, %scalar.ph ], [ %.0161.us.us.us.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.qk = add i64 %.0161.us.us.us.i, %i.of        ; 2 uses
  %i.ql = add i64 %.0161.us.us.us.i, %reass.mul.us.us.us.i ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.qk
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !43
  %i.qo = fmul float %i.pc, %i.qn                 ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.ql
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !43 ; 2 uses
  %i.qr = tail call float @llvm.fmuladd.f32(float %i.qo, float %i.pg, float %i.qq)
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qk ; 2 uses
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !43
  %i.qu = tail call float @llvm.fmuladd.f32(float %i.qr, float %i.pe, float %i.qt)
  store float %i.qu, ptr %i.qs, align 4, !tbaa !43
  %i.qv = tail call float @llvm.fmuladd.f32(float %i.qq, float %i.pi, float %i.qo)
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.ql
  store float %i.qv, ptr %i.qw, align 4, !tbaa !43
  %i.qx = add nuw nsw i64 %.0161.us.us.us.i, 1    ; 2 uses
  %i.qy = add i64 %i.qx, %i.of                    ; 2 uses
  %i.qz = add i64 %i.qx, %reass.mul.us.us.us.i    ; 2 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.qy
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !43
  %i.rc = fmul float %i.pc, %i.rb                 ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.qz
  %i.re = load float, ptr %i.rd, align 4, !tbaa !43 ; 2 uses
  %i.rf = tail call float @llvm.fmuladd.f32(float %i.rc, float %i.pg, float %i.re)
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qy ; 2 uses
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !43
  %i.ri = tail call float @llvm.fmuladd.f32(float %i.rf, float %i.pe, float %i.rh)
  store float %i.ri, ptr %i.rg, align 4, !tbaa !43
  %i.rj = tail call float @llvm.fmuladd.f32(float %i.re, float %i.pi, float %i.rc)
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.qz
  store float %i.rj, ptr %i.rk, align 4, !tbaa !43
end_hunk_2
