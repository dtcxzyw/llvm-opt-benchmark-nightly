Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 223
loop-unroll.NumUnrolled: 270
begin_hunk_0_@ggml_compute_forward_scale:bb.a
  %wide.load28 = load <8 x float>, ptr %i.hu, align 4, !tbaa !43
  %wide.load29 = load <8 x float>, ptr %i.hv, align 4, !tbaa !43
  %wide.load30 = load <8 x float>, ptr %i.hw, align 4, !tbaa !43
  %i.hx = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load, <8 x float> %broadcast.splat, <8 x float> %broadcast.splat27)
  %i.hy = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load28, <8 x float> %broadcast.splat, <8 x float> %broadcast.splat27)
  %i.hz = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load29, <8 x float> %broadcast.splat, <8 x float> %broadcast.splat27)
  %i.ia = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load30, <8 x float> %broadcast.splat, <8 x float> %broadcast.splat27)
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.hs ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  store <8 x float> %i.hx, ptr %i.ib, align 4, !tbaa !43
  store <8 x float> %i.hy, ptr %i.ic, align 4, !tbaa !43
  store <8 x float> %i.hz, ptr %i.id, align 4, !tbaa !43
  store <8 x float> %i.ia, ptr %i.ie, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.if = icmp eq i64 %index.next, %n.vec
  br i1 %i.if, label %middle.block, label %vector.body, !llvm.loop !762

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL17ggml_vec_mad1_f32iPfPKfff.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i62.i.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %i.ig = add i64 %index36, %i.al                 ; 2 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.ig
  %wide.load37 = load <8 x float>, ptr %i.ih, align 4, !tbaa !43
  %i.ii = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load37, <8 x float> %broadcast.splat33, <8 x float> %broadcast.splat35)
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.ig
  store <8 x float> %i.ii, ptr %i.ij, align 4, !tbaa !43
  %index.next38 = add nuw i64 %index36, 8         ; 2 uses
  %i.ik = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.ik, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !763

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n39, label %_ZL17ggml_vec_mad1_f32iPfPKfff.exit.loopexit.i, label %.lr.ph.i62.i.preheader

.lr.ph.i62.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv38.i.i.ph = phi i64 [ %i.al, %iter.check ], [ %i.fn, %vec.epilog.iter.check ], [ %i.fp, %vec.epilog.middle.block ]
  br label %.lr.ph.i62.i

.lr.ph.i62.i:                                     ; preds = %.lr.ph.i62.i.preheader, %.lr.ph.i62.i
  %indvars.iv38.i.i = phi i64 [ %indvars.iv.next39.i.i, %.lr.ph.i62.i ], [ %indvars.iv38.i.i.ph, %.lr.ph.i62.i.preheader ] ; 3 uses
  %i.il = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv38.i.i
  %i.im = load float, ptr %i.il, align 4, !tbaa !43
  %i.in = tail call float @llvm.fmuladd.f32(float %i.im, float %.0.copyload35.i, float %.0.copyload.i)
  %i.io = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %indvars.iv38.i.i
  store float %i.in, ptr %i.io, align 4, !tbaa !43
  %indvars.iv.next39.i.i = add nsw i64 %indvars.iv38.i.i, 1 ; 2 uses
  %i.ip = icmp slt i64 %indvars.iv.next39.i.i, %i.am
  br i1 %i.ip, label %.lr.ph.i62.i, label %_ZL17ggml_vec_mad1_f32iPfPKfff.exit.loopexit.i, !llvm.loop !764

_ZL17ggml_vec_mad1_f32iPfPKfff.exit.loopexit.i:   ; preds = %.lr.ph.i62.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL30ggml_compute_forward_scale_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %iter.check, !llvm.loop !754

_ZL30ggml_compute_forward_scale_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %_ZL17ggml_vec_mad1_f32iPfPKfff.exit.loopexit.i, %_ZL17ggml_vec_mad1_f32iPfPKfff.exit.loopexit.us.i, %.preheader32.preheader.i.us.us.i.prol.loopexit, %.preheader.i59.loopexit.us.us.i.1, %_ZL18ggml_vec_scale_f32iPff.exit.i, %.preheader67.i, %.lr.ph.split.i, %.preheader.i
  ret void

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4762, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_set(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 9 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  switch i32 %i.c, label %bb.ad [
    i32 0, label %bb.b
    i32 26, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 7 uses
  %i.f = tail call zeroext i1 @ggml_are_same_shape(ptr noundef nonnull %i.b, ptr noundef nonnull %1)
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4776, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.27) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %1)
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %i.b)
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4777, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !51
  %i.k = sext <2 x i32> %i.j to <2 x i64>         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.p = load i32, ptr %i.o, align 8, !tbaa !51
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %0, align 8, !tbaa !35
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.z = tail call i64 @ggml_nbytes(ptr noundef nonnull %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.y, i64 %i.z, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57
  tail call void @ggml_barrier(ptr noundef %i.ab)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.ac = load i32, ptr %0, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !36 ; 2 uses
  %i.af = tail call i64 @ggml_nrows(ptr noundef %i.e)
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.an = load i64, ptr %i.am, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !31
  %i.aq = load i64, ptr %i.ah, align 8, !tbaa !31 ; 6 uses
  %i.ar = load <4 x i64>, ptr %i.ah, align 8, !tbaa !31 ; 3 uses
  %i.as = trunc i64 %i.aq to i32
  %i.at = tail call i64 @ggml_element_size(ptr noundef nonnull %i.b)
  %i.au = tail call <4 x i64> @llvm.usub.sat.v4i64(<4 x i64> %i.ar, <4 x i64> splat (i64 1))
  %i.av = shl <4 x i64> %i.au, splat (i64 32)
  %i.aw = ashr exact <4 x i64> %i.av, splat (i64 32)
  %i.ax = shufflevector <2 x i64> %i.k, <2 x i64> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ay = insertelement <4 x i64> %i.ax, i64 %i.at, i64 0
  %i.az = insertelement <4 x i64> %i.ay, i64 %i.n, i64 3
  %i.ba = mul <4 x i64> %i.az, %i.aw
  %i.bb = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ba)
  %op.rdx = add i64 %i.bb, %i.q
  %i.bc = tail call i64 @ggml_nbytes(ptr noundef nonnull %1)
  %.not103.i = icmp ugt i64 %op.rdx, %i.bc
  br i1 %.not103.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4816, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.79) #17
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bd = icmp eq i64 %i.aj, 4
  br i1 %i.bd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4818, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13) #17
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.be = add i32 %i.ae, -1
  %i.bf = add i32 %i.be, %i.ag
  %i.bg = sdiv i32 %i.bf, %i.ae                   ; 2 uses
  %i.bh = mul nsw i32 %i.bg, %i.ac                ; 3 uses
  %i.bi = add nsw i32 %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.ag) ; 2 uses
  %i.bk = icmp slt i32 %i.bh, %i.bj
  br i1 %i.bk, label %.lr.ph.i, label %_ZL28ggml_compute_forward_set_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.i:                                         ; preds = %bb.o
  %i.bl = extractelement <4 x i64> %i.ar, i64 1   ; 4 uses
  %i.bm = extractelement <4 x i64> %i.ar, i64 2
  %i.bn = mul i64 %i.bm, %i.bl                    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !37 ; 2 uses
  %2 = ptrtoaddr ptr %i.bp to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !37 ; 2 uses
  %i.bs = ptrtoaddr ptr %i.br to i64
  %i.bt = icmp sgt i32 %i.as, 0
  %wide.trip.count.i.i = and i64 %i.aq, 2147483647 ; 6 uses
  br i1 %i.bt, label %.lr.ph.preheader.i.preheader.i, label %_ZL28ggml_compute_forward_set_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.preheader.i.preheader.i:                   ; preds = %.lr.ph.i
  %i.bu = sext i32 %i.bh to i64
  %wide.trip.count.i = sext i32 %i.bj to i64
  %i.bv = extractelement <2 x i64> %i.k, i64 0
  %i.bw = extractelement <2 x i64> %i.k, i64 1
  %min.iters.check38 = icmp samesign ult i64 %wide.trip.count.i.i, 4
  %min.iters.check42 = icmp samesign ult i64 %wide.trip.count.i.i, 32
  %i.bx = and i64 %i.aq, 28
  %n.vec44 = and i64 %i.aq, 2147483616            ; 4 uses
  %cmp.n53 = icmp eq i64 %wide.trip.count.i.i, %n.vec44
  %min.epilog.iters.check57 = icmp eq i64 %i.bx, 0
  %n.vec60 = and i64 %i.aq, 2147483644            ; 3 uses
  %cmp.n66 = icmp eq i64 %wide.trip.count.i.i, %n.vec60
  br label %iter.check54

iter.check54:                                     ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.i, %.lr.ph.preheader.i.preheader.i
  %indvars.iv.i = phi i64 [ %i.bu, %.lr.ph.preheader.i.preheader.i ], [ %indvars.iv.next.i, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.i ] ; 3 uses
  %i.by = sdiv i64 %indvars.iv.i, %i.bn
  %i.bz = shl i64 %i.by, 32
  %i.ca = ashr exact i64 %i.bz, 32                ; 3 uses
  %i.cb = mul i64 %i.ca, %i.bn
  %i.cc = sub nsw i64 %indvars.iv.i, %i.cb        ; 2 uses
  %i.cd = sdiv i64 %i.cc, %i.bl                   ; 2 uses
  %i.ce = shl i64 %i.cd, 32
  %i.cf = ashr exact i64 %i.ce, 32                ; 2 uses
  %i.cg = mul i64 %i.cd, %i.bl                    ; 0 uses
  %.recomposed = srem i64 %i.cc, %i.bl
  %i.ch = mul nsw i64 %i.ca, %i.n                 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ch
  %i.cj = mul nsw i64 %i.cf, %i.bw                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  %i.cl = shl i64 %.recomposed, 32
  %i.cm = ashr exact i64 %i.cl, 32                ; 2 uses
  %i.cn = mul nsw i64 %i.cm, %i.bv                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.q ; 11 uses
  %i.cq = mul i64 %i.ca, %i.ap                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cq
  %i.cs = mul i64 %i.cf, %i.an                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.cu = mul i64 %i.cm, %i.al                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu ; 11 uses
  br i1 %min.iters.check38, label %.lr.ph.i.i.preheader, label %vector.memcheck39

vector.memcheck39:                                ; preds = %iter.check54
  %i.cw = add nuw i64 %i.cu, %i.bs
  %i.cx = add nuw i64 %i.cw, %i.cq
  %i.cy = add nuw i64 %i.cx, %i.cs
  %i.cz = add i64 %i.cn, %2
  %i.da = add i64 %i.cz, %i.ch
  %3 = add i64 %i.da, %i.cj
  %i.db = add i64 %3, %i.q
  %4 = sub i64 %i.cy, %i.db
  %diff.check40 = icmp ugt i64 %4, -128
  br i1 %diff.check40, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check41

vector.main.loop.iter.check41:                    ; preds = %vector.memcheck39
  br i1 %min.iters.check42, label %vec.epilog.ph58, label %vector.body45

vector.body45:                                    ; preds = %vector.main.loop.iter.check41, %vector.body45
  %index46 = phi i64 [ %index.next51, %vector.body45 ], [ 0, %vector.main.loop.iter.check41 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index46 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %wide.load47 = load <8 x float>, ptr %i.dc, align 4, !tbaa !43
  %wide.load48 = load <8 x float>, ptr %i.dd, align 4, !tbaa !43
  %wide.load49 = load <8 x float>, ptr %i.de, align 4, !tbaa !43
  %wide.load50 = load <8 x float>, ptr %i.df, align 4, !tbaa !43
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %index46 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <8 x float> %wide.load47, ptr %i.dg, align 4, !tbaa !43
  store <8 x float> %wide.load48, ptr %i.dh, align 4, !tbaa !43
  store <8 x float> %wide.load49, ptr %i.di, align 4, !tbaa !43
  store <8 x float> %wide.load50, ptr %i.dj, align 4, !tbaa !43
  %index.next51 = add nuw i64 %index46, 32        ; 2 uses
  %i.dk = icmp eq i64 %index.next51, %n.vec44
  br i1 %i.dk, label %middle.block52, label %vector.body45, !llvm.loop !765

middle.block52:                                   ; preds = %vector.body45
  br i1 %cmp.n53, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.i, label %vec.epilog.iter.check55

vec.epilog.iter.check55:                          ; preds = %middle.block52
  br i1 %min.epilog.iters.check57, label %.lr.ph.i.i.preheader, label %vec.epilog.ph58, !prof !52

vec.epilog.ph58:                                  ; preds = %vector.main.loop.iter.check41, %vec.epilog.iter.check55
  %vec.epilog.resume.val59 = phi i64 [ %n.vec44, %vec.epilog.iter.check55 ], [ 0, %vector.main.loop.iter.check41 ]
  br label %vec.epilog.vector.body61

vec.epilog.vector.body61:                         ; preds = %vec.epilog.vector.body61, %vec.epilog.ph58
  %index62 = phi i64 [ %vec.epilog.resume.val59, %vec.epilog.ph58 ], [ %index.next64, %vec.epilog.vector.body61 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index62
  %wide.load63 = load <4 x float>, ptr %i.dl, align 4, !tbaa !43
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %index62
  store <4 x float> %wide.load63, ptr %i.dm, align 4, !tbaa !43
  %index.next64 = add nuw i64 %index62, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next64, %n.vec60
  br i1 %i.dn, label %vec.epilog.middle.block65, label %vec.epilog.vector.body61, !llvm.loop !766

vec.epilog.middle.block65:                        ; preds = %vec.epilog.vector.body61
  br i1 %cmp.n66, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check54, %vector.memcheck39, %vec.epilog.iter.check55, %vec.epilog.middle.block65
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check54 ], [ 0, %vector.memcheck39 ], [ %n.vec44, %vec.epilog.iter.check55 ], [ %n.vec60, %vec.epilog.middle.block65 ] ; 4 uses
  %i.do = sub i64 %i.aq, %indvars.iv.i.i.ph
  %xtraiter70 = and i64 %i.do, 7                  ; 2 uses
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter72 = phi i64 [ %prol.iter72.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i.prol
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !43
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.i.i.prol
  store float %i.dq, ptr %i.dr, align 4, !tbaa !43
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter72.next = add i64 %prol.iter72, 1     ; 2 uses
  %prol.iter72.cmp.not = icmp eq i64 %prol.iter72.next, %xtraiter70
  br i1 %prol.iter72.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !767

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ds = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.dt = icmp ugt i64 %i.ds, -8
  br i1 %i.dt, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i
  %i.dv = load float, ptr %i.du, align 4, !tbaa !43
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.i.i
  store float %i.dv, ptr %i.dw, align 4, !tbaa !43
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !43
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next.i.i
  store float %i.dy, ptr %i.dz, align 4, !tbaa !43
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i.1
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !43
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next.i.i.1
  store float %i.eb, ptr %i.ec, align 4, !tbaa !43
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i.2
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !43
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next.i.i.2
  store float %i.ee, ptr %i.ef, align 4, !tbaa !43
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i.3
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !43
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next.i.i.3
  store float %i.eh, ptr %i.ei, align 4, !tbaa !43
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i.4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !43
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next.i.i.4
  store float %i.ek, ptr %i.el, align 4, !tbaa !43
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i.5
  %i.en = load float, ptr %i.em, align 4, !tbaa !43
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next.i.i.5
  store float %i.en, ptr %i.eo, align 4, !tbaa !43
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i.6
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !43
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next.i.i.6
  store float %i.eq, ptr %i.er, align 4, !tbaa !43
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.7, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !768

_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.i:      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block65, %middle.block52
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL28ggml_compute_forward_set_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %iter.check54, !llvm.loop !769

bb.p:                                             ; preds = %bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !24 ; 7 uses
  %i.eu = tail call zeroext i1 @ggml_are_same_shape(ptr noundef nonnull %i.b, ptr noundef nonnull %1)
  br i1 %i.eu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4847, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.27) #17
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ev = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %1)
  br i1 %i.ev, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ew = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %i.b)
  br i1 %i.ew, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4848, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #17
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ey = load <2 x i32>, ptr %i.ex, align 4, !tbaa !51
  %i.ez = sext <2 x i32> %i.ey to <2 x i64>       ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !51
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !51
  %i.ff = sext i32 %i.fe to i64                   ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !51
  %.not.i6 = icmp eq i32 %i.fh, 0
  br i1 %.not.i6, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.fi = load i32, ptr %0, align 8, !tbaa !35
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !37
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !37
  %i.fo = tail call i64 @ggml_nbytes(ptr noundef nonnull %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fl, ptr align 1 %i.fn, i64 %i.fo, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !57
  tail call void @ggml_barrier(ptr noundef %i.fq)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.fr = load i32, ptr %0, align 8, !tbaa !35
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !36 ; 2 uses
  %i.fu = tail call i64 @ggml_nrows(ptr noundef %i.et)
  %i.fv = trunc i64 %i.fu to i32                  ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !31
  %i.fz = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !31
  %i.gb = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !31
  %i.gd = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !31
  %i.gf = load i64, ptr %i.fw, align 8, !tbaa !31 ; 6 uses
  %i.gg = load <4 x i64>, ptr %i.fw, align 8, !tbaa !31 ; 3 uses
  %i.gh = trunc i64 %i.gf to i32
  %i.gi = tail call i64 @ggml_element_size(ptr noundef nonnull %i.b)
  %i.gj = tail call <4 x i64> @llvm.usub.sat.v4i64(<4 x i64> %i.gg, <4 x i64> splat (i64 1))
  %i.gk = shl <4 x i64> %i.gj, splat (i64 32)
  %i.gl = ashr exact <4 x i64> %i.gk, splat (i64 32)
  %i.gm = shufflevector <2 x i64> %i.ez, <2 x i64> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gn = insertelement <4 x i64> %i.gm, i64 %i.gi, i64 0
  %i.go = insertelement <4 x i64> %i.gn, i64 %i.fc, i64 3
  %i.gp = mul <4 x i64> %i.go, %i.gl
  %i.gq = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.gp)
  %op.rdx68 = add i64 %i.gq, %i.ff
  %i.gr = tail call i64 @ggml_nbytes(ptr noundef nonnull %1)
  %.not103.i7 = icmp ugt i64 %op.rdx68, %i.gr
  br i1 %.not103.i7, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4887, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.79) #17
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.gs = icmp eq i64 %i.fy, 4
  br i1 %i.gs, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4889, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.80) #17
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.gt = add i32 %i.ft, -1
  %i.gu = add i32 %i.gt, %i.fv
  %i.gv = sdiv i32 %i.gu, %i.ft                   ; 2 uses
  %i.gw = mul nsw i32 %i.gv, %i.fr                ; 3 uses
  %i.gx = add nsw i32 %i.gw, %i.gv
  %i.gy = tail call i32 @llvm.smin.i32(i32 %i.gx, i32 %i.fv) ; 2 uses
  %i.gz = icmp slt i32 %i.gw, %i.gy
  br i1 %i.gz, label %.lr.ph.i8, label %_ZL28ggml_compute_forward_set_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.i8:                                        ; preds = %bb.ac
  %i.ha = extractelement <4 x i64> %i.gg, i64 1   ; 4 uses
  %i.hb = extractelement <4 x i64> %i.gg, i64 2
  %i.hc = mul i64 %i.hb, %i.ha                    ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !37 ; 2 uses
  %5 = ptrtoaddr ptr %i.he to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.et, i64 248
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !37 ; 2 uses
  %i.hh = ptrtoaddr ptr %i.hg to i64
  %i.hi = icmp sgt i32 %i.gh, 0
  %wide.trip.count.i.i9 = and i64 %i.gf, 2147483647 ; 6 uses
  br i1 %i.hi, label %.lr.ph.preheader.i.preheader.i10, label %_ZL28ggml_compute_forward_set_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.preheader.i.preheader.i10:                 ; preds = %.lr.ph.i8
  %i.hj = sext i32 %i.gw to i64
  %wide.trip.count.i11 = sext i32 %i.gy to i64
  %i.hk = extractelement <2 x i64> %i.ez, i64 0
  %i.hl = extractelement <2 x i64> %i.ez, i64 1
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i.i9, 4
  %min.iters.check27 = icmp samesign ult i64 %wide.trip.count.i.i9, 32
  %i.hm = and i64 %i.gf, 28
  %n.vec = and i64 %i.gf, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i.i9, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.hm, 0
  %n.vec31 = and i64 %i.gf, 2147483644            ; 3 uses
  %cmp.n35 = icmp eq i64 %wide.trip.count.i.i9, %n.vec31
  br label %iter.check

iter.check:                                       ; preds = %_ZL16ggml_vec_cpy_i32iPiPKi.exit.loopexit.i, %.lr.ph.preheader.i.preheader.i10
  %indvars.iv.i13 = phi i64 [ %i.hj, %.lr.ph.preheader.i.preheader.i10 ], [ %indvars.iv.next.i18, %_ZL16ggml_vec_cpy_i32iPiPKi.exit.loopexit.i ] ; 3 uses
  %i.hn = sdiv i64 %indvars.iv.i13, %i.hc
  %i.ho = shl i64 %i.hn, 32
  %i.hp = ashr exact i64 %i.ho, 32                ; 3 uses
  %i.hq = mul i64 %i.hp, %i.hc
  %i.hr = sub nsw i64 %indvars.iv.i13, %i.hq      ; 2 uses
  %i.hs = sdiv i64 %i.hr, %i.ha                   ; 2 uses
  %i.ht = shl i64 %i.hs, 32
  %i.hu = ashr exact i64 %i.ht, 32                ; 2 uses
  %i.hv = mul i64 %i.hs, %i.ha                    ; 0 uses
  %.recomposed73 = srem i64 %i.hr, %i.ha
  %i.hw = mul nsw i64 %i.hp, %i.fc                ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hw
  %i.hy = mul nsw i64 %i.hu, %i.hl                ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hy
  %i.ia = shl i64 %.recomposed73, 32
  %i.ib = ashr exact i64 %i.ia, 32                ; 2 uses
  %i.ic = mul nsw i64 %i.ib, %i.hk                ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ff ; 11 uses
  %i.if = mul i64 %i.hp, %i.ge                    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.if
  %i.ih = mul i64 %i.hu, %i.gc                    ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ih
  %i.ij = mul i64 %i.ib, %i.ga                    ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ij ; 11 uses
  br i1 %min.iters.check, label %.lr.ph.i.i14.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.il = add nuw i64 %i.ij, %i.hh
  %i.im = add nuw i64 %i.il, %i.if
  %i.in = add nuw i64 %i.im, %i.ih
  %i.io = add i64 %i.ic, %5
  %i.ip = add i64 %i.io, %i.hw
  %6 = add i64 %i.ip, %i.hy
  %i.iq = add i64 %6, %i.ff
  %7 = sub i64 %i.in, %i.iq
  %diff.check = icmp ugt i64 %7, -128
  br i1 %diff.check, label %.lr.ph.i.i14.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %index ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 96
  %wide.load = load <8 x i32>, ptr %i.ir, align 4, !tbaa !51
  %wide.load28 = load <8 x i32>, ptr %i.is, align 4, !tbaa !51
  %wide.load29 = load <8 x i32>, ptr %i.it, align 4, !tbaa !51
  %wide.load30 = load <8 x i32>, ptr %i.iu, align 4, !tbaa !51
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %index ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 96
  store <8 x i32> %wide.load, ptr %i.iv, align 4, !tbaa !51
  store <8 x i32> %wide.load28, ptr %i.iw, align 4, !tbaa !51
  store <8 x i32> %wide.load29, ptr %i.ix, align 4, !tbaa !51
  store <8 x i32> %wide.load30, ptr %i.iy, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !770

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL16ggml_vec_cpy_i32iPiPKi.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i14.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %index32
  %wide.load33 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !51
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %index32
  store <4 x i32> %wide.load33, ptr %i.jb, align 4, !tbaa !51
  %index.next34 = add nuw i64 %index32, 4         ; 2 uses
  %i.jc = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.jc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !771

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n35, label %_ZL16ggml_vec_cpy_i32iPiPKi.exit.loopexit.i, label %.lr.ph.i.i14.preheader

.lr.ph.i.i14.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i15.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ] ; 4 uses
  %i.jd = sub i64 %i.gf, %indvars.iv.i.i15.ph
  %xtraiter = and i64 %i.jd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i14.prol.loopexit, label %.lr.ph.i.i14.prol

.lr.ph.i.i14.prol:                                ; preds = %.lr.ph.i.i14.preheader, %.lr.ph.i.i14.prol
  %indvars.iv.i.i15.prol = phi i64 [ %indvars.iv.next.i.i16.prol, %.lr.ph.i.i14.prol ], [ %indvars.iv.i.i15.ph, %.lr.ph.i.i14.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i14.prol ], [ 0, %.lr.ph.i.i14.preheader ]
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.i.i15.prol
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !51
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.i.i15.prol
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !51
  %indvars.iv.next.i.i16.prol = add nuw nsw i64 %indvars.iv.i.i15.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i14.prol.loopexit, label %.lr.ph.i.i14.prol, !llvm.loop !772

.lr.ph.i.i14.prol.loopexit:                       ; preds = %.lr.ph.i.i14.prol, %.lr.ph.i.i14.preheader
  %indvars.iv.i.i15.unr = phi i64 [ %indvars.iv.i.i15.ph, %.lr.ph.i.i14.preheader ], [ %indvars.iv.next.i.i16.prol, %.lr.ph.i.i14.prol ]
  %i.jh = sub nsw i64 %indvars.iv.i.i15.ph, %wide.trip.count.i.i9
  %i.ji = icmp ugt i64 %i.jh, -8
  br i1 %i.ji, label %_ZL16ggml_vec_cpy_i32iPiPKi.exit.loopexit.i, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i.i14.prol.loopexit, %.lr.ph.i.i14
  %indvars.iv.i.i15 = phi i64 [ %indvars.iv.next.i.i16.7, %.lr.ph.i.i14 ], [ %indvars.iv.i.i15.unr, %.lr.ph.i.i14.prol.loopexit ] ; 10 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.i.i15
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !51
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.i.i15
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !51
  %indvars.iv.next.i.i16 = add nuw nsw i64 %indvars.iv.i.i15, 1 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.next.i.i16
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !51
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i.i16
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !51
  %indvars.iv.next.i.i16.1 = add nuw nsw i64 %indvars.iv.i.i15, 2 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.next.i.i16.1
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !51
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i.i16.1
  store i32 %i.jq, ptr %i.jr, align 4, !tbaa !51
  %indvars.iv.next.i.i16.2 = add nuw nsw i64 %indvars.iv.i.i15, 3 ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.next.i.i16.2
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !51
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i.i16.2
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !51
  %indvars.iv.next.i.i16.3 = add nuw nsw i64 %indvars.iv.i.i15, 4 ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.next.i.i16.3
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !51
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i.i16.3
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !51
  %indvars.iv.next.i.i16.4 = add nuw nsw i64 %indvars.iv.i.i15, 5 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.next.i.i16.4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !51
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i.i16.4
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !51
  %indvars.iv.next.i.i16.5 = add nuw nsw i64 %indvars.iv.i.i15, 6 ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.next.i.i16.5
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !51
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i.i16.5
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !51
  %indvars.iv.next.i.i16.6 = add nuw nsw i64 %indvars.iv.i.i15, 7 ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.next.i.i16.6
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !51
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i.i16.6
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !51
  %indvars.iv.next.i.i16.7 = add nuw nsw i64 %indvars.iv.i.i15, 8 ; 2 uses
  %exitcond.not.i.i17.7 = icmp eq i64 %indvars.iv.next.i.i16.7, %wide.trip.count.i.i9
  br i1 %exitcond.not.i.i17.7, label %_ZL16ggml_vec_cpy_i32iPiPKi.exit.loopexit.i, label %.lr.ph.i.i14, !llvm.loop !773

_ZL16ggml_vec_cpy_i32iPiPKi.exit.loopexit.i:      ; preds = %.lr.ph.i.i14.prol.loopexit, %.lr.ph.i.i14, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i18 = add nsw i64 %indvars.iv.i13, 1 ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %indvars.iv.next.i18, %wide.trip.count.i11
  br i1 %exitcond.not.i19, label %_ZL28ggml_compute_forward_set_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %iter.check, !llvm.loop !774

bb.ad:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4956, ptr noundef nonnull @.str.2) #17
  unreachable

_ZL28ggml_compute_forward_set_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %_ZL16ggml_vec_cpy_i32iPiPKi.exit.loopexit.i, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.i, %.lr.ph.i8, %bb.ac, %.lr.ph.i, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_cpy(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @ggml_compute_forward_dup(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_cont(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @ggml_compute_forward_dup(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_get_rows(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 26 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  switch i32 %i.c, label %bb.o [
    i32 41, label %.thread134.i
    i32 42, label %.thread134.i
    i32 2, label %.thread134.i
    i32 3, label %.thread134.i
    i32 6, label %.thread134.i
    i32 7, label %.thread134.i
    i32 8, label %.thread134.i
    i32 9, label %.thread134.i
    i32 39, label %.thread134.i
    i32 40, label %.thread134.i
    i32 10, label %.thread134.i
    i32 11, label %.thread134.i
    i32 12, label %.thread134.i
    i32 13, label %.thread134.i
    i32 14, label %.thread134.i
    i32 34, label %.thread134.i
    i32 35, label %.thread134.i
    i32 16, label %.thread134.i
    i32 17, label %.thread134.i
    i32 18, label %.thread134.i
    i32 19, label %.thread134.i
    i32 29, label %.thread134.i
    i32 20, label %.thread134.i
    i32 23, label %.thread134.i
    i32 21, label %.thread134.i
    i32 22, label %.thread134.i
    i32 1, label %.thread131.i
    i32 30, label %.thread131.i15
    i32 0, label %.thread131.i23
    i32 26, label %.thread131.i23
  ]

.thread134.i:                                     ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31
  %.not130.i = icmp eq ptr %i.e, null
end_hunk_0
begin_hunk_1_@ggml_compute_forward_get_rows_back:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 5 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = tail call i64 @ggml_nelements(ptr noundef %i.e) ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  %sext.i = shl i64 %i.k, 32
  %i.q = ashr exact i64 %sext.i, 32
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5348, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.86) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %bb.g
  %i.v = icmp sgt i32 %i.n, 0
  br i1 %i.v, label %.lr.ph3.i, label %_ZL42ggml_compute_forward_get_rows_back_f32_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph3.i:                                        ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.y = icmp sgt i32 %i.l, 0
  br i1 %i.y, label %.lr.ph3.split.i, label %_ZL42ggml_compute_forward_get_rows_back_f32_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph3.split.i:                                  ; preds = %.lr.ph3.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !31
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.af = load i64, ptr %i.z, align 8, !tbaa !31
  %wide.trip.count8.i = and i64 %i.m, 2147483647
  %wide.trip.count.i = and i64 %i.k, 2147483647
  %i.ag = add nsw i64 %wide.trip.count.i, -1
  %xtraiter94 = and i64 %i.k, 3                   ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 3
  %unroll_iter98 = and i64 %i.k, 2147483644
  %lcmp.mod96.not = icmp eq i64 %xtraiter94, 0
  %lcmp.mod97 = icmp ne i64 %xtraiter94, 0
  br label %.lr.ph.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5349, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.87) #17
  unreachable

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph3.split.i
  %indvars.iv5.i = phi i64 [ 0, %.lr.ph3.split.i ], [ %indvars.iv.next6.i, %._crit_edge.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv5.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51
  %i.ak = mul i64 %indvars.iv5.i, %i.ad
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ak ; 5 uses
  %i.am = sext i32 %i.aj to i64
  %i.an = mul i64 %i.af, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.an ; 5 uses
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod96.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod97)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.i ] ; 3 uses
  %epil.iter95 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter95.next, %bb.i ]
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.i.epil
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !41
  %i.ar = zext i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !43
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.epil ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !43
  %i.aw = fadd float %i.at, %i.av
  store float %i.aw, ptr %i.au, align 4, !tbaa !43
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter95.next = add i64 %epil.iter95, 1     ; 2 uses
  %epil.iter95.cmp.not = icmp eq i64 %epil.iter95.next, %xtraiter94
  br i1 %epil.iter95.cmp.not, label %._crit_edge.i, label %bb.i, !llvm.loop !800

._crit_edge.i:                                    ; preds = %bb.i, %._crit_edge.i.unr-lcssa
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1 ; 2 uses
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next6.i, %wide.trip.count8.i
  br i1 %exitcond9.not.i, label %_ZL42ggml_compute_forward_get_rows_back_f32_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph.i, !llvm.loop !801

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 6 uses
  %niter99 = phi i64 [ %niter99.next.3, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !41
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !43
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !43
  %i.be = fadd float %i.bb, %i.bd
  store float %i.be, ptr %i.bc, align 4, !tbaa !43
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.next.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !41
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !43
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next.i ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !43
  %i.bm = fadd float %i.bj, %i.bl
  store float %i.bm, ptr %i.bk, align 4, !tbaa !43
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.next.i.1
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !41
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !43
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !43
  %i.bu = fadd float %i.br, %i.bt
  store float %i.bu, ptr %i.bs, align 4, !tbaa !43
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.next.i.2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !41
  %i.bx = zext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !43
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !43
  %i.cc = fadd float %i.bz, %i.cb
  store float %i.cc, ptr %i.ca, align 4, !tbaa !43
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter99.next.3 = add nuw i64 %niter99, 4       ; 2 uses
  %niter99.ncmp.3 = icmp eq i64 %niter99.next.3, %unroll_iter98
  br i1 %niter99.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !802

bb.j:                                             ; preds = %bb.a
  %.val6 = load i32, ptr %0, align 8, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !24 ; 2 uses
  %.not.i7 = icmp eq i32 %.val6, 0
  br i1 %.not.i7, label %bb.k, label %_ZL42ggml_compute_forward_get_rows_back_f32_f16PK19ggml_compute_paramsP11ggml_tensor.exit

bb.k:                                             ; preds = %bb.j
  %i.cf = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %1)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5372, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.78) #17
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !37
  %i.ci = tail call i64 @ggml_nbytes(ptr noundef nonnull %1)
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ch, i8 0, i64 %i.ci, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !31 ; 10 uses
  %i.cl = trunc i64 %i.ck to i32                  ; 3 uses
  %i.cm = tail call i64 @ggml_nelements(ptr noundef %i.ce) ; 3 uses
  %i.cn = trunc i64 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !31
  %sext.i8 = shl i64 %i.ck, 32
  %i.cq = ashr exact i64 %sext.i8, 32
  %i.cr = icmp eq i64 %i.cp, %i.cq
  br i1 %i.cr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5381, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.86) #17
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !31
  %i.cu = icmp eq i64 %i.ct, 4
  br i1 %i.cu, label %.preheader.i9, label %bb.p

.preheader.i9:                                    ; preds = %bb.o
  %i.cv = icmp sgt i32 %i.cn, 0
  br i1 %i.cv, label %.lr.ph.i10, label %_ZL42ggml_compute_forward_get_rows_back_f32_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.i10:                                       ; preds = %.preheader.i9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 248 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.da = icmp sgt i32 %i.cl, 7
  %wide.trip.count.i.i = and i64 %i.ck, 4294967295 ; 11 uses
  br i1 %i.da, label %.lr.ph.preheader.i.us.preheader.i, label %.lr.ph.split.i

.lr.ph.preheader.i.us.preheader.i:                ; preds = %.lr.ph.i10
  %i.db = and i64 %i.ck, 2147483647
  %wide.trip.count7.i = and i64 %i.cm, 2147483647
  %umax = tail call i64 @llvm.umax.i64(i64 %i.db, i64 15)
  %i.dc = add nsw i64 %umax, -8                   ; 4 uses
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %i.de = and i64 %i.dd, 9223372036854775776      ; 2 uses
  %2 = shl nuw nsw i64 %wide.trip.count.i.i, 2    ; 2 uses
  %i.df = add nsw i64 %wide.trip.count.i.i, -8
  %i.dg = and i64 %i.dc, -8
  %i.dh = sub nsw i64 %i.df, %i.dg                ; 6 uses
  %i.di = lshr i64 %i.dc, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %xtraiter86 = and i64 %i.dj, 3                  ; 3 uses
  %i.dk = icmp ult i64 %i.dc, 24
  %unroll_iter = and i64 %i.dj, 4611686018427387900
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  %lcmp.mod90 = icmp ne i64 %xtraiter86, 0
  %min.iters.check47 = icmp ult i64 %i.dh, 8
  %invariant.op = sub i64 %2, %i.de
  %invariant.op101 = sub i64 %2, %i.de
  %min.iters.check53 = icmp ult i64 %i.dh, 32
  %i.dl = and i64 %i.dh, 24
  %n.vec55 = and i64 %i.dh, -32                   ; 4 uses
  %cmp.n68 = icmp eq i64 %i.dh, %n.vec55
  %min.epilog.iters.check72 = icmp eq i64 %i.dl, 0
  %i.dm = and i64 %i.ck, 7                        ; 2 uses
  %n.vec75 = sub nsw i64 %i.dh, %i.dm             ; 2 uses
  %cmp.n82 = icmp eq i64 %i.dm, 0
  br label %.lr.ph.preheader.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i, %.lr.ph.preheader.i.us.preheader.i
  %indvars.iv4.i = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader.i ], [ %indvars.iv.next5.i, %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i ] ; 3 uses
  %i.dn = load ptr, ptr %i.cw, align 8, !tbaa !37
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv4.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !51
  %i.dq = load ptr, ptr %i.cg, align 8, !tbaa !37 ; 3 uses
  %i.dr = sext i32 %i.dp to i64
  %i.ds = load i64, ptr %i.cx, align 8, !tbaa !31
  %i.dt = mul i64 %i.ds, %i.dr                    ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dt ; 16 uses
  %i.dv = load ptr, ptr %i.cy, align 8, !tbaa !37 ; 3 uses
  %i.dw = load i64, ptr %i.cz, align 8, !tbaa !31
  %i.dx = mul i64 %i.dw, %indvars.iv4.i           ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dx ; 16 uses
  br i1 %i.dk, label %.lr.ph.i.us.i.epil.preheader, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.preheader.i.us.i, %.lr.ph.i.us.i
  %indvar = phi i64 [ %indvar.next.3, %.lr.ph.i.us.i ], [ 0, %.lr.ph.preheader.i.us.i ] ; 2 uses
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i.3, %.lr.ph.i.us.i ], [ 0, %.lr.ph.preheader.i.us.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.us.i ], [ 0, %.lr.ph.preheader.i.us.i ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i.us.i ; 2 uses
  %i.ea = load <8 x float>, ptr %i.dz, align 1, !tbaa !56
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i.us.i
  %i.ec = load <8 x float>, ptr %i.eb, align 1, !tbaa !56
  %i.ed = fadd <8 x float> %i.ea, %i.ec
  store <8 x float> %i.ed, ptr %i.dz, align 1, !tbaa !56
  %indvars.iv.next.i.us.i = or disjoint i64 %indvars.iv.i.us.i, 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next.i.us.i ; 2 uses
  %i.ef = load <8 x float>, ptr %i.ee, align 1, !tbaa !56
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i.us.i
  %i.eh = load <8 x float>, ptr %i.eg, align 1, !tbaa !56
  %i.ei = fadd <8 x float> %i.ef, %i.eh
  store <8 x float> %i.ei, ptr %i.ee, align 1, !tbaa !56
  %indvars.iv.next.i.us.i.1 = or disjoint i64 %indvars.iv.i.us.i, 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next.i.us.i.1 ; 2 uses
  %i.ek = load <8 x float>, ptr %i.ej, align 1, !tbaa !56
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i.us.i.1
  %i.em = load <8 x float>, ptr %i.el, align 1, !tbaa !56
  %i.en = fadd <8 x float> %i.ek, %i.em
  store <8 x float> %i.en, ptr %i.ej, align 1, !tbaa !56
  %indvars.iv.next.i.us.i.2 = or disjoint i64 %indvars.iv.i.us.i, 24 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next.i.us.i.2 ; 2 uses
  %i.ep = load <8 x float>, ptr %i.eo, align 1, !tbaa !56
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i.us.i.2
  %i.er = load <8 x float>, ptr %i.eq, align 1, !tbaa !56
  %i.es = fadd <8 x float> %i.ep, %i.er
  store <8 x float> %i.es, ptr %i.eo, align 1, !tbaa !56
  %indvars.iv.next.i.us.i.3 = add nuw nsw i64 %indvars.iv.i.us.i, 32 ; 3 uses
  %indvar.next.3 = add i64 %indvar, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader.loopexit.i.us.i.unr-lcssa, label %.lr.ph.i.us.i, !llvm.loop !0

.preheader.loopexit.i.us.i.unr-lcssa:             ; preds = %.lr.ph.i.us.i
  %indvar.next.2 = or disjoint i64 %indvar, 3
  br i1 %lcmp.mod87.not, label %.preheader.loopexit.i.us.i, label %.lr.ph.i.us.i.epil.preheader

.lr.ph.i.us.i.epil.preheader:                     ; preds = %.preheader.loopexit.i.us.i.unr-lcssa, %.lr.ph.preheader.i.us.i
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvar.next.3, %.preheader.loopexit.i.us.i.unr-lcssa ]
  %indvars.iv.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i.3, %.preheader.loopexit.i.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %.lr.ph.i.us.i.epil

.lr.ph.i.us.i.epil:                               ; preds = %.lr.ph.i.us.i.epil, %.lr.ph.i.us.i.epil.preheader
  %indvar.epil = phi i64 [ %indvar.next.epil, %.lr.ph.i.us.i.epil ], [ %indvar.epil.init, %.lr.ph.i.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.i.us.i.epil = phi i64 [ %indvars.iv.next.i.us.i.epil, %.lr.ph.i.us.i.epil ], [ %indvars.iv.i.us.i.epil.init, %.lr.ph.i.us.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.us.i.epil ], [ 0, %.lr.ph.i.us.i.epil.preheader ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i.us.i.epil ; 2 uses
  %i.eu = load <8 x float>, ptr %i.et, align 1, !tbaa !56
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i.us.i.epil
  %i.ew = load <8 x float>, ptr %i.ev, align 1, !tbaa !56
  %i.ex = fadd <8 x float> %i.eu, %i.ew
  store <8 x float> %i.ex, ptr %i.et, align 1, !tbaa !56
  %indvars.iv.next.i.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.i.epil, 8 ; 2 uses
  %indvar.next.epil = add i64 %indvar.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter86
  br i1 %epil.iter.cmp.not, label %.preheader.loopexit.i.us.i, label %.lr.ph.i.us.i.epil, !llvm.loop !803

.preheader.loopexit.i.us.i:                       ; preds = %.lr.ph.i.us.i.epil, %.preheader.loopexit.i.us.i.unr-lcssa
  %indvar.lcssa = phi i64 [ %indvar.next.2, %.preheader.loopexit.i.us.i.unr-lcssa ], [ %indvar.epil, %.lr.ph.i.us.i.epil ]
  %indvars.iv.next.i.us.i.lcssa = phi i64 [ %indvars.iv.next.i.us.i.3, %.preheader.loopexit.i.us.i.unr-lcssa ], [ %indvars.iv.next.i.us.i.epil, %.lr.ph.i.us.i.epil ] ; 7 uses
  %i.ey = trunc nuw nsw i64 %indvars.iv.next.i.us.i.lcssa to i32
  %i.ez = icmp slt i32 %i.ey, %i.cl
  br i1 %i.ez, label %iter.check69, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i

iter.check69:                                     ; preds = %.preheader.loopexit.i.us.i
  br i1 %min.iters.check47, label %.lr.ph22.i.us.i.preheader, label %vector.memcheck48

vector.memcheck48:                                ; preds = %iter.check69
  %i.fa = shl nuw nsw i64 %indvar.lcssa, 5        ; 4 uses
  %i.fb = getelementptr i8, ptr %i.dq, i64 %i.dt
  %i.fc = getelementptr i8, ptr %i.fb, i64 32
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.fa
  %.reass = add i64 %i.dt, %invariant.op
  %i.fe = getelementptr i8, ptr %i.dq, i64 %.reass
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fa
  %i.fg = getelementptr i8, ptr %i.dv, i64 %i.dx
  %i.fh = getelementptr i8, ptr %i.fg, i64 32
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.fa
  %.reass102 = add i64 %i.dx, %invariant.op101
  %i.fj = getelementptr i8, ptr %i.dv, i64 %.reass102
  %i.fk = getelementptr i8, ptr %i.fj, i64 %i.fa
  %bound049 = icmp ult ptr %i.fd, %i.fk
  %bound150 = icmp ult ptr %i.fi, %i.ff
  %found.conflict51 = and i1 %bound049, %bound150
  br i1 %found.conflict51, label %.lr.ph22.i.us.i.preheader, label %vector.main.loop.iter.check52

vector.main.loop.iter.check52:                    ; preds = %vector.memcheck48
  br i1 %min.iters.check53, label %vec.epilog.ph73, label %vector.ph54

vector.ph54:                                      ; preds = %vector.main.loop.iter.check52
  %i.fl = add i64 %indvars.iv.next.i.us.i.lcssa, %n.vec55
  br label %vector.body56

vector.body56:                                    ; preds = %vector.ph54, %vector.body56
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next66, %vector.body56 ] ; 2 uses
  %i.fm = add nuw i64 %indvars.iv.next.i.us.i.lcssa, %index57 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.fm ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 64 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 96 ; 2 uses
  %wide.load58 = load <8 x float>, ptr %i.fn, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %wide.load59 = load <8 x float>, ptr %i.fo, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %wide.load60 = load <8 x float>, ptr %i.fp, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %wide.load61 = load <8 x float>, ptr %i.fq, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.fm ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 96
  %wide.load62 = load <8 x float>, ptr %i.fr, align 4, !tbaa !43, !alias.scope !820
  %wide.load63 = load <8 x float>, ptr %i.fs, align 4, !tbaa !43, !alias.scope !820
  %wide.load64 = load <8 x float>, ptr %i.ft, align 4, !tbaa !43, !alias.scope !820
  %wide.load65 = load <8 x float>, ptr %i.fu, align 4, !tbaa !43, !alias.scope !820
  %i.fv = fadd <8 x float> %wide.load58, %wide.load62
  %i.fw = fadd <8 x float> %wide.load59, %wide.load63
  %i.fx = fadd <8 x float> %wide.load60, %wide.load64
  %i.fy = fadd <8 x float> %wide.load61, %wide.load65
  store <8 x float> %i.fv, ptr %i.fn, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  store <8 x float> %i.fw, ptr %i.fo, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  store <8 x float> %i.fx, ptr %i.fp, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  store <8 x float> %i.fy, ptr %i.fq, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %index.next66 = add nuw i64 %index57, 32        ; 2 uses
  %i.fz = icmp eq i64 %index.next66, %n.vec55
  br i1 %i.fz, label %middle.block67, label %vector.body56, !llvm.loop !807

middle.block67:                                   ; preds = %vector.body56
  br i1 %cmp.n68, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i, label %vec.epilog.iter.check70

vec.epilog.iter.check70:                          ; preds = %middle.block67
  br i1 %min.epilog.iters.check72, label %.lr.ph22.i.us.i.preheader, label %vec.epilog.ph73, !prof !50

vec.epilog.ph73:                                  ; preds = %vector.main.loop.iter.check52, %vec.epilog.iter.check70
  %vec.epilog.resume.val74 = phi i64 [ %n.vec55, %vec.epilog.iter.check70 ], [ 0, %vector.main.loop.iter.check52 ]
  %i.ga = add i64 %indvars.iv.next.i.us.i.lcssa, %n.vec75
  br label %vec.epilog.vector.body76

vec.epilog.vector.body76:                         ; preds = %vec.epilog.vector.body76, %vec.epilog.ph73
  %index77 = phi i64 [ %vec.epilog.resume.val74, %vec.epilog.ph73 ], [ %index.next80, %vec.epilog.vector.body76 ] ; 2 uses
  %i.gb = add nuw i64 %indvars.iv.next.i.us.i.lcssa, %index77 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.gb ; 2 uses
  %wide.load78 = load <8 x float>, ptr %i.gc, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.gb
  %wide.load79 = load <8 x float>, ptr %i.gd, align 4, !tbaa !43, !alias.scope !820
  %i.ge = fadd <8 x float> %wide.load78, %wide.load79
  store <8 x float> %i.ge, ptr %i.gc, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %index.next80 = add nuw i64 %index77, 8         ; 2 uses
  %i.gf = icmp eq i64 %index.next80, %n.vec75
  br i1 %i.gf, label %vec.epilog.middle.block81, label %vec.epilog.vector.body76, !llvm.loop !808

vec.epilog.middle.block81:                        ; preds = %vec.epilog.vector.body76
  br i1 %cmp.n82, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i, label %.lr.ph22.i.us.i.preheader

.lr.ph22.i.us.i.preheader:                        ; preds = %iter.check69, %vector.memcheck48, %vec.epilog.iter.check70, %vec.epilog.middle.block81
  %indvars.iv24.i.us.i.ph = phi i64 [ %indvars.iv.next.i.us.i.lcssa, %iter.check69 ], [ %indvars.iv.next.i.us.i.lcssa, %vector.memcheck48 ], [ %i.fl, %vec.epilog.iter.check70 ], [ %i.ga, %vec.epilog.middle.block81 ] ; 4 uses
  %i.gg = sub i64 %i.ck, %indvars.iv24.i.us.i.ph
  %xtraiter91 = and i64 %i.gg, 7                  ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.lr.ph22.i.us.i.prol.loopexit, label %.lr.ph22.i.us.i.prol

.lr.ph22.i.us.i.prol:                             ; preds = %.lr.ph22.i.us.i.preheader, %.lr.ph22.i.us.i.prol
  %indvars.iv24.i.us.i.prol = phi i64 [ %indvars.iv.next25.i.us.i.prol, %.lr.ph22.i.us.i.prol ], [ %indvars.iv24.i.us.i.ph, %.lr.ph22.i.us.i.preheader ] ; 3 uses
  %prol.iter93 = phi i64 [ %prol.iter93.next, %.lr.ph22.i.us.i.prol ], [ 0, %.lr.ph22.i.us.i.preheader ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv24.i.us.i.prol ; 2 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !43
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv24.i.us.i.prol
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !43
  %i.gl = fadd float %i.gi, %i.gk
  store float %i.gl, ptr %i.gh, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.prol = add nuw nsw i64 %indvars.iv24.i.us.i.prol, 1 ; 2 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %.lr.ph22.i.us.i.prol.loopexit, label %.lr.ph22.i.us.i.prol, !llvm.loop !809

.lr.ph22.i.us.i.prol.loopexit:                    ; preds = %.lr.ph22.i.us.i.prol, %.lr.ph22.i.us.i.preheader
  %indvars.iv24.i.us.i.unr = phi i64 [ %indvars.iv24.i.us.i.ph, %.lr.ph22.i.us.i.preheader ], [ %indvars.iv.next25.i.us.i.prol, %.lr.ph22.i.us.i.prol ]
  %i.gm = sub i64 %indvars.iv24.i.us.i.ph, %wide.trip.count.i.i
  %i.gn = icmp ugt i64 %i.gm, -8
  br i1 %i.gn, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i, label %.lr.ph22.i.us.i

.lr.ph22.i.us.i:                                  ; preds = %.lr.ph22.i.us.i.prol.loopexit, %.lr.ph22.i.us.i
  %indvars.iv24.i.us.i = phi i64 [ %indvars.iv.next25.i.us.i.7, %.lr.ph22.i.us.i ], [ %indvars.iv24.i.us.i.unr, %.lr.ph22.i.us.i.prol.loopexit ] ; 10 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv24.i.us.i ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !43
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv24.i.us.i
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !43
  %i.gs = fadd float %i.gp, %i.gr
  store float %i.gs, ptr %i.go, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i = add nuw nsw i64 %indvars.iv24.i.us.i, 1 ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next25.i.us.i ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !43
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next25.i.us.i
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !43
  %i.gx = fadd float %i.gu, %i.gw
  store float %i.gx, ptr %i.gt, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.1 = add nuw nsw i64 %indvars.iv24.i.us.i, 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next25.i.us.i.1 ; 2 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !43
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next25.i.us.i.1
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !43
  %i.hc = fadd float %i.gz, %i.hb
  store float %i.hc, ptr %i.gy, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.2 = add nuw nsw i64 %indvars.iv24.i.us.i, 3 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next25.i.us.i.2 ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !43
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next25.i.us.i.2
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !43
  %i.hh = fadd float %i.he, %i.hg
  store float %i.hh, ptr %i.hd, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.3 = add nuw nsw i64 %indvars.iv24.i.us.i, 4 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next25.i.us.i.3 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !43
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next25.i.us.i.3
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !43
  %i.hm = fadd float %i.hj, %i.hl
  store float %i.hm, ptr %i.hi, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.4 = add nuw nsw i64 %indvars.iv24.i.us.i, 5 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next25.i.us.i.4 ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !43
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next25.i.us.i.4
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !43
  %i.hr = fadd float %i.ho, %i.hq
  store float %i.hr, ptr %i.hn, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.5 = add nuw nsw i64 %indvars.iv24.i.us.i, 6 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next25.i.us.i.5 ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !43
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next25.i.us.i.5
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !43
  %i.hw = fadd float %i.ht, %i.hv
  store float %i.hw, ptr %i.hs, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.6 = add nuw nsw i64 %indvars.iv24.i.us.i, 7 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next25.i.us.i.6 ; 2 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !43
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next25.i.us.i.6
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !43
  %i.ib = fadd float %i.hy, %i.ia
  store float %i.ib, ptr %i.hx, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.7 = add nuw nsw i64 %indvars.iv24.i.us.i, 8 ; 2 uses
  %exitcond.not.i.us.i.7 = icmp eq i64 %indvars.iv.next25.i.us.i.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i.7, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i, label %.lr.ph22.i.us.i, !llvm.loop !810

_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i:         ; preds = %.lr.ph22.i.us.i.prol.loopexit, %.lr.ph22.i.us.i, %middle.block67, %vec.epilog.middle.block81, %.preheader.loopexit.i.us.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1 ; 2 uses
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next5.i, %wide.trip.count7.i
  br i1 %exitcond8.not.i, label %_ZL42ggml_compute_forward_get_rows_back_f32_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph.preheader.i.us.i, !llvm.loop !811

.lr.ph.split.i:                                   ; preds = %.lr.ph.i10
  %i.ic = icmp sgt i32 %i.cl, 0
  br i1 %i.ic, label %.preheader.i.preheader.i, label %_ZL42ggml_compute_forward_get_rows_back_f32_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader.i.preheader.i:                         ; preds = %.lr.ph.split.i
  %wide.trip.count.i11 = and i64 %i.cm, 2147483647 ; 2 uses
  %.pre.i = load ptr, ptr %i.cw, align 8, !tbaa !37
  %.pre9.i = load ptr, ptr %i.cg, align 8, !tbaa !37 ; 2 uses
  %.pre10.i = load i64, ptr %i.cx, align 8, !tbaa !31
  %.pre11.i = load ptr, ptr %i.cy, align 8, !tbaa !37 ; 3 uses
  %.pre12.i = load i64, ptr %i.cz, align 8, !tbaa !31 ; 3 uses
  %i.id = add nsw i64 %wide.trip.count.i11, -1
  %i.ie = mul i64 %.pre12.i, %i.id
  %i.if = shl nuw nsw i64 %wide.trip.count.i.i, 2 ; 2 uses
  %i.ig = getelementptr i8, ptr %.pre11.i, i64 %i.ie
  %scevgep = getelementptr i8, ptr %i.ig, i64 %i.if
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i.i, 4
  %invariant.gep = getelementptr i8, ptr %.pre9.i, i64 %i.if
  %stride.check = icmp slt i64 %.pre12.i, 0
  %min.iters.check25 = icmp samesign ult i64 %wide.trip.count.i.i, 32
  %i.ih = and i64 %i.ck, 28
  %n.vec = and i64 %i.ck, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i.i, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ih, 0
  %n.vec33 = and i64 %i.ck, 2147483644            ; 3 uses
  %cmp.n38 = icmp eq i64 %wide.trip.count.i.i, %n.vec33
  br label %iter.check

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5382, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #17
  unreachable

iter.check:                                       ; preds = %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.loopexit.i, %.preheader.i.preheader.i
  %indvars.iv.i12 = phi i64 [ 0, %.preheader.i.preheader.i ], [ %indvars.iv.next.i13, %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.loopexit.i ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i12
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !51
end_hunk_1
begin_hunk_2_@ggml_compute_forward_conv_2d:bb.a
  %4 = alloca %struct.ggml_tensor, align 8        ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 8 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !30   ; 7 uses
  %i.f = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %i.b)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7090, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.116) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %or.cond.i = icmp ult i32 %i.e, 2
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7091, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.117) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.b, align 8, !tbaa !30
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7092, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.118) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = tail call ptr @ggml_get_type_traits(i32 noundef %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load i32, ptr %i.l, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.o = load i32, ptr %i.n, align 4, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = load i32, ptr %i.p, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load i32, ptr %i.t, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31   ; 19 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31
  %i.ab = icmp eq i64 %i.w, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7105, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.119) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !31 ; 38 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !31 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !31 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !31 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !37 ; 2 uses
  %i.au = mul nsw i64 %i.aj, %i.ah                ; 3 uses
  %i.av = mul nsw i64 %i.au, %i.w                 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !31
  %i.ay = mul i64 %i.an, %i.al                    ; 3 uses
  %i.az = mul i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !64
  %i.bc = mul i64 %i.bb, %i.av
  %i.bd = shl i64 %i.y, 2                         ; 6 uses
  %i.be = add i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !63
  %i.bh = udiv i64 %i.bg, %i.be                   ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 8
  %i.bj = and i64 %i.bh, 9223372036854775800
  %i.bk = select i1 %i.bi, i64 %i.bj, i64 %i.bh   ; 10 uses
  %i.bl = add i64 %i.az, -1
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = sdiv i64 %i.bm, %i.bk                   ; 2 uses
  %i.bo = icmp sgt i64 %i.bk, 0
  %i.bp = icmp sgt i64 %i.bh, 0
  %or.cond3.i = and i1 %i.bp, %i.bo
  br i1 %or.cond3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7126, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.120) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !48 ; 5 uses
  %i.bs = icmp sgt i64 %i.bn, 0
  br i1 %i.bs, label %.lr.ph264.i, label %_ZL33ggml_compute_forward_conv_2d_implPK19ggml_compute_paramsPK11ggml_tensorS4_PS2_9ggml_type.exit

.lr.ph264.i:                                      ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bw = icmp slt i64 %i.w, 1
  %i.bx = icmp slt i64 %i.aj, 1
  %i.by = icmp slt i64 %i.ah, 1
  %i.bz = sext i32 %i.m to i64
  %i.ca = sext i32 %i.u to i64                    ; 2 uses
  %i.cb = sext i32 %i.q to i64
  %i.cc = sext i32 %i.k to i64
  %i.cd = sext i32 %i.s to i64                    ; 4 uses
  %i.ce = sext i32 %i.o to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 4 uses
  %trunc.i = trunc nuw i32 %i.e to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ci = mul nsw i64 %i.bk, %i.av
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.dj = icmp slt i64 %i.y, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre.i = load i32, ptr %i.bt, align 4, !tbaa !36
  %.pre287.i = load i32, ptr %0, align 8, !tbaa !35
  %brmerge315.i = or i1 %i.by, %i.bx
  %brmerge = or i1 %i.bw, %brmerge315.i
  %i.do = shl i64 %i.y, 2
  %i.dp = shl i64 %i.y, 2
  %i.dq = insertelement <4 x i64> <i64 poison, i64 poison, i64 1, i64 1>, i64 %i.av, i64 0
  %i.dr = insertelement <4 x i64> %i.dq, i64 %i.y, i64 1
  %i.ds = add i64 %i.ah, -1                       ; 2 uses
  %min.iters.check145 = icmp ugt i64 %i.ah, 3
  %min.iters.check147 = icmp ult i64 %i.ah, 32
  %i.dt = and i64 %i.ah, 28
  %n.vec149 = and i64 %i.ah, 9223372036854775776  ; 4 uses
  %cmp.n165 = icmp eq i64 %i.ah, %n.vec149
  %min.epilog.iters.check169 = icmp eq i64 %i.dt, 0
  %n.vec172 = and i64 %i.ah, 9223372036854775804  ; 3 uses
  %cmp.n185 = icmp eq i64 %i.ah, %n.vec172
  %xtraiter193 = and i64 %i.ah, 1
  %i.du = icmp eq i64 %i.ds, 0
  %unroll_iter = and i64 %i.ah, 9223372036854775806
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  %lcmp.mod195 = trunc i64 %i.ah to i1
  %min.iters.check101 = icmp ugt i64 %i.ah, 3
  %min.iters.check103 = icmp ult i64 %i.ah, 32
  %i.dv = and i64 %i.ah, 28
  %n.vec105 = and i64 %i.ah, 9223372036854775776  ; 4 uses
  %cmp.n121 = icmp eq i64 %i.ah, %n.vec105
  %min.epilog.iters.check125 = icmp eq i64 %i.dv, 0
  %n.vec128 = and i64 %i.ah, 9223372036854775804  ; 3 uses
  %cmp.n141 = icmp eq i64 %i.ah, %n.vec128
  %min.iters.check65 = icmp ugt i64 %i.ah, 3
  %min.iters.check67 = icmp ult i64 %i.ah, 16
  %i.dw = and i64 %i.ah, 12
  %n.vec69 = and i64 %i.ah, 9223372036854775792   ; 4 uses
  %cmp.n78 = icmp eq i64 %i.ah, %n.vec69
  %min.epilog.iters.check82 = icmp eq i64 %i.dw, 0
  %n.vec85 = and i64 %i.ah, 9223372036854775804   ; 3 uses
  %cmp.n97 = icmp eq i64 %i.ah, %n.vec85
  %min.iters.check = icmp ult i64 %i.y, 8
  %i.dx = getelementptr i8, ptr %i.at, i64 %i.y
  %stride.check = icmp slt i64 %i.bd, 0
  %min.iters.check48 = icmp ult i64 %i.y, 32
  %i.dy = and i64 %i.y, 24
  %n.vec = and i64 %i.y, 9223372036854775776      ; 4 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dy, 0
  %n.vec55 = and i64 %i.y, 9223372036854775800    ; 3 uses
  %cmp.n62 = icmp eq i64 %i.y, %n.vec55
  %xtraiter202 = and i64 %i.y, 7                  ; 2 uses
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge261.split.i, %.lr.ph264.i
  %i.dz = phi i32 [ %.pre287.i, %.lr.ph264.i ], [ %i.os, %._crit_edge261.split.i ]
  %i.ea = phi i32 [ %.pre.i, %.lr.ph264.i ], [ %i.oo, %._crit_edge261.split.i ]
  %indvars.iv282.i = phi i64 [ 0, %.lr.ph264.i ], [ %indvars.iv.next283.i, %._crit_edge261.split.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.bk, %.lr.ph264.i ], [ %indvars.iv.next.i, %._crit_edge261.split.i ] ; 2 uses
  %.0192262.i = phi i64 [ 0, %.lr.ph264.i ], [ %i.pg, %._crit_edge261.split.i ] ; 2 uses
  %smin.i = call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.az)
  %i.eb = add i64 %smin.i, %indvars.iv282.i
  %i.ec = mul nuw nsw i64 %.0192262.i, %i.bk      ; 4 uses
  %i.ed = add nuw nsw i64 %i.ec, %i.bk
  %.sroa.speculated215.i = call i64 @llvm.smin.i64(i64 %i.az, i64 %i.ed) ; 2 uses
  %i.ee = sub nsw i64 %.sroa.speculated215.i, %i.ec ; 5 uses
  %i.ef = sext i32 %i.ea to i64                   ; 2 uses
  %i.eg = add i64 %i.ee, -1                       ; 2 uses
  %i.eh = add i64 %i.eg, %i.ef
  %i.ei = sdiv i64 %i.eh, %i.ef                   ; 2 uses
  %i.ej = sext i32 %i.dz to i64
  %i.ek = mul nsw i64 %i.ei, %i.ej
  %i.el = add nsw i64 %i.ek, %i.ec                ; 3 uses
  %i.em = add nsw i64 %i.el, %i.ei
  %.sroa.speculated208.i = call i64 @llvm.smin.i64(i64 %.sroa.speculated215.i, i64 %i.em) ; 2 uses
  %i.en = icmp slt i64 %i.el, %.sroa.speculated208.i
  br i1 %i.en, label %.lr.ph.i, label %._crit_edge253.split.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.eo = load i64, ptr %i.bv, align 8, !tbaa !31
  %i.ep = load i64, ptr %i.ba, align 8, !tbaa !64 ; 35 uses
  %factor.op.mul.i = mul i64 %i.ep, %i.av
  br i1 %brmerge, label %._crit_edge253.split.i, label %.preheader227.lr.ph.i.preheader

.preheader227.lr.ph.i.preheader:                  ; preds = %.lr.ph.i
  %ident.check144.not = icmp eq i64 %i.ep, 1
  %or.cond187 = select i1 %min.iters.check145, i1 %ident.check144.not, i1 false
  %ident.check100.not = icmp eq i64 %i.ep, 1
  %or.cond = select i1 %min.iters.check101, i1 %ident.check100.not, i1 false
  %ident.check64.not = icmp eq i64 %i.ep, 1
  %or.cond188 = select i1 %min.iters.check65, i1 %ident.check64.not, i1 false
  br label %.preheader227.lr.ph.i

._crit_edge253.split.i:                           ; preds = %._crit_edge.i, %.lr.ph.i, %bb.l
  %i.eq = load ptr, ptr %i.ch, align 8, !tbaa !57
  call void @ggml_barrier(ptr noundef %i.eq)
  %i.er = load i64, ptr %i.ba, align 8, !tbaa !64
  %i.es = mul i64 %i.ci, %i.er                    ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.es ; 2 uses
  %.idx.i = mul i64 %i.ee, %i.bd
  %i.eu = load i64, ptr %i.bf, align 8, !tbaa !63
  %.idx201.i = shl nuw nsw i64 %i.eu, 2
  %i.ev = add nsw i64 %i.es, %.idx.i
  %.not.i = icmp sgt i64 %i.ev, %.idx201.i
  br i1 %.not.i, label %bb.s, label %bb.t

.preheader227.lr.ph.i:                            ; preds = %.preheader227.lr.ph.i.preheader, %._crit_edge.i
  %.0191251.i = phi i64 [ %i.oh, %._crit_edge.i ], [ %i.el, %.preheader227.lr.ph.i.preheader ] ; 5 uses
  %i.ew = sdiv i64 %.0191251.i, %i.ay
  %i.ex = sdiv i64 %.0191251.i, %i.al
  %i.ey = srem i64 %i.ex, %i.an
  %i.ez = srem i64 %.0191251.i, %i.al
  %i.fa = mul i64 %i.ew, %i.eo
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.fa ; 4 uses
  %i.fc = srem i64 %.0191251.i, %i.bk
  %.reass.i = mul i64 %factor.op.mul.i, %i.fc
  %i.fd = getelementptr inbounds nuw i8, ptr %i.br, i64 %.reass.i ; 61 uses
  %i.fe = mul nsw i64 %i.ey, %i.bz
  %i.ff = sub i64 %i.fe, %i.cb                    ; 2 uses
  %i.fg = mul nsw i64 %i.ez, %i.cc
  %i.fh = sub i64 %i.fg, %i.ce                    ; 4 uses
  br i1 %trunc.i, label %.preheader227.us.i, label %.preheader227.us.us.i

.preheader227.us.us.i:                            ; preds = %.preheader227.lr.ph.i, %._crit_edge232.split239.us.us.us.i
  %.0190240.us.us.i = phi i64 [ %i.ju, %._crit_edge232.split239.us.us.us.i ], [ 0, %.preheader227.lr.ph.i ] ; 5 uses
  %i.fi = mul nuw nsw i64 %.0190240.us.us.i, %i.au
  br label %.preheader.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %._crit_edge.split.us.us.us.us.i, %.preheader227.us.us.i
  %.0189231.us.us.us.i = phi i64 [ 0, %.preheader227.us.us.i ], [ %i.jt, %._crit_edge.split.us.us.us.us.i ] ; 3 uses
  %i.fj = mul nsw i64 %.0189231.us.us.us.i, %i.ca
  %i.fk = add i64 %i.fj, %i.ff                    ; 5 uses
  %i.fl = mul nuw nsw i64 %.0189231.us.us.us.i, %i.ah
  %i.fm = add nuw nsw i64 %i.fl, %i.fi            ; 25 uses
  %i.fn = icmp slt i64 %i.fk, 0
  br i1 %i.fn, label %iter.check122, label %.lr.ph.split.us.split.us233.us.us.i

iter.check122:                                    ; preds = %.preheader.us.us.us.i
  br i1 %or.cond, label %vector.main.loop.iter.check102, label %.lr.ph.split.us.split.us.us.us.us.i.preheader

vector.main.loop.iter.check102:                   ; preds = %iter.check122
  br i1 %min.iters.check103, label %vec.epilog.ph126, label %vector.ph104

vector.ph104:                                     ; preds = %vector.main.loop.iter.check102
  %broadcast.splatinsert106 = insertelement <8 x i64> poison, i64 %i.fm, i64 0
  %broadcast.splat107 = shufflevector <8 x i64> %broadcast.splatinsert106, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op227 = add nuw <8 x i64> splat (i64 8), %broadcast.splat107
  %invariant.op229 = add nuw <8 x i64> splat (i64 16), %broadcast.splat107
  %invariant.op231 = add nuw <8 x i64> splat (i64 24), %broadcast.splat107
  br label %vector.body108

vector.body108:                                   ; preds = %vector.ph104, %vector.body108
  %index109 = phi i64 [ 0, %vector.ph104 ], [ %index.next118, %vector.body108 ]
  %vec.ind110 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph104 ], [ %vec.ind.next119, %vector.body108 ] ; 5 uses
  %i.fo = add nuw nsw <8 x i64> %vec.ind110, %broadcast.splat107
  %.reass228 = add nuw <8 x i64> %vec.ind110, %invariant.op227
  %.reass230 = add nuw <8 x i64> %vec.ind110, %invariant.op229
  %.reass232 = add nuw <8 x i64> %vec.ind110, %invariant.op231
  %wide.gep114 = getelementptr inbounds nuw i8, ptr %i.fd, <8 x i64> %i.fo
  %wide.gep115 = getelementptr inbounds nuw i8, ptr %i.fd, <8 x i64> %.reass228
  %wide.gep116 = getelementptr inbounds nuw i8, ptr %i.fd, <8 x i64> %.reass230
  %wide.gep117 = getelementptr inbounds nuw i8, ptr %i.fd, <8 x i64> %.reass232
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep114, <8 x i1> splat (i1 true)), !tbaa !43
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep115, <8 x i1> splat (i1 true)), !tbaa !43
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep116, <8 x i1> splat (i1 true)), !tbaa !43
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep117, <8 x i1> splat (i1 true)), !tbaa !43
  %index.next118 = add nuw i64 %index109, 32      ; 2 uses
  %vec.ind.next119 = add nuw <8 x i64> %vec.ind110, splat (i64 32)
  %i.fp = icmp eq i64 %index.next118, %n.vec105
  br i1 %i.fp, label %middle.block120, label %vector.body108, !llvm.loop !1089

middle.block120:                                  ; preds = %vector.body108
  br i1 %cmp.n121, label %._crit_edge.split.us.us.us.us.i, label %vec.epilog.iter.check123

vec.epilog.iter.check123:                         ; preds = %middle.block120
  br i1 %min.epilog.iters.check125, label %.lr.ph.split.us.split.us.us.us.us.i.preheader, label %vec.epilog.ph126, !prof !52

vec.epilog.ph126:                                 ; preds = %vector.main.loop.iter.check102, %vec.epilog.iter.check123
  %vec.epilog.resume.val127 = phi i64 [ %n.vec105, %vec.epilog.iter.check123 ], [ 0, %vector.main.loop.iter.check102 ] ; 2 uses
  %broadcast.splatinsert129 = insertelement <4 x i64> poison, i64 %i.fm, i64 0
  %broadcast.splat130 = shufflevector <4 x i64> %broadcast.splatinsert129, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val127, i64 0
  %broadcast.splat132 = shufflevector <4 x i64> %broadcast.splatinsert131, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction133 = or disjoint <4 x i64> %broadcast.splat132, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body134

vec.epilog.vector.body134:                        ; preds = %vec.epilog.vector.body134, %vec.epilog.ph126
  %index135 = phi i64 [ %vec.epilog.resume.val127, %vec.epilog.ph126 ], [ %index.next138, %vec.epilog.vector.body134 ]
  %vec.ind136 = phi <4 x i64> [ %induction133, %vec.epilog.ph126 ], [ %vec.ind.next139, %vec.epilog.vector.body134 ] ; 2 uses
  %i.fq = add nuw nsw <4 x i64> %vec.ind136, %broadcast.splat130
  %wide.gep137 = getelementptr inbounds nuw i8, ptr %i.fd, <4 x i64> %i.fq
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> zeroinitializer, <4 x ptr> align 4 %wide.gep137, <4 x i1> splat (i1 true)), !tbaa !43
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %vec.ind.next139 = add nuw nsw <4 x i64> %vec.ind136, splat (i64 4)
  %i.fr = icmp eq i64 %index.next138, %n.vec128
  br i1 %i.fr, label %vec.epilog.middle.block140, label %vec.epilog.vector.body134, !llvm.loop !1090

vec.epilog.middle.block140:                       ; preds = %vec.epilog.vector.body134
  br i1 %cmp.n141, label %._crit_edge.split.us.us.us.us.i, label %.lr.ph.split.us.split.us.us.us.us.i.preheader

.lr.ph.split.us.split.us.us.us.us.i.preheader:    ; preds = %iter.check122, %vec.epilog.iter.check123, %vec.epilog.middle.block140
  %.0188228.us.us.us.us.us.i.ph = phi i64 [ 0, %iter.check122 ], [ %n.vec105, %vec.epilog.iter.check123 ], [ %n.vec128, %vec.epilog.middle.block140 ] ; 4 uses
  %i.fs = sub nsw i64 %i.ah, %.0188228.us.us.us.us.us.i.ph
  %xtraiter196 = and i64 %i.fs, 7                 ; 2 uses
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %.lr.ph.split.us.split.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.us.split.us.us.us.us.i.prol

.lr.ph.split.us.split.us.us.us.us.i.prol:         ; preds = %.lr.ph.split.us.split.us.us.us.us.i.preheader, %.lr.ph.split.us.split.us.us.us.us.i.prol
  %.0188228.us.us.us.us.us.i.prol = phi i64 [ %i.fw, %.lr.ph.split.us.split.us.us.us.us.i.prol ], [ %.0188228.us.us.us.us.us.i.ph, %.lr.ph.split.us.split.us.us.us.us.i.preheader ] ; 2 uses
  %prol.iter198 = phi i64 [ %prol.iter198.next, %.lr.ph.split.us.split.us.us.us.us.i.prol ], [ 0, %.lr.ph.split.us.split.us.us.us.us.i.preheader ]
  %i.ft = add nuw nsw i64 %.0188228.us.us.us.us.us.i.prol, %i.fm
  %i.fu = mul i64 %i.ft, %i.ep
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fu
  store float 0.000000e+00, ptr %i.fv, align 4, !tbaa !43
  %i.fw = add nuw nsw i64 %.0188228.us.us.us.us.us.i.prol, 1 ; 2 uses
  %prol.iter198.next = add i64 %prol.iter198, 1   ; 2 uses
  %prol.iter198.cmp.not = icmp eq i64 %prol.iter198.next, %xtraiter196
  br i1 %prol.iter198.cmp.not, label %.lr.ph.split.us.split.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.us.split.us.us.us.us.i.prol, !llvm.loop !1091

.lr.ph.split.us.split.us.us.us.us.i.prol.loopexit: ; preds = %.lr.ph.split.us.split.us.us.us.us.i.prol, %.lr.ph.split.us.split.us.us.us.us.i.preheader
  %.0188228.us.us.us.us.us.i.unr = phi i64 [ %.0188228.us.us.us.us.us.i.ph, %.lr.ph.split.us.split.us.us.us.us.i.preheader ], [ %i.fw, %.lr.ph.split.us.split.us.us.us.us.i.prol ]
  %i.fx = sub nsw i64 %.0188228.us.us.us.us.us.i.ph, %i.ah
  %i.fy = icmp ugt i64 %i.fx, -8
  br i1 %i.fy, label %._crit_edge.split.us.us.us.us.i, label %.lr.ph.split.us.split.us.us.us.us.i.preheader.new

.lr.ph.split.us.split.us.us.us.us.i.preheader.new: ; preds = %.lr.ph.split.us.split.us.us.us.us.i.prol.loopexit
  %invariant.op233 = add nuw nsw i64 1, %i.fm
  %invariant.op235 = add nuw nsw i64 2, %i.fm
  %invariant.op237 = add nuw nsw i64 3, %i.fm
  %invariant.op239 = add nuw nsw i64 4, %i.fm
  %invariant.op241 = add nuw nsw i64 5, %i.fm
  %invariant.op243 = add nuw nsw i64 6, %i.fm
  %invariant.op245 = add nuw nsw i64 7, %i.fm
  br label %.lr.ph.split.us.split.us.us.us.us.i

.lr.ph.split.us.split.us233.us.us.i:              ; preds = %.preheader.us.us.us.i
  %i.fz = icmp slt i64 %i.fk, %i.ag
  %.fr.us.us.us.i = freeze i1 %i.fz
  br i1 %.fr.us.us.us.i, label %.lr.ph.split.us.split.split.us234.us.us.i.preheader, label %iter.check166

.lr.ph.split.us.split.split.us234.us.us.i.preheader: ; preds = %.lr.ph.split.us.split.us233.us.us.i
  br i1 %i.du, label %.lr.ph.split.us.split.split.us234.us.us.i.epil.preheader, label %.lr.ph.split.us.split.split.us234.us.us.i
end_hunk_2
begin_hunk_3_@ggml_compute_forward_conv_2d:bb.a
  %i.mj = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.mi
  store i16 0, ptr %i.mj, align 2, !tbaa !41
  %.reass254 = add nuw nsw i64 %.0188228.us.us.i, %invariant.op253
  %i.mk = mul i64 %.reass254, %i.ep
  %i.ml = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.mk
  store i16 0, ptr %i.ml, align 2, !tbaa !41
  %.reass256 = add nuw nsw i64 %.0188228.us.us.i, %invariant.op255
  %i.mm = mul i64 %.reass256, %i.ep
  %i.mn = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.mm
  store i16 0, ptr %i.mn, align 2, !tbaa !41
  %.reass258 = add nuw nsw i64 %.0188228.us.us.i, %invariant.op257
  %i.mo = mul i64 %.reass258, %i.ep
  %i.mp = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.mo
  store i16 0, ptr %i.mp, align 2, !tbaa !41
  %.reass260 = add nuw nsw i64 %.0188228.us.us.i, %invariant.op259
  %i.mq = mul i64 %.reass260, %i.ep
  %i.mr = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.mq
  store i16 0, ptr %i.mr, align 2, !tbaa !41
  %i.ms = add nuw nsw i64 %.0188228.us.us.i, 8    ; 2 uses
  %exitcond278.not.i.7 = icmp eq i64 %i.ms, %i.ah
  br i1 %exitcond278.not.i.7, label %._crit_edge.split.us.i, label %.preheader.us244.split.us.i, !llvm.loop !1103

.preheader.us244.split.i:                         ; preds = %.preheader.us244.i, %bb.r
  %.0188228.us.i = phi i64 [ %i.oe, %bb.r ], [ 0, %.preheader.us244.i ] ; 3 uses
  %i.mt = mul nsw i64 %.0188228.us.i, %i.cd
  %i.mu = add i64 %i.mt, %i.fh                    ; 3 uses
  %i.mv = add nuw nsw i64 %.0188228.us.i, %i.jz
  %i.mw = icmp sgt i64 %i.mu, -1
  %or.cond5.not225.us.i = select i1 %i.kb, i1 %i.mw, i1 false
  %.not202.us.i = icmp slt i64 %i.mu, %i.ae
  %or.cond203.us.i = select i1 %or.cond5.not225.us.i, i1 %.not202.us.i, i1 false
  br i1 %or.cond203.us.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader.us244.split.i
  %i.mx = load i64, ptr %i.bu, align 8, !tbaa !31
  %i.my = mul i64 %i.mx, %i.mu
  %i.mz = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.my
  %i.na = load i64, ptr %i.cf, align 8, !tbaa !31
  %i.nb = mul i64 %i.na, %i.jx
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nb
  %i.nd = load i64, ptr %i.cg, align 8, !tbaa !31
  %i.ne = mul i64 %i.nd, %.0190240.us.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ne
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader.us244.split.i
  %.0187.us.i = phi float [ %i.ng, %bb.q ], [ 0.000000e+00, %.preheader.us244.split.i ] ; 2 uses
  %i.nh = mul i64 %i.mv, %i.ep
  %i.ni = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.nh
  %i.nj = call float @llvm.fabs.f32(float %.0187.us.i)
  %i.nk = fmul float %i.nj, f0x77800000
  %i.nl = fmul float %i.nk, f0x08800000
  %i.nm = bitcast float %.0187.us.i to i32        ; 2 uses
  %i.nn = shl i32 %i.nm, 1                        ; 2 uses
  %i.no = call i32 @llvm.umax.i32(i32 %i.nn, i32 1895825408)
  %spec.store.select.i.us.i = lshr exact i32 %i.no, 1
  %i.np = and i32 %spec.store.select.i.us.i, 2139095040
  %i.nq = add nuw i32 %i.np, 125829120
  %i.nr = bitcast i32 %i.nq to float
  %i.ns = fadd float %i.nl, %i.nr
  %i.nt = bitcast float %i.ns to i32              ; 2 uses
  %i.nu = lshr i32 %i.nt, 13
  %i.nv = and i32 %i.nu, 31744
  %i.nw = and i32 %i.nt, 4095
  %i.nx = add nuw nsw i32 %i.nv, %i.nw
  %i.ny = lshr i32 %i.nm, 16
  %i.nz = and i32 %i.ny, 32768
  %i.oa = icmp ugt i32 %i.nn, -16777216
  %i.ob = select i1 %i.oa, i32 32256, i32 %i.nx
  %i.oc = or i32 %i.ob, %i.nz
  %i.od = trunc nuw i32 %i.oc to i16
  store i16 %i.od, ptr %i.ni, align 2, !tbaa !41
  %i.oe = add nuw nsw i64 %.0188228.us.i, 1       ; 2 uses
  %exitcond277.not.i = icmp eq i64 %i.oe, %i.ah
  br i1 %exitcond277.not.i, label %._crit_edge.split.us.i, label %.preheader.us244.split.i, !llvm.loop !1096

._crit_edge.split.us.i:                           ; preds = %bb.r, %.preheader.us244.split.us.i.prol.loopexit, %.preheader.us244.split.us.i, %middle.block77, %vec.epilog.middle.block96
  %i.of = add nuw nsw i64 %.0189231.us245.i, 1    ; 2 uses
  %exitcond279.not.i = icmp eq i64 %i.of, %i.aj
  br i1 %exitcond279.not.i, label %._crit_edge232.split239.us246.i, label %.preheader.us244.i, !llvm.loop !1098

._crit_edge232.split239.us246.i:                  ; preds = %._crit_edge.split.us.i
  %i.og = add nuw nsw i64 %.0190240.us.i, 1       ; 2 uses
  %exitcond280.not.i = icmp eq i64 %i.og, %i.w
  br i1 %exitcond280.not.i, label %._crit_edge.i, label %.preheader227.us.i, !llvm.loop !1099

._crit_edge.i:                                    ; preds = %._crit_edge232.split239.us.us.us.i, %._crit_edge232.split239.us246.i
  %i.oh = add nsw i64 %.0191251.i, 1              ; 2 uses
  %i.oi = icmp slt i64 %i.oh, %.sroa.speculated208.i
  br i1 %i.oi, label %.preheader227.lr.ph.i, label %._crit_edge253.split.i, !llvm.loop !1104

bb.s:                                             ; preds = %._crit_edge253.split.i
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7181, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.121) #17
  unreachable

bb.t:                                             ; preds = %._crit_edge253.split.i
  %i.oj = call ptr @ggml_get_type_traits(i32 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %2, i8 0, i64 336, i1 false)
  store i32 %i.e, ptr %2, align 8, !tbaa !30
  store i64 %i.av, ptr %i.cj, align 8, !tbaa !31
  store i64 %i.ee, ptr %i.ck, align 8, !tbaa !31
  store i64 1, ptr %i.cl, align 8, !tbaa !31
  store i64 1, ptr %i.cm, align 8, !tbaa !31
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !64 ; 3 uses
  store i64 %i.ol, ptr %i.cn, align 8, !tbaa !31
  %i.om = mul i64 %i.ol, %i.av                    ; 6 uses
  store i64 %i.om, ptr %i.co, align 8, !tbaa !31
  store i64 %i.om, ptr %i.cp, align 8, !tbaa !31
  store i64 %i.om, ptr %i.cq, align 8, !tbaa !31
  store ptr %i.br, ptr %i.cr, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %3, i8 0, i64 336, i1 false)
  store i32 %i.e, ptr %3, align 8, !tbaa !30
  store <4 x i64> %i.dr, ptr %i.cs, align 8, !tbaa !31
  store i64 %i.ol, ptr %i.ct, align 8, !tbaa !31
  store i64 %i.om, ptr %i.cu, align 8, !tbaa !31
  store i64 %i.om, ptr %i.cv, align 8, !tbaa !31
  store i64 %i.om, ptr %i.cw, align 8, !tbaa !31
  store ptr %i.ar, ptr %i.cx, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %4, i8 0, i64 336, i1 false)
  store i64 %i.y, ptr %i.cy, align 8, !tbaa !31
  store i64 %i.ee, ptr %i.cz, align 8, !tbaa !31
  store i64 1, ptr %i.da, align 8, !tbaa !31
  store i64 1, ptr %i.db, align 8, !tbaa !31
  store i64 4, ptr %i.dc, align 8, !tbaa !31
  store i64 %i.bd, ptr %i.dd, align 8, !tbaa !31
  store i64 %i.bd, ptr %i.de, align 8, !tbaa !31
  store i64 %i.bd, ptr %i.df, align 8, !tbaa !31
  store ptr %i.et, ptr %i.dg, align 8, !tbaa !37
  store ptr %3, ptr %i.dh, align 8, !tbaa !24
  store ptr %2, ptr %i.di, align 8, !tbaa !24
  call void @ggml_compute_forward_mul_mat(ptr noundef nonnull %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.on = load ptr, ptr %i.ch, align 8, !tbaa !57
  call void @ggml_barrier(ptr noundef %i.on)
  %i.oo = load i32, ptr %i.bt, align 4, !tbaa !36 ; 2 uses
  %i.op = sext i32 %i.oo to i64                   ; 2 uses
  %i.oq = add i64 %i.eg, %i.op
  %i.or = sdiv i64 %i.oq, %i.op                   ; 3 uses
  %i.os = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ot = sext i32 %i.os to i64                   ; 2 uses
  %i.ou = mul nsw i64 %i.or, %i.ot                ; 3 uses
  %i.ov = add nsw i64 %i.ou, %i.or                ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.ee, i64 %i.ov) ; 2 uses
  %i.ow = icmp sge i64 %i.ou, %.sroa.speculated.i
  %brmerge.i = select i1 %i.ow, i1 true, i1 %i.dj
  br i1 %brmerge.i, label %._crit_edge261.split.i, label %.lr.ph260.split.i

.lr.ph260.split.i:                                ; preds = %bb.t
  %i.ox = load i64, ptr %i.dk, align 8, !tbaa !31
  %i.oy = load i64, ptr %i.dl, align 8, !tbaa !31
  %i.oz = load i64, ptr %i.dm, align 8, !tbaa !31 ; 10 uses
  %i.pa = load i64, ptr %i.dn, align 8, !tbaa !31
  %smin284.i = call i64 @llvm.smin.i64(i64 %i.ov, i64 %i.eb)
  %i.pb = mul i64 %i.do, %.sroa.speculated.i
  %i.pc = getelementptr i8, ptr %i.br, i64 %i.es
  %scevgep = getelementptr i8, ptr %i.pc, i64 %i.pb
  %i.pd = mul i64 %i.dp, %i.or
  %i.pe = mul i64 %i.pd, %i.ot
  %i.pf = getelementptr i8, ptr %i.br, i64 %i.es
  %scevgep47 = getelementptr i8, ptr %i.pf, i64 %i.pe
  %ident.check = icmp ne i64 %i.oz, 1
  br label %iter.check

._crit_edge261.split.i:                           ; preds = %._crit_edge257.i, %bb.t
  %i.pg = add nuw nsw i64 %.0192262.i, 1          ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, %i.bk
  %indvars.iv.next283.i = sub i64 %indvars.iv282.i, %i.bk
  %exitcond286.not.i = icmp eq i64 %i.pg, %i.bn
  br i1 %exitcond286.not.i, label %_ZL33ggml_compute_forward_conv_2d_implPK19ggml_compute_paramsPK11ggml_tensorS4_PS2_9ggml_type.exit, label %bb.l, !llvm.loop !1105

iter.check:                                       ; preds = %._crit_edge257.i, %.lr.ph260.split.i
  %.0186258.i = phi i64 [ %i.ou, %.lr.ph260.split.i ], [ %i.qo, %._crit_edge257.i ] ; 3 uses
  %i.ph = add nsw i64 %.0186258.i, %i.ec          ; 3 uses
  %i.pi = sdiv i64 %i.ph, %i.ay
  %i.pj = sdiv i64 %i.ph, %i.al
  %i.pk = srem i64 %i.pj, %i.an
  %i.pl = srem i64 %i.ph, %i.al
  %i.pm = mul nsw i64 %.0186258.i, %i.y
  %i.pn = getelementptr [4 x i8], ptr %i.et, i64 %i.pm ; 11 uses
  %i.po = mul i64 %i.pl, %i.ox                    ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.po
  %i.pq = mul i64 %i.pk, %i.oy                    ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.pq
  %i.ps = mul i64 %i.pi, %i.pa                    ; 2 uses
  %invariant.gep.i = getelementptr i8, ptr %i.pr, i64 %i.ps ; 17 uses
  %i.pt = getelementptr i8, ptr %invariant.gep.i, i64 %i.y
  %i.pu = getelementptr i8, ptr %i.pt, i64 -1
  %i.pv = icmp ult ptr %i.pu, %invariant.gep.i
  %i.pw = or i1 %ident.check, %i.pv
  %or.cond264 = select i1 %min.iters.check, i1 true, i1 %i.pw
  br i1 %or.cond264, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %5 = getelementptr i8, ptr %i.dx, i64 %i.pq
  %i.px = getelementptr i8, ptr %5, i64 %i.po
  %i.py = getelementptr i8, ptr %i.px, i64 %i.ps
  %i.pz = getelementptr i8, ptr %i.py, i64 3
  %bound0 = icmp ult ptr %scevgep47, %i.pz
  %bound1 = icmp ult ptr %invariant.gep.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.qa = or i1 %found.conflict, %stride.check
  br i1 %i.qa, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %i.qb = getelementptr [4 x i8], ptr %i.pn, i64 %index ; 4 uses
  %i.qc = getelementptr i8, ptr %i.qb, i64 32
  %i.qd = getelementptr i8, ptr %i.qb, i64 64
  %i.qe = getelementptr i8, ptr %i.qb, i64 96
  %wide.load = load <8 x float>, ptr %i.qb, align 4, !tbaa !43, !alias.scope !1114, !noalias !1115
  %wide.load49 = load <8 x float>, ptr %i.qc, align 4, !tbaa !43, !alias.scope !1114, !noalias !1115
  %wide.load50 = load <8 x float>, ptr %i.qd, align 4, !tbaa !43, !alias.scope !1114, !noalias !1115
  %wide.load51 = load <8 x float>, ptr %i.qe, align 4, !tbaa !43, !alias.scope !1114, !noalias !1115
  %wide.gep = getelementptr i8, ptr %invariant.gep.i, <8 x i64> %vec.ind
  %wide.gep52 = getelementptr i8, ptr %invariant.gep.i, <8 x i64> %step.add
  %wide.gep53 = getelementptr i8, ptr %invariant.gep.i, <8 x i64> %step.add.2
  %wide.gep54 = getelementptr i8, ptr %invariant.gep.i, <8 x i64> %step.add.3
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1115
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load49, <8 x ptr> align 4 %wide.gep52, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1115
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load50, <8 x ptr> align 4 %wide.gep53, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1115
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load51, <8 x ptr> align 4 %wide.gep54, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1115
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.qf = icmp eq i64 %index.next, %n.vec
  br i1 %i.qf, label %middle.block, label %vector.body, !llvm.loop !1109

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge257.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind57 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next61, %vec.epilog.vector.body ] ; 2 uses
  %i.qg = getelementptr [4 x i8], ptr %i.pn, i64 %index56
  %wide.load58 = load <8 x float>, ptr %i.qg, align 4, !tbaa !43, !alias.scope !1114, !noalias !1115
  %wide.gep59 = getelementptr i8, ptr %invariant.gep.i, <8 x i64> %vec.ind57
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load58, <8 x ptr> align 4 %wide.gep59, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1115
  %index.next60 = add nuw i64 %index56, 8         ; 2 uses
  %vec.ind.next61 = add nuw nsw <8 x i64> %vec.ind57, splat (i64 8)
  %i.qh = icmp eq i64 %index.next60, %n.vec55
  br i1 %i.qh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1110

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n62, label %._crit_edge257.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0254.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec55, %vec.epilog.middle.block ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod203.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0254.i.prol = phi i64 [ %i.ql, %vec.epilog.scalar.ph.prol ], [ %.0254.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter204 = phi i64 [ %prol.iter204.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.qi = getelementptr [4 x i8], ptr %i.pn, i64 %.0254.i.prol
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !43
  %i.qk = mul i64 %.0254.i.prol, %i.oz
  %gep.i.prol = getelementptr i8, ptr %invariant.gep.i, i64 %i.qk
  store float %i.qj, ptr %gep.i.prol, align 4, !tbaa !43
  %i.ql = add nuw nsw i64 %.0254.i.prol, 1        ; 2 uses
  %prol.iter204.next = add i64 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i64 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1111

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0254.i.unr = phi i64 [ %.0254.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ql, %vec.epilog.scalar.ph.prol ]
  %i.qm = sub nsw i64 %.0254.i.ph, %i.y
  %i.qn = icmp ugt i64 %i.qm, -8
  br i1 %i.qn, label %._crit_edge257.i, label %vec.epilog.scalar.ph

._crit_edge257.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.qo = add nsw i64 %.0186258.i, 1              ; 2 uses
  %exitcond285.not.i = icmp eq i64 %i.qo, %smin284.i
  br i1 %exitcond285.not.i, label %._crit_edge261.split.i, label %iter.check, !llvm.loop !1112

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0254.i = phi i64 [ %i.ru, %vec.epilog.scalar.ph ], [ %.0254.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.qp = getelementptr [4 x i8], ptr %i.pn, i64 %.0254.i
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !43
  %i.qr = mul i64 %.0254.i, %i.oz
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.qr
  store float %i.qq, ptr %gep.i, align 4, !tbaa !43
  %i.qs = add nuw nsw i64 %.0254.i, 1             ; 2 uses
  %i.qt = getelementptr [4 x i8], ptr %i.pn, i64 %i.qs
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !43
  %i.qv = mul i64 %i.qs, %i.oz
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.qv
  store float %i.qu, ptr %gep.i.1, align 4, !tbaa !43
  %i.qw = add nuw nsw i64 %.0254.i, 2             ; 2 uses
  %i.qx = getelementptr [4 x i8], ptr %i.pn, i64 %i.qw
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !43
  %i.qz = mul i64 %i.qw, %i.oz
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 %i.qz
  store float %i.qy, ptr %gep.i.2, align 4, !tbaa !43
  %i.ra = add nuw nsw i64 %.0254.i, 3             ; 2 uses
  %i.rb = getelementptr [4 x i8], ptr %i.pn, i64 %i.ra
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !43
  %i.rd = mul i64 %i.ra, %i.oz
  %gep.i.3 = getelementptr i8, ptr %invariant.gep.i, i64 %i.rd
  store float %i.rc, ptr %gep.i.3, align 4, !tbaa !43
  %i.re = add nuw nsw i64 %.0254.i, 4             ; 2 uses
  %i.rf = getelementptr [4 x i8], ptr %i.pn, i64 %i.re
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !43
  %i.rh = mul i64 %i.re, %i.oz
  %gep.i.4 = getelementptr i8, ptr %invariant.gep.i, i64 %i.rh
  store float %i.rg, ptr %gep.i.4, align 4, !tbaa !43
  %i.ri = add nuw nsw i64 %.0254.i, 5             ; 2 uses
  %i.rj = getelementptr [4 x i8], ptr %i.pn, i64 %i.ri
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !43
  %i.rl = mul i64 %i.ri, %i.oz
  %gep.i.5 = getelementptr i8, ptr %invariant.gep.i, i64 %i.rl
  store float %i.rk, ptr %gep.i.5, align 4, !tbaa !43
  %i.rm = add nuw nsw i64 %.0254.i, 6             ; 2 uses
  %i.rn = getelementptr [4 x i8], ptr %i.pn, i64 %i.rm
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !43
  %i.rp = mul i64 %i.rm, %i.oz
  %gep.i.6 = getelementptr i8, ptr %invariant.gep.i, i64 %i.rp
  store float %i.ro, ptr %gep.i.6, align 4, !tbaa !43
  %i.rq = add nuw nsw i64 %.0254.i, 7             ; 2 uses
  %i.rr = getelementptr [4 x i8], ptr %i.pn, i64 %i.rq
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !43
  %i.rt = mul i64 %i.rq, %i.oz
  %gep.i.7 = getelementptr i8, ptr %invariant.gep.i, i64 %i.rt
  store float %i.rs, ptr %gep.i.7, align 4, !tbaa !43
  %i.ru = add nuw nsw i64 %.0254.i, 8             ; 2 uses
  %exitcond281.not.i.7 = icmp eq i64 %i.ru, %i.y
  br i1 %exitcond281.not.i.7, label %._crit_edge257.i, label %vec.epilog.scalar.ph, !llvm.loop !1113

_ZL33ggml_compute_forward_conv_2d_implPK19ggml_compute_paramsPK11ggml_tensorS4_PS2_9ggml_type.exit: ; preds = %._crit_edge261.split.i, %bb.k
  ret void
}

declare void @ggml_compute_forward_mul_mat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_conv_3d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ggml_tensor, align 8        ; 14 uses
  %3 = alloca %struct.ggml_tensor, align 8        ; 14 uses
  %4 = alloca %struct.ggml_tensor, align 8        ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 8 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !30   ; 7 uses
  %i.f = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %i.b)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7227, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.116) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %or.cond.i = icmp ult i32 %i.e, 2
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7228, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.117) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.b, align 8, !tbaa !30
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7229, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.118) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = tail call ptr @ggml_get_type_traits(i32 noundef %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load i32, ptr %i.l, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.o = load i32, ptr %i.n, align 4, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = load i32, ptr %i.p, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load i32, ptr %i.t, align 8, !tbaa !51
end_hunk_3
begin_hunk_4_@ggml_compute_forward_pad_reflect_1d:bb.a
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.next.i.3
  %i.om = load float, ptr %i.ol, align 4, !tbaa !43
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next.i.3
  store float %i.om, ptr %i.on, align 4, !tbaa !43
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.next.i.4
  %i.op = load float, ptr %i.oo, align 4, !tbaa !43
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next.i.4
  store float %i.op, ptr %i.oq, align 4, !tbaa !43
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.next.i.5
  %i.os = load float, ptr %i.or, align 4, !tbaa !43
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next.i.5
  store float %i.os, ptr %i.ot, align 4, !tbaa !43
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.next.i.6
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !43
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next.i.6
  store float %i.ov, ptr %i.ow, align 4, !tbaa !43
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader, label %.lr.ph.i, !llvm.loop !1315

..preheader_crit_edge.unr-lcssa:                  ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit
  br i1 %lcmp.mod311.not, label %..preheader_crit_edge, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil.preheader

_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil.preheader:  ; preds = %..preheader_crit_edge.unr-lcssa, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader ], [ %indvars.iv.next.7, %..preheader_crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod312)
  br label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil

_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil:            ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil ], [ %indvars.iv.epil.init, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil ], [ 0, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil.preheader ]
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.epil
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !43
  %i.oz = sub nsw i64 0, %indvars.iv.epil
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.oz
  store float %i.oy, ptr %i.pa, align 4, !tbaa !43
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter310
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil, !llvm.loop !1316

..preheader_crit_edge:                            ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil, %..preheader_crit_edge.unr-lcssa
  br i1 %.not96100, label %._crit_edge, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %..preheader_crit_edge
  br i1 %i.bv, label %.lr.ph102.epil.preheader, label %.lr.ph102

_ZL16ggml_vec_cpy_f32iPfPKf.exit:                 ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader, %_ZL16ggml_vec_cpy_f32iPfPKf.exit
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %_ZL16ggml_vec_cpy_f32iPfPKf.exit ], [ 1, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader ] ; 17 uses
  %niter = phi i64 [ %niter.next.7, %_ZL16ggml_vec_cpy_f32iPfPKf.exit ], [ 0, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader ]
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !43
  %i.pd = sub nsw i64 0, %indvars.iv
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.pd
  store float %i.pc, ptr %i.pe, align 4, !tbaa !43
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !43
  %i.pi = xor i64 %indvars.iv, -1
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.pi
  store float %i.ph, ptr %i.pj, align 4, !tbaa !43
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !43
  %i.pn = sub nuw nsw i64 -2, %indvars.iv
  %i.po = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.pn
  store float %i.pm, ptr %i.po, align 4, !tbaa !43
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 12
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !43
  %i.ps = sub nuw nsw i64 -3, %indvars.iv
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.ps
  store float %i.pr, ptr %i.pt, align 4, !tbaa !43
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !43
  %i.px = sub nuw nsw i64 -4, %indvars.iv
  %i.py = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.px
  store float %i.pw, ptr %i.py, align 4, !tbaa !43
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 20
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !43
  %i.qc = sub nuw nsw i64 -5, %indvars.iv
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.qc
  store float %i.qb, ptr %i.qd, align 4, !tbaa !43
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !43
  %i.qh = sub nuw nsw i64 -6, %indvars.iv
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.qh
  store float %i.qg, ptr %i.qi, align 4, !tbaa !43
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 28
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !43
  %i.qm = sub nuw nsw i64 -7, %indvars.iv
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.qm
  store float %i.ql, ptr %i.qn, align 4, !tbaa !43
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %..preheader_crit_edge.unr-lcssa, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit, !llvm.loop !1317

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph102
  br i1 %lcmp.mod315.not, label %._crit_edge, label %.lr.ph102.epil.preheader

.lr.ph102.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph102.preheader
  %indvars.iv146.epil.init = phi i64 [ 1, %.lr.ph102.preheader ], [ %indvars.iv.next147.7, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod316)
  br label %.lr.ph102.epil

.lr.ph102.epil:                                   ; preds = %.lr.ph102.epil, %.lr.ph102.epil.preheader
  %indvars.iv146.epil = phi i64 [ %indvars.iv.next147.epil, %.lr.ph102.epil ], [ %indvars.iv146.epil.init, %.lr.ph102.epil.preheader ] ; 3 uses
  %epil.iter314 = phi i64 [ %epil.iter314.next, %.lr.ph102.epil ], [ 0, %.lr.ph102.epil.preheader ]
  %i.qo = sub nsw i64 0, %indvars.iv146.epil
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.qo
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !43
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv146.epil
  store float %i.qq, ptr %i.qr, align 4, !tbaa !43
  %indvars.iv.next147.epil = add nuw nsw i64 %indvars.iv146.epil, 1
  %epil.iter314.next = add i64 %epil.iter314, 1   ; 2 uses
  %epil.iter314.cmp.not = icmp eq i64 %epil.iter314.next, %xtraiter313
  br i1 %epil.iter314.cmp.not, label %._crit_edge, label %.lr.ph102.epil, !llvm.loop !1318

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph102.epil, %..preheader_crit_edge
  %i.qs = add nsw i64 %.093103, %i.ax             ; 2 uses
  %i.qt = icmp slt i64 %i.qs, %i.r
  br i1 %i.qt, label %bb.g, label %._crit_edge106.split, !llvm.loop !1296

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %.lr.ph102
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.7, %.lr.ph102 ], [ 1, %.lr.ph102.preheader ] ; 17 uses
  %niter318 = phi i64 [ %niter318.next.7, %.lr.ph102 ], [ 0, %.lr.ph102.preheader ]
  %i.qu = sub nsw i64 0, %indvars.iv146
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.qu
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !43
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv146
  store float %i.qw, ptr %i.qx, align 4, !tbaa !43
  %i.qy = xor i64 %indvars.iv146, -1
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.qy
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !43
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv146
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  store float %i.ra, ptr %i.rc, align 4, !tbaa !43
  %i.rd = sub nuw nsw i64 -2, %indvars.iv146
  %i.re = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.rd
  %i.rf = load float, ptr %i.re, align 4, !tbaa !43
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv146
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store float %i.rf, ptr %i.rh, align 4, !tbaa !43
  %i.ri = sub nuw nsw i64 -3, %indvars.iv146
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.ri
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !43
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv146
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  store float %i.rk, ptr %i.rm, align 4, !tbaa !43
  %i.rn = sub nuw nsw i64 -4, %indvars.iv146
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.rn
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !43
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv146
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  store float %i.rp, ptr %i.rr, align 4, !tbaa !43
  %i.rs = sub nuw nsw i64 -5, %indvars.iv146
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.rs
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !43
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv146
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 20
  store float %i.ru, ptr %i.rw, align 4, !tbaa !43
  %i.rx = sub nuw nsw i64 -6, %indvars.iv146
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.rx
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !43
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv146
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  store float %i.rz, ptr %i.sb, align 4, !tbaa !43
  %i.sc = sub nuw nsw i64 -7, %indvars.iv146
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.sc
  %i.se = load float, ptr %i.sd, align 4, !tbaa !43
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv146
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 28
  store float %i.se, ptr %i.sg, align 4, !tbaa !43
  %indvars.iv.next147.7 = add nuw nsw i64 %indvars.iv146, 8 ; 2 uses
  %niter318.next.7 = add i64 %niter318, 8         ; 2 uses
  %niter318.ncmp.7 = icmp eq i64 %niter318.next.7, %unroll_iter317
  br i1 %niter318.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph102, !llvm.loop !1306
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_roll(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 8 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %2 = ptrtoaddr ptr %i.e to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load <2 x i64>, ptr %i.i, align 8, !tbaa !31 ; 3 uses
  %i.t = load <2 x i64>, ptr %i.r, align 8, !tbaa !31 ; 3 uses
  %i.u = extractelement <2 x i64> %i.t, i64 0     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ad = extractelement <2 x i64> %i.t, i64 1
  %i.ae = mul nsw i64 %i.ad, %i.u                 ; 2 uses
  %i.af = mul nsw i64 %i.ae, %i.w                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !36
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = add nsw i64 %i.af, %i.ai
  %i.ak = sdiv i64 %i.aj, %i.ai                   ; 2 uses
  %i.al = load i32, ptr %0, align 8, !tbaa !35
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.ak, %i.am                ; 3 uses
  %i.ao = add nsw i64 %i.an, %i.ak
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.af, i64 %i.ao) ; 2 uses
  %i.ap = icmp slt i64 %i.an, %.sroa.speculated.i
  br i1 %i.ap, label %.lr.ph.i, label %_ZL29ggml_compute_forward_roll_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.at = load <2 x i32>, ptr %i.as, align 8, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.av = load i32, ptr %i.au, align 4, !tbaa !51 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !31 ; 4 uses
  %i.ay = sext <2 x i32> %i.at to <2 x i64>
  %i.az = sext i32 %i.ar to i64
  %i.ba = sub i32 0, %i.av
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp sgt i32 %i.av, 0
  %.not.i114.i = icmp sgt i64 %i.ax, %i.bb
  %i.bd = select i1 %.not.i114.i, i64 0, i64 %i.ax
  %i.be = sub i64 0, %i.bd
  %.0.p.i115.i = select i1 %i.bc, i64 %i.ax, i64 %i.be ; 2 uses
  %.0.i116.i = add i64 %.0.p.i115.i, %i.bb        ; 8 uses
  %i.bf = sub i64 %i.ax, %.0.i116.i               ; 8 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = icmp sgt i32 %i.bg, 0
  %wide.trip.count.i.i = and i64 %i.bf, 2147483647 ; 6 uses
  %i.bi = trunc i64 %.0.i116.i to i32
  %i.bj = icmp sgt i32 %i.bi, 0
  %wide.trip.count.i118.i = and i64 %.0.i116.i, 2147483647 ; 6 uses
  %i.bk = shl i64 %i.bf, 2
  %3 = sext i32 %i.av to i64
  %i.bl = shl nsw i64 %3, 2
  %i.bm = shl i64 %.0.p.i115.i, 2
  %min.iters.check16 = icmp samesign ult i64 %wide.trip.count.i.i, 4
  %i.bn = add i64 %i.bm, %2
  %min.iters.check20 = icmp samesign ult i64 %wide.trip.count.i.i, 32
  %i.bo = and i64 %i.bf, 28
  %n.vec22 = and i64 %i.bf, 2147483616            ; 4 uses
  %cmp.n31 = icmp eq i64 %wide.trip.count.i.i, %n.vec22
  %min.epilog.iters.check35 = icmp eq i64 %i.bo, 0
  %n.vec38 = and i64 %i.bf, 2147483644            ; 3 uses
  %cmp.n44 = icmp eq i64 %wide.trip.count.i.i, %n.vec38
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i118.i, 4
  %invariant.op = add i64 %i.h, %i.bk
  %min.iters.check5 = icmp samesign ult i64 %wide.trip.count.i118.i, 32
  %i.bp = and i64 %.0.i116.i, 28
  %n.vec = and i64 %.0.i116.i, 2147483616         ; 4 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i118.i, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  %n.vec9 = and i64 %.0.i116.i, 2147483644        ; 3 uses
  %cmp.n13 = icmp eq i64 %wide.trip.count.i118.i, %n.vec9
  br label %bb.c

bb.c:                                             ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i, %.lr.ph.i
  %.0127.i = phi i64 [ %i.an, %.lr.ph.i ], [ %i.gn, %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i ] ; 5 uses
  %i.bq = sdiv i64 %.0127.i, %i.u
  %i.br = sdiv i64 %.0127.i, %i.ae                ; 2 uses
  %i.bs = mul i64 %i.br, %i.ac
  %i.bt = insertelement <2 x i64> poison, i64 %.0127.i, i64 0
  %i.bu = insertelement <2 x i64> %i.bt, i64 %i.bq, i64 1
  %i.bv = srem <2 x i64> %i.bu, %i.t              ; 2 uses
  %i.bw = srem i64 %.0127.i, %i.u
  %i.bx = extractelement <2 x i64> %i.bv, i64 1
  %i.by = mul i64 %i.bx, %i.aa
  %i.bz = mul i64 %i.bw, %i.y
  %i.ca = add i64 %i.by, %i.bz
  %i.cb = add i64 %i.ca, %i.bs                    ; 3 uses
  %i.cc = lshr i64 %i.cb, 2
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cc ; 12 uses
  %i.ce = sub <2 x i64> %i.bv, %i.ay              ; 3 uses
  %i.cf = icmp slt <2 x i64> %i.ce, %i.s
  %i.cg = select <2 x i1> %i.cf, <2 x i64> zeroinitializer, <2 x i64> %i.s
  %i.ch = sub <2 x i64> zeroinitializer, %i.cg
  %i.ci = icmp slt <2 x i64> %i.ce, zeroinitializer
  %i.cj = select <2 x i1> %i.ci, <2 x i64> %i.s, <2 x i64> %i.ch
  %i.ck = add <2 x i64> %i.cj, %i.ce              ; 2 uses
  %i.cl = sub i64 %i.br, %i.az                    ; 3 uses
  %i.cm = icmp slt i64 %i.cl, 0
  %.not.i111.i = icmp slt i64 %i.cl, %i.k
  %i.cn = select i1 %.not.i111.i, i64 0, i64 %i.k
  %i.co = sub i64 0, %i.cn
  %.0.p.i112.i = select i1 %i.cm, i64 %i.k, i64 %i.co
  %.0.i113.i = add i64 %.0.p.i112.i, %i.cl
  %i.cp = mul i64 %.0.i113.i, %i.q
  %i.cq = extractelement <2 x i64> %i.ck, i64 1
  %i.cr = mul i64 %i.cq, %i.o
  %i.cs = extractelement <2 x i64> %i.ck, i64 0
  %i.ct = mul i64 %i.cs, %i.m
  %i.cu = add i64 %i.cr, %i.ct
  %i.cv = add i64 %i.cu, %i.cp                    ; 3 uses
  %i.cw = lshr i64 %i.cv, 2
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cw ; 12 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %.0.i116.i ; 11 uses
  br i1 %i.bh, label %iter.check32, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i

iter.check32:                                     ; preds = %bb.c
  br i1 %min.iters.check16, label %.lr.ph.i.i.preheader, label %vector.memcheck17

vector.memcheck17:                                ; preds = %iter.check32
  %i.cz = and i64 %i.cb, -4
  %i.da = and i64 %i.cv, -4
  %4 = add i64 %i.bn, %i.da
  %.neg = sub i64 %i.bl, %4
  %i.db = add i64 %i.cz, %i.h
  %i.dc = add i64 %.neg, %i.db
  %5 = add i64 %i.dc, -1
  %diff.check18 = icmp ult i64 %5, 127
  br i1 %diff.check18, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check19

vector.main.loop.iter.check19:                    ; preds = %vector.memcheck17
  br i1 %min.iters.check20, label %vec.epilog.ph36, label %vector.body23

vector.body23:                                    ; preds = %vector.main.loop.iter.check19, %vector.body23
  %index24 = phi i64 [ %index.next29, %vector.body23 ], [ 0, %vector.main.loop.iter.check19 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index24 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 96
  %wide.load25 = load <8 x float>, ptr %i.dd, align 4, !tbaa !43
  %wide.load26 = load <8 x float>, ptr %i.de, align 4, !tbaa !43
  %wide.load27 = load <8 x float>, ptr %i.df, align 4, !tbaa !43
  %wide.load28 = load <8 x float>, ptr %i.dg, align 4, !tbaa !43
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index24 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  store <8 x float> %wide.load25, ptr %i.dh, align 4, !tbaa !43
  store <8 x float> %wide.load26, ptr %i.di, align 4, !tbaa !43
  store <8 x float> %wide.load27, ptr %i.dj, align 4, !tbaa !43
  store <8 x float> %wide.load28, ptr %i.dk, align 4, !tbaa !43
  %index.next29 = add nuw i64 %index24, 32        ; 2 uses
  %i.dl = icmp eq i64 %index.next29, %n.vec22
  br i1 %i.dl, label %middle.block30, label %vector.body23, !llvm.loop !1325

middle.block30:                                   ; preds = %vector.body23
  br i1 %cmp.n31, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i, label %vec.epilog.iter.check33

vec.epilog.iter.check33:                          ; preds = %middle.block30
  br i1 %min.epilog.iters.check35, label %.lr.ph.i.i.preheader, label %vec.epilog.ph36, !prof !52

vec.epilog.ph36:                                  ; preds = %vector.main.loop.iter.check19, %vec.epilog.iter.check33
  %vec.epilog.resume.val37 = phi i64 [ %n.vec22, %vec.epilog.iter.check33 ], [ 0, %vector.main.loop.iter.check19 ]
  br label %vec.epilog.vector.body39

vec.epilog.vector.body39:                         ; preds = %vec.epilog.vector.body39, %vec.epilog.ph36
  %index40 = phi i64 [ %vec.epilog.resume.val37, %vec.epilog.ph36 ], [ %index.next42, %vec.epilog.vector.body39 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index40
  %wide.load41 = load <4 x float>, ptr %i.dm, align 4, !tbaa !43
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index40
  store <4 x float> %wide.load41, ptr %i.dn, align 4, !tbaa !43
  %index.next42 = add nuw i64 %index40, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next42, %n.vec38
  br i1 %i.do, label %vec.epilog.middle.block43, label %vec.epilog.vector.body39, !llvm.loop !1326

vec.epilog.middle.block43:                        ; preds = %vec.epilog.vector.body39
  br i1 %cmp.n44, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check32, %vector.memcheck17, %vec.epilog.iter.check33, %vec.epilog.middle.block43
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check32 ], [ 0, %vector.memcheck17 ], [ %n.vec22, %vec.epilog.iter.check33 ], [ %n.vec38, %vec.epilog.middle.block43 ] ; 4 uses
  %i.dp = sub i64 %i.bf, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.dp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i.prol
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !43
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.i.i.prol
  store float %i.dr, ptr %i.ds, align 4, !tbaa !43
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1327

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.dt = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.du = icmp ugt i64 %i.dt, -8
  br i1 %i.du, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !43
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.i.i
  store float %i.dw, ptr %i.dx, align 4, !tbaa !43
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.i
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !43
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next.i.i
  store float %i.dz, ptr %i.ea, align 4, !tbaa !43
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.i.1
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !43
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next.i.i.1
  store float %i.ec, ptr %i.ed, align 4, !tbaa !43
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.i.2
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !43
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next.i.i.2
  store float %i.ef, ptr %i.eg, align 4, !tbaa !43
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.i.3
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !43
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next.i.i.3
  store float %i.ei, ptr %i.ej, align 4, !tbaa !43
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.i.4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !43
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next.i.i.4
  store float %i.el, ptr %i.em, align 4, !tbaa !43
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.i.5
  %i.eo = load float, ptr %i.en, align 4, !tbaa !43
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next.i.i.5
  store float %i.eo, ptr %i.ep, align 4, !tbaa !43
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.i.6
  %i.er = load float, ptr %i.eq, align 4, !tbaa !43
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next.i.i.6
  store float %i.er, ptr %i.es, align 4, !tbaa !43
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.7, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i, label %.lr.ph.i.i, !llvm.loop !1328

_ZL16ggml_vec_cpy_f32iPfPKf.exit.i:               ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block30, %vec.epilog.middle.block43, %bb.c
  %i.et = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.bf ; 11 uses
  br i1 %i.bj, label %iter.check, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i

iter.check:                                       ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i
  br i1 %min.iters.check, label %.lr.ph.i119.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.eu = and i64 %i.cb, -4
  %i.ev = and i64 %i.cv, -4
  %.reass = add i64 %i.eu, %invariant.op
  %i.ew = add i64 %i.ev, %2
  %6 = sub i64 %i.ew, %.reass
  %diff.check = icmp ugt i64 %6, -128
  br i1 %diff.check, label %.lr.ph.i119.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 96
  %wide.load = load <8 x float>, ptr %i.ex, align 4, !tbaa !43
  %wide.load6 = load <8 x float>, ptr %i.ey, align 4, !tbaa !43
  %wide.load7 = load <8 x float>, ptr %i.ez, align 4, !tbaa !43
  %wide.load8 = load <8 x float>, ptr %i.fa, align 4, !tbaa !43
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  store <8 x float> %wide.load, ptr %i.fb, align 4, !tbaa !43
  store <8 x float> %wide.load6, ptr %i.fc, align 4, !tbaa !43
  store <8 x float> %wide.load7, ptr %i.fd, align 4, !tbaa !43
  store <8 x float> %wide.load8, ptr %i.fe, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !1329

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i119.i.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index10
  %wide.load11 = load <4 x float>, ptr %i.fg, align 4, !tbaa !43
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index10
  store <4 x float> %wide.load11, ptr %i.fh, align 4, !tbaa !43
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.fi = icmp eq i64 %index.next12, %n.vec9
  br i1 %i.fi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1330

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n13, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i, label %.lr.ph.i119.i.preheader

.lr.ph.i119.i.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i120.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec9, %vec.epilog.middle.block ] ; 4 uses
  %i.fj = sub i64 %.0.i116.i, %indvars.iv.i120.i.ph
  %xtraiter46 = and i64 %i.fj, 7                  ; 2 uses
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47.not, label %.lr.ph.i119.i.prol.loopexit, label %.lr.ph.i119.i.prol

.lr.ph.i119.i.prol:                               ; preds = %.lr.ph.i119.i.preheader, %.lr.ph.i119.i.prol
  %indvars.iv.i120.i.prol = phi i64 [ %indvars.iv.next.i121.i.prol, %.lr.ph.i119.i.prol ], [ %indvars.iv.i120.i.ph, %.lr.ph.i119.i.preheader ] ; 3 uses
  %prol.iter48 = phi i64 [ %prol.iter48.next, %.lr.ph.i119.i.prol ], [ 0, %.lr.ph.i119.i.preheader ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i120.i.prol
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !43
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.i120.i.prol
  store float %i.fl, ptr %i.fm, align 4, !tbaa !43
  %indvars.iv.next.i121.i.prol = add nuw nsw i64 %indvars.iv.i120.i.prol, 1 ; 2 uses
  %prol.iter48.next = add i64 %prol.iter48, 1     ; 2 uses
  %prol.iter48.cmp.not = icmp eq i64 %prol.iter48.next, %xtraiter46
  br i1 %prol.iter48.cmp.not, label %.lr.ph.i119.i.prol.loopexit, label %.lr.ph.i119.i.prol, !llvm.loop !1331

.lr.ph.i119.i.prol.loopexit:                      ; preds = %.lr.ph.i119.i.prol, %.lr.ph.i119.i.preheader
  %indvars.iv.i120.i.unr = phi i64 [ %indvars.iv.i120.i.ph, %.lr.ph.i119.i.preheader ], [ %indvars.iv.next.i121.i.prol, %.lr.ph.i119.i.prol ]
  %i.fn = sub nsw i64 %indvars.iv.i120.i.ph, %wide.trip.count.i118.i
  %i.fo = icmp ugt i64 %i.fn, -8
  br i1 %i.fo, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i, label %.lr.ph.i119.i

.lr.ph.i119.i:                                    ; preds = %.lr.ph.i119.i.prol.loopexit, %.lr.ph.i119.i
  %indvars.iv.i120.i = phi i64 [ %indvars.iv.next.i121.i.7, %.lr.ph.i119.i ], [ %indvars.iv.i120.i.unr, %.lr.ph.i119.i.prol.loopexit ] ; 10 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i120.i
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !43
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.i120.i
  store float %i.fq, ptr %i.fr, align 4, !tbaa !43
  %indvars.iv.next.i121.i = add nuw nsw i64 %indvars.iv.i120.i, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next.i121.i
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !43
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.i121.i
  store float %i.ft, ptr %i.fu, align 4, !tbaa !43
  %indvars.iv.next.i121.i.1 = add nuw nsw i64 %indvars.iv.i120.i, 2 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next.i121.i.1
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !43
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.i121.i.1
  store float %i.fw, ptr %i.fx, align 4, !tbaa !43
  %indvars.iv.next.i121.i.2 = add nuw nsw i64 %indvars.iv.i120.i, 3 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next.i121.i.2
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !43
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.i121.i.2
  store float %i.fz, ptr %i.ga, align 4, !tbaa !43
  %indvars.iv.next.i121.i.3 = add nuw nsw i64 %indvars.iv.i120.i, 4 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next.i121.i.3
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !43
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.i121.i.3
  store float %i.gc, ptr %i.gd, align 4, !tbaa !43
  %indvars.iv.next.i121.i.4 = add nuw nsw i64 %indvars.iv.i120.i, 5 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next.i121.i.4
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !43
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.i121.i.4
  store float %i.gf, ptr %i.gg, align 4, !tbaa !43
  %indvars.iv.next.i121.i.5 = add nuw nsw i64 %indvars.iv.i120.i, 6 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next.i121.i.5
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !43
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.i121.i.5
  store float %i.gi, ptr %i.gj, align 4, !tbaa !43
  %indvars.iv.next.i121.i.6 = add nuw nsw i64 %indvars.iv.i120.i, 7 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next.i121.i.6
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !43
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.i121.i.6
  store float %i.gl, ptr %i.gm, align 4, !tbaa !43
  %indvars.iv.next.i121.i.7 = add nuw nsw i64 %indvars.iv.i120.i, 8 ; 2 uses
  %exitcond.not.i122.i.7 = icmp eq i64 %indvars.iv.next.i121.i.7, %wide.trip.count.i118.i
  br i1 %exitcond.not.i122.i.7, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i, label %.lr.ph.i119.i, !llvm.loop !1332

_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i:            ; preds = %.lr.ph.i119.i.prol.loopexit, %.lr.ph.i119.i, %middle.block, %vec.epilog.middle.block, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i
  %i.gn = add nsw i64 %.0127.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gn, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %_ZL29ggml_compute_forward_roll_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %bb.c, !llvm.loop !1333

_ZL29ggml_compute_forward_roll_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8379, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_arange(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !30
  %cond = icmp eq i32 %i.a, 0
  br i1 %cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8390, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.43) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = load i32, ptr %0, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.i = load float, ptr %i.h, align 4, !tbaa !43 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load float, ptr %i.j, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.m = load float, ptr %i.l, align 4, !tbaa !43 ; 4 uses
  %i.n = fsub float %i.k, %i.i
  %i.o = fdiv float %i.n, %i.m
  %i.p = tail call float @llvm.ceil.f32(float %i.o)
  %i.q = fptosi float %i.p to i64                 ; 4 uses
  %i.r = tail call i64 @ggml_nelements(ptr noundef nonnull %1)
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8401, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.132) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = sext i32 %i.e to i64                     ; 10 uses
  %i.u = icmp slt i64 %i.t, %i.q
  br i1 %i.u, label %iter.check, label %_ZL31ggml_compute_forward_arange_f32PK19ggml_compute_paramsP11ggml_tensor.exit

iter.check:                                       ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37   ; 3 uses
  %i.x = sext i32 %i.g to i64
  %i.y = add nsw i64 %i.t, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.q, i64 %i.y)
  %i.z = sub i64 %smax, %i.t                      ; 7 uses
  %min.iters.check = icmp ugt i64 %i.z, 3
  %ident.check.not = icmp eq i32 %i.g, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4 = icmp ult i64 %i.z, 32
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 28
  %n.vec = and i64 %i.z, -32                      ; 4 uses
  %i.ab = add i64 %n.vec, %i.t                    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.m, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert5 = insertelement <8 x float> poison, float %i.i, i64 0
end_hunk_4
begin_hunk_5_@ggml_compute_forward_flash_attn_back:bb.a
  %i.dh = load i32, ptr %0, align 8, !tbaa !35    ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !36 ; 2 uses
  %i.dk = sub nsw i64 %i.aw, %i.n                 ; 2 uses
  %i.dl = trunc i64 %i.aw to i32                  ; 3 uses
  %i.dm = add i32 %i.dl, 3
  %i.dn = and i32 %i.dm, -4                       ; 3 uses
  %i.do = sext i32 %i.dn to i64                   ; 3 uses
  %i.dp = tail call i64 @llvm.smax.i64(i64 %i.l, i64 %i.do)
  %i.dq = icmp sgt i64 %i.dk, -1
  br i1 %i.dq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread533.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9401, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.147) #17
  unreachable

bb.f:                                             ; preds = %.thread533.i
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9403, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.148) #17
  unreachable

bb.h:                                             ; preds = %bb.f
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9404, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.149) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9405, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.150) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.dr = icmp eq i64 %i.av, %i.l
  br i1 %i.dr, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9408, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.152) #17
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ds = icmp eq i64 %i.br, %i.l
  br i1 %i.ds, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9409, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.153) #17
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.dt = icmp eq i64 %i.ci, %i.l
  br i1 %i.dt, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.154) #17
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.du = icmp eq i64 %i.cj, %i.n
  br i1 %i.du, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9415, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.156) #17
  unreachable

bb.t:                                             ; preds = %bb.r
  br i1 %i.da, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9418, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25) #17
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dv = icmp ugt i64 %i.dc, 3
  br i1 %i.dv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9419, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14) #17
  unreachable

bb.x:                                             ; preds = %bb.v
  %.not425.i = icmp ugt i64 %i.dc, %i.de
  br i1 %.not425.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9420, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15) #17
  unreachable

bb.z:                                             ; preds = %bb.x
  %.not426.i = icmp ugt i64 %i.de, %i.dg
  br i1 %.not426.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9421, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16) #17
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dw = icmp eq i32 %i.dh, 0
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dy, i8 0, i64 %i.cx, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !57
  tail call void @ggml_barrier(ptr noundef %i.ea)
  %i.eb = tail call i64 @ggml_nelements(ptr noundef nonnull %i.c)
  %i.ec = tail call i64 @ggml_nelements(ptr noundef %i.f)
  %i.ed = load i32, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ee = tail call i64 @ggml_blck_size(i32 noundef %i.ed)
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9432, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.157) #17
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.eg = tail call i64 @ggml_type_size(i32 noundef %i.ed) ; 2 uses
  %i.eh = mul i64 %i.eg, %i.eb
  %i.ei = add i64 %i.eh, 15
  %i.ej = and i64 %i.ei, -16
  %i.ek = mul i64 %i.eg, %i.ec
  %i.el = add i64 %i.ek, 15
  %i.em = and i64 %i.el, -16
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !37 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.ej  ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.em
  %i.er = shl i64 %i.l, 2                         ; 4 uses
  %i.es = mul i64 %i.er, %i.n                     ; 2 uses
  %i.et = mul i64 %i.es, %i.p
  %i.eu = mul i64 %i.aw, %i.er                    ; 2 uses
  %i.ev = mul i64 %i.eu, %i.p
  %i.ew = mul i64 %i.bq, %i.l                     ; 2 uses
  %i.ex = mul i64 %i.ew, %i.p
  %i.ey = add i32 %i.ax, -1
  %i.ez = add i32 %i.ey, %i.dj
  %i.fa = sdiv i32 %i.ez, %i.dj                   ; 2 uses
  %i.fb = mul nsw i32 %i.fa, %i.dh                ; 3 uses
  %i.fc = add nsw i32 %i.fb, %i.fa
  %i.fd = tail call i32 @llvm.smin.i32(i32 %i.fc, i32 %i.ax) ; 2 uses
  %i.fe = sitofp i64 %i.l to float
  %i.ff = tail call float @sqrtf(float noundef %i.fe) #18
  %i.fg = fdiv float 1.000000e+00, %i.ff          ; 7 uses
  %i.fh = sdiv i64 %i.p, %i.au                    ; 2 uses
  %i.fi = icmp slt i32 %i.fb, %i.fd
  br i1 %i.fi, label %.lr.ph578.i, label %_ZL40ggml_compute_forward_flash_attn_back_f32PK19ggml_compute_paramsbP11ggml_tensor.exit

.lr.ph578.i:                                      ; preds = %bb.af
  %i.fj = trunc i64 %i.fh to i32
  %i.fk = icmp slt i32 %i.fj, 1
  %i.fl = trunc i64 %i.au to i32
  %i.fm = icmp slt i64 %i.n, 1
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fo = shl i32 %i.dh, 1
  %i.fp = sext i32 %i.fo to i64                   ; 2 uses
  %i.fq = shl i64 %i.dp, 32                       ; 2 uses
  %i.fr = ashr exact i64 %i.fq, 32
  %i.fs = add nsw i64 %i.fr, 16                   ; 3 uses
  %i.ft = mul i64 %i.fs, %i.fp
  %i.fu = icmp sgt i32 %i.dn, %i.dl
  %i.fv = add nuw nsw i64 %i.dk, 1
  %i.fw = trunc i64 %i.l to i32                   ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.f, i64 248 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 2 uses
  %i.fz = insertelement <16 x float> poison, float %i.fg, i64 0
  %i.ga = shufflevector <16 x float> %i.fz, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.gb = icmp sgt i64 %i.l, 0                    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.gd = getelementptr inbounds nuw i8, ptr %i.j, i64 248 ; 2 uses
  %i.ge = icmp sgt i32 %i.dl, 0
  %wide.trip.count.i451.i = and i64 %i.aw, 2147483647 ; 5 uses
  %i.gf = and i32 %i.fw, -64                      ; 2 uses
  %i.gg = icmp sgt i32 %i.fw, 63                  ; 2 uses
  %i.gh = and i64 %i.l, 2147483584                ; 2 uses
  %.not.i480.i = icmp eq i32 %i.gf, %i.fw         ; 2 uses
  %i.gi = sext i32 %i.gf to i64                   ; 12 uses
  %sext538.i = shl i64 %i.l, 32
  %i.gj = ashr exact i64 %sext538.i, 32           ; 3 uses
  %brmerge.i = select i1 %i.fk, i1 true, i1 %i.fm
  br i1 %brmerge.i, label %_ZL40ggml_compute_forward_flash_attn_back_f32PK19ggml_compute_paramsbP11ggml_tensor.exit, label %.lr.ph573.preheader.i

.lr.ph573.preheader.i:                            ; preds = %.lr.ph578.i
  %sext624.i = shl i64 %i.aw, 32
  %i.gk = ashr exact i64 %sext624.i, 32           ; 6 uses
  %i.gl = sext i32 %i.fb to i64
  %wide.trip.count602.i = sext i32 %i.fd to i64
  %wide.trip.count597.i = and i64 %i.fh, 2147483647
  %i.gm = or disjoint i64 %i.gi, 1
  %smax38 = tail call i64 @llvm.smax.i64(i64 %i.gm, i64 %i.gj) ; 5 uses
  %i.gn = sub i64 %smax38, %i.gi                  ; 8 uses
  %3 = ashr exact i64 %i.fq, 30
  %i.go = mul i64 %i.fs, %i.fp
  %i.gp = shl i64 %i.go, 2                        ; 2 uses
  %i.gq = sub nsw i64 %i.do, %i.gk                ; 7 uses
  %min.iters.check341 = icmp ult i64 %i.gq, 8
  %min.iters.check343 = icmp ult i64 %i.gq, 32
  %i.gr = and i64 %i.gq, 24
  %n.vec345 = and i64 %i.gq, -32                  ; 4 uses
  %i.gs = add nsw i64 %i.gk, %n.vec345
  %cmp.n350 = icmp eq i64 %i.gq, %n.vec345
  %min.epilog.iters.check354 = icmp eq i64 %i.gr, 0
  %n.vec357 = and i64 %i.gq, -8                   ; 3 uses
  %i.gt = add nsw i64 %i.gk, %n.vec357
  %cmp.n362 = icmp eq i64 %i.gq, %n.vec357
  %broadcast.splatinsert314 = insertelement <8 x float> poison, float %i.fg, i64 0
  %broadcast.splat315 = shufflevector <8 x float> %broadcast.splatinsert314, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert332 = insertelement <8 x float> poison, float %i.fg, i64 0
  %broadcast.splat333 = shufflevector <8 x float> %broadcast.splatinsert332, <8 x float> poison, <8 x i32> zeroinitializer
  %min.iters.check182 = icmp samesign ult i64 %wide.trip.count.i451.i, 4
  %min.iters.check184 = icmp samesign ult i64 %wide.trip.count.i451.i, 32
  %i.gu = and i64 %i.aw, 28
  %n.vec186 = and i64 %i.aw, 2147483616           ; 4 uses
  %cmp.n197 = icmp eq i64 %wide.trip.count.i451.i, %n.vec186
  %min.epilog.iters.check201 = icmp eq i64 %i.gu, 0
  %n.vec204 = and i64 %i.aw, 2147483644           ; 3 uses
  %cmp.n212 = icmp eq i64 %wide.trip.count.i451.i, %n.vec204
  %broadcast.splatinsert119 = insertelement <8 x float> poison, float %i.fg, i64 0
  %broadcast.splat120 = shufflevector <8 x float> %broadcast.splatinsert119, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert137 = insertelement <8 x float> poison, float %i.fg, i64 0
  %broadcast.splat138 = shufflevector <8 x float> %broadcast.splatinsert137, <8 x float> poison, <8 x i32> zeroinitializer
  %min.iters.check76 = icmp ult i64 %i.gn, 8
  %min.iters.check78 = icmp ult i64 %i.gn, 32
  %i.gv = and i64 %smax38, 31                     ; 3 uses
  %n.vec80 = sub nuw i64 %i.gn, %i.gv             ; 3 uses
  %i.gw = add i64 %n.vec80, %i.gi
  %cmp.n95 = icmp eq i64 %i.gv, 0
  %min.epilog.iters.check99 = icmp samesign ult i64 %i.gv, 8
  %i.gx = and i64 %smax38, 7                      ; 2 uses
  %n.vec102 = sub i64 %i.gn, %i.gx                ; 2 uses
  %i.gy = add i64 %n.vec102, %i.gi
  %cmp.n111 = icmp eq i64 %i.gx, 0
  %min.iters.check39 = icmp ult i64 %i.gn, 8
  %min.iters.check41 = icmp ult i64 %i.gn, 32
  %i.gz = and i64 %smax38, 31                     ; 3 uses
  %n.vec43 = sub nuw i64 %i.gn, %i.gz             ; 3 uses
  %i.ha = add i64 %n.vec43, %i.gi
  %cmp.n58 = icmp eq i64 %i.gz, 0
  %min.epilog.iters.check62 = icmp samesign ult i64 %i.gz, 8
  %i.hb = and i64 %smax38, 7                      ; 2 uses
  %n.vec65 = sub i64 %i.gn, %i.hb                 ; 2 uses
  %i.hc = add i64 %n.vec65, %i.gi
  %cmp.n74 = icmp eq i64 %i.hb, 0
  br label %.lr.ph573.i

.lr.ph573.i:                                      ; preds = %._crit_edge574.i, %.lr.ph573.preheader.i
  %indvars.iv599.i = phi i64 [ %i.gl, %.lr.ph573.preheader.i ], [ %indvars.iv.next600.i, %._crit_edge574.i ] ; 3 uses
  %i.hd = sdiv i64 %indvars.iv599.i, %i.au        ; 2 uses
  %i.he = shl i64 %i.hd, 32
  %i.hf = ashr exact i64 %i.he, 32                ; 7 uses
  %i.hg = mul i64 %i.hd, %i.au
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = trunc nsw i64 %indvars.iv599.i to i32
  %i.hj = sub i32 %i.hi, %i.hh                    ; 2 uses
  %i.hk = sext i32 %i.hj to i64                   ; 4 uses
  %i.hl = mul i64 %i.as, %i.hk                    ; 2 uses
  %i.hm = mul i64 %i.hf, %i.az                    ; 2 uses
  %i.hn = mul i64 %i.hf, %i.y                     ; 2 uses
  %i.ho = mul i64 %i.bo, %i.hk
  %i.hp = mul i64 %i.hf, %i.bt
  %i.hq = mul i64 %i.hf, %i.cl                    ; 2 uses
  %i.hr = mul i64 %i.et, %i.hf
  %invariant.gep575.i = getelementptr i8, ptr %i.eo, i64 %i.hr
  %i.hs = mul i64 %i.eu, %i.hk
  %i.ht = mul i64 %i.ev, %i.hf
  %invariant.gep.i = getelementptr i8, ptr %i.ep, i64 %i.hs
  %invariant.gep556.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.ht
  %i.hu = mul i64 %i.ew, %i.hk
  %i.hv = mul i64 %i.ex, %i.hf
  %invariant.gep561.i = getelementptr i8, ptr %i.eq, i64 %i.hu
  %invariant.gep562.i = getelementptr i8, ptr %invariant.gep561.i, i64 %i.hv
  br label %.lr.ph566.i

._crit_edge574.i:                                 ; preds = %._crit_edge567.i
  %indvars.iv.next600.i = add nsw i64 %indvars.iv599.i, 1 ; 2 uses
  %exitcond603.not.i = icmp eq i64 %indvars.iv.next600.i, %wide.trip.count602.i
  br i1 %exitcond603.not.i, label %_ZL40ggml_compute_forward_flash_attn_back_f32PK19ggml_compute_paramsbP11ggml_tensor.exit, label %.lr.ph573.i, !llvm.loop !1537

.lr.ph566.i:                                      ; preds = %._crit_edge567.i, %.lr.ph573.i
  %indvars.iv594.i = phi i64 [ 0, %.lr.ph573.i ], [ %indvars.iv.next595.i, %._crit_edge567.i ] ; 2 uses
  %i.hw = trunc nuw nsw i64 %indvars.iv594.i to i32
  %i.hx = mul i32 %i.hw, %i.fl
  %i.hy = add i32 %i.hx, %i.hj
  %i.hz = sext i32 %i.hy to i64                   ; 3 uses
  %i.ia = mul i64 %i.w, %i.hz                     ; 2 uses
  %i.ib = mul i64 %i.cg, %i.hz                    ; 2 uses
  %i.ic = mul i64 %i.es, %i.hz
  %gep.i = getelementptr i8, ptr %invariant.gep575.i, i64 %i.ic
  br label %bb.ag

._crit_edge567.i:                                 ; preds = %._crit_edge560.i
  %indvars.iv.next595.i = add nuw nsw i64 %indvars.iv594.i, 1 ; 2 uses
  %exitcond598.not.i = icmp eq i64 %indvars.iv.next595.i, %wide.trip.count597.i
  br i1 %exitcond598.not.i, label %._crit_edge574.i, label %.lr.ph566.i, !llvm.loop !1538

bb.ag:                                            ; preds = %._crit_edge560.i, %.lr.ph566.i
  %indvars.iv590.i = phi i64 [ 0, %.lr.ph566.i ], [ %indvars.iv.next591.i, %._crit_edge560.i ] ; 7 uses
  %i.id = load ptr, ptr %i.fn, align 8, !tbaa !48 ; 3 uses
  %i.ie = getelementptr [4 x i8], ptr %i.id, i64 %i.ft ; 49 uses
  %i.if = getelementptr [4 x i8], ptr %i.ie, i64 %i.fs ; 22 uses
  br i1 %i.fu, label %iter.check351, label %._crit_edge.i

iter.check351:                                    ; preds = %bb.ag
  br i1 %min.iters.check341, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check342

vector.main.loop.iter.check342:                   ; preds = %iter.check351
  br i1 %min.iters.check343, label %vec.epilog.ph355, label %vector.ph344

vector.ph344:                                     ; preds = %vector.main.loop.iter.check342
  %i.ig = getelementptr [4 x i8], ptr %i.ie, i64 %i.gk
  br label %vector.body346

vector.body346:                                   ; preds = %vector.ph344, %vector.body346
  %index347 = phi i64 [ 0, %vector.ph344 ], [ %index.next348, %vector.body346 ] ; 2 uses
  %i.ih = getelementptr [4 x i8], ptr %i.ig, i64 %index347 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 96
  store <8 x float> splat (float -inf), ptr %i.ih, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.ii, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.ij, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.ik, align 4, !tbaa !43
  %index.next348 = add nuw i64 %index347, 32      ; 2 uses
  %i.il = icmp eq i64 %index.next348, %n.vec345
  br i1 %i.il, label %middle.block349, label %vector.body346, !llvm.loop !1539

middle.block349:                                  ; preds = %vector.body346
  br i1 %cmp.n350, label %._crit_edge.i, label %vec.epilog.iter.check352

vec.epilog.iter.check352:                         ; preds = %middle.block349
  br i1 %min.epilog.iters.check354, label %.lr.ph.i.preheader, label %vec.epilog.ph355, !prof !50

vec.epilog.ph355:                                 ; preds = %vector.main.loop.iter.check342, %vec.epilog.iter.check352
  %vec.epilog.resume.val356 = phi i64 [ %n.vec345, %vec.epilog.iter.check352 ], [ 0, %vector.main.loop.iter.check342 ]
  %i.im = getelementptr [4 x i8], ptr %i.ie, i64 %i.gk
  br label %vec.epilog.vector.body358

vec.epilog.vector.body358:                        ; preds = %vec.epilog.vector.body358, %vec.epilog.ph355
  %index359 = phi i64 [ %vec.epilog.resume.val356, %vec.epilog.ph355 ], [ %index.next360, %vec.epilog.vector.body358 ] ; 2 uses
  %i.in = getelementptr [4 x i8], ptr %i.im, i64 %index359
  store <8 x float> splat (float -inf), ptr %i.in, align 4, !tbaa !43
  %index.next360 = add nuw i64 %index359, 8       ; 2 uses
  %i.io = icmp eq i64 %index.next360, %n.vec357
  br i1 %i.io, label %vec.epilog.middle.block361, label %vec.epilog.vector.body358, !llvm.loop !1540

vec.epilog.middle.block361:                       ; preds = %vec.epilog.vector.body358
  br i1 %cmp.n362, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check351, %vec.epilog.iter.check352, %vec.epilog.middle.block361
  %indvars.iv.i.ph = phi i64 [ %i.gk, %iter.check351 ], [ %i.gs, %vec.epilog.iter.check352 ], [ %i.gt, %vec.epilog.middle.block361 ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block349, %vec.epilog.middle.block361, %bb.ag
  %i.ip = add nuw nsw i64 %i.fv, %indvars.iv590.i
  %i.iq = select i1 %1, i64 %i.ip, i64 %i.aw      ; 31 uses
  %i.ir = icmp sgt i64 %i.iq, 0                   ; 2 uses
  br i1 %i.ir, label %.lr.ph544.i, label %._crit_edge545.i

.lr.ph544.i:                                      ; preds = %._crit_edge.i
  %i.is = mul i64 %indvars.iv590.i, %i.u
  br label %bb.ah

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %indvars.iv.i
  store float -inf, ptr %i.it, align 4, !tbaa !43
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.do
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1541

._crit_edge545.i:                                 ; preds = %bb.ah, %._crit_edge.i
  %i.iu = trunc i64 %i.iq to i32                  ; 5 uses
  %i.iv = and i32 %i.iu, -64                      ; 6 uses
  %i.iw = icmp sgt i32 %i.iu, 63                  ; 5 uses
  br i1 %i.iw, label %.preheader27.preheader.i.i, label %.preheader.i.i

.preheader27.preheader.i.i:                       ; preds = %._crit_edge545.i
  %i.ix = and i64 %i.iq, 2147483584
  br label %.preheader27.i.i

.preheader27.i.i:                                 ; preds = %.preheader27.i.i, %.preheader27.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader27.preheader.i.i ], [ %indvars.iv.next.i.i, %.preheader27.i.i ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.i.i ; 5 uses
  %i.iz = load <16 x float>, ptr %i.iy, align 1, !tbaa !56
  %i.ja = fmul <16 x float> %i.ga, %i.iz
  store <16 x float> %i.ja, ptr %i.iy, align 1, !tbaa !56
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 64 ; 2 uses
  %i.jc = load <16 x float>, ptr %i.jb, align 1, !tbaa !56
  %i.jd = fmul <16 x float> %i.ga, %i.jc
  store <16 x float> %i.jd, ptr %i.jb, align 1, !tbaa !56
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 128 ; 2 uses
  %i.jf = load <16 x float>, ptr %i.je, align 1, !tbaa !56
  %i.jg = fmul <16 x float> %i.ga, %i.jf
  store <16 x float> %i.jg, ptr %i.je, align 1, !tbaa !56
end_hunk_5
begin_hunk_6_@ggml_compute_forward_flash_attn_back:bb.a
  %i.ns = getelementptr inbounds nuw i8, ptr %gep371, i64 32 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %gep371, i64 64 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %gep371, i64 96 ; 2 uses
  %wide.load262 = load <8 x float>, ptr %gep371, align 4, !tbaa !43
  %wide.load263 = load <8 x float>, ptr %i.ns, align 4, !tbaa !43
  %wide.load264 = load <8 x float>, ptr %i.nt, align 4, !tbaa !43
  %wide.load265 = load <8 x float>, ptr %i.nu, align 4, !tbaa !43
  %i.nv = fmul <8 x float> %wide.load262, %broadcast.splat259
  %i.nw = fmul <8 x float> %wide.load263, %broadcast.splat259
  %i.nx = fmul <8 x float> %wide.load264, %broadcast.splat259
  %i.ny = fmul <8 x float> %wide.load265, %broadcast.splat259
  store <8 x float> %i.nv, ptr %gep371, align 4, !tbaa !43
  store <8 x float> %i.nw, ptr %i.ns, align 4, !tbaa !43
  store <8 x float> %i.nx, ptr %i.nt, align 4, !tbaa !43
  store <8 x float> %i.ny, ptr %i.nu, align 4, !tbaa !43
  %index.next266 = add nuw i64 %index261, 32      ; 2 uses
  %i.nz = icmp eq i64 %index.next266, %n.vec257
  br i1 %i.nz, label %middle.block267, label %vector.body260, !llvm.loop !1549

middle.block267:                                  ; preds = %vector.body260
  %cmp.n268 = icmp eq i64 %i.nq, 0
  br i1 %cmp.n268, label %_ZL18ggml_vec_scale_f32iPff.exit443.i, label %vec.epilog.iter.check270

vec.epilog.iter.check270:                         ; preds = %middle.block267
  %min.epilog.iters.check272 = icmp samesign ult i64 %i.nq, 8
  br i1 %min.epilog.iters.check272, label %.lr.ph.i436.i.preheader, label %vec.epilog.ph273, !prof !50

vec.epilog.ph273:                                 ; preds = %vector.main.loop.iter.check254, %vec.epilog.iter.check270
  %vec.epilog.resume.val274 = phi i64 [ %n.vec257, %vec.epilog.iter.check270 ], [ 0, %vector.main.loop.iter.check254 ]
  %i.oa = and i64 %smax252, 7                     ; 2 uses
  %n.vec275 = sub i64 %i.np, %i.oa                ; 2 uses
  %i.ob = add i64 %n.vec275, %i.nm
  %broadcast.splatinsert276 = insertelement <8 x float> poison, float %i.mv, i64 0
  %broadcast.splat277 = shufflevector <8 x float> %broadcast.splatinsert276, <8 x float> poison, <8 x i32> zeroinitializer
  %invariant.gep372 = getelementptr [4 x i8], ptr %i.if, i64 %i.nm
  br label %vec.epilog.vector.body278

vec.epilog.vector.body278:                        ; preds = %vec.epilog.vector.body278, %vec.epilog.ph273
  %index279 = phi i64 [ %vec.epilog.resume.val274, %vec.epilog.ph273 ], [ %index.next281, %vec.epilog.vector.body278 ] ; 2 uses
  %gep373 = getelementptr [4 x i8], ptr %invariant.gep372, i64 %index279 ; 2 uses
  %wide.load280 = load <8 x float>, ptr %gep373, align 4, !tbaa !43
  %i.oc = fmul <8 x float> %wide.load280, %broadcast.splat277
  store <8 x float> %i.oc, ptr %gep373, align 4, !tbaa !43
  %index.next281 = add nuw i64 %index279, 8       ; 2 uses
  %i.od = icmp eq i64 %index.next281, %n.vec275
  br i1 %i.od, label %vec.epilog.middle.block282, label %vec.epilog.vector.body278, !llvm.loop !1550

vec.epilog.middle.block282:                       ; preds = %vec.epilog.vector.body278
  %cmp.n283 = icmp eq i64 %i.oa, 0
  br i1 %cmp.n283, label %_ZL18ggml_vec_scale_f32iPff.exit443.i, label %.lr.ph.i436.i.preheader

.lr.ph.i436.i.preheader:                          ; preds = %iter.check269, %vec.epilog.iter.check270, %vec.epilog.middle.block282
  %indvars.iv33.i437.i.ph = phi i64 [ %i.nm, %iter.check269 ], [ %i.nr, %vec.epilog.iter.check270 ], [ %i.ob, %vec.epilog.middle.block282 ]
  br label %.lr.ph.i436.i

.lr.ph.i436.i:                                    ; preds = %.lr.ph.i436.i.preheader, %.lr.ph.i436.i
  %indvars.iv33.i437.i = phi i64 [ %indvars.iv.next34.i438.i, %.lr.ph.i436.i ], [ %indvars.iv33.i437.i.ph, %.lr.ph.i436.i.preheader ] ; 2 uses
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.if, i64 %indvars.iv33.i437.i ; 2 uses
  %i.of = load float, ptr %i.oe, align 4, !tbaa !43
  %i.og = fmul float %i.of, %i.mv
  store float %i.og, ptr %i.oe, align 4, !tbaa !43
  %indvars.iv.next34.i438.i = add nsw i64 %indvars.iv33.i437.i, 1 ; 2 uses
  %i.oh = icmp slt i64 %indvars.iv.next34.i438.i, %i.nn
  br i1 %i.oh, label %.lr.ph.i436.i, label %_ZL18ggml_vec_scale_f32iPff.exit443.i, !llvm.loop !1551

_ZL18ggml_vec_scale_f32iPff.exit443.i:            ; preds = %.lr.ph.i436.i, %middle.block267, %vec.epilog.middle.block282, %.preheader.i433.i
  br i1 %i.li, label %.lr.ph.preheader.i444.i, label %_ZL16ggml_vec_set_f32iPff.exit.i

.lr.ph.preheader.i444.i:                          ; preds = %_ZL18ggml_vec_scale_f32iPff.exit443.i
  %wide.trip.count.i445.i = shl i64 %i.iq, 2
  %i.oi = and i64 %wide.trip.count.i445.i, 8589934588
  call void @llvm.memset.p0.i64(ptr align 4 %i.ie, i8 0, i64 %i.oi, i1 false), !tbaa !43
  br label %_ZL16ggml_vec_set_f32iPff.exit.i

_ZL16ggml_vec_set_f32iPff.exit.i:                 ; preds = %.lr.ph.preheader.i444.i, %_ZL18ggml_vec_scale_f32iPff.exit443.i
  br i1 %i.gb, label %.lr.ph550.i, label %._crit_edge551.i

.lr.ph550.i:                                      ; preds = %_ZL16ggml_vec_set_f32iPff.exit.i
  %i.oj = mul i64 %indvars.iv590.i, %i.ck
  %i.ok = and i64 %i.iq, 2147483584
  %i.ol = sext i32 %i.iv to i64                   ; 7 uses
  %sext539.i = shl i64 %i.iq, 32
  %i.om = ashr exact i64 %sext539.i, 32           ; 2 uses
  %i.on = or disjoint i64 %i.ol, 1
  %smax214 = call i64 @llvm.smax.i64(i64 %i.on, i64 %i.om) ; 3 uses
  %i.oo = sub i64 %smax214, %i.ol                 ; 4 uses
  %min.iters.check215 = icmp ult i64 %i.oo, 8
  %min.iters.check217 = icmp ult i64 %i.oo, 32
  %i.op = and i64 %smax214, 31                    ; 3 uses
  %n.vec219 = sub nuw i64 %i.oo, %i.op            ; 3 uses
  %i.oq = add i64 %n.vec219, %i.ol
  %cmp.n234 = icmp eq i64 %i.op, 0
  %min.epilog.iters.check238 = icmp samesign ult i64 %i.op, 8
  %i.or = and i64 %smax214, 7                     ; 2 uses
  %n.vec241 = sub i64 %i.oo, %i.or                ; 2 uses
  %i.os = add i64 %n.vec241, %i.ol
  %cmp.n250 = icmp eq i64 %i.or, 0
  br label %bb.ai

.lr.ph547.i:                                      ; preds = %.lr.ph547.i.preheader, %.lr.ph547.i
  %.0371546.i = phi i64 [ %i.ou, %.lr.ph547.i ], [ %.0371546.i.ph, %.lr.ph547.i.preheader ] ; 2 uses
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %.0371546.i
  store float -inf, ptr %i.ot, align 4, !tbaa !43
  %i.ou = add nsw i64 %.0371546.i, 1              ; 2 uses
  %exitcond585.not.i = icmp eq i64 %i.ou, %i.aw
  br i1 %exitcond585.not.i, label %._crit_edge548.i, label %.lr.ph547.i, !llvm.loop !1552

._crit_edge551.i:                                 ; preds = %_ZL16ggml_vec_mad_f32iPfPKff.exit.i, %_ZL16ggml_vec_set_f32iPff.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !43
  call void @ggml_vec_dot_f32(i32 noundef %i.iu, ptr noundef nonnull %i.a, i64 noundef 0, ptr noundef %i.if, i64 noundef 0, ptr noundef %i.ie, i64 noundef 0, i32 noundef 1)
  %i.ov = load float, ptr %i.a, align 4, !tbaa !43 ; 3 uses
  br i1 %i.ge, label %iter.check198, label %_ZL17ggml_vec_acc1_f32iPff.exit.i

iter.check198:                                    ; preds = %._crit_edge551.i
  br i1 %min.iters.check182, label %.lr.ph.i452.i.preheader, label %vector.main.loop.iter.check183

vector.main.loop.iter.check183:                   ; preds = %iter.check198
  br i1 %min.iters.check184, label %vec.epilog.ph202, label %vector.ph185

vector.ph185:                                     ; preds = %vector.main.loop.iter.check183
  %broadcast.splatinsert187 = insertelement <8 x float> poison, float %i.ov, i64 0
  %broadcast.splat188 = shufflevector <8 x float> %broadcast.splatinsert187, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body189

vector.body189:                                   ; preds = %vector.ph185, %vector.body189
  %index190 = phi i64 [ 0, %vector.ph185 ], [ %index.next195, %vector.body189 ] ; 2 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %index190 ; 5 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 32 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 64 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 96 ; 2 uses
  %wide.load191 = load <8 x float>, ptr %i.ow, align 4, !tbaa !43
  %wide.load192 = load <8 x float>, ptr %i.ox, align 4, !tbaa !43
  %wide.load193 = load <8 x float>, ptr %i.oy, align 4, !tbaa !43
  %wide.load194 = load <8 x float>, ptr %i.oz, align 4, !tbaa !43
  %i.pa = fsub <8 x float> %wide.load191, %broadcast.splat188
  %i.pb = fsub <8 x float> %wide.load192, %broadcast.splat188
  %i.pc = fsub <8 x float> %wide.load193, %broadcast.splat188
  %i.pd = fsub <8 x float> %wide.load194, %broadcast.splat188
  store <8 x float> %i.pa, ptr %i.ow, align 4, !tbaa !43
  store <8 x float> %i.pb, ptr %i.ox, align 4, !tbaa !43
  store <8 x float> %i.pc, ptr %i.oy, align 4, !tbaa !43
  store <8 x float> %i.pd, ptr %i.oz, align 4, !tbaa !43
  %index.next195 = add nuw i64 %index190, 32      ; 2 uses
  %i.pe = icmp eq i64 %index.next195, %n.vec186
  br i1 %i.pe, label %middle.block196, label %vector.body189, !llvm.loop !1553

middle.block196:                                  ; preds = %vector.body189
  br i1 %cmp.n197, label %_ZL17ggml_vec_acc1_f32iPff.exit.i, label %vec.epilog.iter.check199

vec.epilog.iter.check199:                         ; preds = %middle.block196
  br i1 %min.epilog.iters.check201, label %.lr.ph.i452.i.preheader, label %vec.epilog.ph202, !prof !52

vec.epilog.ph202:                                 ; preds = %vector.main.loop.iter.check183, %vec.epilog.iter.check199
  %vec.epilog.resume.val203 = phi i64 [ %n.vec186, %vec.epilog.iter.check199 ], [ 0, %vector.main.loop.iter.check183 ]
  %broadcast.splatinsert205 = insertelement <4 x float> poison, float %i.ov, i64 0
  %broadcast.splat206 = shufflevector <4 x float> %broadcast.splatinsert205, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body207

vec.epilog.vector.body207:                        ; preds = %vec.epilog.vector.body207, %vec.epilog.ph202
  %index208 = phi i64 [ %vec.epilog.resume.val203, %vec.epilog.ph202 ], [ %index.next210, %vec.epilog.vector.body207 ] ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %index208 ; 2 uses
  %wide.load209 = load <4 x float>, ptr %i.pf, align 4, !tbaa !43
  %i.pg = fsub <4 x float> %wide.load209, %broadcast.splat206
  store <4 x float> %i.pg, ptr %i.pf, align 4, !tbaa !43
  %index.next210 = add nuw i64 %index208, 4       ; 2 uses
  %i.ph = icmp eq i64 %index.next210, %n.vec204
  br i1 %i.ph, label %vec.epilog.middle.block211, label %vec.epilog.vector.body207, !llvm.loop !1554

vec.epilog.middle.block211:                       ; preds = %vec.epilog.vector.body207
  br i1 %cmp.n212, label %_ZL17ggml_vec_acc1_f32iPff.exit.i, label %.lr.ph.i452.i.preheader

.lr.ph.i452.i.preheader:                          ; preds = %iter.check198, %vec.epilog.iter.check199, %vec.epilog.middle.block211
  %indvars.iv.i453.i.ph = phi i64 [ 0, %iter.check198 ], [ %n.vec186, %vec.epilog.iter.check199 ], [ %n.vec204, %vec.epilog.middle.block211 ]
  br label %.lr.ph.i452.i

.lr.ph.i452.i:                                    ; preds = %.lr.ph.i452.i.preheader, %.lr.ph.i452.i
  %indvars.iv.i453.i = phi i64 [ %indvars.iv.next.i454.i, %.lr.ph.i452.i ], [ %indvars.iv.i453.i.ph, %.lr.ph.i452.i.preheader ] ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.i453.i ; 2 uses
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !43
  %i.pk = fsub float %i.pj, %i.ov
  store float %i.pk, ptr %i.pi, align 4, !tbaa !43
  %indvars.iv.next.i454.i = add nuw nsw i64 %indvars.iv.i453.i, 1 ; 2 uses
  %exitcond.not.i455.i = icmp eq i64 %indvars.iv.next.i454.i, %wide.trip.count.i451.i
  br i1 %exitcond.not.i455.i, label %_ZL17ggml_vec_acc1_f32iPff.exit.i, label %.lr.ph.i452.i, !llvm.loop !1555

_ZL17ggml_vec_acc1_f32iPff.exit.i:                ; preds = %.lr.ph.i452.i, %middle.block196, %vec.epilog.middle.block211, %._crit_edge551.i
  br i1 %i.li, label %iter.check167, label %.preheader.i462.i

iter.check167:                                    ; preds = %_ZL17ggml_vec_acc1_f32iPff.exit.i
  %wide.trip.count.i457.i = and i64 %i.iq, 2147483647 ; 7 uses
  %min.iters.check149 = icmp samesign ult i64 %wide.trip.count.i457.i, 4
  br i1 %min.iters.check149, label %.lr.ph.i458.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check167
  %i.pl = shl nuw nsw i64 %wide.trip.count.i457.i, 2 ; 2 uses
  %i.pm = getelementptr i8, ptr %i.id, i64 %i.gp
  %i.pn = getelementptr i8, ptr %i.pm, i64 %i.pl
  %i.po = getelementptr i8, ptr %i.id, i64 %i.gp
  %i.pp = getelementptr i8, ptr %i.po, i64 %3
  %i.pq = getelementptr i8, ptr %i.pp, i64 %i.pl
  %i.pr = getelementptr i8, ptr %i.pq, i64 64
  %bound0 = icmp ult ptr %i.ie, %i.pr
  %bound1 = icmp ult ptr %i.if, %i.pn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i458.i.preheader, label %vector.main.loop.iter.check150

vector.main.loop.iter.check150:                   ; preds = %vector.memcheck
  %min.iters.check151 = icmp samesign ult i64 %wide.trip.count.i457.i, 32
  br i1 %min.iters.check151, label %vec.epilog.ph171, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check150
  %i.ps = and i64 %i.iq, 28
  %n.vec153 = and i64 %i.iq, 2147483616           ; 4 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.ph152, %vector.body154
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next164, %vector.body154 ] ; 3 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %index155 ; 5 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 32 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 64 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 96 ; 2 uses
  %wide.load156 = load <8 x float>, ptr %i.pt, align 4, !tbaa !43, !alias.scope !1595, !noalias !1596
  %wide.load157 = load <8 x float>, ptr %i.pu, align 4, !tbaa !43, !alias.scope !1595, !noalias !1596
  %wide.load158 = load <8 x float>, ptr %i.pv, align 4, !tbaa !43, !alias.scope !1595, !noalias !1596
  %wide.load159 = load <8 x float>, ptr %i.pw, align 4, !tbaa !43, !alias.scope !1595, !noalias !1596
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %index155 ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 32
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 64
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 96
  %wide.load160 = load <8 x float>, ptr %i.px, align 4, !tbaa !43, !alias.scope !1596
  %wide.load161 = load <8 x float>, ptr %i.py, align 4, !tbaa !43, !alias.scope !1596
  %wide.load162 = load <8 x float>, ptr %i.pz, align 4, !tbaa !43, !alias.scope !1596
  %wide.load163 = load <8 x float>, ptr %i.qa, align 4, !tbaa !43, !alias.scope !1596
  %i.qb = fmul <8 x float> %wide.load156, %wide.load160
  %i.qc = fmul <8 x float> %wide.load157, %wide.load161
  %i.qd = fmul <8 x float> %wide.load158, %wide.load162
  %i.qe = fmul <8 x float> %wide.load159, %wide.load163
  store <8 x float> %i.qb, ptr %i.pt, align 4, !tbaa !43, !alias.scope !1595, !noalias !1596
  store <8 x float> %i.qc, ptr %i.pu, align 4, !tbaa !43, !alias.scope !1595, !noalias !1596
  store <8 x float> %i.qd, ptr %i.pv, align 4, !tbaa !43, !alias.scope !1595, !noalias !1596
  store <8 x float> %i.qe, ptr %i.pw, align 4, !tbaa !43, !alias.scope !1595, !noalias !1596
  %index.next164 = add nuw i64 %index155, 32      ; 2 uses
  %i.qf = icmp eq i64 %index.next164, %n.vec153
  br i1 %i.qf, label %middle.block165, label %vector.body154, !llvm.loop !1559

middle.block165:                                  ; preds = %vector.body154
  %cmp.n166 = icmp eq i64 %wide.trip.count.i457.i, %n.vec153
  br i1 %cmp.n166, label %_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block165
  %min.epilog.iters.check170 = icmp eq i64 %i.ps, 0
  br i1 %min.epilog.iters.check170, label %.lr.ph.i458.i.preheader, label %vec.epilog.ph171, !prof !52

vec.epilog.ph171:                                 ; preds = %vector.main.loop.iter.check150, %vec.epilog.iter.check168
  %vec.epilog.resume.val172 = phi i64 [ %n.vec153, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check150 ]
  %n.vec173 = and i64 %i.iq, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body174

vec.epilog.vector.body174:                        ; preds = %vec.epilog.vector.body174, %vec.epilog.ph171
  %index175 = phi i64 [ %vec.epilog.resume.val172, %vec.epilog.ph171 ], [ %index.next178, %vec.epilog.vector.body174 ] ; 3 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %index175 ; 2 uses
  %wide.load176 = load <4 x float>, ptr %i.qg, align 4, !tbaa !43, !alias.scope !1595, !noalias !1596
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %index175
  %wide.load177 = load <4 x float>, ptr %i.qh, align 4, !tbaa !43, !alias.scope !1596
  %i.qi = fmul <4 x float> %wide.load176, %wide.load177
  store <4 x float> %i.qi, ptr %i.qg, align 4, !tbaa !43, !alias.scope !1595, !noalias !1596
  %index.next178 = add nuw i64 %index175, 4       ; 2 uses
  %i.qj = icmp eq i64 %index.next178, %n.vec173
  br i1 %i.qj, label %vec.epilog.middle.block179, label %vec.epilog.vector.body174, !llvm.loop !1560

vec.epilog.middle.block179:                       ; preds = %vec.epilog.vector.body174
  %cmp.n180 = icmp eq i64 %wide.trip.count.i457.i, %n.vec173
  br i1 %cmp.n180, label %_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i, label %.lr.ph.i458.i.preheader

.lr.ph.i458.i.preheader:                          ; preds = %iter.check167, %vector.memcheck, %vec.epilog.iter.check168, %vec.epilog.middle.block179
  %indvars.iv.i459.i.ph = phi i64 [ 0, %iter.check167 ], [ 0, %vector.memcheck ], [ %n.vec153, %vec.epilog.iter.check168 ], [ %n.vec173, %vec.epilog.middle.block179 ] ; 4 uses
  %i.qk = sub i64 %i.iq, %indvars.iv.i459.i.ph
  %xtraiter366 = and i64 %i.qk, 7                 ; 2 uses
  %lcmp.mod367.not = icmp eq i64 %xtraiter366, 0
  br i1 %lcmp.mod367.not, label %.lr.ph.i458.i.prol.loopexit, label %.lr.ph.i458.i.prol

.lr.ph.i458.i.prol:                               ; preds = %.lr.ph.i458.i.preheader, %.lr.ph.i458.i.prol
  %indvars.iv.i459.i.prol = phi i64 [ %indvars.iv.next.i460.i.prol, %.lr.ph.i458.i.prol ], [ %indvars.iv.i459.i.ph, %.lr.ph.i458.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i458.i.prol ], [ 0, %.lr.ph.i458.i.preheader ]
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.i459.i.prol ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !43
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i459.i.prol
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !43
  %i.qp = fmul float %i.qm, %i.qo
  store float %i.qp, ptr %i.ql, align 4, !tbaa !43
  %indvars.iv.next.i460.i.prol = add nuw nsw i64 %indvars.iv.i459.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter366
  br i1 %prol.iter.cmp.not, label %.lr.ph.i458.i.prol.loopexit, label %.lr.ph.i458.i.prol, !llvm.loop !1561

.lr.ph.i458.i.prol.loopexit:                      ; preds = %.lr.ph.i458.i.prol, %.lr.ph.i458.i.preheader
  %indvars.iv.i459.i.unr = phi i64 [ %indvars.iv.i459.i.ph, %.lr.ph.i458.i.preheader ], [ %indvars.iv.next.i460.i.prol, %.lr.ph.i458.i.prol ]
  %i.qq = sub nsw i64 %indvars.iv.i459.i.ph, %wide.trip.count.i457.i
  %i.qr = icmp ugt i64 %i.qq, -8
  br i1 %i.qr, label %_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i, label %.lr.ph.i458.i

.lr.ph.i458.i:                                    ; preds = %.lr.ph.i458.i.prol.loopexit, %.lr.ph.i458.i
  %indvars.iv.i459.i = phi i64 [ %indvars.iv.next.i460.i.7, %.lr.ph.i458.i ], [ %indvars.iv.i459.i.unr, %.lr.ph.i458.i.prol.loopexit ] ; 10 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.i459.i ; 2 uses
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !43
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i459.i
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !43
  %i.qw = fmul float %i.qt, %i.qv
  store float %i.qw, ptr %i.qs, align 4, !tbaa !43
  %indvars.iv.next.i460.i = add nuw nsw i64 %indvars.iv.i459.i, 1 ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i460.i ; 2 uses
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !43
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !43
  %i.rb = fmul float %i.qy, %i.ra
  store float %i.rb, ptr %i.qx, align 4, !tbaa !43
  %indvars.iv.next.i460.i.1 = add nuw nsw i64 %indvars.iv.i459.i, 2 ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i460.i.1 ; 2 uses
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !43
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i.1
  %i.rf = load float, ptr %i.re, align 4, !tbaa !43
  %i.rg = fmul float %i.rd, %i.rf
  store float %i.rg, ptr %i.rc, align 4, !tbaa !43
  %indvars.iv.next.i460.i.2 = add nuw nsw i64 %indvars.iv.i459.i, 3 ; 2 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i460.i.2 ; 2 uses
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !43
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i.2
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !43
  %i.rl = fmul float %i.ri, %i.rk
  store float %i.rl, ptr %i.rh, align 4, !tbaa !43
  %indvars.iv.next.i460.i.3 = add nuw nsw i64 %indvars.iv.i459.i, 4 ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i460.i.3 ; 2 uses
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !43
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i.3
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !43
  %i.rq = fmul float %i.rn, %i.rp
  store float %i.rq, ptr %i.rm, align 4, !tbaa !43
  %indvars.iv.next.i460.i.4 = add nuw nsw i64 %indvars.iv.i459.i, 5 ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i460.i.4 ; 2 uses
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !43
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i.4
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !43
  %i.rv = fmul float %i.rs, %i.ru
  store float %i.rv, ptr %i.rr, align 4, !tbaa !43
  %indvars.iv.next.i460.i.5 = add nuw nsw i64 %indvars.iv.i459.i, 6 ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i460.i.5 ; 2 uses
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !43
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i.5
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !43
  %i.sa = fmul float %i.rx, %i.rz
  store float %i.sa, ptr %i.rw, align 4, !tbaa !43
  %indvars.iv.next.i460.i.6 = add nuw nsw i64 %indvars.iv.i459.i, 7 ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next.i460.i.6 ; 2 uses
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !43
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i.6
  %i.se = load float, ptr %i.sd, align 4, !tbaa !43
  %i.sf = fmul float %i.sc, %i.se
  store float %i.sf, ptr %i.sb, align 4, !tbaa !43
  %indvars.iv.next.i460.i.7 = add nuw nsw i64 %indvars.iv.i459.i, 8 ; 2 uses
  %exitcond.not.i461.i.7 = icmp eq i64 %indvars.iv.next.i460.i.7, %wide.trip.count.i457.i
  br i1 %exitcond.not.i461.i.7, label %_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i, label %.lr.ph.i458.i, !llvm.loop !1562

_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i:            ; preds = %.lr.ph.i458.i.prol.loopexit, %.lr.ph.i458.i, %vec.epilog.middle.block179, %middle.block165
  br i1 %i.iw, label %.preheader27.preheader.i468.i, label %.preheader.i462.i

.preheader27.preheader.i468.i:                    ; preds = %_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i
  %i.sg = and i64 %i.iq, 2147483584
  br label %.preheader27.i469.i

.preheader27.i469.i:                              ; preds = %.preheader27.i469.i, %.preheader27.preheader.i468.i
  %indvars.iv.i470.i = phi i64 [ 0, %.preheader27.preheader.i468.i ], [ %indvars.iv.next.i471.i, %.preheader27.i469.i ] ; 2 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.i470.i ; 5 uses
  %i.si = load <16 x float>, ptr %i.sh, align 1, !tbaa !56
  %i.sj = fmul <16 x float> %i.ga, %i.si
  store <16 x float> %i.sj, ptr %i.sh, align 1, !tbaa !56
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 64 ; 2 uses
  %i.sl = load <16 x float>, ptr %i.sk, align 1, !tbaa !56
  %i.sm = fmul <16 x float> %i.ga, %i.sl
  store <16 x float> %i.sm, ptr %i.sk, align 1, !tbaa !56
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sh, i64 128 ; 2 uses
  %i.so = load <16 x float>, ptr %i.sn, align 1, !tbaa !56
  %i.sp = fmul <16 x float> %i.ga, %i.so
  store <16 x float> %i.sp, ptr %i.sn, align 1, !tbaa !56
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sh, i64 192 ; 2 uses
  %i.sr = load <16 x float>, ptr %i.sq, align 1, !tbaa !56
  %i.ss = fmul <16 x float> %i.ga, %i.sr
  store <16 x float> %i.ss, ptr %i.sq, align 1, !tbaa !56
  %indvars.iv.next.i471.i = add nuw nsw i64 %indvars.iv.i470.i, 64 ; 2 uses
  %i.st = icmp samesign ult i64 %indvars.iv.next.i471.i, %i.sg
  br i1 %i.st, label %.preheader27.i469.i, label %.preheader.i462.i, !llvm.loop !2

.preheader.i462.i:                                ; preds = %.preheader27.i469.i, %_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i, %_ZL17ggml_vec_acc1_f32iPff.exit.i
  br i1 %.not.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit472.i, label %iter.check130

iter.check130:                                    ; preds = %.preheader.i462.i
  %i.su = sext i32 %i.iv to i64                   ; 7 uses
  %sext535.i = shl i64 %i.iq, 32
  %i.sv = ashr exact i64 %sext535.i, 32           ; 2 uses
  %i.sw = or disjoint i64 %i.su, 1
  %smax113 = call i64 @llvm.smax.i64(i64 %i.sw, i64 %i.sv) ; 3 uses
  %i.sx = sub i64 %smax113, %i.su                 ; 4 uses
end_hunk_6
