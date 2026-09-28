Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ExplosionCallback:bb.a
  br i1 %i.ac, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @706, i64 %i.z) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !676
  %i.af = fcmp oeq float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.ak, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 3880
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !93 ; 3 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !291 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [128 x i8], ptr %i.ai, i64 %i.ak ; 5 uses
  %i.am = shl nsw i64 %i.ak, 7
  %i.an = ptrtoint ptr %i.ai to i64, !nosanitize !10 ; 3 uses
  %i.ao = add i64 %i.am, %i.an, !nosanitize !10   ; 3 uses
  %i.ap = icmp ne ptr %i.ai, null, !nosanitize !10 ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 0
  %i.ar = xor i1 %i.ap, %i.aq
  %i.as = icmp uge i64 %i.ao, %i.an, !nosanitize !10
  %i.at = icmp slt i32 %i.aj, 0
  %i.au = xor i1 %i.at, %i.as
  %i.av = and i1 %i.ar, %i.au, !nosanitize !10
  br i1 %i.av, label %bb.l, label %bb.k, !prof !11, !nosanitize !10

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @707, i64 %i.an, i64 %i.ao) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef nonnull %i.f, ptr noundef %i.al) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0126.0.copyload = load <2 x float>, ptr %i.aw, align 8
  %.sroa.2127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2127.0.copyload = load float, ptr %.sroa.2127.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.az = load <2 x float>, ptr %i.ay, align 4    ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.bb = load <2 x float>, ptr %i.ba, align 4    ; 3 uses
  %i.bc = load <2 x float>, ptr %3, align 8, !tbaa !144
  %i.bd = fsub <2 x float> %.sroa.0126.0.copyload, %i.bc ; 4 uses
  %i.be = load float, ptr %i.ax, align 8, !tbaa !279
  %i.bf = fsub float %.sroa.2127.0.copyload, %i.be ; 3 uses
  %i.bg = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bh = insertelement <2 x float> %i.bg, float %i.bf, i64 1 ; 2 uses
  %i.bi = fmul <2 x float> %i.bh, %i.az
  %i.bj = shufflevector <2 x float> %i.bb, <2 x float> %i.az, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bk = fmul <2 x float> %i.bd, %i.bj
  %i.bl = shufflevector <2 x float> %i.az, <2 x float> %i.bb, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bm = fmul <2 x float> %i.bd, %i.bl
  %i.bn = insertelement <2 x float> %i.bg, float %i.bf, i64 0 ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.az
  %i.bp = fsub <2 x float> %i.bi, %i.bm
  %i.bq = fsub <2 x float> %i.bk, %i.bo
  %i.br = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bs = fmul <2 x float> %i.bn, %i.br
  %i.bt = fmul <2 x float> %i.bh, %i.br
  %i.bu = fsub <2 x float> %i.bp, %i.bs           ; 2 uses
  %i.bv = fsub <2 x float> %i.bq, %i.bt           ; 2 uses
  %i.bw = fmul <2 x float> %i.bl, %i.bu
  %i.bx = fmul <2 x float> %i.bj, %i.bv
  %i.by = fsub <2 x float> %i.bw, %i.bx
  %i.bz = shufflevector <2 x float> %i.bv, <2 x float> %i.bu, <2 x i32> <i32 0, i32 3>
  %i.ca = fmul <2 x float> %i.az, %i.bz           ; 2 uses
  %shift = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.ca, %shift
  %i.cb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cc = fmul <2 x float> %i.by, splat (float 2.000000e+00)
  %i.cd = fadd <2 x float> %i.bd, %i.cc
  %i.ce = fmul float %i.cb, 2.000000e+00
  %i.cf = fadd float %i.bf, %i.ce
  store <2 x float> %i.cd, ptr %4, align 8
  %.sroa.2125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %i.cf, ptr %.sroa.2125.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.cg = call { ptr, i64 } @b3MakeShapeProxy(ptr noundef nonnull %i.o) #16 ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %i.cg, 0
  %i.ci = extractvalue { ptr, i64 } %i.cg, 1
  store ptr %i.ch, ptr %5, align 8, !tbaa !331
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ci, ptr %.sroa.4121.0..sroa_idx, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.cj, align 8, !tbaa !331
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !84
  %.sroa.3219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float 0.000000e+00, ptr %.sroa.3219.0..sroa_idx, align 4, !tbaa !144
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ck, ptr noundef nonnull align 4 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !296
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i8 1, ptr %i.cl, align 4, !tbaa !678
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #16
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !679 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cp = load float, ptr %i.co, align 8, !tbaa !680 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 3 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !682
  %i.cs = fadd float %i.cn, %i.cp                 ; 2 uses
  %i.ct = fcmp ogt float %i.cr, %i.cs
  br i1 %i.ct, label %bb.aj, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = call zeroext i1 @b3WakeBody(ptr noundef nonnull %i.f, ptr noundef %i.al) #16 ; 0 uses
  %i.cv = ptrtoint ptr %i.al to i64, !nosanitize !10 ; 2 uses
  %i.cw = and i64 %i.cv, 7, !nosanitize !10
  %i.cx = icmp eq i64 %i.cw, 0, !nosanitize !10
  %i.cy = and i1 %i.ap, %i.cx
  br i1 %i.cy, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @708, i64 %i.cv) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !281
  %.not = icmp eq i32 %i.da, 2
  br i1 %.not, label %bb.p, label %bb.aj

bb.p:                                             ; preds = %bb.o
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !144
  %.sroa.0111.0.copyload = load <2 x float>, ptr %7, align 8, !tbaa !144
  %i.db = load float, ptr %i.cq, align 4, !tbaa !682
  %i.dc = fcmp oeq float %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dd = call { <2 x float>, float } @b3GetShapeCentroid(ptr noundef nonnull %i.o) #16 ; 2 uses
  %.fca.0.extract105 = extractvalue { <2 x float>, float } %i.dd, 0
  %.fca.1.extract106 = extractvalue { <2 x float>, float } %i.dd, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0111.0 = phi <2 x float> [ %.fca.0.extract105, %bb.q ], [ %.sroa.0111.0.copyload, %bb.p ] ; 2 uses
  %.sroa.6.0 = phi float [ %.fca.1.extract106, %bb.q ], [ %.sroa.6.0.copyload, %bb.p ] ; 2 uses
  %.sroa.097.0.copyload = load <2 x float>, ptr %4, align 8
  %.sroa.298.0.copyload = load float, ptr %.sroa.2125.0..sroa_idx, align 8
  %i.de = fsub <2 x float> %.sroa.0111.0, %.sroa.097.0.copyload ; 3 uses
  %i.df = fsub float %.sroa.6.0, %.sroa.298.0.copyload ; 3 uses
  %i.dg = fmul <2 x float> %i.de, %i.de           ; 2 uses
  %shift233 = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop234 = fadd <2 x float> %i.dg, %shift233
  %i.dh = extractelement <2 x float> %foldExtExtBinop234, i64 0
  %i.di = fmul float %i.df, %i.df
  %i.dj = fadd float %i.di, %i.dh                 ; 2 uses
  %i.dk = fcmp ogt float %i.dj, f0x2BC80000
  br i1 %i.dk, label %b3Normalize.exit, label %bb.s

b3Normalize.exit:                                 ; preds = %bb.r
  %sqrt = call float @llvm.sqrt.f32(float %i.dj)
  %i.dl = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.de, %i.dn
  %i.dp = fmul float %i.df, %i.dl
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %b3Normalize.exit
  %.sroa.0101.0 = phi <2 x float> [ %i.do, %b3Normalize.exit ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.r ] ; 5 uses
  %.sroa.9.0 = phi float [ %i.dp, %b3Normalize.exit ], [ 0.000000e+00, %bb.r ] ; 5 uses
  %i.dq = call float @b3GetShapeProjectedArea(ptr noundef nonnull %i.o, <2 x float> %.sroa.0101.0, float %.sroa.9.0) #16
  %i.dr = load float, ptr %i.cq, align 4, !tbaa !682 ; 2 uses
  %i.ds = fcmp ogt float %i.dr, %i.cn
  %i.dt = fcmp ogt float %i.cp, 0.000000e+00
  %or.cond = and i1 %i.dt, %i.ds
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.du = fsub float %i.cs, %i.dr
  %i.dv = fdiv float %i.du, %i.cp                 ; 3 uses
  %i.dw = fcmp olt float %i.dv, 0.000000e+00
  %i.dx = fcmp ogt float %i.dv, 1.000000e+00
  %i.dy = select i1 %i.dx, float 1.000000e+00, float %i.dv
  %i.dz = select i1 %i.dw, float 0.000000e+00, float %i.dy
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0152 = phi float [ %i.dz, %bb.t ], [ 1.000000e+00, %bb.s ]
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !683
  %i.ec = fmul float %i.dq, %i.eb
  %i.ed = fmul float %.0152, %i.ec
  %i.ee = load float, ptr %i.ad, align 8, !tbaa !676
  %i.ef = fmul float %i.ee, %i.ed                 ; 2 uses
  %i.eg = load <2 x float>, ptr %i.ay, align 4    ; 6 uses
  %i.eh = load <2 x float>, ptr %i.ba, align 4    ; 4 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %i.eg, i64 0
  %foldExtExtBinop236 = fmul <2 x float> %.sroa.0101.0, %i.eh
  %.sroa.09.0.vec.extract.i.i.a = extractelement <2 x float> %foldExtExtBinop236, i64 0
  %i.ei = fmul float %.sroa.9.0, %.sroa.09.0.vec.extract.i.i
  %i.ej = fsub float %.sroa.09.0.vec.extract.i.i.a, %i.ei
  %i.ek = shufflevector <2 x float> %.sroa.0101.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.el = insertelement <2 x float> %i.ek, float %.sroa.9.0, i64 1 ; 2 uses
  %i.em = fmul <2 x float> %i.el, %i.eg
  %i.en = shufflevector <2 x float> %i.eg, <2 x float> %i.eh, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.eo = fmul <2 x float> %.sroa.0101.0, %i.en
  %i.ep = fsub <2 x float> %i.em, %i.eo           ; 2 uses
  %i.eq = insertelement <2 x float> %i.ek, float %.sroa.9.0, i64 0
  %i.er = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.es = fmul <2 x float> %i.eq, %i.er
  %i.et = fmul <2 x float> %i.el, %i.er
  %i.eu = fadd <2 x float> %i.es, %i.ep           ; 2 uses
  %i.ev = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ew = insertelement <2 x float> %i.ev, float %i.ej, i64 0
  %i.ex = fadd <2 x float> %i.et, %i.ew           ; 2 uses
  %i.ey = fmul <2 x float> %i.en, %i.eu
  %i.ez = shufflevector <2 x float> %i.eh, <2 x float> %i.eg, <2 x i32> <i32 0, i32 2>
  %i.fa = fmul <2 x float> %i.ez, %i.ex
  %i.fb = fsub <2 x float> %i.ey, %i.fa
  %foldExtExtBinop238 = fmul <2 x float> %i.eg, %i.ex
  %foldExtExtBinop240 = fmul <2 x float> %i.eg, %i.eu
  %shift242 = shufflevector <2 x float> %foldExtExtBinop240, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop243 = fsub <2 x float> %foldExtExtBinop238, %shift242
  %i.fc = extractelement <2 x float> %foldExtExtBinop243, i64 0
  %i.fd = fmul <2 x float> %i.fb, splat (float 2.000000e+00)
  %i.fe = fadd <2 x float> %.sroa.0101.0, %i.fd
  %i.ff = fmul float %i.fc, 2.000000e+00
  %i.fg = fadd float %.sroa.9.0, %i.ff
  %i.fh = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.fi, %i.fe           ; 3 uses
  %i.fk = fmul float %i.ef, %i.fg                 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !375 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 3920
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !95 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 176 ; 2 uses
  %i.fq = ptrtoint ptr %i.fo to i64, !nosanitize !10 ; 2 uses
  %i.fr = add i64 %i.fq, 176, !nosanitize !10     ; 2 uses
  %i.fs = icmp ne ptr %i.fo, null, !nosanitize !10
  %i.ft = icmp ne i64 %i.fr, 0
  %i.fu = and i1 %i.fs, %i.ft
  %i.fv = icmp ult ptr %i.fo, inttoptr (i64 -176 to ptr)
  %i.fw = and i1 %i.fv, %i.fu, !nosanitize !10
  br i1 %i.fw, label %bb.w, label %bb.v, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @709, i64 %i.fq, i64 %i.fr) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  %i.fx = ptrtoint ptr %i.fp to i64, !nosanitize !10 ; 2 uses
  %i.fy = and i64 %i.fx, 7, !nosanitize !10
  %i.fz = icmp eq i64 %i.fy, 0, !nosanitize !10
  br i1 %i.fz, label %bb.y, label %bb.x, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @710, i64 %i.fx) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %bb.w
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fo, i64 192 ; 2 uses
  %i.gb = ptrtoint ptr %i.ga to i64, !nosanitize !10 ; 2 uses
  %i.gc = and i64 %i.gb, 7, !nosanitize !10
  %i.gd = icmp eq i64 %i.gc, 0, !nosanitize !10
  br i1 %i.gd, label %bb.aa, label %bb.z, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @711, i64 %i.gb) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.aa:                                            ; preds = %bb.y
  %i.ge = load ptr, ptr %i.ga, align 8, !tbaa !109 ; 3 uses
  %i.gf = sext i32 %i.fm to i64                   ; 4 uses
  %i.gg = getelementptr inbounds [56 x i8], ptr %i.ge, i64 %i.gf ; 6 uses
  %i.gh = mul nsw i64 %i.gf, 56
  %i.gi = ptrtoint ptr %i.ge to i64, !nosanitize !10 ; 3 uses
  %i.gj = add i64 %i.gh, %i.gi, !nosanitize !10   ; 3 uses
  %i.gk = icmp ne ptr %i.ge, null, !nosanitize !10 ; 2 uses
  %i.gl = icmp eq i64 %i.gj, 0
  %i.gm = xor i1 %i.gk, %i.gl
  %i.gn = icmp uge i64 %i.gj, %i.gi, !nosanitize !10
  %i.go = icmp slt i32 %i.fm, 0                   ; 2 uses
  %i.gp = xor i1 %i.go, %i.gn
  %i.gq = and i1 %i.gm, %i.gp, !nosanitize !10
  br i1 %i.gq, label %bb.ac, label %bb.ab, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @712, i64 %i.gi, i64 %i.gj) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ac:                                            ; preds = %bb.aa
  %i.gr = load ptr, ptr %i.fp, align 8, !tbaa !107 ; 3 uses
  %i.gs = getelementptr inbounds [216 x i8], ptr %i.gr, i64 %i.gf ; 13 uses
  %i.gt = mul nsw i64 %i.gf, 216
  %i.gu = ptrtoint ptr %i.gr to i64, !nosanitize !10 ; 3 uses
  %i.gv = add i64 %i.gt, %i.gu, !nosanitize !10   ; 3 uses
  %i.gw = icmp ne ptr %i.gr, null, !nosanitize !10 ; 2 uses
  %i.gx = icmp eq i64 %i.gv, 0
  %i.gy = xor i1 %i.gw, %i.gx
  %i.gz = icmp uge i64 %i.gv, %i.gu, !nosanitize !10
  %i.ha = xor i1 %i.go, %i.gz
  %i.hb = and i1 %i.gy, %i.ha, !nosanitize !10
  br i1 %i.hb, label %bb.ae, label %bb.ad, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @713, i64 %i.gu, i64 %i.gv) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ae:                                            ; preds = %bb.ac
  %i.hc = ptrtoint ptr %i.gg to i64, !nosanitize !10 ; 2 uses
  %i.hd = and i64 %i.hc, 3, !nosanitize !10
  %i.he = icmp eq i64 %i.hd, 0, !nosanitize !10
  %i.hf = and i1 %i.gk, %i.he
  br i1 %i.hf, label %bb.ag, label %bb.af, !prof !11, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @715, i64 %i.hc) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ag:                                            ; preds = %bb.ae
  %i.hg = ptrtoint ptr %i.gs to i64, !nosanitize !10 ; 2 uses
  %i.hh = and i64 %i.hg, 3, !nosanitize !10
  %i.hi = icmp eq i64 %i.hh, 0, !nosanitize !10
  %i.hj = and i1 %i.gw, %i.hi
  br i1 %i.hj, label %bb.ai, label %bb.ah, !prof !11, !nosanitize !10

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @716, i64 %i.hg) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ai:                                            ; preds = %bb.ag
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gs, i64 104
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !684 ; 2 uses
  %.sroa.049.0.copyload = load <2 x float>, ptr %i.gg, align 4
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %.sroa.250.0.copyload = load float, ptr %.sroa.250.0..sroa_idx, align 4
  %i.hm = insertelement <2 x float> poison, float %i.hl, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = fmul <2 x float> %i.fj, %i.hn
  %i.hp = fadd <2 x float> %i.ho, %.sroa.049.0.copyload
  %i.hq = fmul float %i.fk, %i.hl
  %i.hr = fadd float %i.hq, %.sroa.250.0.copyload
  store <2 x float> %i.hp, ptr %i.gg, align 4, !tbaa !144
  store float %i.hr, ptr %.sroa.250.0..sroa_idx, align 4, !tbaa !144
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gg, i64 12 ; 2 uses
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 76
  %.sroa.236.0.copyload = load float, ptr %.sroa.236.0..sroa_idx, align 4
  %i.ht = load <2 x float>, ptr %i.ay, align 4    ; 3 uses
  %i.hu = load <2 x float>, ptr %i.ba, align 4    ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gs, i64 68
  %.sroa.035.0.copyload = load <2 x float>, ptr %i.hv, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gs, i64 144
  %.sroa.0.0.copyload = load float, ptr %i.hw, align 4, !tbaa !144
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 148
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !144
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 152
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !144
  %.sroa.6.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.gs, i64 156
  %.sroa.6.0.copyload215 = load float, ptr %.sroa.6.0..sroa_idx214, align 4, !tbaa !144
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 160
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !144
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 164
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !144
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 168
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !144
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 172
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !144
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 176
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !144
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.hs, align 4 ; 2 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 20 ; 2 uses
  %.sroa.25.0.copyload = load float, ptr %.sroa.25.0..sroa_idx, align 4
  %i.hx = shufflevector <2 x float> %.sroa.0111.0, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.hy = insertelement <4 x float> %i.hx, float 1.000000e+00, i64 3
  %i.hz = insertelement <4 x float> %i.hy, float %.sroa.6.0, i64 1
  %i.ia = shufflevector <2 x float> %.sroa.035.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.ib = insertelement <4 x float> %i.ia, float 0.000000e+00, i64 3
  %i.ic = insertelement <4 x float> %i.ib, float %.sroa.236.0.copyload, i64 1
  %i.id = fsub <4 x float> %i.hz, %i.ic           ; 4 uses
  %i.ie = shufflevector <2 x float> %i.hu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.if = insertelement <4 x float> %i.ie, float 1.000000e+00, i64 3
  %i.ig = shufflevector <4 x float> %i.id, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ih = fmul <4 x float> %i.if, %i.ig
  %i.ii = shufflevector <2 x float> %i.ht, <2 x float> %i.hu, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.ij = insertelement <4 x float> %i.ii, float -0.000000e+00, i64 3
  %i.ik = shufflevector <4 x float> %i.id, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.il = fmul <4 x float> %i.ij, %i.ik
  %i.im = shufflevector <2 x float> %i.hu, <2 x float> %i.ht, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.in = insertelement <4 x float> %i.im, float 0.000000e+00, i64 3
  %i.io = fmul <4 x float> %i.in, %i.id
  %i.ip = fsub <4 x float> %i.il, %i.io
  %i.iq = fadd <4 x float> %i.ih, %i.ip           ; 2 uses
  %i.ir = insertelement <4 x float> %i.im, float 1.000000e+00, i64 3
  %i.is = fmul <4 x float> %i.ir, %i.iq
  %i.it = shufflevector <2 x float> %i.ht, <2 x float> %i.hu, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.iu = insertelement <4 x float> %i.it, float 0.000000e+00, i64 3
  %i.iv = shufflevector <4 x float> %i.iq, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.iw = fmul <4 x float> %i.iu, %i.iv
  %i.ix = fsub <4 x float> %i.is, %i.iw
  %i.iy = fmul <4 x float> %i.ix, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
end_hunk_0
