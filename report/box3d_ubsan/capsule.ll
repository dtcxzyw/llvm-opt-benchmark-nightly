Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/capsule?download=true
inline.NumInlined: 93
inline.NumDeleted: 24
begin_hunk_0_@b3ComputeSweptCapsuleAABB:bb.a
  %.sroa.5252.0.copyload = load <2 x float>, ptr %.sroa.5252.0..sroa_idx, align 4 ; 7 uses
  %.sroa.6253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6253.0.copyload = load <2 x float>, ptr %.sroa.6253.0..sroa_idx, align 4 ; 5 uses
  %.sroa.09.0.vec.extract.i.i154 = extractelement <2 x float> %.sroa.5252.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0103.0.copyload, %.sroa.6261.0.copyload
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul float %.sroa.2104.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.l = fsub float %i.j, %i.k
  %i.m = shufflevector <2 x float> %.sroa.0103.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.n = insertelement <2 x float> %i.m, float %.sroa.2104.0.copyload, i64 1 ; 4 uses
  %i.o = fmul <2 x float> %i.n, %.sroa.5260.0.copyload
  %i.p = shufflevector <2 x float> %.sroa.5260.0.copyload, <2 x float> %.sroa.6261.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.q = fmul <2 x float> %.sroa.0103.0.copyload, %i.p
  %i.r = fsub <2 x float> %i.o, %i.q              ; 2 uses
  %i.s = insertelement <2 x float> %i.m, float %.sroa.2104.0.copyload, i64 0 ; 2 uses
  %i.t = shufflevector <2 x float> %.sroa.6261.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.u = fmul <2 x float> %i.s, %i.t
  %i.v = fmul <2 x float> %i.n, %i.t
  %i.w = fadd <2 x float> %i.u, %i.r              ; 2 uses
  %i.x = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.y = insertelement <2 x float> %i.x, float %i.l, i64 0
  %i.z = fadd <2 x float> %i.v, %i.y              ; 2 uses
  %i.aa = fmul <2 x float> %i.p, %i.w
  %i.ab = shufflevector <2 x float> %.sroa.6261.0.copyload, <2 x float> %.sroa.5260.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ac = fmul <2 x float> %i.ab, %i.z
  %i.ad = fsub <2 x float> %i.aa, %i.ac
  %i.ae = fmul <2 x float> %i.ad, splat (float 2.000000e+00)
  %i.af = fadd <2 x float> %.sroa.0103.0.copyload, %i.ae
  %i.ag = fadd <2 x float> %.sroa.0258.0.copyload, %i.af ; 4 uses
  %foldExtExtBinop263 = fmul <2 x float> %.sroa.6261.0.copyload, %.sroa.094.0.copyload
  %i.ah = extractelement <2 x float> %foldExtExtBinop263, i64 0
  %i.ai = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.295.0.copyload
  %i.aj = fsub float %i.ah, %i.ai
  %i.ak = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.al = insertelement <2 x float> %i.ak, float %.sroa.295.0.copyload, i64 1 ; 4 uses
  %i.am = fmul <2 x float> %.sroa.5260.0.copyload, %i.al
  %i.an = fmul <2 x float> %i.p, %.sroa.094.0.copyload
  %i.ao = fsub <2 x float> %i.am, %i.an           ; 2 uses
  %i.ap = insertelement <2 x float> %i.ak, float %.sroa.295.0.copyload, i64 0 ; 2 uses
  %i.aq = fmul <2 x float> %i.t, %i.ap
  %i.ar = fmul <2 x float> %i.t, %i.al
  %i.as = fadd <2 x float> %i.aq, %i.ao           ; 2 uses
  %i.at = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.au = insertelement <2 x float> %i.at, float %i.aj, i64 0
  %i.av = fadd <2 x float> %i.ar, %i.au           ; 2 uses
  %i.aw = fmul <2 x float> %i.p, %i.as
  %i.ax = fmul <2 x float> %i.ab, %i.av
  %i.ay = fsub <2 x float> %i.aw, %i.ax
  %i.az = fmul <2 x float> %i.ay, splat (float 2.000000e+00)
  %i.ba = fadd <2 x float> %.sroa.094.0.copyload, %i.az
  %i.bb = fadd <2 x float> %.sroa.0258.0.copyload, %i.ba ; 4 uses
  %foldExtExtBinop265 = fmul <2 x float> %.sroa.0103.0.copyload, %.sroa.6253.0.copyload
  %i.bc = extractelement <2 x float> %foldExtExtBinop265, i64 0
  %i.bd = fmul float %.sroa.2104.0.copyload, %.sroa.09.0.vec.extract.i.i154
  %i.be = fsub float %i.bc, %i.bd
  %i.bf = fmul <2 x float> %i.n, %.sroa.5252.0.copyload
  %i.bg = shufflevector <2 x float> %.sroa.5252.0.copyload, <2 x float> %.sroa.6253.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bh = fmul <2 x float> %.sroa.0103.0.copyload, %i.bg
  %i.bi = fsub <2 x float> %i.bf, %i.bh           ; 2 uses
  %i.bj = shufflevector <2 x float> %.sroa.6253.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bk = fmul <2 x float> %i.s, %i.bj
  %i.bl = fmul <2 x float> %i.n, %i.bj
  %i.bm = fadd <2 x float> %i.bk, %i.bi           ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = insertelement <2 x float> %i.bn, float %i.be, i64 0
  %i.bp = fadd <2 x float> %i.bl, %i.bo           ; 2 uses
  %i.bq = fmul <2 x float> %i.bg, %i.bm
  %i.br = shufflevector <2 x float> %.sroa.6253.0.copyload, <2 x float> %.sroa.5252.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bs = fmul <2 x float> %i.br, %i.bp
  %i.bt = fsub <2 x float> %i.bq, %i.bs
  %i.bu = fmul <2 x float> %i.bt, splat (float 2.000000e+00)
  %i.bv = fadd <2 x float> %.sroa.0103.0.copyload, %i.bu
  %i.bw = fadd <2 x float> %.sroa.0250.0.copyload, %i.bv ; 4 uses
  %foldExtExtBinop267 = fmul <2 x float> %.sroa.094.0.copyload, %.sroa.6253.0.copyload
  %i.bx = extractelement <2 x float> %foldExtExtBinop267, i64 0
  %i.by = fmul float %.sroa.295.0.copyload, %.sroa.09.0.vec.extract.i.i154
  %i.bz = fsub float %i.bx, %i.by
  %i.ca = fmul <2 x float> %i.al, %.sroa.5252.0.copyload
  %i.cb = fmul <2 x float> %.sroa.094.0.copyload, %i.bg
  %i.cc = fsub <2 x float> %i.ca, %i.cb           ; 2 uses
  %i.cd = fmul <2 x float> %i.ap, %i.bj
  %i.ce = fmul <2 x float> %i.al, %i.bj
  %i.cf = fadd <2 x float> %i.cd, %i.cc           ; 2 uses
  %i.cg = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ch = insertelement <2 x float> %i.cg, float %i.bz, i64 0
  %i.ci = fadd <2 x float> %i.ce, %i.ch           ; 2 uses
  %i.cj = fmul <2 x float> %i.bg, %i.cf
  %i.ck = fmul <2 x float> %i.br, %i.ci
  %i.cl = fsub <2 x float> %i.cj, %i.ck
  %i.cm = fmul <2 x float> %i.cl, splat (float 2.000000e+00)
  %i.cn = fadd <2 x float> %.sroa.094.0.copyload, %i.cm
  %i.co = fadd <2 x float> %.sroa.0250.0.copyload, %i.cn ; 4 uses
  %i.cp = fcmp olt <2 x float> %i.ag, %i.bb
  %i.cq = select <2 x i1> %i.cp, <2 x float> %i.ag, <2 x float> %i.bb ; 2 uses
  %i.cr = fcmp olt <2 x float> %i.bw, %i.co
  %i.cs = select <2 x i1> %i.cr, <2 x float> %i.bw, <2 x float> %i.co ; 2 uses
  %i.ct = fcmp olt <2 x float> %i.cq, %i.cs
  %i.cu = select <2 x i1> %i.ct, <2 x float> %i.cq, <2 x float> %i.cs
  %i.cv = insertelement <2 x float> poison, float %i.g, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = fsub <2 x float> %i.cu, %i.cw
  store <2 x float> %i.cx, ptr %0, align 4
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cz = shufflevector <2 x float> %.sroa.5260.0.copyload, <2 x float> %.sroa.5252.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.da = shufflevector <2 x float> %i.z, <2 x float> %i.bp, <2 x i32> <i32 0, i32 2>
  %i.db = fmul <2 x float> %i.cz, %i.da
  %i.dc = shufflevector <2 x float> %.sroa.5260.0.copyload, <2 x float> %.sroa.5252.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dd = shufflevector <2 x float> %i.w, <2 x float> %i.bm, <2 x i32> <i32 1, i32 3>
  %i.de = fmul <2 x float> %i.dc, %i.dd
  %i.df = fsub <2 x float> %i.db, %i.de
  %i.dg = fmul <2 x float> %i.df, splat (float 2.000000e+00)
  %i.dh = insertelement <2 x float> poison, float %.sroa.2104.0.copyload, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fadd <2 x float> %i.di, %i.dg
  %i.dk = insertelement <2 x float> %i.h, float %.sroa.4251.0.copyload, i64 1 ; 2 uses
  %i.dl = fadd <2 x float> %i.dk, %i.dj           ; 4 uses
  %i.dm = shufflevector <2 x float> %i.av, <2 x float> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.dn = fmul <2 x float> %i.cz, %i.dm
  %i.do = shufflevector <2 x float> %i.as, <2 x float> %i.cf, <2 x i32> <i32 1, i32 3>
  %i.dp = fmul <2 x float> %i.dc, %i.do
  %i.dq = fsub <2 x float> %i.dn, %i.dp
  %i.dr = fmul <2 x float> %i.dq, splat (float 2.000000e+00)
  %i.ds = insertelement <2 x float> poison, float %.sroa.295.0.copyload, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fadd <2 x float> %i.dt, %i.dr
  %i.dv = fadd <2 x float> %i.dk, %i.du           ; 4 uses
  %i.dw = fcmp olt <2 x float> %i.dl, %i.dv
  %i.dx = select <2 x i1> %i.dw, <2 x float> %i.dl, <2 x float> %i.dv ; 2 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 0 ; 2 uses
  %i.dz = extractelement <2 x float> %i.dx, i64 1 ; 2 uses
  %i.ea = fcmp olt float %i.dy, %i.dz
  %i.eb = select i1 %i.ea, float %i.dy, float %i.dz
  %i.ec = fsub float %i.eb, %i.g
  store float %i.ec, ptr %.sroa.238.0..sroa_idx, align 4
  %i.ed = fcmp ogt <2 x float> %i.dl, %i.dv
  %i.ee = select <2 x i1> %i.ed, <2 x float> %i.dl, <2 x float> %i.dv ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 0 ; 2 uses
  %i.eg = extractelement <2 x float> %i.ee, i64 1 ; 2 uses
  %i.eh = fcmp ogt float %i.ef, %i.eg
  %i.ei = select i1 %i.eh, float %i.ef, float %i.eg
  %i.ej = fcmp ogt <2 x float> %i.ag, %i.bb
  %i.ek = select <2 x i1> %i.ej, <2 x float> %i.ag, <2 x float> %i.bb ; 2 uses
  %i.el = fcmp ogt <2 x float> %i.bw, %i.co
  %i.em = select <2 x i1> %i.el, <2 x float> %i.bw, <2 x float> %i.co ; 2 uses
  %i.en = fcmp ogt <2 x float> %i.ek, %i.em
  %i.eo = select <2 x i1> %i.en, <2 x float> %i.ek, <2 x float> %i.em
  %i.ep = fadd <2 x float> %i.cw, %i.eo
  %i.eq = fadd float %i.g, %i.ei
  store <2 x float> %i.ep, ptr %i.cy, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.eq, ptr %.sroa.2.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b3OverlapCapsule(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !31 {
bb.a:
  %3 = alloca %struct.b3DistanceInput, align 8    ; 12 uses
  %4 = alloca %struct.b3SimplexCache, align 4     ; 4 uses
  %5 = alloca %struct.b3DistanceOutput, align 4   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @4, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  store ptr %0, ptr %3, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.g, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !12
  %i.h = icmp ne ptr %2, null, !nosanitize !9
  %i.i = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.011.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.412.0.copyload = load float, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.513.0.copyload = load <2 x float>, ptr %.sroa.513.0..sroa_idx, align 4 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 6 uses
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 0
  %.sroa.2.12.vec.extract.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 1 ; 2 uses
  %i.o = fsub <2 x float> zeroinitializer, %.sroa.011.0.copyload ; 4 uses
  %i.p = fsub float 0.000000e+00, %.sroa.412.0.copyload ; 3 uses
  %i.q = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1 ; 2 uses
  %i.s = fmul <2 x float> %i.r, %.sroa.513.0.copyload
  %i.t = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.513.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.u = fmul <2 x float> %i.o, %i.t
  %i.v = shufflevector <2 x float> %.sroa.513.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.w = fmul <2 x float> %i.o, %i.v
  %i.x = insertelement <2 x float> %i.q, float %i.p, i64 0 ; 2 uses
  %i.y = fmul <2 x float> %i.x, %.sroa.513.0.copyload
  %i.z = fsub <2 x float> %i.s, %i.w
  %i.aa = fsub <2 x float> %i.u, %i.y
  %i.ab = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ac = fmul <2 x float> %i.x, %i.ab
  %i.ad = fmul <2 x float> %i.r, %i.ab
  %i.ae = fsub <2 x float> %i.z, %i.ac            ; 2 uses
  %i.af = fsub <2 x float> %i.aa, %i.ad           ; 2 uses
  %i.ag = fmul <2 x float> %i.v, %i.ae
  %i.ah = fmul <2 x float> %i.t, %i.af
  %i.ai = fsub <2 x float> %i.ag, %i.ah
  %i.aj = shufflevector <2 x float> %i.af, <2 x float> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.ak = fmul <2 x float> %.sroa.513.0.copyload, %i.aj ; 2 uses
  %shift = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.ak, %shift
  %i.al = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.am = fmul <2 x float> %i.ai, splat (float 2.000000e+00)
  %i.an = fadd <2 x float> %i.o, %i.am
  %i.ao = fmul float %i.al, 2.000000e+00
  %i.ap = fadd float %i.p, %i.ao
  %6 = shufflevector <2 x float> %.sroa.513.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %7 = fmul <4 x float> %6, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 5 uses
  %8 = extractelement <4 x float> %7, i64 1       ; 2 uses
  %9 = extractelement <4 x float> %7, i64 2
  %i.aq = extractelement <4 x float> %7, i64 0    ; 2 uses
  %10 = fsub float %8, %i.aq
  %11 = fmul float %.sroa.2.12.vec.extract.i, 0.000000e+00 ; 2 uses
  %12 = fadd float %10, %11
  %13 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %14 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %15 = fsub <2 x float> %13, %14
  %i.ar = insertelement <2 x float> poison, float %11, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fadd <2 x float> %i.as, %15
  %i.au = fsub <2 x float> %i.at, %.sroa.513.0.copyload
  %i.av = fsub float %12, %.sroa.2.8.vec.extract65.i
  %.sroa.231.8.vec.insert.i = insertelement <2 x float> poison, float %i.av, i64 0
  %i.aw = fadd float %i.aq, %8
  %i.ax = fadd float %9, %i.aw
  %i.ay = fadd float %.sroa.2.12.vec.extract.i, %i.ax
  %.sroa.231.12.vec.insert.i = insertelement <2 x float> %.sroa.231.8.vec.insert.i, float %i.ay, i64 1
  store <2 x float> %i.an, ptr %i.n, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store <2 x float> %i.au, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  store <2 x float> %.sroa.231.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 1, ptr %i.az, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #9
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !35
  %i.bc = call float @b3GetLengthUnitsPerMeter() #9
  %i.bd = fmul float %i.bc, 5.000000e-03
  %i.be = fmul float %i.bd, 1.000000e-01
  %i.bf = fcmp olt float %i.bb, %i.be
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i1 %i.bf
}

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @b3RayCastCapsule(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !36 {
bb.a:
  %3 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %4 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %5 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %6 = alloca %struct.b3Sphere, align 8           ; 5 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @8, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %.sroa.0308.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !12 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !12 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.0303.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %.sroa.5305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.g = load <2 x float>, ptr %.sroa.5305.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %i.h = extractelement <2 x float> %i.g, i64 1   ; 6 uses
  %i.i = fsub <2 x float> %.sroa.0303.0.copyload, %.sroa.0308.0.copyload ; 3 uses
  %i.j = extractelement <2 x float> %i.g, i64 0
  %i.k = fsub float %i.j, %.sroa.8.0.copyload     ; 3 uses
  %i.l = tail call float @b3GetLengthUnitsPerMeter() #9
  %i.m = fmul float %i.l, 5.000000e-03
  %i.n = fmul float %i.m, f0x3C23D70A             ; 2 uses
  %i.o = fmul <2 x float> %i.i, %i.i              ; 2 uses
  %shift = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.o, %shift
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.q = fmul float %i.k, %i.k
  %i.r = fadd float %i.q, %i.p                    ; 2 uses
  %i.s = fmul float %i.n, %i.n
  %i.t = fcmp olt float %i.r, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0263.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.2264.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.0261.0.copyload = load <2 x float>, ptr %i.f, align 4
  %.sroa.2262.0.copyload = load float, ptr %.sroa.5305.0..sroa_idx, align 4
  %i.v = fadd float %.sroa.2264.0.copyload, %.sroa.2262.0.copyload
  %i.w = fadd <2 x float> %.sroa.0263.0.copyload, %.sroa.0261.0.copyload
  %i.x = fmul <2 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fmul float %i.v, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store <2 x float> %i.x, ptr %3, align 8, !tbaa !12
  %.sroa.4268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.y, ptr %.sroa.4268.0..sroa_idx, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aa = load float, ptr %i.u, align 4, !tbaa !15
  store float %i.aa, ptr %i.z, align 4, !tbaa !38
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %3, ptr noundef %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.ab = icmp ne ptr %2, null, !nosanitize !9
  %i.ac = ptrtoint ptr %2 to i64, !nosanitize !9  ; 2 uses
  %i.ad = and i64 %i.ac, 3, !nosanitize !9
  %i.ae = icmp eq i64 %i.ad, 0, !nosanitize !9
  %i.af = and i1 %i.ab, %i.ae, !nosanitize !9
  br i1 %i.af, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @10, i64 %i.ac) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %.sroa.0241.0.copyload = load <2 x float>, ptr %2, align 4 ; 2 uses
  %.sroa.2242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2242.0.copyload = load float, ptr %.sroa.2242.0..sroa_idx, align 4 ; 2 uses
  %i.ag = fsub <2 x float> %.sroa.0241.0.copyload, %.sroa.0308.0.copyload ; 7 uses
  %i.ah = fsub float %.sroa.2242.0.copyload, %.sroa.8.0.copyload ; 6 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.r) ; 5 uses
  %i.ai = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.aj = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.i, %i.ak            ; 9 uses
  %i.am = fmul float %i.k, %i.ai                  ; 8 uses
  %i.an = extractelement <2 x float> %i.al, i64 0
  %i.ao = extractelement <2 x float> %i.ag, i64 0
  %foldExtExtBinop611 = fmul <2 x float> %i.al, %i.ag
  %i.ap = extractelement <2 x float> %foldExtExtBinop611, i64 0
  %i.aq = extractelement <2 x float> %i.al, i64 1 ; 2 uses
  %i.ar = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %i.as = fmul float %i.aq, %i.ar
  %i.at = fadd float %i.ap, %i.as
  %i.au = fmul float %i.am, %i.ah
  %i.av = fadd float %i.au, %i.at                 ; 12 uses
  %i.aw = fmul float %i.an, %i.av
  %i.ax = fmul float %i.aq, %i.av
  %i.ay = fmul float %i.am, %i.av
  %i.az = fsub float %i.ao, %i.aw                 ; 3 uses
  %i.ba = fsub float %i.ar, %i.ax                 ; 3 uses
  %i.bb = fsub float %i.ah, %i.ay                 ; 3 uses
  %i.bc = fmul float %i.az, %i.az
  %i.bd = fmul float %i.ba, %i.ba
  %i.be = fadd float %i.bc, %i.bd
  %i.bf = fmul float %i.bb, %i.bb
  %i.bg = fadd float %i.bf, %i.be                 ; 2 uses
  %i.bh = fmul float %i.h, %i.h                   ; 5 uses
  %i.bi = fcmp olt float %i.bg, %i.bh
  br i1 %i.bi, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bj = fcmp olt float %i.av, 0.000000e+00
  %i.bk = fcmp olt float %sqrt, %i.av
  %i.bl = select i1 %i.bk, float %sqrt, float %i.av
  %i.bm = select i1 %i.bj, float 0.000000e+00, float %i.bl ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.al, %i.bo           ; 2 uses
  %i.bq = fmul float %i.am, %i.bm                 ; 2 uses
  %i.br = fsub float %i.ah, %i.bq                 ; 2 uses
  %i.bs = fsub <2 x float> %i.ag, %i.bp           ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs           ; 2 uses
  %shift613 = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop614 = fadd <2 x float> %i.bt, %shift613
  %i.bu = extractelement <2 x float> %foldExtExtBinop614, i64 0
  %i.bv = fmul float %i.br, %i.br
  %i.bw = fadd float %i.bv, %i.bu
  %i.bx = fcmp olt float %i.bw, %i.bh
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !12
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !12
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.0241.0.copyload, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !12
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.2242.0.copyload, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !12
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.16559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.15.0..sroa_idx, i8 0, i64 20, i1 false)
  store i8 1, ptr %.sroa.16559.0..sroa_idx, align 4, !tbaa !39
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.0..sroa_idx, i8 0, i64 3, i1 false)
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.by = fadd <2 x float> %.sroa.0308.0.copyload, %i.bp
  %i.bz = fadd float %.sroa.8.0.copyload, %i.bq
  store <2 x float> %i.by, ptr %4, align 8
  %.sroa.2156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.bz, ptr %.sroa.2156.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.h, ptr %i.ca, align 4, !tbaa !38
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %4, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0150.0.copyload = load <2 x float>, ptr %i.cb, align 4, !tbaa !12 ; 4 uses
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.5152.0.copyload = load float, ptr %.sroa.5152.0..sroa_idx, align 4, !tbaa !12 ; 4 uses
  %i.cc = fmul <2 x float> %.sroa.0150.0.copyload, %.sroa.0150.0.copyload ; 2 uses
  %shift616 = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
end_hunk_0
