Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@rlDrawRenderBatch:bb.a

bb.ae:                                            ; preds = %.lr.ph, %.lr.ph
  %i.vb = load ptr, ptr @glad_glDrawArrays, align 8
  call void %i.vb(i32 noundef %i.uy, i32 noundef %.082377, i32 noundef %i.va) #56
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph
  %i.vc = load ptr, ptr @glad_glDrawElements, align 8
  %i.vd = sdiv i32 %i.va, 4
  %i.ve = mul nsw i32 %i.vd, 6
  %i.vf = sdiv i32 %.082377, 4
  %i.vg = mul nsw i32 %i.vf, 6
  %i.vh = sext i32 %i.vg to i64
  %i.vi = shl nsw i64 %i.vh, 2
  %i.vj = inttoptr i64 %i.vi to ptr
  call void %i.vc(i32 noundef 4, i32 noundef %i.ve, i32 noundef 5125, ptr noundef %i.vj) #56
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.vk = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.vl = getelementptr inbounds nuw [16 x i8], ptr %i.vk, i64 %indvars.iv ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  %i.vn = load i32, ptr %i.vm, align 4
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vp = load i32, ptr %i.vo, align 4
  %i.vq = add i32 %i.vn, %.082377
  %i.vr = add i32 %i.vq, %i.vp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.vs = load i32, ptr %i.dr, align 8
  %i.vt = sext i32 %i.vs to i64
  %i.vu = icmp slt i64 %indvars.iv.next, %i.vt
  br i1 %i.vu, label %.lr.ph, label %._crit_edge

bb.ah:                                            ; preds = %._crit_edge
  %i.vv = load ptr, ptr @glad_glBindBuffer, align 8
  call void %i.vv(i32 noundef 34962, i32 noundef 0) #56
  %i.vw = load ptr, ptr @glad_glBindBuffer, align 8
  call void %i.vw(i32 noundef 34963, i32 noundef 0) #56
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge
  %i.vx = load ptr, ptr @glad_glBindTexture, align 8
  call void %i.vx(i32 noundef 3553, i32 noundef 0) #56
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.j
  %i.vy = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2712), align 8, !range !4, !noundef !5
  %i.vz = trunc nuw i8 %i.vy to i1
  br i1 %i.vz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.wa = load ptr, ptr @glad_glBindVertexArray, align 8
  call void %i.wa(i32 noundef 0) #56
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.wb = load ptr, ptr @glad_glUseProgram, align 8
  call void %i.wb(i32 noundef 0) #56
  br i1 %i.dt, label %bb.h, label %bb.g

bb.am:                                            ; preds = %bb.g
  %i.wc = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2704), align 8
  %i.wd = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2708), align 4
  %i.we = load ptr, ptr @glad_glViewport, align 8
  call void %i.we(i32 noundef 0, i32 noundef 0, i32 noundef %i.wc, i32 noundef %i.wd) #56, !inline_history !6
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.g
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float -1.000000e+00, ptr %i.wf, align 4
  store <16 x float> %.sroa.0.0.copyload, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), align 8
  store <4 x float> %i.cl, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), align 8
  store <4 x float> %i.cm, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 104), align 8
  store <4 x float> %i.cn, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 120), align 8
  store <4 x float> %i.co, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 136), align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %indvars.iv386 = phi i64 [ 0, %bb.an ], [ %indvars.iv.next387.1, %bb.ao ] ; 5 uses
  %i.wg = load ptr, ptr %i.ds, align 8
  %i.wh = getelementptr inbounds nuw [16 x i8], ptr %i.wg, i64 %indvars.iv386
  store i32 7, ptr %i.wh, align 4
  %i.wi = load ptr, ptr %i.ds, align 8
  %i.wj = getelementptr inbounds nuw [16 x i8], ptr %i.wi, i64 %indvars.iv386
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 4
  store i32 0, ptr %i.wk, align 4
  %i.wl = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2340), align 4
  %i.wm = load ptr, ptr %i.ds, align 8
  %i.wn = getelementptr inbounds nuw [16 x i8], ptr %i.wm, i64 %indvars.iv386
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 12
  store i32 %i.wl, ptr %i.wo, align 4
  %indvars.iv.next387 = or disjoint i64 %indvars.iv386, 1 ; 3 uses
  %i.wp = load ptr, ptr %i.ds, align 8
  %i.wq = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %indvars.iv.next387
  store i32 7, ptr %i.wq, align 4
  %i.wr = load ptr, ptr %i.ds, align 8
  %i.ws = getelementptr inbounds nuw [16 x i8], ptr %i.wr, i64 %indvars.iv.next387
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 4
  store i32 0, ptr %i.wt, align 4
  %i.wu = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2340), align 4
  %i.wv = load ptr, ptr %i.ds, align 8
  %i.ww = getelementptr inbounds nuw [16 x i8], ptr %i.wv, i64 %indvars.iv.next387
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 12
  store i32 %i.wu, ptr %i.wx, align 4
  %indvars.iv.next387.1 = add nuw nsw i64 %indvars.iv386, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next387.1, 256
  br i1 %exitcond.not.1, label %.preheader.preheader, label %bb.ao

.preheader.preheader:                             ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 2344), i8 0, i64 16, i1 false)
  store i32 1, ptr %i.dr, align 8
  %i.wy = load i32, ptr %i.dq, align 4
  %i.wz = add nsw i32 %i.wy, 1                    ; 2 uses
  %i.xa = load i32, ptr %0, align 8
  %.not = icmp slt i32 %i.wz, %i.xa
  %spec.store.select96 = select i1 %.not, i32 %i.wz, i32 0
  store i32 %spec.store.select96, ptr %i.dq, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @rlEnd() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @RLGL, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.c = load float, ptr %i.b, align 4
  %i.d = fadd float %i.c, 5.000000e-05
  store float %i.d, ptr %i.b, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @rlVertex3f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 280), align 8, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = insertelement <2 x float> poison, float %1, i64 0 ; 2 uses
  %i.d = insertelement <2 x float> %i.c, float %2, i64 1 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 216), align 8
  %i.f = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 220), align 4
  %i.g = fmul float %1, %i.f
  %i.h = tail call float @llvm.fmuladd.f32(float %i.e, float %0, float %i.g)
  %i.i = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 224), align 8
  %i.j = tail call float @llvm.fmuladd.f32(float %i.i, float %2, float %i.h)
  %i.k = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 228), align 4
  %i.l = fadd float %i.k, %i.j
  %i.m = load <8 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 232), align 8 ; 4 uses
  %i.n = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.p = fmul <2 x float> %i.n, %i.o
  %i.q = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.r = insertelement <2 x float> poison, float %0, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.s, <2 x float> %i.p)
  %i.u = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.v = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.v, <2 x float> %i.t)
  %i.x = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.y = fadd <2 x float> %i.x, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.016 = phi float [ %i.l, %bb.b ], [ %0, %bb.a ]
  %i.z = phi <2 x float> [ %i.y, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.ab = load ptr, ptr @RLGL, align 8            ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [72 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = shl nsw i32 %i.ai, 2
  %i.ak = add nsw i32 %i.aj, -4
  %i.al = icmp sgt i32 %i.aa, %i.ak
  br i1 %i.al, label %bb.d, label %rlCheckRenderBatchLimit.exit

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [16 x i8], ptr %i.an, i64 %i.aq ; 5 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  switch i32 %i.at, label %rlCheckRenderBatchLimit.exit [
    i32 1, label %bb.e
    i32 4, label %bb.f
    i32 7, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr i8, ptr %i.ar, i64 -12
  %i.av = load i32, ptr %i.au, align 4
  %3 = and i32 %i.av, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %rlCheckRenderBatchLimit.exit.sink.split, label %rlCheckRenderBatchLimit.exit

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr i8, ptr %i.ar, i64 -12
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = srem i32 %i.ax, 3
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %rlCheckRenderBatchLimit.exit.sink.split, label %rlCheckRenderBatchLimit.exit

bb.g:                                             ; preds = %bb.d
  %i.ba = getelementptr i8, ptr %i.ar, i64 -12
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 3
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %rlCheckRenderBatchLimit.exit.sink.split, label %rlCheckRenderBatchLimit.exit

rlCheckRenderBatchLimit.exit.sink.split:          ; preds = %bb.g, %bb.f, %bb.e
  %i.be = getelementptr i8, ptr %i.ar, i64 -4
  %i.bf = load i32, ptr %i.be, align 4
  tail call void @rlDrawRenderBatch(ptr noundef nonnull %i.ab)
  %i.bg = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [16 x i8], ptr %i.bi, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -16
  store i32 %i.at, ptr %i.bn, align 4
  %i.bo = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr [16 x i8], ptr %i.bq, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  store i32 %i.bf, ptr %i.bv, align 4
  br label %rlCheckRenderBatchLimit.exit

rlCheckRenderBatchLimit.exit:                     ; preds = %rlCheckRenderBatchLimit.exit.sink.split, %bb.d, %bb.e, %bb.f, %bb.g, %bb.c
  %i.bw = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [72 x i8], ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.cg = mul nsw i32 %i.cf, 3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ch
  store float %.016, ptr %i.ci, align 4
  %i.cj = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [72 x i8], ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.ct = mul nsw i32 %i.cs, 3
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [4 x i8], ptr %i.cr, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  %i.cx = extractelement <2 x float> %i.z, i64 0
  store float %i.cx, ptr %i.cw, align 4
  %i.cy = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [72 x i8], ptr %i.da, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.di = mul nsw i32 %i.dh, 3
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr [4 x i8], ptr %i.dg, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %i.dm = extractelement <2 x float> %i.z, i64 1
  store float %i.dm, ptr %i.dl, align 4
  %i.dn = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 52), align 4
  %i.do = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [72 x i8], ptr %i.dq, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.dy = shl nsw i32 %i.dx, 1
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dz
  store float %i.dn, ptr %i.ea, align 4
  %i.eb = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 56), align 8
  %i.ec = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [72 x i8], ptr %i.ee, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.em = shl nsw i32 %i.el, 1
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr [4 x i8], ptr %i.ek, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 4
  store float %i.eb, ptr %i.ep, align 4
  %i.eq = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 60), align 4
  %i.er = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [72 x i8], ptr %i.et, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.fb = mul nsw i32 %i.fa, 3
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fc
  store float %i.eq, ptr %i.fd, align 4
  %i.fe = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 64), align 8
  %i.ff = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [72 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.fp = mul nsw i32 %i.fo, 3
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr [4 x i8], ptr %i.fn, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 4
  store float %i.fe, ptr %i.fs, align 4
  %i.ft = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 68), align 4
  %i.fu = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [72 x i8], ptr %i.fw, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.ge = mul nsw i32 %i.gd, 3
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr [4 x i8], ptr %i.gc, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  store float %i.ft, ptr %i.gh, align 4
  %i.gi = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 72), align 8
  %i.gj = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [72 x i8], ptr %i.gl, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.gt = shl nsw i32 %i.gs, 2
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 %i.gu
  store i8 %i.gi, ptr %i.gv, align 1
  %i.gw = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 73), align 1
  %i.gx = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [72 x i8], ptr %i.gz, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.hh = shl nsw i32 %i.hg, 2
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr i8, ptr %i.hf, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 1
  store i8 %i.gw, ptr %i.hk, align 1
  %i.hl = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 74), align 2
  %i.hm = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
end_hunk_0
begin_hunk_1_@rlLoadTexture:bb.a
    i32 22, label %bb.v
    i32 16, label %bb.w
    i32 17, label %bb.w
    i32 20, label %bb.w
    i32 23, label %bb.w
    i32 24, label %bb.x
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  br label %.thread.i

bb.p:                                             ; preds = %bb.n, %bb.n
  br label %.thread.i

bb.q:                                             ; preds = %bb.n
  br label %.thread.i

bb.r:                                             ; preds = %bb.n
  br label %.thread.i

bb.s:                                             ; preds = %bb.n
  br label %.thread.i

bb.t:                                             ; preds = %bb.n
  br label %.thread.i

bb.u:                                             ; preds = %bb.n
  br label %.thread.i

bb.v:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.al = add nsw <2 x i32> %i.ak, splat (i32 3)
  %i.am = sdiv <2 x i32> %i.al, splat (i32 4)     ; 2 uses
  %i.an = extractelement <2 x i32> %i.am, i64 0
  %i.ao = shl i32 %i.an, 3
  %i.ap = extractelement <2 x i32> %i.am, i64 1
  %i.aq = mul i32 %i.ao, %i.ap
  br label %rlGetPixelDataSize.exit

bb.w:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.ar = add nsw <2 x i32> %i.ak, splat (i32 3)
  %i.as = sdiv <2 x i32> %i.ar, splat (i32 4)     ; 2 uses
  %i.at = extractelement <2 x i32> %i.as, i64 0
  %i.au = shl i32 %i.at, 4
  %i.av = extractelement <2 x i32> %i.as, i64 1
  %i.aw = mul i32 %i.au, %i.av
  br label %rlGetPixelDataSize.exit

bb.x:                                             ; preds = %bb.n
  %i.ax = add nsw <2 x i32> %i.ak, splat (i32 3)
  %i.ay = sdiv <2 x i32> %i.ax, splat (i32 4)     ; 2 uses
  %i.az = extractelement <2 x i32> %i.ay, i64 0
  %i.ba = shl nsw i32 %i.az, 2
  %i.bb = extractelement <2 x i32> %i.ay, i64 1
  %i.bc = mul i32 %i.ba, %i.bb
  br label %rlGetPixelDataSize.exit

bb.y:                                             ; preds = %bb.n
  br i1 %or.cond.i, label %.thread.i, label %rlGetPixelDataSize.exit

.thread.i:                                        ; preds = %bb.y, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.02024.i = phi double [ 0.000000e+00, %bb.y ], [ 8.000000e+00, %bb.u ], [ 6.000000e+00, %bb.t ], [ 1.600000e+01, %bb.s ], [ 1.200000e+01, %bb.r ], [ 3.000000e+00, %bb.q ], [ 4.000000e+00, %bb.p ], [ 2.000000e+00, %bb.o ], [ 1.000000e+00, %bb.n ]
  %i.bd = sitofp <2 x i32> %i.ak to <2 x double>  ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  %i.bf = fmul nnan double %.02024.i, %i.be
  %i.bg = extractelement <2 x double> %i.bd, i64 1
  %i.bh = fmul double %i.bf, %i.bg
  %i.bi = fptosi double %i.bh to i32
  br label %rlGetPixelDataSize.exit

rlGetPixelDataSize.exit:                          ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %.thread.i
  %.1.i = phi i32 [ %i.bi, %.thread.i ], [ 0, %bb.y ], [ %i.aw, %bb.w ], [ %i.bc, %bb.x ], [ %i.aq, %bb.v ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #56
  call void @rlGetGlTextureFormats(i32 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.bj = extractelement <2 x i32> %i.ak, i64 0   ; 3 uses
  %i.bk = extractelement <2 x i32> %i.ak, i64 1   ; 3 uses
  call void (i32, ptr, ...) @TraceLog(i32 noundef 2, ptr noundef nonnull @.str.46, i32 noundef %.094, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %.1.i, i32 noundef %.06992)
  %i.bl = load i32, ptr %i.b, align 4             ; 3 uses
  %.not80 = icmp eq i32 %i.bl, 0
  br i1 %.not80, label %bb.af, label %bb.z

bb.z:                                             ; preds = %rlGetPixelDataSize.exit
  br i1 %i.ac, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bm = load ptr, ptr @glad_glTexImage2D, align 8
  %i.bn = load i32, ptr %i.c, align 4
  %i.bo = load i32, ptr %i.d, align 4
  call void %i.bm(i32 noundef 3553, i32 noundef %.094, i32 noundef %i.bl, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef 0, i32 noundef %i.bn, i32 noundef %i.bo, ptr noundef %.193) #56
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr @glad_glCompressedTexImage2D, align 8
  call void %i.bp(i32 noundef 3553, i32 noundef %.094, i32 noundef %i.bl, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef 0, i32 noundef %.1.i, ptr noundef %.193) #56
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  switch i32 %3, label %bb.af [
    i32 1, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) @__const.rlLoadTextureCubemap.swizzleMask, i64 16, i1 false)
  %i.bq = load ptr, ptr @glad_glTexParameteriv, align 8
  call void %i.bq(i32 noundef 3553, i32 noundef 36422, ptr noundef nonnull %i.e) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #56
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const.rlLoadTextureCubemap.swizzleMask.54, i64 16, i1 false)
  %i.br = load ptr, ptr @glad_glTexParameteriv, align 8
  call void %i.br(i32 noundef 3553, i32 noundef 36422, ptr noundef nonnull %i.f) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #56
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae, %rlGetPixelDataSize.exit
  %i.bs = sdiv <2 x i32> %i.ak, splat (i32 2)
  %i.bt = add i32 %.1.i, %.06992
  %i.bu = zext i32 %.1.i to i64
  %.2.idx = select i1 %.not, i64 0, i64 %i.bu
  %.2 = getelementptr inbounds nuw i8, ptr %.193, i64 %.2.idx
  %i.bv = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bs, <2 x i32> splat (i32 1))
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  %i.bw = add nuw nsw i32 %.094, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.n

bb.ag:                                            ; preds = %._crit_edge
  %i.bx = load ptr, ptr @glad_glTexParameteri, align 8
  call void %i.bx(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729) #56
  %i.by = load ptr, ptr @glad_glTexParameteri, align 8
  call void %i.by(i32 noundef 3553, i32 noundef 10241, i32 noundef 9987) #56
  %i.bz = load ptr, ptr @glad_glTexParameteri, align 8
  call void %i.bz(i32 noundef 3553, i32 noundef 33084, i32 noundef 0) #56
  %i.ca = load ptr, ptr @glad_glTexParameteri, align 8
  %i.cb = add nsw i32 %4, -1
  call void %i.ca(i32 noundef 3553, i32 noundef 33085, i32 noundef %i.cb) #56
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge
  %i.cc = load ptr, ptr @glad_glBindTexture, align 8
  call void %i.cc(i32 noundef 3553, i32 noundef 0) #56
  %i.cd = load i32, ptr %i.a, align 4             ; 2 uses
  %.not79 = icmp eq i32 %i.cd, 0
  br i1 %.not79, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ce = call ptr @rlGetPixelFormatName(i32 noundef %3)
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.48, i32 noundef %i.cd, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.ce, i32 noundef %4)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.49)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.072 = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret i32 %.072
}

; Function Attrs: nounwind uwtable
define void @rlLoadRenderBatch(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.rlRenderBatch) align 8 captures(none) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %.b = load i1, ptr @isGpuReady, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.38)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 72) #60 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph115, label %._crit_edge116.thread

._crit_edge116.thread:                            ; preds = %bb.c
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.39)
  br label %._crit_edge120

.lr.ph115:                                        ; preds = %bb.c
  %i.e = mul nsw i32 %2, 12                       ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = shl nsw i32 %2, 3                        ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i32 %2, 4                        ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i32 %2, 6                        ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp sgt i32 %2, 0
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1) ; 3 uses
  %smax126 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  %smax138 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1) ; 2 uses
  %smax144 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 6)
  %i.n = add nsw i32 %smax144, -2
  %i.o = udiv i32 %i.n, 6
  %wide.trip.count149 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %wide.trip.count127 = zext nneg i32 %smax126 to i64 ; 2 uses
  %wide.trip.count139 = zext nneg i32 %smax138 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod160.a = trunc i32 %smax to i1
  %xtraiter161 = and i64 %wide.trip.count127, 1
  %unroll_iter165 = and i64 %wide.trip.count127, 2147483640
  %lcmp.mod163.not = icmp eq i64 %xtraiter161, 0
  %lcmp.mod164.a = trunc i32 %smax126 to i1
  %xtraiter167 = and i64 %wide.trip.count, 1
  %unroll_iter171 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
  %lcmp.mod170 = trunc i32 %smax to i1
  %xtraiter173 = and i64 %wide.trip.count139, 1
  %unroll_iter177 = and i64 %wide.trip.count139, 2147483632
  %lcmp.mod175.not = icmp eq i64 %xtraiter173, 0
  %lcmp.mod176 = trunc i32 %smax138 to i1
  br label %bb.d

._crit_edge116:                                   ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.39)
  %i.p = mul nsw i32 %2, 12
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2                      ; 2 uses
  %i.s = shl nsw i32 %2, 3
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2
  %i.v = shl nsw i32 %2, 4
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i32 %2, 6
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 2
  %wide.trip.count154 = zext nneg i32 %1 to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph115, %._crit_edge
  %indvars.iv146 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next147, %._crit_edge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv146 ; 6 uses
  store i32 %2, ptr %i.aa, align 8
  %i.ab = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 6 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 6 uses
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #60
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 6 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 1) #60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 6 uses
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 4) #60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 7 uses
  store ptr %i.aj, ptr %i.ak, align 8
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ 0, %bb.d ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %bb.d ]
  %i.al = load ptr, ptr %i.ac, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.ac, align 8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store float 0.000000e+00, ptr %i.ap, align 4
  %i.aq = load ptr, ptr %i.ac, align 8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store float 0.000000e+00, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.ac, align 8
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store float 0.000000e+00, ptr %i.av, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph105.preheader.unr-lcssa, label %.lr.ph

.lr.ph105.preheader.unr-lcssa:                    ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.lr.ph105.preheader.new, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph105.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod160.a)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.next.3, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ] ; 2 uses
  %i.aw = load ptr, ptr %i.ac, align 8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.epil
  store float 0.000000e+00, ptr %i.ax, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %.lr.ph105.preheader.new, label %.lr.ph.epil, !llvm.loop !197

.lr.ph105.preheader.new:                          ; preds = %.lr.ph105.preheader.unr-lcssa, %.lr.ph.epil
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader.new
  %indvars.iv123 = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %indvars.iv.next124.3, %.lr.ph105 ] ; 5 uses
  %niter166 = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %niter166.next.3, %.lr.ph105 ]
  %i.ay = load ptr, ptr %i.ae, align 8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv123
  store float 0.000000e+00, ptr %i.az, align 4
  %i.ba = load ptr, ptr %i.ae, align 8
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv123
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store float 0.000000e+00, ptr %i.bc, align 4
  %i.bd = load ptr, ptr %i.ae, align 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv123
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store float 0.000000e+00, ptr %i.bf, align 4
  %i.bg = load ptr, ptr %i.ae, align 8
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv123
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store float 0.000000e+00, ptr %i.bi, align 4
  %indvars.iv.next124.3 = add nuw nsw i64 %indvars.iv123, 4 ; 2 uses
  %niter166.next.3 = add i64 %niter166, 4         ; 2 uses
  %niter166.ncmp.3 = icmp eq i64 %niter166.next.3, %unroll_iter165
  br i1 %niter166.ncmp.3, label %.lr.ph107.preheader.unr-lcssa, label %.lr.ph105

.lr.ph107.preheader.unr-lcssa:                    ; preds = %.lr.ph105
  br i1 %lcmp.mod163.not, label %.lr.ph107.preheader.new, label %.lr.ph105.epil.preheader

.lr.ph105.epil.preheader:                         ; preds = %.lr.ph107.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod164.a)
  br label %.lr.ph105.epil

.lr.ph105.epil:                                   ; preds = %.lr.ph105.epil, %.lr.ph105.epil.preheader
  %indvars.iv123.epil = phi i64 [ %indvars.iv.next124.epil, %.lr.ph105.epil ], [ %indvars.iv.next124.3, %.lr.ph105.epil.preheader ] ; 2 uses
  %epil.iter162 = phi i64 [ %epil.iter162.next, %.lr.ph105.epil ], [ 0, %.lr.ph105.epil.preheader ] ; 2 uses
  %i.bj = load ptr, ptr %i.ae, align 8
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv123.epil
  store float 0.000000e+00, ptr %i.bk, align 4
  %indvars.iv.next124.epil = add nuw nsw i64 %indvars.iv123.epil, 1
  %epil.iter162.next = add i64 %epil.iter162, 1
  %epil.iter162.cmp.not = icmp eq i64 %epil.iter162, 0
  br i1 %epil.iter162.cmp.not, label %.lr.ph107.preheader.new, label %.lr.ph105.epil, !llvm.loop !198

.lr.ph107.preheader.new:                          ; preds = %.lr.ph107.preheader.unr-lcssa, %.lr.ph105.epil
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107, %.lr.ph107.preheader.new
  %indvars.iv129 = phi i64 [ 0, %.lr.ph107.preheader.new ], [ %indvars.iv.next130.3, %.lr.ph107 ] ; 5 uses
  %niter172 = phi i64 [ 0, %.lr.ph107.preheader.new ], [ %niter172.next.3, %.lr.ph107 ]
  %i.bl = load ptr, ptr %i.ag, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv129
  store float 0.000000e+00, ptr %i.bm, align 4
  %i.bn = load ptr, ptr %i.ag, align 8
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv129
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store float 0.000000e+00, ptr %i.bp, align 4
  %i.bq = load ptr, ptr %i.ag, align 8
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv129
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store float 0.000000e+00, ptr %i.bs, align 4
  %i.bt = load ptr, ptr %i.ag, align 8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv129
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store float 0.000000e+00, ptr %i.bv, align 4
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv129, 4 ; 2 uses
  %niter172.next.3 = add i64 %niter172, 4         ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %.lr.ph109.preheader.unr-lcssa, label %.lr.ph107

.lr.ph109.preheader.unr-lcssa:                    ; preds = %.lr.ph107
  br i1 %lcmp.mod169.not, label %.lr.ph109.preheader.new, label %.lr.ph107.epil.preheader

.lr.ph107.epil.preheader:                         ; preds = %.lr.ph109.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph107.epil

.lr.ph107.epil:                                   ; preds = %.lr.ph107.epil, %.lr.ph107.epil.preheader
  %indvars.iv129.epil = phi i64 [ %indvars.iv.next130.epil, %.lr.ph107.epil ], [ %indvars.iv.next130.3, %.lr.ph107.epil.preheader ] ; 2 uses
  %epil.iter168 = phi i64 [ %epil.iter168.next, %.lr.ph107.epil ], [ 0, %.lr.ph107.epil.preheader ] ; 2 uses
  %i.bw = load ptr, ptr %i.ag, align 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv129.epil
  store float 0.000000e+00, ptr %i.bx, align 4
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168, 0
  br i1 %epil.iter168.cmp.not, label %.lr.ph109.preheader.new, label %.lr.ph107.epil, !llvm.loop !199

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader.unr-lcssa, %.lr.ph107.epil
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %indvars.iv135 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %indvars.iv.next136.3, %.lr.ph109 ] ; 5 uses
  %niter178 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter178.next.3, %.lr.ph109 ]
  %i.by = load ptr, ptr %i.ai, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv135
  store i8 0, ptr %i.bz, align 1
  %i.ca = load ptr, ptr %i.ai, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv135
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store i8 0, ptr %i.cc, align 1
  %i.cd = load ptr, ptr %i.ai, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv135
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i8 0, ptr %i.cf, align 1
  %i.cg = load ptr, ptr %i.ai, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv135
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  store i8 0, ptr %i.ci, align 1
  %indvars.iv.next136.3 = add nuw nsw i64 %indvars.iv135, 4 ; 2 uses
  %niter178.next.3 = add i64 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i64 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %.lr.ph112.preheader.unr-lcssa, label %.lr.ph109

.lr.ph112.preheader.unr-lcssa:                    ; preds = %.lr.ph109
  br i1 %lcmp.mod175.not, label %.lr.ph112.preheader, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %.lr.ph112.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %.lr.ph109.epil

.lr.ph109.epil:                                   ; preds = %.lr.ph109.epil, %.lr.ph109.epil.preheader
  %indvars.iv135.epil = phi i64 [ %indvars.iv.next136.epil, %.lr.ph109.epil ], [ %indvars.iv.next136.3, %.lr.ph109.epil.preheader ] ; 2 uses
  %epil.iter174 = phi i64 [ %epil.iter174.next, %.lr.ph109.epil ], [ 0, %.lr.ph109.epil.preheader ] ; 2 uses
  %i.cj = load ptr, ptr %i.ai, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv135.epil
  store i8 0, ptr %i.ck, align 1
  %indvars.iv.next136.epil = add nuw nsw i64 %indvars.iv135.epil, 1
  %epil.iter174.next = add i64 %epil.iter174, 1
  %epil.iter174.cmp.not = icmp eq i64 %epil.iter174, 0
  br i1 %epil.iter174.cmp.not, label %.lr.ph112.preheader, label %.lr.ph109.epil, !llvm.loop !200

.lr.ph112.preheader:                              ; preds = %.lr.ph109.epil, %.lr.ph112.preheader.unr-lcssa
  br label %.lr.ph112

._crit_edge:                                      ; preds = %.lr.ph112, %bb.d
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge116, label %bb.d

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %.lr.ph112
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph112 ], [ 0, %.lr.ph112.preheader ] ; 7 uses
  %.092110 = phi i32 [ %i.dg, %.lr.ph112 ], [ 0, %.lr.ph112.preheader ] ; 3 uses
  %i.cl = shl nuw nsw i32 %.092110, 2             ; 5 uses
  %i.cm = load ptr, ptr %i.ak, align 8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv141
  store i32 %i.cl, ptr %i.cn, align 4
  %i.co = or disjoint i32 %i.cl, 1
  %i.cp = load ptr, ptr %i.ak, align 8
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv141
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 %i.co, ptr %i.cr, align 4
  %i.cs = or disjoint i32 %i.cl, 2                ; 2 uses
  %i.ct = load ptr, ptr %i.ak, align 8
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv141
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %i.cs, ptr %i.cv, align 4
  %i.cw = load ptr, ptr %i.ak, align 8
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv141
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 %i.cl, ptr %i.cy, align 4
  %i.cz = load ptr, ptr %i.ak, align 8
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv141
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i32 %i.cs, ptr %i.db, align 4
  %i.dc = or disjoint i32 %i.cl, 3
  %i.dd = load ptr, ptr %i.ak, align 8
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv141
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store i32 %i.dc, ptr %i.df, align 4
  %i.dg = add nuw nsw i32 %.092110, 1
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 6
  %exitcond145.not = icmp eq i32 %.092110, %i.o
  br i1 %exitcond145.not, label %._crit_edge, label %.lr.ph112

._crit_edge120:                                   ; preds = %bb.g, %._crit_edge116.thread
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.40)
  %i.dh = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2712), align 8, !range !4, !noundef !5
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.h, label %bb.i

bb.e:                                             ; preds = %._crit_edge116, %bb.g
  %indvars.iv151 = phi i64 [ 0, %._crit_edge116 ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %i.dj = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2712), align 8, !range !4, !noundef !5
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dl = load ptr, ptr @glad_glGenVertexArrays, align 8
  %i.dm = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv151
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48 ; 2 uses
  tail call void %i.dl(i32 noundef 1, ptr noundef nonnull %i.dn) #56
  %i.do = load ptr, ptr @glad_glBindVertexArray, align 8
  %i.dp = load i32, ptr %i.dn, align 8
  tail call void %i.do(i32 noundef %i.dp) #56
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dq = load ptr, ptr @glad_glGenBuffers, align 8
  %i.dr = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv151 ; 10 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 52 ; 2 uses
  tail call void %i.dq(i32 noundef 1, ptr noundef nonnull %i.ds) #56
  %i.dt = load ptr, ptr @glad_glBindBuffer, align 8
  %i.du = load i32, ptr %i.ds, align 4
  tail call void %i.dt(i32 noundef 34962, i32 noundef %i.du) #56
  %i.dv = load ptr, ptr @glad_glBufferData, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  tail call void %i.dv(i32 noundef 34962, i64 noundef %i.r, ptr noundef %i.dx, i32 noundef 35048) #56
  %i.dy = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.ea = load i32, ptr %i.dz, align 4
  tail call void %i.dy(i32 noundef %i.ea) #56
  %i.eb = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.ed = load i32, ptr %i.ec, align 4
  tail call void %i.eb(i32 noundef %i.ed, i32 noundef 3, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.ee = load ptr, ptr @glad_glGenBuffers, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 56 ; 2 uses
  tail call void %i.ee(i32 noundef 1, ptr noundef nonnull %i.ef) #56
  %i.eg = load ptr, ptr @glad_glBindBuffer, align 8
  %i.eh = load i32, ptr %i.ef, align 8
  tail call void %i.eg(i32 noundef 34962, i32 noundef %i.eh) #56
  %i.ei = load ptr, ptr @glad_glBufferData, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  tail call void %i.ei(i32 noundef 34962, i64 noundef %i.u, ptr noundef %i.ek, i32 noundef 35048) #56
  %i.el = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4
  tail call void %i.el(i32 noundef %i.eo) #56
  %i.ep = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4
  tail call void %i.ep(i32 noundef %i.es, i32 noundef 2, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.et = load ptr, ptr @glad_glGenBuffers, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dr, i64 60 ; 2 uses
  tail call void %i.et(i32 noundef 1, ptr noundef nonnull %i.eu) #56
  %i.ev = load ptr, ptr @glad_glBindBuffer, align 8
  %i.ew = load i32, ptr %i.eu, align 4
  tail call void %i.ev(i32 noundef 34962, i32 noundef %i.ew) #56
  %i.ex = load ptr, ptr @glad_glBufferData, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  tail call void %i.ex(i32 noundef 34962, i64 noundef %i.r, ptr noundef %i.ez, i32 noundef 35048) #56
  %i.fa = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.fd = load i32, ptr %i.fc, align 4
  tail call void %i.fa(i32 noundef %i.fd) #56
  %i.fe = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fh = load i32, ptr %i.fg, align 4
  tail call void %i.fe(i32 noundef %i.fh, i32 noundef 3, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.fi = load ptr, ptr @glad_glGenBuffers, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dr, i64 64 ; 2 uses
  tail call void %i.fi(i32 noundef 1, ptr noundef nonnull %i.fj) #56
  %i.fk = load ptr, ptr @glad_glBindBuffer, align 8
  %i.fl = load i32, ptr %i.fj, align 8
  tail call void %i.fk(i32 noundef 34962, i32 noundef %i.fl) #56
  %i.fm = load ptr, ptr @glad_glBufferData, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8
  tail call void %i.fm(i32 noundef 34962, i64 noundef %i.w, ptr noundef %i.fo, i32 noundef 35048) #56
  %i.fp = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  %i.fs = load i32, ptr %i.fr, align 4
  tail call void %i.fp(i32 noundef %i.fs) #56
  %i.ft = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 20
  %i.fw = load i32, ptr %i.fv, align 4
  tail call void %i.ft(i32 noundef %i.fw, i32 noundef 4, i32 noundef 5121, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null) #56
  %i.fx = load ptr, ptr @glad_glGenBuffers, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dr, i64 68 ; 2 uses
  tail call void %i.fx(i32 noundef 1, ptr noundef nonnull %i.fy) #56
  %i.fz = load ptr, ptr @glad_glBindBuffer, align 8
  %i.ga = load i32, ptr %i.fy, align 4
  tail call void %i.fz(i32 noundef 34963, i32 noundef %i.ga) #56
  %i.gb = load ptr, ptr @glad_glBufferData, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8
  tail call void %i.gb(i32 noundef 34963, i64 noundef %i.z, ptr noundef %i.gd, i32 noundef 35044) #56
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge120, label %bb.e

bb.h:                                             ; preds = %._crit_edge120
  %i.ge = load ptr, ptr @glad_glBindVertexArray, align 8
  tail call void %i.ge(i32 noundef 0) #56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge120
  %i.gf = tail call noalias dereferenceable_or_null(4096) ptr @calloc(i64 noundef 256, i64 noundef 16) #60 ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gf, ptr %i.gg, align 8
  %i.gh = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2340), align 4
  %i.gi = insertelement <4 x i32> <i32 7, i32 0, i32 0, i32 poison>, i32 %i.gh, i64 3 ; 4 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  store i32 %1, ptr %0, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float -1.000000e+00, ptr %i.gk, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %bb.i
  %indvars.iv156 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next157.3, %bb.k ] ; 5 uses
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %indvars.iv156
end_hunk_1
begin_hunk_2_@EncodeDataBase64:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = and i32 %i.ah, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @EncodeDataBase64.base64EncodeTable, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  store i8 %i.bf, ptr %i.bg, align 1
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bh = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.bh, label %.lr.ph, label %.preheader.loopexit

._crit_edge:                                      ; preds = %.lr.ph65.preheader, %.preheader
  %i.bi = zext nneg i32 %.053.lcssa to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bi
  store i8 0, ptr %i.bj, align 1
  %.not60 = icmp eq i32 %.053.lcssa, %i.d
  br i1 %.not60, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.251)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  store i32 %i.e, ptr %2, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define noundef ptr @DecodeDataBase64(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %1, align 4
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #57 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %sext = shl i64 %i.b, 32
  %i.d = ashr exact i64 %sext, 32                 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.d, %bb.b ]
  %.060 = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 61
  %i.h = add nuw nsw i32 %.060, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sdiv i32 %i.c, 4
  %i.j = mul nsw i32 %i.i, 3                      ; 3 uses
  %i.k = sub nsw i32 %i.j, %.060
  %i.l = sext i32 %i.j to i64                     ; 2 uses
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 1) #60 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.o = icmp sgt i32 %i.c, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %.not105 = icmp sgt i64 %i.d, 2
  br i1 %.not105, label %.lr.ph108.preheader, label %bb.e

.lr.ph108.preheader:                              ; preds = %.lr.ph.preheader
  %invariant.op = sub nsw i64 %i.d, 2
  br label %.lr.ph108

.lr.ph:                                           ; preds = %bb.k
  %.not = icmp slt i64 %indvars.iv.next86, %invariant.op
  br i1 %.not, label %.lr.ph108, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %i.p = trunc nuw nsw i64 %indvars.iv.next88 to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph._crit_edge, %.lr.ph.preheader
  %indvars.iv87.lcssa = phi i32 [ %i.p, %.lr.ph._crit_edge ], [ 0, %.lr.ph.preheader ]
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.252)
  br label %.loopexit

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph
  %indvars.iv85107 = phi i64 [ %indvars.iv.next86, %.lr.ph ], [ 0, %.lr.ph108.preheader ] ; 4 uses
  %indvars.iv87106 = phi i64 [ %indvars.iv.next88, %.lr.ph ], [ 0, %.lr.ph108.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv85107 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr i8, ptr %i.q, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv85107
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %.not70 = icmp eq i8 %i.ae, 61
  br i1 %.not70, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph108
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 6
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph108, %bb.f
  %i.ak = phi i32 [ %i.aj, %bb.f ], [ 0, %.lr.ph108 ] ; 4 uses
  %i.al = or disjoint i64 %indvars.iv85107, 3     ; 2 uses
  %i.am = icmp slt i64 %i.al, %i.d
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %.not71 = icmp eq i8 %i.ao, 61
  br i1 %.not71, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = or i32 %i.ak, %i.as
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.au = phi i32 [ %i.at, %bb.i ], [ %i.ak, %bb.h ], [ %i.ak, %bb.g ]
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87106, 3 ; 4 uses
  %.not72 = icmp sgt i64 %indvars.iv.next88, %i.l
  br i1 %.not72, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.av = trunc nuw nsw i64 %indvars.iv87106 to i32
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.253)
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.aw = shl nuw nsw i32 %i.v, 18
  %i.ax = shl nuw nsw i32 %i.ab, 12
  %i.ay = or i32 %i.ax, %i.aw
  %i.az = or i32 %i.ay, %i.ak                     ; 2 uses
  %i.ba = lshr i32 %i.az, 16
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv87106 ; 3 uses
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = lshr i32 %i.az, 8
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr i8, ptr %i.bc, i64 1
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = trunc i32 %i.au to i8
  %i.bh = getelementptr i8, ptr %i.bc, i64 2
  store i8 %i.bg, ptr %i.bh, align 1
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85107, 4 ; 3 uses
  %i.bi = trunc nuw i64 %indvars.iv.next86 to i32
  %i.bj = icmp slt i32 %i.bi, %i.c
  br i1 %i.bj, label %.lr.ph, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.k
  %i.bk = trunc nuw nsw i64 %indvars.iv.next88 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %.thread, %bb.e
  %.05778 = phi i32 [ %indvars.iv87.lcssa, %bb.e ], [ %i.av, %.thread ], [ 0, %.preheader ], [ %i.bk, %.loopexit.loopexit ]
  %.not73 = icmp eq i32 %i.j, %.05778
  br i1 %.not73, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.254)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  store i32 %i.k, ptr %1, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d, %bb.a
  %.163 = phi ptr [ null, %bb.a ], [ %i.m, %bb.m ], [ null, %bb.d ]
  ret ptr %.163
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @ComputeCRC32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #50 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.c = lshr i32 %.078.epil.init, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = and i32 %.078.epil.init, 255
  %i.h = xor i32 %i.g, %i.f
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = xor i32 %i.k, %i.c
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi i32 [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.l, %.lr.ph.epil.preheader ]
  %i.m = xor i32 %.lcssa, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %._crit_edge.loopexit ]
  ret i32 %.07.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.078 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = lshr i32 %.078, 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = and i32 %.078, 255
  %i.s = xor i32 %i.r, %i.q
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = xor i32 %i.v, %i.n                       ; 2 uses
  %i.x = lshr i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = and i32 %i.w, 255
  %i.ad = xor i32 %i.ac, %i.ab
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = xor i32 %i.ag, %i.x                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef nonnull ptr @ComputeMD5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #40 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr @ComputeMD5.hash, align 16
  %i.a = add nsw i32 %1, 8
  %i.b = sdiv i32 %i.a, 64
  %i.c = shl nsw i32 %i.b, 6                      ; 2 uses
  %i.d = or disjoint i32 %i.c, 56
  %i.e = add nsw i32 %i.c, 120
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #60 ; 5 uses
  %i.h = sext i32 %1 to i64                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 -128, ptr %i.i, align 1
  %i.j = shl nsw i32 %1, 3
  %i.k = sext i32 %i.d to i64                     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.k
  store i32 %i.j, ptr %i.l, align 1
  %i.m = icmp sgt i32 %1, -72
  br i1 %i.m, label %.lr.ph, label %bb.b

._crit_edge:                                      ; preds = %bb.c
  store i32 %i.s, ptr @ComputeMD5.hash, align 16
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 4), align 4
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 8), align 8
  store i32 %i.v, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 12), align 4
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  tail call void @free(ptr noundef nonnull %i.g) #56
  ret ptr @ComputeMD5.hash

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.n = phi i32 [ %i.s, %bb.c ], [ 1732584193, %bb.a ] ; 2 uses
  %i.o = phi i32 [ %i.t, %bb.c ], [ -271733879, %bb.a ] ; 2 uses
  %i.p = phi i32 [ %i.u, %bb.c ], [ -1732584194, %bb.a ] ; 2 uses
  %i.q = phi i32 [ %i.v, %bb.c ], [ 271733878, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv82
  br label %bb.d

bb.c:                                             ; preds = %bb.k
  %i.s = add i32 %.06169, %i.n                    ; 2 uses
  %i.t = add i32 %i.bi, %i.o                      ; 2 uses
  %i.u = add i32 %.06367, %i.p                    ; 2 uses
  %i.v = add i32 %.06268, %i.q                    ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 64 ; 2 uses
  %i.w = icmp slt i64 %indvars.iv.next83, %i.k
  br i1 %i.w, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 10 uses
  %.06169 = phi i32 [ %i.q, %.lr.ph ], [ %.06268, %bb.k ] ; 7 uses
  %.06268 = phi i32 [ %i.p, %.lr.ph ], [ %.06367, %bb.k ] ; 6 uses
  %.06367 = phi i32 [ %i.o, %.lr.ph ], [ %i.bi, %bb.k ] ; 8 uses
  %.06466 = phi i32 [ %i.n, %.lr.ph ], [ %.06169, %bb.k ]
  %i.x = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = and i32 %.06268, %.06367
  %i.z = xor i32 %.06367, -1
  %i.aa = and i32 %.06169, %i.z
  %i.ab = or i32 %i.aa, %i.y
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp samesign ult i64 %indvars.iv, 32
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = and i32 %.06169, %.06367
  %i.ae = xor i32 %.06169, -1
  %i.af = and i32 %.06268, %i.ae
  %i.ag = or i32 %i.ad, %i.af
  %i.ah = mul nuw nsw i64 %indvars.iv, 5
  %i.ai = add nuw nsw i64 %i.ah, 1
  %i.aj = and i64 %i.ai, 15
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp samesign ult i64 %indvars.iv, 48
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = xor i32 %.06268, %.06367
  %i.am = xor i32 %i.al, %.06169
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = add nuw nsw i64 %i.an, 5
  %i.ap = and i64 %i.ao, 15
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aq = xor i32 %.06169, -1
  %i.ar = or i32 %.06367, %i.aq
  %i.as = xor i32 %i.ar, %.06268
  %i.at = mul i64 %indvars.iv, 7
  %i.au = and i64 %i.at, 15
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.e
  %.059 = phi i32 [ %i.ab, %bb.e ], [ %i.ag, %bb.g ], [ %i.am, %bb.i ], [ %i.as, %bb.j ]
  %.0 = phi i64 [ %indvars.iv, %bb.e ], [ %i.aj, %bb.g ], [ %i.ap, %bb.i ], [ %i.au, %bb.j ]
  %i.av = add i32 %.059, %.06466
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @__const.ComputeMD5.k, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = add i32 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = add i32 %i.ay, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @__const.ComputeMD5.r, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = shl i32 %i.bb, %i.bd
  %i.bf = sub i32 32, %i.bd
  %i.bg = lshr i32 %i.bb, %i.bf
  %i.bh = add i32 %i.be, %.06367
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.c, label %bb.d
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef nonnull ptr @ComputeSHA1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #40 {
bb.a:
  %i.a = alloca [80 x i32], align 16              ; 8 uses
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr @ComputeSHA1.hash, align 16
  store i32 -1009589776, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 16), align 16
  %i.b = add nsw i32 %1, 8
  %i.c = sdiv i32 %i.b, 64
  %i.d = shl nsw i32 %i.c, 6                      ; 2 uses
  %i.e = add i32 %i.d, 64                         ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #60 ; 6 uses
  %i.h = sext i32 %1 to i64                       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 -128, ptr %i.i, align 1
  %i.j = shl nsw i64 %i.h, 3                      ; 8 uses
  %i.k = trunc i64 %i.j to i8
  %i.l = sext i32 %i.d to i64
end_hunk_2
begin_hunk_3_@GetMouseY:bb.a
  %i.c = fadd float %i.a, %i.b
  %i.d = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1880), align 8
  %i.e = fmul float %i.c, %i.d
  %i.f = fptosi float %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @GetMousePosition() local_unnamed_addr #26 {
bb.a:
  %i.a = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1884), align 4
  %i.b = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1868), align 4
  %i.c = fadd <2 x float> %i.a, %i.b
  %i.d = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  %i.e = fmul <2 x float> %i.c, %i.d
  ret <2 x float> %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @SetMouseOffset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %1, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  store <2 x float> %i.c, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1868), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @GetMouseWheelMoveV() local_unnamed_addr #26 {
bb.a:
  %.sroa.0.0.copyload = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1932), align 4
  ret <2 x float> %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetTouchX() local_unnamed_addr #8 {
bb.a:
  %i.a = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1984), align 8
  %i.b = fptosi float %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetTouchY() local_unnamed_addr #8 {
bb.a:
  %i.a = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1988), align 4
  %i.b = fptosi float %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define <2 x float> @GetTouchPosition(i32 noundef %0) local_unnamed_addr #25 {
bb.a:
  %i.a = icmp slt i32 %0, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1984), i64 %i.b
  %.sroa.0.0.copyload2 = load <2 x float>, ptr %i.c, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.273, i32 noundef 8)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload2, %bb.b ], [ splat (float -1.000000e+00), %bb.c ]
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetTouchPointId(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %0, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1952), i64 %i.b
  %i.d = load i32, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetTouchPointCount() local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1948), align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #52

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sinfl_build(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 7, 11) %2, i32 noundef range(i32 7, 16) %3, i32 noundef range(i32 -2147483647, -2147483648) %4) unnamed_addr #53 {
bb.a:
  %i.a = alloca [288 x i16], align 16             ; 6 uses
  %i.b = alloca [16 x i32], align 16              ; 18 uses
  %i.c = alloca [16 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %4, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod195)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !298

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.b, align 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.am, ptr %i.an, align 4
  %wide.trip.count119 = zext nneg i32 %3 to i64   ; 2 uses
  %i.ao = add nsw i64 %wide.trip.count119, -1     ; 3 uses
  %xtraiter196 = and i64 %i.ao, 1
  %unroll_iter201 = and i64 %i.ao, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge
  %i.ap = phi i32 [ %i.am, %._crit_edge ], [ %i.aw, %bb.b ]
  %indvars.iv116 = phi i64 [ 1, %._crit_edge ], [ %indvars.iv.next117.1, %bb.b ] ; 3 uses
  %.095 = phi i32 [ 0, %._crit_edge ], [ %i.bb, %bb.b ]
  %niter202 = phi i64 [ 0, %._crit_edge ], [ %niter202.next.1, %bb.b ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv116
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = add nsw i32 %i.ar, %i.ap                ; 2 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next117
  store i32 %i.as, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117
  %i.av = load i32, ptr %i.au, align 4            ; 2 uses
  %i.aw = add nsw i32 %i.av, %i.as                ; 3 uses
  %indvars.iv.next117.1 = add nuw nsw i64 %indvars.iv116, 2 ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next117.1
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = shl i32 %.095, 2
  %i.az = shl i32 %i.ar, 1
  %i.ba = add i32 %i.ay, %i.az
  %i.bb = add nsw i32 %i.av, %i.ba                ; 3 uses
  %niter202.next.1 = add nuw nsw i64 %niter202, 2 ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.unr-lcssa, label %bb.b

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod198.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod198.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod200 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117.1
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.aw
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next117.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %i.be, ptr %i.bg, align 4
  %i.bh = shl i32 %i.bb, 1
  %i.bi = add nsw i32 %i.bd, %i.bh
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa194 = phi i32 [ %i.bb, %.unr-lcssa ], [ %i.bi, %.epil.preheader ]
  %i.bj = shl i32 %.lcssa194, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %wide.trip.count119
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = add nsw i32 %i.bl, %i.bj
  br i1 %i.d, label %.lr.ph98.preheader, label %._crit_edge99

.lr.ph98.preheader:                               ; preds = %bb.c
  %wide.trip.count124 = zext nneg i32 %4 to i64   ; 2 uses
  %xtraiter203 = and i64 %wide.trip.count124, 1
  %i.bn = icmp eq i32 %4, 1
  br i1 %i.bn, label %.lr.ph98.epil.preheader, label %.lr.ph98.preheader.new

.lr.ph98.preheader.new:                           ; preds = %.lr.ph98.preheader
  %unroll_iter207 = and i64 %wide.trip.count124, 2147483646
  br label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph98, %.lr.ph98.preheader.new
  %indvars.iv121 = phi i64 [ 0, %.lr.ph98.preheader.new ], [ %indvars.iv.next122.1, %.lr.ph98 ] ; 4 uses
  %niter208 = phi i64 [ 0, %.lr.ph98.preheader.new ], [ %niter208.next.1, %.lr.ph98 ]
  %i.bo = trunc i64 %indvars.iv121 to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv121
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.bv
  store i16 %i.bo, ptr %i.bw, align 2
  %indvars.iv.next122 = or disjoint i64 %indvars.iv121, 1 ; 2 uses
  %i.bx = trunc i64 %indvars.iv.next122 to i16
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next122
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ce
  store i16 %i.bx, ptr %i.cf, align 2
  %indvars.iv.next122.1 = add nuw nsw i64 %indvars.iv121, 2 ; 2 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %._crit_edge99.loopexit.unr-lcssa, label %.lr.ph98

._crit_edge99.loopexit.unr-lcssa:                 ; preds = %.lr.ph98
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod205.not, label %._crit_edge99.loopexit, label %.lr.ph98.epil.preheader

.lr.ph98.epil.preheader:                          ; preds = %._crit_edge99.loopexit.unr-lcssa, %.lr.ph98.preheader
  %indvars.iv121.epil.init = phi i64 [ 0, %.lr.ph98.preheader ], [ %indvars.iv.next122.1, %._crit_edge99.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod206 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.cg = trunc i64 %indvars.iv121.epil.init to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv121.epil.init
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.cn
  store i16 %i.cg, ptr %i.co, align 2
  br label %._crit_edge99.loopexit

._crit_edge99.loopexit:                           ; preds = %._crit_edge99.loopexit.unr-lcssa, %.lr.ph98.epil.preheader
  %.pre134 = load i32, ptr %i.c, align 16
  %i.cp = sext i32 %.pre134 to i64
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %._crit_edge99.loopexit, %bb.c
  %i.cq = phi i64 [ %i.cp, %._crit_edge99.loopexit ], [ 0, %bb.c ]
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.cq ; 2 uses
  %i.cs = shl nuw nsw i32 1, %3
  %i.ct = icmp slt i32 %i.bm, %i.cs
  br i1 %i.ct, label %.preheader, label %bb.d

.preheader:                                       ; preds = %._crit_edge99, %.preheader
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %.preheader ], [ 0, %._crit_edge99 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv130
  store i32 1, ptr %i.cu, align 4
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv.next131 to i32
  %.3.highbits = lshr i32 %i.cv, %2
  %i.cw = icmp eq i32 %.3.highbits, 0
  br i1 %i.cw, label %.preheader, label %sinfl_build_tbl.exit

bb.d:                                             ; preds = %._crit_edge99
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %.not59.i = icmp eq i32 %i.cy, 0
  br i1 %.not59.i, label %.lr.ph.i, label %.preheader55.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %bb.d ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.da = load i32, ptr %i.cz, align 4            ; 3 uses
  %.not.i = icmp eq i32 %i.da, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.db = trunc nsw i64 %indvars.iv.next.i to i32 ; 3 uses
  %.not4660.i = icmp slt i32 %2, %i.db
  br i1 %.not4660.i, label %.loopexit, label %.preheader55.lr.ph.i

.preheader55.lr.ph.i:                             ; preds = %bb.d, %._crit_edge.i
  %i.dc = phi i32 [ %i.db, %._crit_edge.i ], [ 1, %bb.d ] ; 2 uses
  %.sroa.17.068 = phi i32 [ %i.da, %._crit_edge.i ], [ %i.cy, %bb.d ]
  %i.dd = shl nuw nsw i32 1, %i.dc
  %i.de = zext nneg i32 %2 to i64
  br label %.preheader55.i

.loopexit54.i:                                    ; preds = %bb.g
  %i.df = trunc nsw i64 %indvars.iv126 to i32
  %i.dg = trunc nsw i64 %indvars.iv.next127 to i32 ; 2 uses
  %.not46.i.not = icmp sgt i32 %2, %i.df
  br i1 %.not46.i.not, label %.preheader55.i, label %.loopexit

.preheader55.i:                                   ; preds = %.loopexit54.i, %.preheader55.lr.ph.i
  %.sroa.0.1 = phi i32 [ %i.dc, %.preheader55.lr.ph.i ], [ %i.dg, %.loopexit54.i ] ; 7 uses
  %.sroa.17.1 = phi i32 [ %.sroa.17.068, %.preheader55.lr.ph.i ], [ %i.et, %.loopexit54.i ]
  %.sroa.26.0 = phi i32 [ 0, %.preheader55.lr.ph.i ], [ %i.el, %.loopexit54.i ]
  %.sroa.3346.0 = phi ptr [ %i.cr, %.preheader55.lr.ph.i ], [ %i.ef, %.loopexit54.i ]
  %.03961.i = phi i32 [ %i.dd, %.preheader55.lr.ph.i ], [ %.5.i, %.loopexit54.i ] ; 5 uses
  %i.dh = add nsw i32 %.03961.i, -1               ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %.preheader55.i
  %.sroa.17.2 = phi i32 [ %.sroa.17.1, %.preheader55.i ], [ %i.em, %.thread.i ]
  %.sroa.26.1 = phi i32 [ %.sroa.26.0, %.preheader55.i ], [ %i.el, %.thread.i ] ; 4 uses
  %.sroa.3346.1 = phi ptr [ %.sroa.3346.0, %.preheader55.i ], [ %i.ef, %.thread.i ] ; 2 uses
  %i.di = load i16, ptr %.sroa.3346.1, align 2
  %i.dj = sext i16 %i.di to i32
  %i.dk = shl nsw i32 %i.dj, 16
  %i.dl = or i32 %i.dk, %.sroa.0.1
  %i.dm = sext i32 %.sroa.26.1 to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dm
  store i32 %i.dl, ptr %i.dn, align 4
  %.not47.i = icmp eq i32 %.sroa.26.1, %i.dh
  br i1 %.not47.i, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.e
  %i.do = icmp slt i32 %.sroa.0.1, %2
  br i1 %i.do, label %.lr.ph63.i.preheader, label %sinfl_build_tbl.exit

.lr.ph63.i.preheader:                             ; preds = %.preheader.i
  %i.dp = sub i32 %2, %.sroa.0.1
  %.neg = add i32 %.sroa.0.1, 1
  %xtraiter211 = and i32 %i.dp, 1
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.lr.ph63.i.prol.loopexit, label %.lr.ph63.i.prol

.lr.ph63.i.prol:                                  ; preds = %.lr.ph63.i.preheader
  %i.dq = sext i32 %.03961.i to i64               ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dq
  %i.ds = shl nsw i64 %i.dq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dr, ptr nonnull align 4 %0, i64 %i.ds, i1 false)
  %i.dt = shl i32 %.03961.i, 1
  %i.du = add nsw i32 %.sroa.0.1, 1
  br label %.lr.ph63.i.prol.loopexit

.lr.ph63.i.prol.loopexit:                         ; preds = %.lr.ph63.i.prol, %.lr.ph63.i.preheader
  %.sroa.0.2.unr = phi i32 [ %.sroa.0.1, %.lr.ph63.i.preheader ], [ %i.du, %.lr.ph63.i.prol ]
  %.262.i.unr = phi i32 [ %.03961.i, %.lr.ph63.i.preheader ], [ %i.dt, %.lr.ph63.i.prol ]
  %i.dv = icmp eq i32 %2, %.neg
  br i1 %i.dv, label %sinfl_build_tbl.exit, label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.prol.loopexit, %.lr.ph63.i
  %.sroa.0.2 = phi i32 [ %i.ee, %.lr.ph63.i ], [ %.sroa.0.2.unr, %.lr.ph63.i.prol.loopexit ]
  %.262.i = phi i32 [ %i.ed, %.lr.ph63.i ], [ %.262.i.unr, %.lr.ph63.i.prol.loopexit ] ; 3 uses
  %i.dw = sext i32 %.262.i to i64                 ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dw
  %i.dy = shl nsw i64 %i.dw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %0, i64 %i.dy, i1 false)
  %i.dz = shl i32 %.262.i, 1
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ea
  %i.ec = shl nsw i64 %i.ea, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr nonnull align 4 %0, i64 %i.ec, i1 false)
  %i.ed = shl i32 %.262.i, 2
  %i.ee = add nsw i32 %.sroa.0.2, 2               ; 2 uses
  %exitcond129.not.1 = icmp eq i32 %i.ee, %2
  br i1 %exitcond129.not.1, label %sinfl_build_tbl.exit, label %.lr.ph63.i

.thread.i:                                        ; preds = %bb.e
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.3346.1, i64 2 ; 3 uses
  %i.eg = xor i32 %.sroa.26.1, %i.dh
  %i.eh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true)
  %i.ei = lshr exact i32 -2147483648, %i.eh       ; 2 uses
  %i.ej = add i32 %i.ei, -1
  %i.ek = and i32 %i.ej, %.sroa.26.1
  %i.el = or i32 %i.ek, %i.ei                     ; 3 uses
  %i.em = add nsw i32 %.sroa.17.2, -1             ; 2 uses
  %.not48.i = icmp eq i32 %i.em, 0
  br i1 %.not48.i, label %.preheader53.i.preheader, label %bb.e

.preheader53.i.preheader:                         ; preds = %.thread.i
  %i.en = sext i32 %.sroa.0.1 to i64
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %.preheader53.i.preheader, %bb.g
  %indvars.iv126 = phi i64 [ %i.en, %.preheader53.i.preheader ], [ %indvars.iv.next127, %bb.g ] ; 3 uses
  %.4.i = phi i32 [ %.03961.i, %.preheader53.i.preheader ], [ %.5.i, %bb.g ] ; 3 uses
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, 1 ; 3 uses
  %.not49.not.i = icmp slt i64 %indvars.iv126, %i.de
  br i1 %.not49.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader53.i
  %i.eo = sext i32 %.4.i to i64                   ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eo
  %i.eq = shl nsw i64 %i.eo, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ep, ptr nonnull align 4 %0, i64 %i.eq, i1 false)
  %i.er = shl i32 %.4.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader53.i
  %.5.i = phi i32 [ %i.er, %bb.f ], [ %.4.i, %.preheader53.i ] ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next127
  %i.et = load i32, ptr %i.es, align 4            ; 3 uses
  %.not50.i = icmp eq i32 %i.et, 0
  br i1 %.not50.i, label %.preheader53.i, label %.loopexit54.i

.loopexit:                                        ; preds = %.loopexit54.i, %._crit_edge.i
  %.sroa.0.3.ph = phi i32 [ %i.db, %._crit_edge.i ], [ %i.dg, %.loopexit54.i ]
  %.sroa.17.3.ph = phi i32 [ %i.da, %._crit_edge.i ], [ %i.et, %.loopexit54.i ]
  %.sroa.26.2.ph = phi i32 [ 0, %._crit_edge.i ], [ %i.el, %.loopexit54.i ]
  %.sroa.3346.2.ph = phi ptr [ %i.cr, %._crit_edge.i ], [ %i.ef, %.loopexit54.i ]
  %i.eu = shl nuw nsw i32 1, %2                   ; 2 uses
  %i.ev = add nsw i32 %i.eu, -1
  %i.ew = sub nsw i32 0, %2
  %i.ex = sext i32 %i.ew to i64
  %i.ey = zext nneg i32 %2 to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.b, i64 %i.ey
  br label %.loopexit.i.outer

.loopexit.i.loopexit:                             ; preds = %bb.l
  %i.ez = trunc nsw i64 %indvars.iv.next79.i to i32
  br label %.loopexit.i.outer

.loopexit.i.outer:                                ; preds = %.loopexit.i.loopexit, %.loopexit
  %.sroa.17.4.ph = phi i32 [ %i.go, %.loopexit.i.loopexit ], [ %.sroa.17.3.ph, %.loopexit ]
  %.sroa.26.3.ph = phi i32 [ %i.gk, %.loopexit.i.loopexit ], [ %.sroa.26.2.ph, %.loopexit ]
  %.sroa.3346.3.ph = phi ptr [ %i.ge, %.loopexit.i.loopexit ], [ %.sroa.3346.2.ph, %.loopexit ]
  %.pre82.i.ph = phi i32 [ %i.ez, %.loopexit.i.loopexit ], [ %.sroa.0.3.ph, %.loopexit ] ; 4 uses
  %.057.i.ph = phi i32 [ %.158.i, %.loopexit.i.loopexit ], [ 0, %.loopexit ]
  %.055.i.ph = phi i32 [ %.156.i, %.loopexit.i.loopexit ], [ -1, %.loopexit ]
  %.054.i.ph = phi i32 [ %.1.i, %.loopexit.i.loopexit ], [ %i.eu, %.loopexit ]
  %.pre136 = sub nsw i32 %.pre82.i.ph, %2         ; 3 uses
  %.pre137 = shl nuw i32 1, %.pre136              ; 3 uses
  %i.fa = sext i32 %.pre82.i.ph to i64
  %i.fb = add nsw i64 %i.fa, %i.ex
  %i.fc = and i32 %.pre136, 15
  %i.fd = sext i32 %.pre137 to i64
  %notmask.i = shl nsw i32 -1, %.pre82.i.ph
  %i.fe = xor i32 %notmask.i, -1                  ; 2 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.outer, %bb.k
  %.sroa.17.4 = phi i32 [ %i.gl, %bb.k ], [ %.sroa.17.4.ph, %.loopexit.i.outer ] ; 3 uses
  %.sroa.26.3 = phi i32 [ %i.gk, %bb.k ], [ %.sroa.26.3.ph, %.loopexit.i.outer ] ; 5 uses
  %.sroa.3346.3 = phi ptr [ %i.ge, %bb.k ], [ %.sroa.3346.3.ph, %.loopexit.i.outer ] ; 2 uses
  %.057.i = phi i32 [ %.158.i, %bb.k ], [ %.057.i.ph, %.loopexit.i.outer ]
  %.055.i = phi i32 [ %.156.i, %bb.k ], [ %.055.i.ph, %.loopexit.i.outer ] ; 2 uses
  %.054.i = phi i32 [ %.1.i, %bb.k ], [ %.054.i.ph, %.loopexit.i.outer ] ; 4 uses
  %i.ff = and i32 %.sroa.26.3, %i.ev              ; 3 uses
  %.not.i35 = icmp eq i32 %i.ff, %.055.i
  br i1 %.not.i35, label %._crit_edge135, label %bb.h

bb.h:                                             ; preds = %.loopexit.i
  %i.fg = icmp slt i32 %.sroa.17.4, %.pre137
  br i1 %i.fg, label %.lr.ph.i37, label %._crit_edge.i36

.lr.ph.i37:                                       ; preds = %bb.h, %.lr.ph.i37
  %indvars.iv.i38 = phi i64 [ %indvars.iv.next.i39, %.lr.ph.i37 ], [ %i.fb, %bb.h ]
  %.05267.i = phi i32 [ %i.fj, %.lr.ph.i37 ], [ %.sroa.17.4, %bb.h ]
  %indvars.iv.next.i39 = add nsw i64 %indvars.iv.i38, 1 ; 3 uses
  %i.fh = shl i32 %.05267.i, 1
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i39
  %i.fi = load i32, ptr %gep.i, align 4
  %i.fj = add nsw i32 %i.fi, %i.fh                ; 2 uses
  %i.fk = trunc nsw i64 %indvars.iv.next.i39 to i32 ; 2 uses
  %i.fl = shl nuw i32 1, %i.fk                    ; 2 uses
  %i.fm = icmp slt i32 %i.fj, %i.fl
  br i1 %i.fm, label %.lr.ph.i37, label %._crit_edge.i36

._crit_edge.i36:                                  ; preds = %.lr.ph.i37, %bb.h
  %.059.lcssa.i = phi i32 [ %.pre136, %bb.h ], [ %i.fk, %.lr.ph.i37 ]
  %.lcssa.i = phi i32 [ %.pre137, %bb.h ], [ %i.fl, %.lr.ph.i37 ]
  %i.fn = add nsw i32 %.lcssa.i, %.054.i
  %i.fo = shl i32 %.054.i, 16
  %i.fp = and i32 %.059.lcssa.i, 15
  %i.fq = or disjoint i32 %i.fp, %i.fo
  %i.fr = or disjoint i32 %i.fq, 16
  %i.fs = zext nneg i32 %i.ff to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fs
  store i32 %i.fr, ptr %i.ft, align 4
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %.loopexit.i, %._crit_edge.i36
  %.158.i = phi i32 [ %.054.i, %._crit_edge.i36 ], [ %.057.i, %.loopexit.i ] ; 3 uses
  %.156.i = phi i32 [ %i.ff, %._crit_edge.i36 ], [ %.055.i, %.loopexit.i ] ; 2 uses
  %.1.i = phi i32 [ %i.fn, %._crit_edge.i36 ], [ %.054.i, %.loopexit.i ] ; 3 uses
  %i.fu = load i16, ptr %.sroa.3346.3, align 2
  %i.fv = sext i16 %i.fu to i32
  %i.fw = shl nsw i32 %i.fv, 16
  %i.fx = or disjoint i32 %i.fw, %i.fc
  %i.fy = ashr i32 %.sroa.26.3, %2
  %i.fz = add i32 %.158.i, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = sext i32 %.1.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge135
  %indvars.iv75.i = phi i64 [ %indvars.iv.next76.i, %bb.i ], [ %i.ga, %._crit_edge135 ] ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv75.i
  store i32 %i.fx, ptr %i.gc, align 4
  %indvars.iv.next76.i = add nsw i64 %indvars.iv75.i, %i.fd ; 2 uses
  %i.gd = icmp slt i64 %indvars.iv.next76.i, %i.gb
  br i1 %i.gd, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not65.i = icmp eq i32 %.sroa.26.3, %i.fe
  br i1 %.not65.i, label %sinfl_build_tbl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.3346.3, i64 2 ; 2 uses
  %i.gf = xor i32 %.sroa.26.3, %i.fe
  %i.gg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gf, i1 true)
  %i.gh = lshr exact i32 -2147483648, %i.gg       ; 2 uses
  %i.gi = add nsw i32 %i.gh, -1
  %i.gj = and i32 %i.gi, %.sroa.26.3
  %i.gk = or i32 %i.gj, %i.gh                     ; 2 uses
  %i.gl = add nsw i32 %.sroa.17.4, -1             ; 2 uses
  %.not6469.i = icmp eq i32 %i.gl, 0
  br i1 %.not6469.i, label %.lr.ph71.i, label %.loopexit.i

.lr.ph71.i:                                       ; preds = %bb.k
  %i.gm = sext i32 %.pre82.i.ph to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph71.i
  %indvars.iv78.i = phi i64 [ %i.gm, %.lr.ph71.i ], [ %indvars.iv.next79.i, %bb.l ]
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, 1 ; 3 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next79.i
  %i.go = load i32, ptr %i.gn, align 4            ; 2 uses
  %.not64.i = icmp eq i32 %i.go, 0
  br i1 %.not64.i, label %bb.l, label %.loopexit.i.loopexit

sinfl_build_tbl.exit:                             ; preds = %.lr.ph63.i.prol.loopexit, %.lr.ph63.i, %bb.j, %.preheader, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #31

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sdefl_huff(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 19, 289) %3, i32 noundef range(i32 7, 16) %4) unnamed_addr #53 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 12 uses
  %i.b = alloca [288 x i32], align 16             ; 13 uses
  %i.c = alloca [16 x i32], align 16              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1152) %i.b, i8 0, i64 1152, i1 false)
  %i.d = add nuw nsw i32 %3, 3
  %i.e = and i32 %i.d, 1020                       ; 3 uses
  %i.f = add nsw i32 %i.e, -1                     ; 4 uses
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 11 uses
  %i.g = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count.i, 510
  br label %bb.b

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.unr-lcssa, %bb.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod105 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.j = load i32, ptr %i.i, align 4
  %..i.epil = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.f)
  %i.k = zext nneg i32 %..i.epil to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.unr-lcssa, %.epil.preheader
  %wide.trip.count66.i = zext nneg i32 %i.e to i64 ; 2 uses
  %i.o = icmp eq i32 %i.e, 4
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %i.p = add nsw i64 %wide.trip.count66.i, -8
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4
  %..i = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.f)
  %i.s = zext nneg i32 %..i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %..i.1 = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.f)
  %i.z = zext nneg i32 %..i.1 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.unr-lcssa, label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv63.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next64.i.3, %.lr.ph.i ] ; 5 uses
  %.053.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %niter111 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter111.next.3, %.lr.ph.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  store i32 %.053.i, ptr %i.ad, align 4
  %i.af = add i32 %i.ae, %.053.i                  ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  store i32 %i.af, ptr %i.ah, align 4
  %i.aj = add i32 %i.ai, %i.af                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  store i32 %i.aj, ptr %i.al, align 4
  %i.an = add i32 %i.am, %i.aj                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  store i32 %i.an, ptr %i.ap, align 4
  %i.ar = add i32 %i.aq, %i.an                    ; 2 uses
  %indvars.iv.next64.i.3 = add nuw nsw i64 %indvars.iv63.i, 4 ; 2 uses
  %niter111.next.3 = add nuw nsw i64 %niter111, 4
  %niter111.ncmp.3 = icmp eq i64 %niter111, %i.p
  br i1 %niter111.ncmp.3, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv63.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next64.i.3, %.lr.ph.i ]
  %.053.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ar, %.lr.ph.i ]
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv63.i.epil = phi i64 [ %indvars.iv63.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next64.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.053.i.epil = phi i32 [ %.053.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.au, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i.epil ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  store i32 %.053.i.epil, ptr %i.as, align 4
  %i.au = add i32 %i.at, %.053.i.epil             ; 6 uses
  %indvars.iv.next64.i.epil = add nuw nsw i64 %indvars.iv63.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !299

.preheader.i:                                     ; preds = %.lr.ph.i.epil, %bb.e
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %bb.e ], [ 0, %.lr.ph.i.epil ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv68.i
  %i.aw = load i32, ptr %i.av, align 4            ; 3 uses
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %i.f)
  %i.ay = shl i32 %i.aw, 10
  %i.az = trunc nuw nsw i64 %indvars.iv68.i to i32
  %i.ba = or i32 %i.ay, %i.az
  %i.bb = zext nneg i32 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bf
  store i32 %i.ba, ptr %i.bg, align 4
  br label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv68.i
  store i8 0, ptr %i.bh, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %wide.trip.count.i
  br i1 %exitcond72.not.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr [4 x i8], ptr %i.b, i64 %wide.trip.count66.i ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load i32, ptr %i.bj, align 8            ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bl ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bi, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = sub i32 %i.bo, %i.bk                    ; 6 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 -4 ; 12 uses
  %i.br = lshr i32 %i.bp, 1                       ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not7.i.i.i, label %sdefl_heap_array.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %i.bs = zext i32 %i.bp to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %sdefl_heap_sub.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.bt, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %sdefl_heap_sub.exit.i.i.i ] ; 5 uses
  %.08.i.i.i = phi i32 [ %i.br, %.lr.ph.preheader.i.i.i ], [ %i.cp, %sdefl_heap_sub.exit.i.i.i ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.i.i
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = shl nuw nsw i64 %indvars.iv.i.i.i, 1    ; 2 uses
  %.not27.i.i.i.i = icmp samesign ugt i64 %i.bw, %i.bs
  br i1 %.not27.i.i.i.i, label %sdefl_heap_sub.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.bx = trunc nuw i64 %i.bw to i32
  %i.by = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.preheader.i.i.i
  %i.bz = phi i32 [ %i.cn, %bb.i ], [ %i.bx, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %.028.i.i.i.i = phi i32 [ %.022.i.i.i.i, %bb.i ], [ %i.by, %.lr.ph.i.preheader.i.i.i ]
  %i.ca = icmp ult i32 %i.bz, %i.bp
  br i1 %i.ca, label %bb.g, label %.lr.ph._crit_edge.i.i.i.i

.lr.ph._crit_edge.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i
  %.phi.trans.insert.i.i.i.i = zext i32 %i.bz to i64 ; 2 uses
  %.phi.trans.insert31.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.phi.trans.insert.i.i.i.i
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert31.i.i.i.i, align 4
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = or disjoint i32 %i.bz, 1                ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.cf = zext i32 %i.bz to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4            ; 2 uses
  %i.ci = icmp ugt i32 %i.ce, %i.ch
  %spec.select.i.i.i.i = select i1 %i.ci, i32 %i.cb, i32 %i.bz ; 2 uses
  %i.cj = tail call i32 @llvm.umax.i32(i32 %i.ce, i32 %i.ch)
  %.pre33.i.i.i.i = zext i32 %spec.select.i.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph._crit_edge.i.i.i.i
  %.pre-phi34.i.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %.pre33.i.i.i.i, %bb.g ]
  %i.ck = phi i32 [ %.pre.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %i.cj, %bb.g ] ; 2 uses
  %.022.i.i.i.i = phi i32 [ %i.bz, %.lr.ph._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.g ] ; 2 uses
  %.not26.i.i.i.i = icmp ult i32 %i.bv, %i.ck
  %i.cl = zext i32 %.028.i.i.i.i to i64           ; 2 uses
  br i1 %.not26.i.i.i.i, label %bb.i, label %sdefl_heap_sub.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cl
  store i32 %i.ck, ptr %i.cm, align 4
  %i.cn = shl i32 %.022.i.i.i.i, 1                ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.cn, %i.bp
  br i1 %.not.i.i.i.i, label %sdefl_heap_sub.exit.i.i.i, label %.lr.ph.i.i.i.i
end_hunk_3
begin_hunk_4_@sdefl_huff:bb.a
  %i.gc = or disjoint i32 %i.gb, %i.ga
  store i32 %i.gc, ptr %i.fs, align 4
  %.not35.i = icmp samesign ult i32 %i.fz, %4
  br i1 %.not35.i, label %.lr.ph..loopexit_crit_edge.i, label %.preheader.i43

.lr.ph..loopexit_crit_edge.i:                     ; preds = %.lr.ph.i40
  %.phi.trans.insert.i = zext nneg i32 %i.fz to i64 ; 2 uses
  %.phi.trans.insert42.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.phi.trans.insert.i
  %.pre.i = load i32, ptr %.phi.trans.insert42.i, align 4
  %i.gd = add nuw nsw i32 %i.fy, 2
  br label %.loopexit.i

.preheader.i43:                                   ; preds = %.lr.ph.i40, %.preheader.i43
  %.0.i44 = phi i32 [ %i.ge, %.preheader.i43 ], [ %4, %.lr.ph.i40 ] ; 2 uses
  %i.ge = add i32 %.0.i44, -1                     ; 2 uses
  %i.gf = zext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4            ; 2 uses
  %.not36.i = icmp eq i32 %i.gh, 0
  br i1 %.not36.i, label %.preheader.i43, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i43, %.lr.ph..loopexit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.gf, %.preheader.i43 ]
  %i.gi = phi i32 [ %.pre.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.gh, %.preheader.i43 ]
  %.1.i45 = phi i32 [ %i.gd, %.lr.ph..loopexit_crit_edge.i ], [ %.0.i44, %.preheader.i43 ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre-phi.i
  %i.gk = add i32 %i.gi, -1
  store i32 %i.gk, ptr %i.gj, align 4
  %i.gl = zext i32 %.1.i45 to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gl ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = add i32 %i.gn, 2
  store i32 %i.go, ptr %i.gm, align 4
  %i.gp = icmp samesign ugt i64 %indvars.iv.i41, 1
  br i1 %i.gp, label %.lr.ph.i40, label %sdefl_gen_len_cnt.exit

sdefl_gen_len_cnt.exit:                           ; preds = %.loopexit.i, %sdefl_build_tree.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  %i.gq = zext nneg i32 %4 to i64                 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i, %sdefl_gen_len_cnt.exit
  %indvars.iv.i46 = phi i64 [ %i.gq, %sdefl_gen_len_cnt.exit ], [ %indvars.iv.next.i48, %._crit_edge.i ] ; 3 uses
  %.02532.i = phi i32 [ 0, %sdefl_gen_len_cnt.exit ], [ %.126.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i46
  %i.gs = load i32, ptr %i.gr, align 4            ; 5 uses
  %.not2829.i = icmp eq i32 %i.gs, 0
  br i1 %.not2829.i, label %._crit_edge.i, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.z
  %i.gt = trunc i64 %indvars.iv.i46 to i8         ; 5 uses
  %xtraiter112 = and i32 %i.gs, 3                 ; 2 uses
  %lcmp.mod113.not = icmp eq i32 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i47, %.prol.preheader
  %.031.i.prol = phi i32 [ %i.gu, %.prol.preheader ], [ %i.gs, %.lr.ph.i47 ]
  %.12630.i.prol = phi i32 [ %i.gv, %.prol.preheader ], [ %.02532.i, %.lr.ph.i47 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i47 ]
  %i.gu = add i32 %.031.i.prol, -1                ; 2 uses
  %i.gv = add i32 %.12630.i.prol, 1               ; 3 uses
  %i.gw = zext i32 %.12630.i.prol to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = and i32 %i.gy, 1023
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ha
  store i8 %i.gt, ptr %i.hb, align 1
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter112
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !300

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i47
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i47 ], [ %i.gv, %.prol.preheader ]
  %.031.i.unr = phi i32 [ %i.gs, %.lr.ph.i47 ], [ %i.gu, %.prol.preheader ]
  %.12630.i.unr = phi i32 [ %.02532.i, %.lr.ph.i47 ], [ %i.gv, %.prol.preheader ]
  %i.hc = icmp ult i32 %i.gs, 4
  br i1 %i.hc, label %._crit_edge.i, label %.lr.ph.i47.new

.lr.ph.i47.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i47.new
  %.031.i = phi i32 [ %i.hy, %.lr.ph.i47.new ], [ %.031.i.unr, %.prol.loopexit ]
  %.12630.i = phi i32 [ %i.hz, %.lr.ph.i47.new ], [ %.12630.i.unr, %.prol.loopexit ] ; 5 uses
  %i.hd = add i32 %.12630.i, 1
  %i.he = zext i32 %.12630.i to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = and i32 %i.hg, 1023
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 %i.hi
  store i8 %i.gt, ptr %i.hj, align 1
  %i.hk = add i32 %.12630.i, 2
  %i.hl = zext i32 %i.hd to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = and i32 %i.hn, 1023
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 %i.hp
  store i8 %i.gt, ptr %i.hq, align 1
  %i.hr = add i32 %.12630.i, 3
  %i.hs = zext i32 %i.hk to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = and i32 %i.hu, 1023
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 %i.hw
  store i8 %i.gt, ptr %i.hx, align 1
  %i.hy = add i32 %.031.i, -4                     ; 2 uses
  %i.hz = add i32 %.12630.i, 4                    ; 2 uses
  %i.ia = zext i32 %i.hr to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = and i32 %i.ic, 1023
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 %i.ie
  store i8 %i.gt, ptr %i.if, align 1
  %.not28.i.3 = icmp eq i32 %i.hy, 0
  br i1 %.not28.i.3, label %._crit_edge.i, label %.lr.ph.i47.new

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i47.new, %bb.z
  %.126.lcssa.i = phi i32 [ %.02532.i, %bb.z ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.hz, %.lr.ph.i47.new ]
  %indvars.iv.next.i48 = add nsw i64 %indvars.iv.i46, -1 ; 2 uses
  %i.ig = and i64 %indvars.iv.next.i48, 4294967295
  %.not.i49 = icmp eq i64 %i.ig, 0
  br i1 %.not.i49, label %.new114, label %bb.z

.new114:                                          ; preds = %._crit_edge.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.ih, align 4
  store i32 0, ptr %i.a, align 16
  %i.ii = add nsw i64 %i.gq, -1                   ; 2 uses
  %xtraiter116 = and i64 %i.ii, 3                 ; 3 uses
  %unroll_iter120 = and i64 %i.ii, -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.new114
  %i.ij = phi i32 [ 0, %.new114 ], [ %i.jg, %bb.aa ]
  %indvars.iv37.i = phi i64 [ 2, %.new114 ], [ %indvars.iv.next38.i.3, %bb.aa ] ; 6 uses
  %niter121 = phi i64 [ 0, %.new114 ], [ %niter121.next.3, %bb.aa ]
  %i.ik = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i
  %i.il = getelementptr i8, ptr %i.ik, i64 -4
  %i.im = load i32, ptr %i.il, align 4
  %i.in = add i32 %i.im, %i.ij
  %i.io = shl i32 %i.in, 1                        ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i
  store i32 %i.io, ptr %i.ip, align 8
  %indvars.iv.next38.i = or disjoint i64 %indvars.iv37.i, 1 ; 2 uses
  %i.iq = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i
  %i.ir = getelementptr i8, ptr %i.iq, i64 -4
  %i.is = load i32, ptr %i.ir, align 8
  %i.it = add i32 %i.is, %i.io
  %i.iu = shl i32 %i.it, 1                        ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i
  store i32 %i.iu, ptr %i.iv, align 4
  %indvars.iv.next38.i.1 = add nuw nsw i64 %indvars.iv37.i, 2 ; 2 uses
  %i.iw = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.1
  %i.ix = getelementptr i8, ptr %i.iw, i64 -4
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = add i32 %i.iy, %i.iu
  %i.ja = shl i32 %i.iz, 1                        ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.1
  store i32 %i.ja, ptr %i.jb, align 8
  %indvars.iv.next38.i.2 = add nuw nsw i64 %indvars.iv37.i, 3 ; 2 uses
  %i.jc = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.2
  %i.jd = getelementptr i8, ptr %i.jc, i64 -4
  %i.je = load i32, ptr %i.jd, align 8
  %i.jf = add i32 %i.je, %i.ja
  %i.jg = shl i32 %i.jf, 1                        ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.2
  store i32 %i.jg, ptr %i.jh, align 4
  %indvars.iv.next38.i.3 = add nuw nsw i64 %indvars.iv37.i, 4 ; 2 uses
  %niter121.next.3 = add nuw i64 %niter121, 4     ; 2 uses
  %niter121.ncmp.3 = icmp eq i64 %niter121.next.3, %unroll_iter120
  br i1 %niter121.ncmp.3, label %.preheader.i52.preheader.unr-lcssa, label %bb.aa

.preheader.i52.preheader.unr-lcssa:               ; preds = %bb.aa
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %.preheader.i52.preheader, label %.epil.preheader115

.epil.preheader115:                               ; preds = %.preheader.i52.preheader.unr-lcssa
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader115
  %i.ji = phi i32 [ %i.jg, %.epil.preheader115 ], [ %i.jn, %bb.ab ]
  %indvars.iv37.i.epil = phi i64 [ %indvars.iv.next38.i.3, %.epil.preheader115 ], [ %indvars.iv.next38.i.epil, %bb.ab ] ; 3 uses
  %epil.iter117 = phi i64 [ 0, %.epil.preheader115 ], [ %epil.iter117.next, %bb.ab ]
  %i.jj = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i.epil
  %i.jk = getelementptr i8, ptr %i.jj, i64 -4
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = add i32 %i.jl, %i.ji
  %i.jn = shl i32 %i.jm, 1                        ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i.epil
  store i32 %i.jn, ptr %i.jo, align 4
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %.preheader.i52.preheader, label %bb.ab, !llvm.loop !301

.preheader.i52.preheader:                         ; preds = %bb.ab, %.preheader.i52.preheader.unr-lcssa
  %xtraiter122 = and i64 %wide.trip.count.i, 1
  %i.jp = icmp eq i64 %i.g, 0
  br i1 %i.jp, label %.preheader.i52.epil.preheader, label %.preheader.i52.preheader.new

.preheader.i52.preheader.new:                     ; preds = %.preheader.i52.preheader
  %unroll_iter126 = and i64 %wide.trip.count.i, 510
  br label %.preheader.i52

.preheader.i52:                                   ; preds = %.preheader.i52, %.preheader.i52.preheader.new
  %indvars.iv41.i = phi i64 [ 0, %.preheader.i52.preheader.new ], [ %indvars.iv.next42.i.1, %.preheader.i52 ] ; 4 uses
  %niter127 = phi i64 [ 0, %.preheader.i52.preheader.new ], [ %niter127.next.1, %.preheader.i52 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41.i
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.js ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4            ; 2 uses
  %i.jv = add i32 %i.ju, 1
  store i32 %i.jv, ptr %i.jt, align 4
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41.i
  store i32 %i.ju, ptr %i.jw, align 4
  %indvars.iv.next42.i = or disjoint i64 %indvars.iv41.i, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42.i
  %i.jy = load i8, ptr %i.jx, align 1
  %i.jz = zext i8 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4            ; 2 uses
  %i.kc = add i32 %i.kb, 1
  store i32 %i.kc, ptr %i.ka, align 4
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next42.i
  store i32 %i.kb, ptr %i.kd, align 4
  %indvars.iv.next42.i.1 = add nuw nsw i64 %indvars.iv41.i, 2 ; 2 uses
  %niter127.next.1 = add nuw nsw i64 %niter127, 2 ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %sdefl_gen_codes.exit.unr-lcssa, label %.preheader.i52

sdefl_gen_codes.exit.unr-lcssa:                   ; preds = %.preheader.i52
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod124.not, label %sdefl_gen_codes.exit, label %.preheader.i52.epil.preheader

.preheader.i52.epil.preheader:                    ; preds = %sdefl_gen_codes.exit.unr-lcssa, %.preheader.i52.preheader
  %indvars.iv41.i.epil.init = phi i64 [ 0, %.preheader.i52.preheader ], [ %indvars.iv.next42.i.1, %sdefl_gen_codes.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod125 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41.i.epil.init
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4            ; 2 uses
  %i.kj = add i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41.i.epil.init
  store i32 %i.ki, ptr %i.kk, align 4
  br label %sdefl_gen_codes.exit

sdefl_gen_codes.exit:                             ; preds = %sdefl_gen_codes.exit.unr-lcssa, %.preheader.i52.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.kl = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.kl
  %scevgep100 = getelementptr i8, ptr %0, i64 %wide.trip.count.i
  %bound0 = icmp ult ptr %1, %scevgep100
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %sdefl_gen_codes.exit
  %n.vec = and i64 %wide.trip.count.i, 508        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.km, align 4, !alias.scope !307, !noalias !308
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load101 = load <4 x i8>, ptr %i.kn, align 1, !alias.scope !308
  %i.ko = trunc <4 x i32> %wide.load to <4 x i16>
  %i.kp = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.ko)
  %i.kq = zext <4 x i16> %i.kp to <4 x i32>
  %i.kr = zext <4 x i8> %wide.load101 to <4 x i32>
  %i.ks = sub nsw <4 x i32> splat (i32 16), %i.kr
  %i.kt = lshr <4 x i32> %i.kq, %i.ks
  store <4 x i32> %i.kt, ptr %i.km, align 4, !alias.scope !307, !noalias !308
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !305

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %sdefl_gen_codes.exit, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %sdefl_gen_codes.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ky = load i8, ptr %i.kx, align 1
  %trunc.i = trunc i32 %i.kw to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.kz = zext i16 %rev.i to i32
  %i.la = zext i8 %i.ky to i32
  %i.lb = sub nsw i32 16, %i.la
  %i.lc = lshr i32 %i.kz, %i.lb
  store i32 %i.lc, ptr %i.kv, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !306

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %sdefl_sort_sym.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #35

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #54

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #55

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bitreverse.v4i16(<4 x i16>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_4
