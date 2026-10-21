Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/capsule?download=true
inline.NumInlined: 93
inline.NumDeleted: 24
begin_hunk_0_@b3ComputeCapsuleAABB:bb.a
  store <2 x float> %i.ce, ptr %i.bz, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.cf, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3ComputeSweptCapsuleAABB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3AABB) align 4 captures(none) %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3) local_unnamed_addr #0 !func_sanitize !30 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !15 ; 3 uses
  %.sroa.0103.0.copyload = load <2 x float>, ptr %1, align 4 ; 7 uses
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2104.0.copyload = load float, ptr %.sroa.2104.0..sroa_idx, align 4 ; 5 uses
  %.sroa.0258.0.copyload = load <2 x float>, ptr %2, align 8 ; 2 uses
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load <2 x float>, ptr %.sroa.4259.0..sroa_idx, align 8
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.5260.0.copyload = load <2 x float>, ptr %.sroa.5260.0..sroa_idx, align 4 ; 7 uses
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.6261.0.copyload = load <2 x float>, ptr %.sroa.6261.0..sroa_idx, align 4 ; 5 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5260.0.copyload, i64 0 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.i, align 4 ; 7 uses
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.295.0.copyload = load float, ptr %.sroa.295.0..sroa_idx, align 4 ; 5 uses
  %.sroa.0250.0.copyload = load <2 x float>, ptr %3, align 8 ; 2 uses
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4251.0.copyload = load float, ptr %.sroa.4251.0..sroa_idx, align 8
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
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
  %3 = alloca %struct.b3DistanceInput, align 8    ; 11 uses
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
  %i.aq = shufflevector <2 x float> %.sroa.513.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ar = fmul <4 x float> %i.aq, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 5 uses
  %i.as = extractelement <4 x float> %i.ar, i64 1 ; 2 uses
  %i.at = extractelement <4 x float> %i.ar, i64 2
  %i.au = extractelement <4 x float> %i.ar, i64 0 ; 2 uses
  %i.av = fsub float %i.as, %i.au
  %i.aw = fmul float %.sroa.2.12.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.ax = fadd float %i.av, %i.aw
  %i.ay = shufflevector <4 x float> %i.ar, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.az = shufflevector <4 x float> %i.ar, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ba = fsub <2 x float> %i.ay, %i.az
  %i.bb = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fadd <2 x float> %i.bc, %i.ba
  %i.be = fsub <2 x float> %i.bd, %.sroa.513.0.copyload
  %i.bf = fsub float %i.ax, %.sroa.2.8.vec.extract65.i
  %.sroa.231.8.vec.insert.i = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bg = fadd float %i.au, %i.as
  %i.bh = fadd float %i.at, %i.bg
  %i.bi = fadd float %.sroa.2.12.vec.extract.i, %i.bh
  %.sroa.231.12.vec.insert.i = insertelement <2 x float> %.sroa.231.8.vec.insert.i, float %i.bi, i64 1
  store <2 x float> %i.an, ptr %i.n, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %6 = shufflevector <2 x float> %i.be, <2 x float> %.sroa.231.12.vec.insert.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 1, ptr %i.bj, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #9
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !35
  %i.bm = call float @b3GetLengthUnitsPerMeter() #9
  %i.bn = fmul float %i.bm, 5.000000e-03
  %i.bo = fmul float %i.bn, 1.000000e-01
  %i.bp = fcmp olt float %i.bl, %i.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i1 %i.bp
}

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @b3RayCastCapsule(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !36 {
bb.a:
  %3 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %4 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %5 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %6 = alloca %struct.b3Sphere, align 16          ; 4 uses
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
  %i.ai = tail call float @sqrtf(float noundef %i.r) #9 ; 5 uses
  %i.aj = fdiv float 1.000000e+00, %i.ai          ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %i.i, %i.al            ; 9 uses
  %i.an = fmul float %i.k, %i.aj                  ; 8 uses
  %i.ao = extractelement <2 x float> %i.am, i64 0
  %i.ap = extractelement <2 x float> %i.ag, i64 0
  %foldExtExtBinop611 = fmul <2 x float> %i.ag, %i.am
  %i.aq = extractelement <2 x float> %foldExtExtBinop611, i64 0
  %i.ar = extractelement <2 x float> %i.am, i64 1 ; 2 uses
  %i.as = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %i.at = fmul float %i.as, %i.ar
  %i.au = fadd float %i.aq, %i.at
  %i.av = fmul float %i.ah, %i.an
  %i.aw = fadd float %i.av, %i.au                 ; 12 uses
  %i.ax = fmul float %i.ao, %i.aw
  %i.ay = fmul float %i.ar, %i.aw
  %i.az = fmul float %i.an, %i.aw
  %i.ba = fsub float %i.ap, %i.ax                 ; 3 uses
  %i.bb = fsub float %i.as, %i.ay                 ; 3 uses
  %i.bc = fsub float %i.ah, %i.az                 ; 3 uses
  %i.bd = fmul float %i.ba, %i.ba
  %i.be = fmul float %i.bb, %i.bb
  %i.bf = fadd float %i.bd, %i.be
  %i.bg = fmul float %i.bc, %i.bc
  %i.bh = fadd float %i.bg, %i.bf                 ; 2 uses
  %i.bi = fmul float %i.h, %i.h                   ; 5 uses
  %i.bj = fcmp olt float %i.bh, %i.bi
  br i1 %i.bj, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bk = fcmp olt float %i.aw, 0.000000e+00
  %i.bl = fcmp olt float %i.ai, %i.aw
  %i.bm = select i1 %i.bl, float %i.ai, float %i.aw
  %i.bn = select i1 %i.bk, float 0.000000e+00, float %i.bm ; 2 uses
  %i.bo = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.am, %i.bp           ; 2 uses
  %i.br = fmul float %i.an, %i.bn                 ; 2 uses
  %i.bs = fsub float %i.ah, %i.br                 ; 2 uses
  %i.bt = fsub <2 x float> %i.ag, %i.bq           ; 2 uses
  %i.bu = fmul <2 x float> %i.bt, %i.bt           ; 2 uses
  %shift613 = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop614 = fadd <2 x float> %i.bu, %shift613
  %i.bv = extractelement <2 x float> %foldExtExtBinop614, i64 0
  %i.bw = fmul float %i.bs, %i.bs
  %i.bx = fadd float %i.bw, %i.bv
  %i.by = fcmp olt float %i.bx, %i.bi
  br i1 %i.by, label %bb.i, label %bb.j

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
  %i.bz = fadd <2 x float> %.sroa.0308.0.copyload, %i.bq
  %i.ca = fadd float %.sroa.8.0.copyload, %i.br
  store <2 x float> %i.bz, ptr %4, align 8
  %.sroa.2156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.ca, ptr %.sroa.2156.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.h, ptr %i.cb, align 4, !tbaa !38
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %4, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0150.0.copyload = load <2 x float>, ptr %i.cc, align 4, !tbaa !12 ; 4 uses
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.5152.0.copyload = load float, ptr %.sroa.5152.0..sroa_idx, align 4, !tbaa !12 ; 4 uses
  %i.cd = fmul <2 x float> %.sroa.0150.0.copyload, %.sroa.0150.0.copyload ; 2 uses
  %shift616 = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop617 = fadd <2 x float> %i.cd, %shift616
  %i.ce = extractelement <2 x float> %foldExtExtBinop617, i64 0
  %i.cf = fmul float %.sroa.5152.0.copyload, %.sroa.5152.0.copyload
  %i.cg = fadd float %i.cf, %i.ce                 ; 2 uses
  %i.ch = fcmp ogt float %i.cg, f0x057A0000
  br i1 %i.ch, label %b3GetLengthAndNormalize.exit, label %b3GetLengthAndNormalize.exit.thread

b3GetLengthAndNormalize.exit:                     ; preds = %bb.k
  %i.ci = tail call float @sqrtf(float noundef %i.cg) #9 ; 4 uses
  %i.cj = fdiv float 1.000000e+00, %i.ci          ; 2 uses
  %i.ck = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x float> %.sroa.0150.0.copyload, %i.cl ; 5 uses
  %i.cn = fmul float %.sroa.5152.0.copyload, %i.cj ; 5 uses
  %i.co = fcmp oeq float %i.ci, 0.000000e+00
  br i1 %i.co, label %b3GetLengthAndNormalize.exit.thread, label %bb.l

b3GetLengthAndNormalize.exit.thread:              ; preds = %bb.k, %b3GetLengthAndNormalize.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.l:                                             ; preds = %b3GetLengthAndNormalize.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !41 ; 4 uses
  %i.cr = fmul <2 x float> %i.am, %.sroa.0150.0.copyload ; 2 uses
  %shift619 = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop620 = fadd <2 x float> %i.cr, %shift619
  %i.cs = extractelement <2 x float> %foldExtExtBinop620, i64 0
  %i.ct = fmul float %i.an, %.sroa.5152.0.copyload
  %i.cu = fadd float %i.ct, %i.cs
  %i.cv = fmul float %i.cu, %i.cq
  %i.cw = fadd float %i.aw, %i.cv                 ; 2 uses
  %i.cx = fneg float %i.h                         ; 2 uses
  %i.cy = fcmp olt float %i.aw, %i.cx
  %i.cz = fcmp olt float %i.cw, %i.cx
  %or.cond = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = fadd float %i.h, %i.ai                  ; 2 uses
  %i.db = fcmp olt float %i.da, %i.aw
  %i.dc = fcmp olt float %i.da, %i.cw
  %or.cond348 = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond348, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.dd = fmul <2 x float> %i.am, %i.cm           ; 2 uses
  %shift622 = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop623 = fadd <2 x float> %i.dd, %shift622
  %i.de = extractelement <2 x float> %foldExtExtBinop623, i64 0
  %i.df = fmul float %i.an, %i.cn
  %i.dg = fadd float %i.df, %i.de                 ; 7 uses
  %i.dh = fmul float %i.dg, %i.dg
  %i.di = fsub float 1.000000e+00, %i.dh          ; 2 uses
  %i.dj = fcmp olt float %i.di, f0x34000000
  br i1 %i.dj, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dk = fmul float %i.an, %i.dg
  %i.dl = fsub float %i.cn, %i.dk                 ; 3 uses
  %i.dm = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.am, %i.dn
  %i.dp = fsub <2 x float> %i.cm, %i.do           ; 4 uses
  %i.dq = fmul <2 x float> %i.dp, %i.dp           ; 2 uses
  %shift625 = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop626 = fadd <2 x float> %i.dq, %shift625
  %i.dr = extractelement <2 x float> %foldExtExtBinop626, i64 0
  %i.ds = fmul float %i.dl, %i.dl
  %i.dt = fadd float %i.ds, %i.dr
  %i.du = extractelement <2 x float> %i.dp, i64 0
  %i.dv = fmul float %i.ba, %i.du
  %i.dw = extractelement <2 x float> %i.dp, i64 1
  %i.dx = fmul float %i.bb, %i.dw
  %i.dy = fadd float %i.dv, %i.dx
  %i.dz = fmul float %i.bc, %i.dl
  %i.ea = fadd float %i.dz, %i.dy                 ; 4 uses
  %i.eb = fsub float %i.bh, %i.bi                 ; 2 uses
  %i.ec = fmul float %i.ea, %i.ea
  %i.ed = fmul float %i.eb, %i.dt
  %i.ee = fsub float %i.ec, %i.ed                 ; 2 uses
  %i.ef = fcmp ult float %i.ea, 0.000000e+00
  %i.eg = fcmp uge float %i.ee, 0.000000e+00
  %or.cond.not = and i1 %i.ef, %i.eg
  br i1 %or.cond.not, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  %i.eh = tail call float @sqrtf(float noundef %i.ee) #9
  %i.ei = fsub float %i.eh, %i.ea
  %i.ej = fdiv float %i.eb, %i.ei
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.r:                                             ; preds = %bb.o
  %i.ek = fdiv float 1.000000e+00, %i.di          ; 3 uses
  %i.el = fmul <2 x float> %i.ag, %i.cm           ; 2 uses
  %shift628 = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop629 = fadd <2 x float> %i.el, %shift628
  %i.em = extractelement <2 x float> %foldExtExtBinop629, i64 0
  %i.en = fmul float %i.ah, %i.cn
  %i.eo = fadd float %i.en, %i.em                 ; 2 uses
  %i.ep = fmul float %i.dg, %i.eo
  %i.eq = fmul float %i.aw, %i.dg
  %i.er = fsub float %i.aw, %i.ep
  %i.es = fmul float %i.er, %i.ek                 ; 2 uses
  %i.et = fsub float %i.eq, %i.eo
  %i.eu = fmul float %i.et, %i.ek                 ; 3 uses
  %i.ev = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x float> %i.am, %i.ew
  %i.ey = fmul float %i.an, %i.es
  %i.ez = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.cm, %i.fa
  %i.fc = fadd <2 x float> %i.ag, %i.fb
  %i.fd = fmul float %i.cn, %i.eu
  %i.fe = fadd float %i.ah, %i.fd
  %i.ff = fsub <2 x float> %i.fc, %i.ex           ; 2 uses
  %i.fg = fsub float %i.fe, %i.ey                 ; 2 uses
  %i.fh = fmul <2 x float> %i.ff, %i.ff           ; 2 uses
  %shift631 = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop632 = fadd <2 x float> %i.fh, %shift631
  %i.fi = extractelement <2 x float> %foldExtExtBinop632, i64 0
  %i.fj = fmul float %i.fg, %i.fg
  %i.fk = fadd float %i.fj, %i.fi                 ; 2 uses
  %i.fl = fcmp ule float %i.fk, %i.bi
  br i1 %i.fl, label %.thread594, label %bb.s

.thread594:                                       ; preds = %bb.r
  %i.fm = fsub float %i.bi, %i.fk
  %i.fn = fmul float %i.ek, %i.fm
  %i.fo = tail call float @sqrtf(float noundef %i.fn) #9
  %i.fp = fsub float %i.eu, %i.fo
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.t:                                             ; preds = %.thread594, %.thread
  %.2 = phi float [ %i.ej, %.thread ], [ %i.fp, %.thread594 ] ; 6 uses
  %i.fq = fcmp olt float %.2, 0.000000e+00
  %i.fr = fmul float %i.ci, %i.cq
  %i.fs = fcmp olt float %i.fr, %.2
  %or.cond597 = select i1 %i.fq, i1 true, i1 %i.fs
  br i1 %or.cond597, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.ft = fmul float %i.dg, %.2
  %i.fu = fadd float %i.aw, %i.ft                 ; 4 uses
  %i.fv = fcmp olt float %i.fu, 0.000000e+00
  br i1 %i.fv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store <2 x float> %.sroa.0308.0.copyload, ptr %5, align 8, !tbaa !12
  %.sroa.8.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx313, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.h, ptr %i.fw, align 4, !tbaa !38
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.fx = fcmp olt float %i.ai, %i.fu
  br i1 %i.fx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %7 = shufflevector <2 x float> %.sroa.0303.0.copyload, <2 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %7, ptr %6, align 16, !tbaa !12
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %6, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.fy = insertelement <2 x float> poison, float %.2, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = fmul <2 x float> %i.cm, %i.fz
  %i.gb = fadd <2 x float> %i.ag, %i.ga           ; 2 uses
  %i.gc = fmul float %i.cn, %.2
  %i.gd = fadd float %i.ah, %i.gc                 ; 2 uses
  %i.ge = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x float> %i.am, %i.gf
  %i.gh = fsub <2 x float> %i.gb, %i.gg           ; 3 uses
  %i.gi = fmul float %i.an, %i.fu
  %i.gj = fsub float %i.gd, %i.gi                 ; 3 uses
  %i.gk = fmul <2 x float> %i.gh, %i.gh           ; 2 uses
  %shift634 = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop635 = fadd <2 x float> %i.gk, %shift634
  %i.gl = extractelement <2 x float> %foldExtExtBinop635, i64 0
  %i.gm = fmul float %i.gj, %i.gj
  %i.gn = fadd float %i.gm, %i.gl                 ; 2 uses
  %i.go = fcmp ogt float %i.gn, f0x057A0000
  br i1 %i.go, label %bb.aa, label %b3Normalize.exit

bb.aa:                                            ; preds = %bb.z
  %i.gp = tail call float @sqrtf(float noundef %i.gn) #9
  %i.gq = fdiv float 1.000000e+00, %i.gp          ; 2 uses
  %i.gr = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = fmul <2 x float> %i.gh, %i.gs
  %i.gu = fmul float %i.gj, %i.gq
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.z, %bb.aa
  %.sroa.07.0.i = phi <2 x float> [ %i.gt, %bb.aa ], [ zeroinitializer, %bb.z ]
  %.sroa.5.0.i = phi float [ %i.gu, %bb.aa ], [ 0.000000e+00, %bb.z ]
  %i.gv = fadd <2 x float> %.sroa.0308.0.copyload, %i.gb
  %i.gw = fadd float %.sroa.8.0.copyload, %i.gd
  %i.gx = fdiv float %.2, %i.ci                   ; 3 uses
  %i.gy = fcmp olt float %i.gx, 0.000000e+00
  %i.gz = fcmp olt float %i.cq, %i.gx
  %i.ha = select i1 %i.gz, float %i.cq, float %i.gx
  %i.hb = select i1 %i.gy, float 0.000000e+00, float %i.ha
  store <2 x float> %.sroa.07.0.i, ptr %0, align 4, !tbaa !12
  %.sroa.11.0..sroa_idx515 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.5.0.i, ptr %.sroa.11.0..sroa_idx515, align 4, !tbaa !12
  %.sroa.12.0..sroa_idx527 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.gv, ptr %.sroa.12.0..sroa_idx527, align 4, !tbaa !12
  %.sroa.14.0..sroa_idx539 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.gw, ptr %.sroa.14.0..sroa_idx539, align 4, !tbaa !12
  %.sroa.15.0..sroa_idx551 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.hb, ptr %.sroa.15.0..sroa_idx551, align 4, !tbaa !12
  %.sroa.16.0..sroa_idx558 = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.16.0..sroa_idx558, i8 0, i64 16, i1 false)
  %.sroa.16559.0..sroa_idx570 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %.sroa.16559.0..sroa_idx570, align 4, !tbaa !39
  %.sroa.18.0..sroa_idx577 = getelementptr inbounds nuw i8, ptr %0, i64 45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.0..sroa_idx577, i8 0, i64 3, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %b3GetLengthAndNormalize.exit.thread, %bb.u, %b3Normalize.exit, %bb.y, %bb.w, %bb.n, %bb.q, %bb.s, %bb.j, %bb.i, %bb.d
  ret void
}

declare void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3ShapeCastCapsule(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 !func_sanitize !42 {
bb.a:
  %3 = alloca %struct.b3ShapeCastPairInput, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @11, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  store ptr %1, ptr %3, align 8, !tbaa !18
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @13, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.n, ptr noundef nonnull align 8 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !43
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !44
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.s = load float, ptr %i.q, align 4, !tbaa !46
  store float %i.s, ptr %i.r, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load i8, ptr %i.t, align 8, !tbaa !49    ; 3 uses
  %i.v = icmp ult i8 %i.u, 2
  br i1 %i.v, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  %i.w = zext i8 %i.u to i64, !nosanitize !9
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @14, i64 %i.w) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i8 %i.u, ptr %i.x, align 4, !tbaa !50
  call void @b3ShapeCast(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #2

declare void @b3ShapeCast(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @b3CollideMoverAndCapsule(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !51 {
bb.a:
  %.sroa.014.i = alloca <2 x float>, align 8      ; 5 uses
  %.sroa.0.i = alloca <2 x float>, align 8        ; 5 uses
  %3 = alloca %struct.b3SegmentDistanceResult, align 8 ; 8 uses
  %i.a = icmp ne ptr %2, null, !nosanitize !9
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @15, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ne ptr %1, null, !nosanitize !9
  %i.g = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.h = and i64 %i.g, 3, !nosanitize !9
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !9
  %i.j = and i1 %i.f, %i.i, !nosanitize !9
  br i1 %i.j, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @16, i64 %i.g) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load float, ptr %i.m, align 4, !tbaa !15
  %i.o = fadd float %i.l, %i.n                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.049.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.250.0.copyload = load float, ptr %.sroa.250.0..sroa_idx, align 4
  %.sroa.047.0.copyload = load <2 x float>, ptr %i.p, align 4
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.248.0.copyload = load float, ptr %.sroa.248.0..sroa_idx, align 4
  %.sroa.045.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.246.0.copyload = load float, ptr %.sroa.246.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.q, align 4
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.244.0.copyload = load float, ptr %.sroa.244.0..sroa_idx, align 4
  call void @b3SegmentDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3SegmentDistanceResult) align 4 %3, <2 x float> %.sroa.049.0.copyload, float %.sroa.250.0.copyload, <2 x float> %.sroa.047.0.copyload, float %.sroa.248.0.copyload, <2 x float> %.sroa.045.0.copyload, float %.sroa.246.0.copyload, <2 x float> %.sroa.0.0.copyload, float %.sroa.244.0.copyload) #9
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.037.0.copyload = load <2 x float>, ptr %i.r, align 8
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.238.0.copyload = load float, ptr %.sroa.238.0..sroa_idx, align 8
  %.sroa.035.0.copyload = load <2 x float>, ptr %3, align 8
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.236.0.copyload = load float, ptr %.sroa.236.0..sroa_idx, align 8
  %i.s = fsub <2 x float> %.sroa.037.0.copyload, %.sroa.035.0.copyload ; 3 uses
end_hunk_0
