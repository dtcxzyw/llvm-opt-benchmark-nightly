Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/revolute_joint?download=true
inline.NumInlined: 226
inline.NumDeleted: 34
begin_hunk_0_@b3RevoluteJoint_SetMaxMotorTorque:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 228
  store float %1, ptr %i.h, align 4, !tbaa !71
  ret void
}

declare void @b3RecWrite_RevoluteJointSetMaxMotorTorque(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3RevoluteJoint_GetMaxMotorTorque(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 5) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.c = load float, ptr %i.b, align 4, !tbaa !71
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b3RevoluteJoint_GetMotorTorque(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 5) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4744
  %i.f = load float, ptr %i.e, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.h = load float, ptr %i.g, align 4, !tbaa !71
  %i.i = fmul float %i.f, %i.h
  ret float %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { <2 x float>, float } @b3GetRevoluteJointForce(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.b = load float, ptr %i.a, align 8, !tbaa !83 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.c, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  %i.d = insertelement <2 x float> poison, float %i.b, i64 0
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x float> %i.e, %.sroa.03.0.copyload
  %i.g = fmul float %i.b, %.sroa.24.0.copyload
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.f, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.g, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetRevoluteJointTorque(ptr noundef %0, ptr nofree noundef captures(none) initializes((324, 348)) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3Transform, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef %0, i32 noundef %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load <2 x float>, ptr %i.c, align 4      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load <2 x float>, ptr %i.e, align 4      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load <2 x float>, ptr %i.g, align 4      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = load <2 x float>, ptr %i.i, align 4      ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.m = load <2 x float>, ptr %i.k, align 4      ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 276
  %i.o = load <2 x float>, ptr %i.n, align 4      ; 6 uses
  %i.p = load <2 x float>, ptr %i.l, align 4      ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.r = load <2 x float>, ptr %i.q, align 4      ; 4 uses
  %i.s = shufflevector <2 x float> %i.m, <2 x float> %i.o, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.t = shufflevector <2 x float> %i.p, <2 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.u = fmul <4 x float> %i.s, %i.t              ; 4 uses
  %shift = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.u, %shift
  %shift292 = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop293 = fadd <4 x float> %shift292, %foldExtExtBinop
  %shift295 = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop296 = fadd <4 x float> %shift295, %foldExtExtBinop293 ; 2 uses
  %i.v = extractelement <4 x float> %foldExtExtBinop296, i64 0 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.x = fmul float %i.v, 0.000000e+00            ; 2 uses
  %i.y = shufflevector <2 x float> %i.r, <2 x float> %i.p, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.z = fmul <2 x float> %i.m, %i.y
  %i.aa = shufflevector <2 x float> %i.m, <2 x float> %i.o, <2 x i32> <i32 1, i32 2> ; 6 uses
  %i.ab = fmul <2 x float> %i.aa, %i.p
  %i.ac = shufflevector <2 x float> %i.o, <2 x float> %i.m, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.ad = fmul <2 x float> %i.ac, %i.p
  %i.ae = shufflevector <2 x float> %i.p, <2 x float> %i.r, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.af = fmul <2 x float> %i.m, %i.ae
  %i.ag = fsub <2 x float> %i.z, %i.ad
  %i.ah = fsub <2 x float> %i.ab, %i.af
  %i.ai = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 6 uses
  %i.aj = fmul <2 x float> %i.ai, %i.ae
  %i.ak = fmul <2 x float> %i.ai, %i.y
  %i.al = fadd <2 x float> %i.aj, %i.ag
  %i.am = fadd <2 x float> %i.ah, %i.ak
  %i.an = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ao = fmul <2 x float> %i.aa, %i.an
  %i.ap = fmul <2 x float> %i.ac, %i.an
  %i.aq = fsub <2 x float> %i.al, %i.ao           ; 3 uses
  %i.ar = fsub <2 x float> %i.am, %i.ap           ; 2 uses
  %i.as = fmul <2 x float> %i.aq, <float 0.000000e+00, float 1.000000e+00> ; 3 uses
  %i.at = fmul <2 x float> %i.ar, zeroinitializer ; 4 uses
  %i.au = fsub <2 x float> %i.as, %i.at
  %i.av = insertelement <2 x float> poison, float %i.v, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.x, i64 1
  %i.ax = fadd <2 x float> %i.aw, %i.au           ; 5 uses
  %foldExtExtBinop298 = fmul <2 x float> %i.o, %i.ax
  %i.ay = fmul <2 x float> %i.aa, %i.ax
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ba = shufflevector <2 x float> %i.as, <2 x float> %i.at, <2 x i32> <i32 0, i32 2>
  %i.bb = shufflevector <2 x float> %i.aq, <2 x float> %i.at, <2 x i32> <i32 1, i32 3>
  %i.bc = fsub <2 x float> %i.ba, %i.bb
  %i.bd = insertelement <2 x float> poison, float %i.x, i64 0 ; 2 uses
  %i.be = shufflevector <4 x float> %foldExtExtBinop296, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> %i.be, <2 x i32> <i32 0, i32 2>
  %i.bg = fadd <2 x float> %i.bf, %i.bc           ; 5 uses
  %foldExtExtBinop300 = fmul <2 x float> %i.o, %i.bg
  %i.bh = fmul <2 x float> %i.aa, %i.bg
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !86
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !87
  %i.bm = fadd float %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !88
  %i.bp = fadd float %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.br = load float, ptr %i.bq, align 4, !tbaa !89
  %i.bs = fsub float %i.bp, %i.br                 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.bu, align 4
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.sroa.219.0.copyload = load float, ptr %.sroa.219.0..sroa_idx, align 4
  %i.bv = fmul float %i.bs, %.sroa.219.0.copyload
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.bx = fmul <2 x float> %i.d, <float 0.000000e+00, float 1.000000e+00>
  %i.by = shufflevector <2 x float> %i.d, <2 x float> %i.f, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bz = fmul <2 x float> %i.by, zeroinitializer ; 2 uses
  %i.ca = fsub <2 x float> %i.bx, %i.bz
  %shift302 = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop303 = fsub <2 x float> %shift302, %i.d
  %i.cb = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cc = fmul <2 x float> %i.cb, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cd = fadd <2 x float> %i.cc, %i.ca           ; 3 uses
  %shift305 = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop306 = fadd <2 x float> %shift305, %foldExtExtBinop303 ; 2 uses
  %i.ce = fmul <2 x float> %i.by, %i.cd
  %i.cf = shufflevector <2 x float> %i.f, <2 x float> %i.d, <2 x i32> <i32 0, i32 2>
  %i.cg = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ch = shufflevector <2 x float> %foldExtExtBinop306, <2 x float> %i.cg, <2 x i32> <i32 0, i32 3>
  %i.ci = fmul <2 x float> %i.cf, %i.ch
  %i.cj = fsub <2 x float> %i.ce, %i.ci           ; 2 uses
  %foldExtExtBinop308 = fmul <2 x float> %i.d, %foldExtExtBinop306
  %foldExtExtBinop310 = fmul <2 x float> %i.d, %i.cd
  %shift312 = shufflevector <2 x float> %foldExtExtBinop310, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop313 = fsub <2 x float> %foldExtExtBinop308, %shift312
  %i.ck = fmul <2 x float> %i.cj, splat (float 2.000000e+00)
  %i.cl = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cm = shufflevector <2 x float> %foldExtExtBinop313, <2 x float> %i.cl, <2 x i32> <i32 0, i32 3>
  %i.cn = fmul <2 x float> %i.cm, splat (float 2.000000e+00)
  %i.co = fadd <2 x float> %i.ck, zeroinitializer ; 4 uses
  %i.cp = fadd <2 x float> %i.cn, <float 1.000000e+00, float 0.000000e+00> ; 4 uses
  %foldExtExtBinop315 = fmul <2 x float> %i.j, %i.co
  %i.cq = shufflevector <2 x float> %i.co, <2 x float> %i.cp, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cr = fmul <2 x float> %i.h, %i.cq
  %i.cs = shufflevector <2 x float> %i.h, <2 x float> %i.j, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ct = fmul <2 x float> %i.cs, %i.co
  %i.cu = extractelement <2 x float> %i.cp, i64 0
  %foldExtExtBinop317 = fmul <2 x float> %i.h, %i.cp
  %i.cv = fsub <2 x float> %i.cr, %i.ct           ; 2 uses
  %foldExtExtBinop319 = fsub <2 x float> %foldExtExtBinop315, %foldExtExtBinop317
  %i.cw = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cx = fmul <2 x float> %i.cw, %i.cp
  %i.cy = fmul <2 x float> %i.cw, %i.cq
  %i.cz = fadd <2 x float> %i.cx, %i.cv           ; 2 uses
  %i.da = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.db = shufflevector <2 x float> %foldExtExtBinop319, <2 x float> %i.da, <2 x i32> <i32 0, i32 3>
  %i.dc = fadd <2 x float> %i.cy, %i.db           ; 2 uses
  %i.dd = fmul <2 x float> %i.cs, %i.cz
  %i.de = shufflevector <2 x float> %i.j, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %i.df = fmul <2 x float> %i.de, %i.dc
  %i.dg = fsub <2 x float> %i.dd, %i.df
  %i.dh = shufflevector <2 x float> %i.dc, <2 x float> %i.cz, <2 x i32> <i32 0, i32 3>
  %i.di = fmul <2 x float> %i.h, %i.dh            ; 2 uses
  %shift321 = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop322 = fsub <2 x float> %i.di, %shift321
  %i.dj = extractelement <2 x float> %foldExtExtBinop322, i64 0
  %i.dk = fmul <2 x float> %i.dg, splat (float 2.000000e+00)
  %i.dl = fadd <2 x float> %i.co, %i.dk
  %i.dm = fmul float %i.dj, 2.000000e+00
  %i.dn = fadd float %i.cu, %i.dm
  %i.do = shufflevector <2 x float> %i.at, <2 x float> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.dp = shufflevector <2 x float> %i.aq, <2 x float> %i.as, <2 x i32> <i32 0, i32 2>
  %i.dq = fsub <2 x float> %i.do, %i.dp
  %i.dr = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fadd <2 x float> %i.dr, %i.dq           ; 7 uses
  %i.dt = shufflevector <2 x float> %i.ax, <2 x float> %i.ds, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.du = fmul <2 x float> %i.m, %i.dt
  %foldExtExtBinop324 = fmul <2 x float> %i.m, %i.ds
  %i.dv = fsub <2 x float> %i.du, %i.ay           ; 2 uses
  %foldExtExtBinop326 = fsub <2 x float> %foldExtExtBinop298, %foldExtExtBinop324
  %i.dw = shufflevector <2 x float> %i.ds, <2 x float> %i.ax, <2 x i32> <i32 0, i32 2>
  %i.dx = fmul <2 x float> %i.ai, %i.dw
  %i.dy = fmul <2 x float> %i.ai, %i.dt
  %i.dz = fadd <2 x float> %i.dx, %i.dv           ; 2 uses
  %i.ea = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eb = shufflevector <2 x float> %foldExtExtBinop326, <2 x float> %i.ea, <2 x i32> <i32 0, i32 3>
  %i.ec = fadd <2 x float> %i.dy, %i.eb           ; 2 uses
  %i.ed = fmul <2 x float> %i.aa, %i.dz
  %i.ee = fmul <2 x float> %i.ac, %i.ec
  %i.ef = fsub <2 x float> %i.ed, %i.ee
  %i.eg = fmul <2 x float> %i.ef, splat (float 2.000000e+00)
  %i.eh = fadd <2 x float> %i.ax, %i.eg
  %i.ei = fmul <2 x float> %i.eh, splat (float 5.000000e-01) ; 2 uses
  store <2 x float> %i.ei, ptr %i.w, align 4
  %i.ej = shufflevector <2 x float> %i.bg, <2 x float> %i.ds, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ek = fmul <2 x float> %i.m, %i.ej
  %shift328 = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop329 = fmul <2 x float> %i.m, %shift328
  %i.el = fsub <2 x float> %i.ek, %i.bh           ; 2 uses
  %foldExtExtBinop331 = fsub <2 x float> %foldExtExtBinop300, %foldExtExtBinop329
  %i.em = shufflevector <2 x float> %i.ds, <2 x float> %i.bg, <2 x i32> <i32 1, i32 2>
  %i.en = fmul <2 x float> %i.ai, %i.em
  %i.eo = fmul <2 x float> %i.ai, %i.ej
  %i.ep = fadd <2 x float> %i.en, %i.el           ; 2 uses
  %i.eq = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.er = shufflevector <2 x float> %foldExtExtBinop331, <2 x float> %i.eq, <2 x i32> <i32 0, i32 3>
  %i.es = fadd <2 x float> %i.eo, %i.er           ; 2 uses
  %i.et = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = shufflevector <2 x float> %i.ec, <2 x float> %i.es, <2 x i32> <i32 0, i32 2>
  %i.ev = fmul <2 x float> %i.et, %i.eu
  %i.ew = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = shufflevector <2 x float> %i.dz, <2 x float> %i.ep, <2 x i32> <i32 1, i32 3>
  %i.ey = fmul <2 x float> %i.ew, %i.ex
  %i.ez = fsub <2 x float> %i.ev, %i.ey
  %i.fa = fmul <2 x float> %i.ez, splat (float 2.000000e+00)
  %i.fb = fadd <2 x float> %i.ds, %i.fa
  %i.fc = fmul <2 x float> %i.fb, splat (float 5.000000e-01) ; 3 uses
  %i.fd = extractelement <2 x float> %i.fc, i64 0
  store float %i.fd, ptr %.sroa.4137.0..sroa_idx, align 4, !tbaa !90
  %i.fe = fmul <2 x float> %i.aa, %i.ep
  %i.ff = fmul <2 x float> %i.ac, %i.es
  %i.fg = fsub <2 x float> %i.fe, %i.ff
  %i.fh = fmul <2 x float> %i.fg, splat (float 2.000000e+00)
  %i.fi = fadd <2 x float> %i.bg, %i.fh
  %i.fj = fmul <2 x float> %i.fi, splat (float 5.000000e-01) ; 2 uses
  store <2 x float> %i.fj, ptr %i.az, align 4
  %i.fk = extractelement <2 x float> %i.fc, i64 1
  store float %i.fk, ptr %.sroa.493.0..sroa_idx, align 4, !tbaa !90
  %i.fl = load float, ptr %i.bw, align 8, !tbaa !83 ; 2 uses
  %3 = load <2 x float>, ptr %i.bt, align 4, !tbaa !90 ; 3 uses
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %4, %i.ei
  %5 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fn = fmul <2 x float> %5, %i.fj
  %i.fo = fmul <2 x float> %3, %i.fc              ; 2 uses
  %i.fp = fadd <2 x float> %i.fm, %i.fn
  %shift333 = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop334 = fadd <2 x float> %i.fo, %shift333
  %i.fq = extractelement <2 x float> %foldExtExtBinop334, i64 0
  %i.fr = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ft = fmul <2 x float> %i.fs, %.sroa.018.0.copyload
  %i.fu = fadd <2 x float> %i.ft, %i.fp
  %i.fv = fadd float %i.bv, %i.fq
  %i.fw = fmul <2 x float> %i.fs, %i.dl
  %i.fx = fadd <2 x float> %i.fw, %i.fu
  %i.fy = fmul float %i.bs, %i.dn
  %i.fz = fadd float %i.fy, %i.fv
  %i.ga = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x float> %i.gb, %i.fx
  %i.gd = fmul float %i.fl, %i.fz
  %.fca.0.insert.i289 = insertvalue { <2 x float>, float } poison, <2 x float> %i.gc, 0
  %.fca.1.insert.i290 = insertvalue { <2 x float>, float } %.fca.0.insert.i289, float %i.gd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret { <2 x float>, float } %.fca.1.insert.i290
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3PrepareRevoluteJoint(ptr nofree noundef initializes((72, 152), (180, 181), (248, 360), (364, 380)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3880
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !79
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [128 x i8], ptr %i.d, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !80
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [128 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3920
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !122  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !124
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !124
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !125  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !125  ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !133
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [216 x i8], ptr %i.aa, i64 %i.ab ; 8 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !133
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [216 x i8], ptr %i.ad, i64 %i.ae ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !135
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %i.ah, ptr %i.ai, align 4, !tbaa !104
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !135
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %i.ak, ptr %i.al, align 4, !tbaa !105
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.am, ptr noundef nonnull align 4 dereferenceable(36) %i.an, i64 36, i1 false), !tbaa.struct !136
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ao, ptr noundef nonnull align 4 dereferenceable(36) %i.ap, i64 36, i1 false), !tbaa.struct !136
  %.sroa.5392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.5392.0.copyload = load float, ptr %.sroa.5392.0..sroa_idx, align 4, !tbaa !90
  %.sroa.6393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.8395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.8395.0.copyload = load float, ptr %.sroa.8395.0..sroa_idx, align 4, !tbaa !90
  %.sroa.9396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.11398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.11398.0.copyload = load float, ptr %.sroa.11398.0..sroa_idx, align 4, !tbaa !90
  %.sroa.5410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.5410.0.copyload = load float, ptr %.sroa.5410.0..sroa_idx, align 4, !tbaa !90
  %.sroa.6411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.8413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.8413.0.copyload = load float, ptr %.sroa.8413.0..sroa_idx, align 4, !tbaa !90
  %.sroa.9414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.11416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.sroa.11416.0.copyload = load float, ptr %.sroa.11416.0..sroa_idx, align 4, !tbaa !90
  %i.aq = fadd float %.sroa.5392.0.copyload, %.sroa.5410.0.copyload ; 2 uses
  %i.ar = fadd float %.sroa.8395.0.copyload, %.sroa.8413.0.copyload ; 3 uses
  %i.as = fadd float %.sroa.11398.0.copyload, %.sroa.11416.0.copyload ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.au = load i32, ptr %i.o, align 8, !tbaa !124
  %i.av = icmp eq i32 %i.au, 2
  %i.aw = select i1 %i.av, i32 %i.x, i32 -1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !106
  %i.ay = load i32, ptr %i.s, align 8, !tbaa !124
  %i.az = icmp eq i32 %i.ay, 2
  %i.ba = select i1 %i.az, i32 %i.z, i32 -1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !107
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 2 uses
  %i.bi = load <2 x float>, ptr %i.bg, align 4    ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bk = load <2 x float>, ptr %i.bj, align 4    ; 4 uses
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  %.sroa.0161.0.copyload = load <2 x float>, ptr %i.bf, align 4
  %.sroa.2162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2162.0.copyload = load float, ptr %.sroa.2162.0..sroa_idx, align 4
  %.sroa.2160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 76
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 20 ; 2 uses
  %i.bt = load <2 x float>, ptr %i.br, align 4    ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bv = load <2 x float>, ptr %i.bu, align 4    ; 3 uses
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 68
  %.sroa.0141.0.copyload = load <2 x float>, ptr %i.bq, align 4
  %.sroa.2142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.2142.0.copyload = load float, ptr %.sroa.2142.0..sroa_idx, align 4
  %.sroa.2140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 76
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %.sroa.2126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.cb = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = load <2 x float>, ptr %i.am, align 4, !tbaa !90 ; 2 uses
  %i.cd = load <2 x float>, ptr %.sroa.6393.0..sroa_idx, align 4, !tbaa !90 ; 2 uses
  %i.ce = load <2 x float>, ptr %.sroa.9396.0..sroa_idx, align 4, !tbaa !90
  %i.cf = load <2 x float>, ptr %i.ao, align 4, !tbaa !90 ; 2 uses
  %i.cg = load <2 x float>, ptr %.sroa.6411.0..sroa_idx, align 4, !tbaa !90 ; 2 uses
  %i.ch = load <2 x float>, ptr %.sroa.9414.0..sroa_idx, align 4, !tbaa !90
  %i.ci = shufflevector <2 x float> %i.cd, <2 x float> %i.cc, <2 x i32> <i32 0, i32 3>
  %i.cj = shufflevector <2 x float> %i.cg, <2 x float> %i.cf, <2 x i32> <i32 0, i32 3>
  %i.ck = fadd <2 x float> %i.ci, %i.cj           ; 3 uses
  %i.cl = shufflevector <2 x float> %i.cc, <2 x float> %i.cd, <2 x i32> <i32 0, i32 3>
  %i.cm = shufflevector <2 x float> %i.cf, <2 x float> %i.cg, <2 x i32> <i32 0, i32 3>
  %i.cn = fadd <2 x float> %i.cl, %i.cm           ; 3 uses
  %i.co = fadd <2 x float> %i.ce, %i.ch           ; 3 uses
  %i.cp = extractelement <2 x float> %i.cn, i64 1 ; 2 uses
  %i.cq = fmul float %i.cp, %i.as
  %i.cr = extractelement <2 x float> %i.co, i64 1 ; 2 uses
  %i.cs = fmul float %i.ar, %i.cr
  %i.ct = fsub float %i.cq, %i.cs
  %i.cu = extractelement <2 x float> %i.co, i64 0 ; 2 uses
  %i.cv = fmul float %i.ar, %i.cu
  %i.cw = extractelement <2 x float> %i.ck, i64 0 ; 2 uses
  %i.cx = fmul float %i.cw, %i.as
  %i.cy = fsub float %i.cv, %i.cx
  %i.cz = fmul float %i.cw, %i.cr
  %i.da = fmul float %i.cp, %i.cu
  %i.db = fsub float %i.cz, %i.da
  %i.dc = extractelement <2 x float> %i.cn, i64 0
  %i.dd = fmul float %i.dc, %i.ct
  %i.de = extractelement <2 x float> %i.ck, i64 1
  %i.df = fmul float %i.de, %i.cy
  %i.dg = fadd float %i.dd, %i.df
  %i.dh = fmul float %i.aq, %i.db
  %i.di = fadd float %i.dh, %i.dg
  %i.dj = fcmp olt float %i.di, f0x057A0000
  %i.dk = zext i1 %i.dj to i8
  store i8 %i.dk, ptr %i.at, align 4, !tbaa !108
  %i.dl = load <2 x float>, ptr %i.be, align 4    ; 5 uses
  %i.dm = load <2 x float>, ptr %i.bh, align 4    ; 5 uses
  %i.dn = shufflevector <2 x float> %i.dl, <2 x float> %i.dm, <2 x i32> <i32 1, i32 2>
  %i.do = shufflevector <2 x float> %i.bk, <2 x float> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.dp = fmul <2 x float> %i.dn, %i.do
  %i.dq = shufflevector <2 x float> %i.dm, <2 x float> %i.dl, <2 x i32> <i32 0, i32 2>
  %i.dr = shufflevector <2 x float> %i.bi, <2 x float> %i.bk, <2 x i32> <i32 1, i32 2>
  %i.ds = fmul <2 x float> %i.dq, %i.dr
  %i.dt = fsub <2 x float> %i.dp, %i.ds
  %i.du = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dv = fmul <2 x float> %i.du, %i.bi
  %i.dw = fadd <2 x float> %i.dv, %i.dt
  %i.dx = fmul <2 x float> %i.dl, %i.bl
  %i.dy = fadd <2 x float> %i.dx, %i.dw           ; 15 uses
  store <2 x float> %i.dy, ptr %i.bd, align 4
  %i.dz = extractelement <2 x float> %i.dy, i64 1 ; 5 uses
  %i.ea = extractelement <2 x float> %i.dy, i64 0 ; 6 uses
  %i.eb = fmul float %i.ea, 0.000000e+00
  %i.ec = fmul float %i.dz, 0.000000e+00
end_hunk_0
