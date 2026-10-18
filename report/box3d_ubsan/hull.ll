Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/hull?download=true
inline.NumInlined: 420
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@b3ComputeSweptHullAABB:bb.a
  %i.bw = fmul <2 x float> %i.bv, splat (float 2.000000e+00) ; 3 uses
  %foldExtExtBinop257 = fadd <2 x float> %i.bs, %i.bp
  %foldExtExtBinop259 = fsub <2 x float> %i.bs, %i.bp
  %i.bx = shufflevector <2 x float> %foldExtExtBinop257, <2 x float> %foldExtExtBinop259, <2 x i32> <i32 1, i32 2>
  %i.by = fmul <2 x float> %i.bx, splat (float 2.000000e+00) ; 3 uses
  %i.bz = fcmp olt <2 x float> %i.bw, zeroinitializer
  %i.ca = fneg <2 x float> %i.bw
  %i.cb = select <2 x i1> %i.bz, <2 x float> %i.ca, <2 x float> %i.bw
  %i.cc = fcmp olt <2 x float> %i.by, zeroinitializer
  %i.cd = fneg <2 x float> %i.by
  %i.ce = select <2 x i1> %i.cc, <2 x float> %i.cd, <2 x float> %i.by
  %i.cf = fmul <2 x float> %i.bo, %i.cb           ; 2 uses
  %i.cg = fmul <2 x float> %i.bo, %i.bi
  %i.ch = fmul <2 x float> %i.bn, %i.bl
  %i.ci = fadd <2 x float> %i.cg, %i.ch
  %i.cj = shufflevector <7 x float> %i.at, <7 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ck = fmul <2 x float> %i.cj, %i.ce
  %i.cl = fadd <2 x float> %i.ck, %i.ci           ; 2 uses
  %i.cm = fsub <2 x float> %i.ah, %i.cl           ; 2 uses
  %foldExtExtBinop261 = fmul <2 x float> %i.j, %.sroa.5169.0.copyload
  %foldExtExtBinop263 = fmul <2 x float> %i.m, %.sroa.4166.0.copyload
  %foldExtExtBinop265 = fsub <2 x float> %foldExtExtBinop261, %foldExtExtBinop263
  %i.cn = fmul <2 x float> %i.n, %.sroa.4166.0.copyload
  %i.co = shufflevector <2 x float> %.sroa.4166.0.copyload, <2 x float> %.sroa.5169.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cp = fmul <2 x float> %i.j, %i.co
  %i.cq = fsub <2 x float> %i.cn, %i.cp           ; 2 uses
  %i.cr = shufflevector <2 x float> %.sroa.5169.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.cs = fmul <2 x float> %i.m, %i.cr
  %i.ct = fmul <2 x float> %i.n, %i.cr
  %i.cu = fadd <2 x float> %i.cs, %i.cq           ; 2 uses
  %i.cv = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cw = shufflevector <2 x float> %foldExtExtBinop265, <2 x float> %i.cv, <2 x i32> <i32 0, i32 3>
  %i.cx = fadd <2 x float> %i.ct, %i.cw           ; 2 uses
  %i.cy = fmul <2 x float> %i.co, %i.cu
  %i.cz = shufflevector <2 x float> %.sroa.5169.0.copyload, <2 x float> %.sroa.4166.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.da = fmul <2 x float> %i.cz, %i.cx
  %i.db = fsub <2 x float> %i.cy, %i.da
  %i.dc = shufflevector <2 x float> %i.cx, <2 x float> %i.cu, <2 x i32> <i32 0, i32 3>
  %i.dd = fmul <2 x float> %.sroa.4166.0.copyload, %i.dc ; 2 uses
  %i.de = fmul <2 x float> %i.db, splat (float 2.000000e+00)
  %i.df = fadd <2 x float> %i.j, %i.de
  %i.dg = fadd <2 x float> %.sroa.0165.sroa.0.0.copyload, %i.df ; 2 uses
  %i.dh = fmul <2 x float> %.sroa.4166.0.copyload, %.sroa.4166.0.copyload ; 2 uses
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dj = extractelement <7 x float> %i.at, i64 4 ; 2 uses
  %i.dk = extractelement <7 x float> %i.at, i64 5 ; 2 uses
  %i.dl = fadd float %i.dj, %i.dk
  %i.dm = fsub float %i.dj, %i.dk
  %i.dn = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.dl, i64 1
  %i.dp = fmul <2 x float> %i.do, splat (float 2.000000e+00) ; 3 uses
  %i.dq = shufflevector <7 x float> %i.at, <7 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.dr = fadd <2 x float> %i.di, %i.dq
  %i.ds = fmul <2 x float> %i.dr, splat (float 2.000000e+00)
  %i.dt = fsub <2 x float> splat (float 1.000000e+00), %i.ds ; 3 uses
  %i.du = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dh)
  %i.dv = fcmp olt <2 x float> %i.dp, zeroinitializer
  %i.dw = fneg <2 x float> %i.dp
  %i.dx = select <2 x i1> %i.dv, <2 x float> %i.dw, <2 x float> %i.dp
  %i.dy = fcmp olt <2 x float> %i.dt, zeroinitializer
  %i.dz = fneg <2 x float> %i.dt
  %i.ea = select <2 x i1> %i.dy, <2 x float> %i.dz, <2 x float> %i.dt
  %i.eb = fmul <2 x float> %.sroa.4166.0.copyload, %i.cr ; 4 uses
  %i.ec = shufflevector <2 x float> %.sroa.4166.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ed = shufflevector <2 x float> %.sroa.5169.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x float> %i.ec, %i.ed           ; 4 uses
  %i.ef = fsub <2 x float> %i.ee, %i.eb
  %i.eg = fadd <2 x float> %i.ee, %i.eb
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> %i.ef, <2 x i32> <i32 0, i32 3>
  %i.ei = fmul <2 x float> %i.eh, splat (float 2.000000e+00) ; 3 uses
  %foldExtExtBinop267 = fadd <2 x float> %i.ee, %i.eb
  %foldExtExtBinop269 = fsub <2 x float> %i.ee, %i.eb
  %i.ej = shufflevector <2 x float> %foldExtExtBinop267, <2 x float> %foldExtExtBinop269, <2 x i32> <i32 1, i32 2>
  %i.ek = fmul <2 x float> %i.ej, splat (float 2.000000e+00) ; 3 uses
  %i.el = fcmp olt <2 x float> %i.ei, zeroinitializer
  %i.em = fneg <2 x float> %i.ei
  %i.en = select <2 x i1> %i.el, <2 x float> %i.em, <2 x float> %i.ei
  %i.eo = fcmp olt <2 x float> %i.ek, zeroinitializer
  %i.ep = fneg <2 x float> %i.ek
  %i.eq = select <2 x i1> %i.eo, <2 x float> %i.ep, <2 x float> %i.ek
  %i.er = fmul <2 x float> %i.bo, %i.en           ; 2 uses
  %i.es = fmul <2 x float> %i.bo, %i.dx
  %i.et = fmul <2 x float> %i.bn, %i.ea
  %i.eu = fadd <2 x float> %i.es, %i.et
  %i.ev = fmul <2 x float> %i.cj, %i.eq
  %i.ew = fadd <2 x float> %i.ev, %i.eu           ; 2 uses
  %i.ex = fsub <2 x float> %i.dg, %i.ew           ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ae, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.ez = shufflevector <2 x float> %i.ae, <2 x float> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.fa = fsub <2 x float> %i.ey, %i.ez
  %i.fb = fmul <2 x float> %i.fa, splat (float 2.000000e+00)
  %i.fc = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fadd <2 x float> %i.fc, %i.fb
  %i.fe = insertelement <2 x float> %i.g, float %.sroa.0165.sroa.4.0.copyload, i64 1
  %i.ff = fadd <2 x float> %i.fe, %i.fd           ; 2 uses
  %i.fg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.du, i64 1
  %i.fi = fmul <2 x float> %i.fh, splat (float 2.000000e+00)
  %i.fj = fsub <2 x float> splat (float 1.000000e+00), %i.fi ; 3 uses
  %i.fk = fcmp olt <2 x float> %i.fj, zeroinitializer
  %i.fl = fneg <2 x float> %i.fj
  %i.fm = select <2 x i1> %i.fk, <2 x float> %i.fl, <2 x float> %i.fj
  %i.fn = shufflevector <2 x float> %i.cf, <2 x float> %i.er, <2 x i32> <i32 1, i32 3>
  %i.fo = shufflevector <2 x float> %i.cf, <2 x float> %i.er, <2 x i32> <i32 0, i32 2>
  %i.fp = fadd <2 x float> %i.fn, %i.fo
  %i.fq = fmul <2 x float> %i.cj, %i.fm
  %i.fr = fadd <2 x float> %i.fq, %i.fp           ; 2 uses
  %i.fs = fsub <2 x float> %i.ff, %i.fr           ; 2 uses
  %i.ft = fadd <2 x float> %i.ff, %i.fr           ; 2 uses
  %i.fu = fcmp olt <2 x float> %i.cm, %i.ex
  %i.fv = select <2 x i1> %i.fu, <2 x float> %i.cm, <2 x float> %i.ex
  %i.fw = extractelement <2 x float> %i.fs, i64 0 ; 2 uses
  %i.fx = extractelement <2 x float> %i.fs, i64 1 ; 2 uses
  %i.fy = fcmp olt float %i.fw, %i.fx
  %i.fz = select i1 %i.fy, float %i.fw, float %i.fx
  store <2 x float> %i.fv, ptr %0, align 4, !tbaa !28, !alias.scope !277
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.fz, ptr %.sroa.415.0..sroa_idx.i, align 4, !tbaa !28, !alias.scope !277
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gb = fadd <2 x float> %i.ah, %i.cl           ; 2 uses
  %i.gc = fadd <2 x float> %i.dg, %i.ew           ; 2 uses
  %i.gd = fcmp ogt <2 x float> %i.gb, %i.gc
  %i.ge = select <2 x i1> %i.gd, <2 x float> %i.gb, <2 x float> %i.gc
  %i.gf = extractelement <2 x float> %i.ft, i64 0 ; 2 uses
  %i.gg = extractelement <2 x float> %i.ft, i64 1 ; 2 uses
  %i.gh = fcmp ogt float %i.gf, %i.gg
  %i.gi = select i1 %i.gh, float %i.gf, float %i.gg
  store <2 x float> %i.ge, ptr %i.ga, align 4, !tbaa !28, !alias.scope !277
  %.sroa.4.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.gi, ptr %.sroa.4.0..sroa_idx.i160, align 4, !tbaa !28, !alias.scope !277
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b3OverlapHull(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !278 {
bb.a:
  %3 = alloca %struct.b3DistanceInput, align 8    ; 12 uses
  %4 = alloca %struct.b3SimplexCache, align 4     ; 4 uses
  %5 = alloca %struct.b3DistanceOutput, align 4   ; 4 uses
  %i.a = icmp ne ptr %0, null, !nosanitize !12
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 4 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  %i.e = and i1 %i.a, %i.d, !nosanitize !12
  br i1 %i.e, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @335, i64 %i.b) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.i), !nosanitize !12 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1, !nosanitize !12
  br i1 %i.k, label %bb.e, label %bb.f, !prof !22, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @336, i64 %i.b, i64 %i.i) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.f:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i1 } %i.j, 0, !nosanitize !12
  %i.m = inttoptr i64 %i.l to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.0.i = phi ptr [ %i.m, %bb.f ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.o = load i32, ptr %i.n, align 4, !tbaa !20
  store ptr %.0.i, ptr %3, align 8, !tbaa !140
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.o, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !88
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !28
  %i.p = icmp ne ptr %2, null, !nosanitize !12
  %i.q = ptrtoint ptr %2 to i64, !nosanitize !12  ; 2 uses
  %i.r = and i64 %i.q, 7, !nosanitize !12
  %i.s = icmp eq i64 %i.r, 0, !nosanitize !12
  %i.t = and i1 %i.p, %i.s, !nosanitize !12
  br i1 %i.t, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @248, i64 %i.q) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !141
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.012.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.413.0.copyload = load float, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.514.0.copyload = load <2 x float>, ptr %.sroa.514.0..sroa_idx, align 4 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 6 uses
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 0
  %.sroa.2.12.vec.extract.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 1 ; 2 uses
  %i.w = fsub <2 x float> zeroinitializer, %.sroa.012.0.copyload ; 4 uses
  %i.x = fsub float 0.000000e+00, %.sroa.413.0.copyload ; 3 uses
  %i.y = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1 ; 2 uses
  %i.aa = fmul <2 x float> %i.z, %.sroa.514.0.copyload
  %i.ab = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.514.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ac = fmul <2 x float> %i.w, %i.ab
  %i.ad = shufflevector <2 x float> %.sroa.514.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ae = fmul <2 x float> %i.w, %i.ad
  %i.af = insertelement <2 x float> %i.y, float %i.x, i64 0 ; 2 uses
  %i.ag = fmul <2 x float> %i.af, %.sroa.514.0.copyload
  %i.ah = fsub <2 x float> %i.aa, %i.ae
  %i.ai = fsub <2 x float> %i.ac, %i.ag
  %i.aj = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ak = fmul <2 x float> %i.af, %i.aj
  %i.al = fmul <2 x float> %i.z, %i.aj
  %i.am = fsub <2 x float> %i.ah, %i.ak           ; 2 uses
  %i.an = fsub <2 x float> %i.ai, %i.al           ; 2 uses
  %i.ao = fmul <2 x float> %i.ad, %i.am
  %i.ap = fmul <2 x float> %i.ab, %i.an
  %i.aq = fsub <2 x float> %i.ao, %i.ap
  %6 = shufflevector <2 x float> %i.an, <2 x float> %i.am, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop20 = fmul <2 x float> %.sroa.514.0.copyload, %6 ; 2 uses
  %shift = shufflevector <2 x float> %foldExtExtBinop20, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop22 = fsub <2 x float> %foldExtExtBinop20, %shift
  %i.ar = extractelement <2 x float> %foldExtExtBinop22, i64 0
  %i.as = fmul <2 x float> %i.aq, splat (float 2.000000e+00)
  %i.at = fadd <2 x float> %i.w, %i.as
  %i.au = fmul float %i.ar, 2.000000e+00
  %i.av = fadd float %i.x, %i.au
  %i.aw = shufflevector <2 x float> %.sroa.514.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ax = fmul <4 x float> %i.aw, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 5 uses
  %i.ay = extractelement <4 x float> %i.ax, i64 1 ; 2 uses
  %i.az = extractelement <4 x float> %i.ax, i64 2
  %i.ba = extractelement <4 x float> %i.ax, i64 0 ; 2 uses
  %i.bb = fsub float %i.ay, %i.ba
  %i.bc = fmul float %.sroa.2.12.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.bd = fadd float %i.bb, %i.bc
  %i.be = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.bf = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bg = fsub <2 x float> %i.be, %i.bf
  %i.bh = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fadd <2 x float> %i.bi, %i.bg
  %i.bk = fsub <2 x float> %i.bj, %.sroa.514.0.copyload
  %i.bl = fsub float %i.bd, %.sroa.2.8.vec.extract65.i
  %.sroa.231.8.vec.insert.i = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bm = fadd float %i.ba, %i.ay
  %i.bn = fadd float %i.az, %i.bm
  %i.bo = fadd float %.sroa.2.12.vec.extract.i, %i.bn
  %.sroa.231.12.vec.insert.i = insertelement <2 x float> %.sroa.231.8.vec.insert.i, float %i.bo, i64 1
  store <2 x float> %i.at, ptr %i.v, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.av, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !28
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store <2 x float> %i.bk, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !28
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  store <2 x float> %.sroa.231.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 1, ptr %i.bp, align 4, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #15
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.br = load float, ptr %i.bq, align 4, !tbaa !148
  %i.bs = call float @b3GetLengthUnitsPerMeter() #15
  %i.bt = fmul float %i.bs, 5.000000e-03
  %i.bu = fmul float %i.bt, 1.000000e-01
  %i.bv = fcmp olt float %i.br, %i.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i1 %i.bv
}

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3RayCastHull(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3CastOutput) align 4 captures(none) initializes((0, 48)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !279 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.a = icmp ne ptr %2, null, !nosanitize !12
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !12  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  %i.e = and i1 %i.a, %i.d, !nosanitize !12
  br i1 %i.e, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @251, i64 %i.b) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !281
  %i.h = icmp ne ptr %1, null, !nosanitize !12
  %i.i = ptrtoint ptr %1 to i64, !nosanitize !12  ; 4 uses
  %i.j = and i64 %i.i, 7, !nosanitize !12
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !12
  %i.l = and i1 %i.h, %i.k, !nosanitize !12
  br i1 %i.l, label %bb.e, label %bb.d, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @337, i64 %i.i) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %.fr130 = freeze i32 %i.n                       ; 2 uses
  %i.o = icmp eq i32 %.fr130, 0
  br i1 %i.o, label %.lr.ph.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = sext i32 %.fr130 to i64                  ; 2 uses
  %i.q = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.i, i64 %i.p), !nosanitize !12 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1, !nosanitize !12
  br i1 %i.r, label %bb.g, label %b3GetHullPlanes.exit, !prof !22, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @338, i64 %i.i, i64 %i.p) #14, !nosanitize !12
  unreachable, !nosanitize !12

b3GetHullPlanes.exit:                             ; preds = %bb.f
  %i.s = extractvalue { i64, i1 } %i.q, 0, !nosanitize !12 ; 8 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.v = load i32, ptr %i.u, align 8, !tbaa !24   ; 3 uses
  %.not131.not = icmp eq i64 %i.s, 0
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  br i1 %.not131.not, label %.lr.ph.split.us, label %.lr.ph.split.preheader, !prof !26

.lr.ph.thread:                                    ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.y = load i32, ptr %i.x, align 8, !tbaa !24
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %b3GetHullPlanes.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %i.v, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not193 = icmp slt i32 %i.v, 1
  br i1 %exitcond.not193, label %.split.us, label %.lr.ph198

.lr.ph.split.us:                                  ; preds = %.lr.ph.thread, %b3GetHullPlanes.exit
  %i.z = phi i32 [ %i.y, %.lr.ph.thread ], [ %i.v, %b3GetHullPlanes.exit ]
  %.not.us = icmp sgt i32 %i.z, 0
  br i1 %.not.us, label %.split127, label %.split.us.thread

.lr.ph198:                                        ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.060118197 = phi i32 [ %.262, %.lr.ph.split ], [ -1, %.lr.ph.split.preheader ] ; 4 uses
  %.056119196 = phi float [ %.258, %.lr.ph.split ], [ %i.g, %.lr.ph.split.preheader ] ; 5 uses
  %.0120195 = phi float [ %.2, %.lr.ph.split ], [ 0.000000e+00, %.lr.ph.split.preheader ] ; 5 uses
  %indvars.iv194 = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv194 ; 4 uses
  %i.ab = shl nuw nsw i64 %indvars.iv194, 4
  %i.ac = add i64 %i.ab, %i.s, !nosanitize !12    ; 2 uses
  %.not132 = icmp ult i64 %i.ac, %i.s, !nosanitize !12
  br i1 %.not132, label %.split123.us, label %bb.h, !prof !22, !nosanitize !12

.split123.us:                                     ; preds = %.lr.ph198
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @252, i64 %i.s, i64 %i.ac) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.h:                                             ; preds = %.lr.ph198
  %i.ad = ptrtoint ptr %i.aa to i64, !nosanitize !12 ; 2 uses
  %i.ae = and i64 %i.ad, 3, !nosanitize !12
  %i.af = icmp eq i64 %i.ae, 0, !nosanitize !12
  br i1 %i.af, label %bb.i, label %.split127, !prof !13, !nosanitize !12

.split127:                                        ; preds = %bb.h, %.lr.ph.split.us
  %.us-phi128 = phi i64 [ 0, %.lr.ph.split.us ], [ %i.ad, %bb.h ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @253, i64 %.us-phi128) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.aa, align 4, !tbaa !28 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !28 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !28
  %.sroa.026.0.copyload = load <2 x float>, ptr %2, align 4 ; 2 uses
  %.sroa.227.0.copyload = load float, ptr %.sroa.227.0..sroa_idx, align 4
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload, %.sroa.026.0.copyload
  %foldExtExtBinop201 = fmul <2 x float> %.sroa.0.0.copyload, %.sroa.026.0.copyload
  %shift = shufflevector <2 x float> %foldExtExtBinop201, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop203 = fadd <2 x float> %foldExtExtBinop, %shift
  %i.ag = extractelement <2 x float> %foldExtExtBinop203, i64 0
  %i.ah = fmul float %.sroa.5.0.copyload, %.sroa.227.0.copyload
  %i.ai = fadd float %i.ah, %i.ag
  %i.aj = fsub float %.sroa.7.0.copyload, %i.ai   ; 2 uses
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.w, align 4
  %.sroa.220.0.copyload = load float, ptr %.sroa.220.0..sroa_idx, align 4
  %i.ak = fmul <2 x float> %.sroa.0.0.copyload, %.sroa.019.0.copyload ; 2 uses
  %shift205 = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop206 = fadd <2 x float> %i.ak, %shift205
  %i.al = extractelement <2 x float> %foldExtExtBinop206, i64 0
  %i.am = fmul float %.sroa.5.0.copyload, %.sroa.220.0.copyload
  %i.an = fadd float %i.am, %i.al                 ; 3 uses
  %i.ao = fcmp oeq float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = fcmp olt float %i.aj, 0.000000e+00
  br i1 %i.ap, label %.thread94, label %.lr.ph.split

bb.k:                                             ; preds = %bb.i
  %i.aq = fdiv float %i.aj, %i.an                 ; 4 uses
  %i.ar = fcmp olt float %i.an, 0.000000e+00
  br i1 %i.ar, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.as = fcmp ogt float %i.aq, %.0120195
  br i1 %i.as, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.at = trunc nuw nsw i64 %indvars.iv194 to i32
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.au = fcmp olt float %i.aq, %.056119196
end_hunk_0
