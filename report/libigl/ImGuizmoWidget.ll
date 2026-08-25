Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmoWidget?download=true
inline.NumInlined: 745
inline.NumDeleted: 403
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3igl6opengl4glfw5imgui14ImGuizmoWidget4drawEv:bb.a
  %i.n = fdiv <4 x float> %i.l, %i.m
  store <4 x float> %i.n, ptr %2, align 16, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.q = load <4 x float>, ptr %i.p, align 16, !tbaa !40
  %i.r = fdiv <4 x float> %i.q, %i.m
  store <4 x float> %i.r, ptr %i.o, align 16, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.u = load <4 x float>, ptr %i.t, align 16, !tbaa !40
  %i.v = fdiv <4 x float> %i.u, %i.m
  store <4 x float> %i.v, ptr %i.s, align 16, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.y = load <4 x float>, ptr %i.x, align 16, !tbaa !40
  %i.z = fdiv <4 x float> %i.y, %i.m              ; 2 uses
  store <4 x float> %i.z, ptr %i.w, align 16, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0222)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.ab = tail call noundef nonnull align 16 dereferenceable(544) ptr @_ZN3igl6opengl4glfw6Viewer4coreEj(ptr noundef nonnull align 16 dereferenceable(616) %i.aa, i32 noundef 0)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.ac, i64 64, i1 false), !tbaa.struct !41
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.ae = tail call noundef nonnull align 16 dereferenceable(544) ptr @_ZN3igl6opengl4glfw6Viewer4coreEj(ptr noundef nonnull align 16 dereferenceable(616) %i.ad, i32 noundef 0)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !42, !range !29, !noundef !30
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ai = extractelement <4 x float> %i.z, i64 2
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ak = fadd float %i.ai, -1.000000e+03
  store float %i.ak, ptr %i.aj, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.am = tail call noundef nonnull align 16 dereferenceable(544) ptr @_ZN3igl6opengl4glfw6Viewer4coreEj(ptr noundef nonnull align 16 dereferenceable(616) %i.al, i32 noundef 0)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load float, ptr %i.an, align 16, !tbaa !55 ; 3 uses
  %.sroa.0233.12.vec.insert = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ao, i64 0 ; 6 uses
  %.sroa.8236.28.vec.insert = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.ao, i64 1 ; 7 uses
  %.sroa.14239.44.vec.insert = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.ao, i64 2 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12, !noalias !56
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = shufflevector <4 x float> %.sroa.0233.12.vec.insert, <4 x float> %.sroa.8236.28.vec.insert, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %i.ar = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float 1.000000e+00>, <4 x float> %.sroa.14239.44.vec.insert, <4 x i32> <i32 6, i32 7, i32 2, i32 3> ; 4 uses
  %i.as = fmul <4 x float> %i.aq, <float 0.000000e+00, float poison, float poison, float 0.000000e+00> ; 5 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 0, i32 0>
  %i.au = fmul <4 x float> %i.ar, <float 0.000000e+00, float poison, float poison, float 0.000000e+00> ; 4 uses
  %i.av = shufflevector <4 x float> %.sroa.8236.28.vec.insert, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.aw = fmul <4 x float> %i.aq, %i.av           ; 2 uses
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ay = fsub <4 x float> %i.aw, %i.ax           ; 2 uses
  %i.az = fmul <4 x float> %i.ar, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bb = fsub <4 x float> %i.az, %i.ba           ; 2 uses
  %i.bc = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.bd = fmul ninf <4 x float> %i.at, %i.bc      ; 2 uses
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bf = fadd <4 x float> %i.bd, %i.be           ; 2 uses
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bh = fadd <4 x float> %i.bf, %i.bg
  %i.bi = fmul <4 x float> %i.ay, %i.bb
  %i.bj = fadd <4 x float> %i.bi, <float 0.000000e+00, float poison, float poison, float poison>
  %i.bk = fsub <4 x float> %i.bj, %i.bh
  %i.bl = fdiv <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, %i.bk
  %i.bm = bitcast <4 x float> %i.bl to <4 x i32>
  %i.bn = shufflevector <4 x i32> %i.bm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bo = fmul ninf <4 x float> %i.as, <float poison, float poison, float poison, float 0.000000e+00>
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bq = fmul ninf <4 x float> %i.as, <float 0.000000e+00, float poison, float poison, float poison>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bs = fadd ninf <4 x float> %i.bp, %i.br
  %i.bt = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bu = fmul <4 x float> %i.ar, %i.bt
  %i.bv = fsub <4 x float> %i.bu, %i.bs
  %i.bw = fmul ninf <4 x float> %i.au, <float 0.000000e+00, float poison, float poison, float poison>
  %i.bx = fadd ninf <4 x float> %i.bw, <float 0.000000e+00, float poison, float poison, float poison>
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = fmul <4 x float> %i.aq, %i.bz
  %i.cb = fsub <4 x float> %i.ca, %i.by
  %i.cc = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.cd = fmul <4 x float> %i.ar, %i.cc
  %i.ce = shufflevector <4 x float> %.sroa.14239.44.vec.insert, <4 x float> <float poison, float poison, float 0.000000e+00, float 1.000000e+00>, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.cf = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.cg = fmul <4 x float> %i.ce, %i.cf
  %i.ch = fsub <4 x float> %i.cg, %i.cd
  %i.ci = fadd <4 x float> %i.ch, zeroinitializer
  %i.cj = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.ck = fmul <4 x float> %i.aq, %i.cj
  %i.cl = shufflevector <4 x float> %.sroa.0233.12.vec.insert, <4 x float> %.sroa.8236.28.vec.insert, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.cm = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.cn = fmul <4 x float> %i.cl, %i.cm
  %i.co = fsub <4 x float> %i.cn, %i.ck
  %i.cp = fadd <4 x float> %i.co, zeroinitializer
  %i.cq = xor <4 x i32> %i.bn, <i32 0, i32 -2147483648, i32 -2147483648, i32 0>
  %i.cr = bitcast <4 x i32> %i.cq to <4 x float>  ; 4 uses
  %i.cs = fmul <4 x float> %i.cb, %i.cr           ; 4 uses
  %i.ct = fmul <4 x float> %i.ci, %i.cr           ; 2 uses
  %i.cu = fmul <4 x float> %i.cp, %i.cr           ; 4 uses
  %i.cv = fmul <4 x float> %i.bv, %i.cr           ; 2 uses
  %i.cw = shufflevector <4 x float> %i.cs, <4 x float> %i.ct, <4 x i32> <i32 3, i32 1, i32 7, i32 5> ; 5 uses
  store <4 x float> %i.cw, ptr %i.ap, align 16, !tbaa !40, !noalias !56
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cy = shufflevector <4 x float> %i.cs, <4 x float> %i.ct, <4 x i32> <i32 2, i32 0, i32 6, i32 4> ; 5 uses
  store <4 x float> %i.cy, ptr %i.cx, align 16, !tbaa !40, !noalias !56
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.da = shufflevector <4 x float> %i.cu, <4 x float> %i.cv, <4 x i32> <i32 3, i32 1, i32 7, i32 5> ; 5 uses
  store <4 x float> %i.da, ptr %i.cz, align 16, !tbaa !40, !noalias !56
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dc = shufflevector <4 x float> %i.cu, <4 x float> %i.cv, <4 x i32> <i32 2, i32 0, i32 6, i32 4> ; 5 uses
  store <4 x float> %i.dc, ptr %i.db, align 16, !tbaa !40, !noalias !56
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %2, ptr %i.dd, align 16, !tbaa !59, !noalias !56
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.ap, ptr %i.de, align 8, !tbaa !59, !noalias !56
  %i.df = load <4 x float>, ptr %2, align 16, !tbaa !40, !noalias !56 ; 4 uses
  %i.dg = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dh = fmul <4 x float> %i.df, %i.dg
  %i.di = load <4 x float>, ptr %i.o, align 16, !tbaa !40, !noalias !56 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dk = load <1 x float>, ptr %i.dj, align 4, !noalias !56
  %i.dl = shufflevector <1 x float> %i.dk, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dm = fmul <4 x float> %i.di, %i.dl
  %i.dn = fadd <4 x float> %i.dm, %i.dh
  %i.do = load <4 x float>, ptr %i.s, align 16, !tbaa !40, !noalias !56 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dq = load <1 x float>, ptr %i.dp, align 8, !noalias !56
  %i.dr = shufflevector <1 x float> %i.dq, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ds = fmul <4 x float> %i.do, %i.dr
  %i.dt = fadd <4 x float> %i.ds, %i.dn
  %i.du = load <4 x float>, ptr %i.w, align 16, !tbaa !40, !noalias !56 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dw = load <1 x float>, ptr %i.dv, align 4, !noalias !56
  %i.dx = shufflevector <1 x float> %i.dw, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dy = fmul <4 x float> %i.du, %i.dx
  %i.dz = fadd <4 x float> %i.dy, %i.dt
  %i.ea = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.eb = fmul <4 x float> %i.df, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ed = load <1 x float>, ptr %i.ec, align 4, !noalias !56
  %i.ee = shufflevector <1 x float> %i.ed, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ef = fmul <4 x float> %i.di, %i.ee
  %i.eg = fadd <4 x float> %i.ef, %i.eb
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ei = load <1 x float>, ptr %i.eh, align 8, !noalias !56
  %i.ej = shufflevector <1 x float> %i.ei, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ek = fmul <4 x float> %i.do, %i.ej
  %i.el = fadd <4 x float> %i.ek, %i.eg
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.en = load <1 x float>, ptr %i.em, align 4, !noalias !56
  %i.eo = shufflevector <1 x float> %i.en, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ep = fmul <4 x float> %i.du, %i.eo
  %i.eq = fadd <4 x float> %i.ep, %i.el
  %i.er = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.es = fmul <4 x float> %i.df, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.eu = load <1 x float>, ptr %i.et, align 4, !noalias !56
  %i.ev = shufflevector <1 x float> %i.eu, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ew = fmul <4 x float> %i.di, %i.ev
  %i.ex = fadd <4 x float> %i.es, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ez = load <1 x float>, ptr %i.ey, align 8, !noalias !56
  %i.fa = shufflevector <1 x float> %i.ez, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fb = fmul <4 x float> %i.do, %i.fa
  %i.fc = fadd <4 x float> %i.ex, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.fe = load <1 x float>, ptr %i.fd, align 4, !noalias !56
  %i.ff = shufflevector <1 x float> %i.fe, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fg = fmul <4 x float> %i.du, %i.ff
  %i.fh = fadd <4 x float> %i.fc, %i.fg
  %i.fi = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fj = fmul <4 x float> %i.df, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.fl = load <1 x float>, ptr %i.fk, align 4, !noalias !56
  %i.fm = shufflevector <1 x float> %i.fl, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fn = fmul <4 x float> %i.di, %i.fm
  %i.fo = fadd <4 x float> %i.fj, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fq = load <1 x float>, ptr %i.fp, align 8, !noalias !56
  %i.fr = shufflevector <1 x float> %i.fq, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fs = fmul <4 x float> %i.do, %i.fr
  %i.ft = fadd <4 x float> %i.fo, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.fv = load <1 x float>, ptr %i.fu, align 4, !noalias !56
  %i.fw = shufflevector <1 x float> %i.fv, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fx = fmul <4 x float> %i.du, %i.fw
  %i.fy = fadd <4 x float> %i.ft, %i.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12, !noalias !56
  store <4 x float> %i.dz, ptr %2, align 16, !tbaa !40
  store <4 x float> %i.eq, ptr %i.o, align 16, !tbaa !40
  store <4 x float> %i.fh, ptr %i.s, align 16, !tbaa !40
  store <4 x float> %i.fy, ptr %i.w, align 16, !tbaa !40
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %.sroa.0.0.copyload = load <4 x float>, ptr %i.fz, align 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %.sroa.4.0.copyload = load <4 x float>, ptr %.sroa.4.0..sroa_idx, align 16 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %.sroa.5.0.copyload = load <4 x float>, ptr %.sroa.5.0..sroa_idx, align 16 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %.sroa.6.0.copyload = load <4 x float>, ptr %.sroa.6.0..sroa_idx, align 16 ; 5 uses
  %i.ga = shufflevector <4 x float> %.sroa.0.0.copyload, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gb = fmul <4 x float> %.sroa.0233.12.vec.insert, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.gd = load <1 x float>, ptr %i.gc, align 4, !noalias !62
  %i.ge = shufflevector <1 x float> %i.gd, <1 x float> poison, <4 x i32> zeroinitializer
  %i.gf = fmul <4 x float> %.sroa.8236.28.vec.insert, %i.ge
  %i.gg = fadd <4 x float> %i.gb, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gi = load <1 x float>, ptr %i.gh, align 8, !noalias !62
  %i.gj = shufflevector <1 x float> %i.gi, <1 x float> poison, <4 x i32> zeroinitializer
  %i.gk = fmul <4 x float> %.sroa.14239.44.vec.insert, %i.gj
  %i.gl = fadd <4 x float> %i.gg, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.gn = load <1 x float>, ptr %i.gm, align 4, !noalias !62
  %i.go = shufflevector <1 x float> %i.gn, <1 x float> poison, <4 x i32> zeroinitializer
  %i.gp = fmul <4 x float> %i.go, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.gq = fadd <4 x float> %i.gl, %i.gp
  %i.gr = shufflevector <4 x float> %.sroa.4.0.copyload, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gs = fmul <4 x float> %.sroa.0233.12.vec.insert, %i.gr
  %4 = shufflevector <4 x float> %.sroa.4.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gt = fmul <4 x float> %.sroa.8236.28.vec.insert, %4
  %i.gu = fadd <4 x float> %i.gs, %i.gt
  %5 = shufflevector <4 x float> %.sroa.4.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gv = fmul <4 x float> %.sroa.14239.44.vec.insert, %5
  %i.gw = fadd <4 x float> %i.gv, %i.gu
  %6 = shufflevector <4 x float> %.sroa.4.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gx = fmul <4 x float> %6, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.gy = fadd <4 x float> %i.gx, %i.gw
  %i.gz = shufflevector <4 x float> %.sroa.5.0.copyload, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ha = fmul <4 x float> %.sroa.0233.12.vec.insert, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 132
  %7 = shufflevector <4 x float> %.sroa.5.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hc = fmul <4 x float> %.sroa.8236.28.vec.insert, %7
  %i.hd = fadd <4 x float> %i.ha, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 136
  %8 = shufflevector <4 x float> %.sroa.5.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hf = fmul <4 x float> %.sroa.14239.44.vec.insert, %8
  %i.hg = fadd <4 x float> %i.hd, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 140
  %9 = shufflevector <4 x float> %.sroa.5.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hi = fmul <4 x float> %9, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.hj = fadd <4 x float> %i.hg, %i.hi
  %i.hk = shufflevector <4 x float> %.sroa.6.0.copyload, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hl = fmul <4 x float> %.sroa.0233.12.vec.insert, %i.hk
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.hm = shufflevector <4 x float> %.sroa.6.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hn = fmul <4 x float> %.sroa.8236.28.vec.insert, %i.hm
  %i.ho = fadd <4 x float> %i.hl, %i.hn
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hp = shufflevector <4 x float> %.sroa.6.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hq = fmul <4 x float> %.sroa.14239.44.vec.insert, %i.hp
  %i.hr = fadd <4 x float> %i.ho, %i.hq
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.hs = shufflevector <4 x float> %.sroa.6.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ht = fmul <4 x float> %i.hs, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.hu = fadd <4 x float> %i.hr, %i.ht
  store <4 x float> %i.gq, ptr %i.fz, align 16, !tbaa !40
  store <4 x float> %i.gy, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !40
  store <4 x float> %i.hj, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !40
  store <4 x float> %i.hu, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !40
  %i.hv = call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load float, ptr %i.hw, align 8, !tbaa !65
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !73
  call void @_ZN8ImGuizmo7SetRectEffff(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %i.hx, float noundef %i.hz)
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !74
  call void @_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %i.ib, i32 noundef 0, ptr noundef nonnull %i.fz, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %13 = load float, ptr %i.fz, align 16, !tbaa !34, !noalias !75
  %14 = insertelement <4 x float> poison, float %13, i64 0
  %i.ic = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.id = fmul <4 x float> %i.ic, %i.cw
  %15 = load float, ptr %i.gc, align 4, !tbaa !34, !noalias !75
  %16 = insertelement <4 x float> poison, float %15, i64 0
  %i.ie = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %i.if = fmul <4 x float> %i.ie, %i.cy
  %i.ig = fadd <4 x float> %i.id, %i.if
  %17 = load float, ptr %i.gh, align 8, !tbaa !34, !noalias !75
  %18 = insertelement <4 x float> poison, float %17, i64 0
  %i.ih = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ii = fmul <4 x float> %i.ih, %i.da
  %i.ij = fadd <4 x float> %i.ii, %i.ig
  %19 = load float, ptr %i.gm, align 4, !tbaa !34, !noalias !75
  %20 = insertelement <4 x float> poison, float %19, i64 0
  %i.ik = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer
  %i.il = fmul <4 x float> %i.ik, %i.dc
  %i.im = fadd <4 x float> %i.il, %i.ij           ; 2 uses
  %21 = load float, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !34, !noalias !75
  %22 = insertelement <4 x float> poison, float %21, i64 0
  %i.in = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> zeroinitializer
  %i.io = fmul <4 x float> %i.in, %i.cw
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 116
  %24 = load float, ptr %23, align 4, !tbaa !34, !noalias !75
  %25 = insertelement <4 x float> poison, float %24, i64 0
  %i.ip = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = fmul <4 x float> %i.ip, %i.cy
  %i.ir = fadd <4 x float> %i.io, %i.iq
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %27 = load float, ptr %26, align 8, !tbaa !34, !noalias !75
  %28 = insertelement <4 x float> poison, float %27, i64 0
  %i.is = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = fmul <4 x float> %i.is, %i.da
  %i.iu = fadd <4 x float> %i.it, %i.ir
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 124
  %30 = load float, ptr %29, align 4, !tbaa !34, !noalias !75
  %31 = insertelement <4 x float> poison, float %30, i64 0
  %i.iv = shufflevector <4 x float> %31, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iw = fmul <4 x float> %i.iv, %i.dc
  %i.ix = fadd <4 x float> %i.iw, %i.iu           ; 2 uses
  %32 = load float, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !34, !noalias !75
  %33 = insertelement <4 x float> poison, float %32, i64 0
  %i.iy = shufflevector <4 x float> %33, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iz = fmul <4 x float> %i.iy, %i.cw
  %34 = load float, ptr %i.hb, align 4, !tbaa !34, !noalias !75
  %35 = insertelement <4 x float> poison, float %34, i64 0
  %i.ja = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jb = fmul <4 x float> %i.ja, %i.cy
  %i.jc = fadd <4 x float> %i.iz, %i.jb
  %36 = load float, ptr %i.he, align 8, !tbaa !34, !noalias !75
  %37 = insertelement <4 x float> poison, float %36, i64 0
  %i.jd = shufflevector <4 x float> %37, <4 x float> poison, <4 x i32> zeroinitializer
  %i.je = fmul <4 x float> %i.jd, %i.da
  %i.jf = fadd <4 x float> %i.je, %i.jc
  %38 = load float, ptr %i.hh, align 4, !tbaa !34, !noalias !75
  %39 = insertelement <4 x float> poison, float %38, i64 0
  %i.jg = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jh = fmul <4 x float> %i.jg, %i.dc
  %i.ji = fadd <4 x float> %i.jh, %i.jf           ; 2 uses
  %40 = load float, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !34, !noalias !75
  %41 = insertelement <4 x float> poison, float %40, i64 0
  %i.jj = shufflevector <4 x float> %41, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jk = fmul <4 x float> %i.jj, %i.cw
  %42 = load float, ptr %10, align 4, !tbaa !34, !noalias !75
  %43 = insertelement <4 x float> poison, float %42, i64 0
  %44 = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jl = fmul <4 x float> %44, %i.cy
  %i.jm = fadd <4 x float> %i.jk, %i.jl
  %45 = load float, ptr %11, align 8, !tbaa !34, !noalias !75
  %46 = insertelement <4 x float> poison, float %45, i64 0
  %47 = shufflevector <4 x float> %46, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jn = fmul <4 x float> %47, %i.da
  %i.jo = fadd <4 x float> %i.jn, %i.jm
  %48 = load float, ptr %12, align 4, !tbaa !34, !noalias !75
  %49 = insertelement <4 x float> poison, float %48, i64 0
  %50 = shufflevector <4 x float> %49, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jp = fmul <4 x float> %i.dc, %50
  %i.jq = fadd <4 x float> %i.jp, %i.jo           ; 2 uses
  store <4 x float> %i.im, ptr %i.fz, align 16, !tbaa !40
  store <4 x float> %i.ix, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !40
  store <4 x float> %i.ji, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !40
  store <4 x float> %i.jq, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !40
  %i.jr = fsub <4 x float> %i.im, %.sroa.0.0.copyload
  %i.js = call noundef <4 x float> @llvm.fabs.v4f32(<4 x float> %i.jr)
  %i.jt = fsub <4 x float> %i.ix, %.sroa.4.0.copyload
  %i.ju = call noundef <4 x float> @llvm.fabs.v4f32(<4 x float> %i.jt)
  %i.jv = call noundef <4 x float> asm "maxps $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<4 x float> %i.js, <4 x float> %i.ju) #13, !srcloc !78
  %i.jw = fsub <4 x float> %i.ji, %.sroa.5.0.copyload
  %i.jx = call noundef <4 x float> @llvm.fabs.v4f32(<4 x float> %i.jw)
  %i.jy = fsub <4 x float> %i.jq, %.sroa.6.0.copyload
  %i.jz = call noundef <4 x float> @llvm.fabs.v4f32(<4 x float> %i.jy)
  %i.ka = call noundef <4 x float> asm "maxps $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<4 x float> %i.jx, <4 x float> %i.jz) #13, !srcloc !78
  %i.kb = call noundef <4 x float> asm "maxps $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<4 x float> %i.jv, <4 x float> %i.ka) #13, !srcloc !78 ; 2 uses
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.kd = shufflevector <4 x float> %i.kb, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ke = fcmp olt <2 x float> %i.kc, %i.kd
  %i.kf = select <2 x i1> %i.ke, <2 x float> %i.kd, <2 x float> %i.kc ; 2 uses
  %i.kg = extractelement <2 x float> %i.kf, i64 0 ; 2 uses
  %i.kh = extractelement <2 x float> %i.kf, i64 1 ; 2 uses
  %i.ki = fcmp olt float %i.kg, %i.kh
  %i.kj = select i1 %i.ki, float %i.kh, float %i.kg
  %i.kk = fpext float %i.kj to double
  %i.kl = fcmp ogt double %i.kk, f0x3E7AD7F29ABCAF48
  br i1 %i.kl, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !79
  %.not.i.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i, label %bb.f, label %_ZNKSt8functionIFvRKN5Eigen6MatrixIfLi4ELi4ELi0ELi4ELi4EEEEEclES4_.exit

bb.f:                                             ; preds = %bb.e
  call void @_ZSt25__throw_bad_function_callv() #14
  unreachable

_ZNKSt8functionIFvRKN5Eigen6MatrixIfLi4ELi4ELi0ELi4ELi4EEEEEclES4_.exit: ; preds = %bb.e
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.kq = load ptr, ptr %i.kp, align 16, !tbaa !80
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(32) %i.ko, ptr noundef nonnull align 16 dereferenceable(64) %i.fz), !inline_history !81
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt8functionIFvRKN5Eigen6MatrixIfLi4ELi4ELi0ELi4ELi4EEEEEclES4_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

declare void @_ZN5ImGui12PushStyleVarEif(i32 noundef, float noundef) local_unnamed_addr #3

declare void @_ZN8ImGuizmo10BeginFrameEv() local_unnamed_addr #3

declare void @_ZN5ImGui11PopStyleVarEi(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare noundef nonnull align 16 dereferenceable(544) ptr @_ZN3igl6opengl4glfw6Viewer4coreEj(ptr noundef nonnull align 16 dereferenceable(616), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() local_unnamed_addr #3

declare void @_ZN8ImGuizmo7SetRectEffff(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl6opengl4glfw5imgui14ImGuizmoWidgetD2Ev(ptr noundef nonnull align 16 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3igl6opengl4glfw5imgui14ImGuizmoWidgetE, i64 16), ptr %0, align 16, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #15
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3igl6opengl4glfw5imgui11ImGuiWidgetE, i64 16), ptr %0, align 16, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN3igl6opengl4glfw5imgui11ImGuiWidgetD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #16, !inline_history !85
  br label %_ZN3igl6opengl4glfw5imgui11ImGuiWidgetD2Ev.exit

_ZN3igl6opengl4glfw5imgui11ImGuiWidgetD2Ev.exit:  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl6opengl4glfw5imgui14ImGuizmoWidgetD0Ev(ptr noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3igl6opengl4glfw5imgui14ImGuizmoWidgetE, i64 16), ptr %0, align 16, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.c, !inline_history !86 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #15, !inline_history !86
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3igl6opengl4glfw5imgui11ImGuiWidgetE, i64 16), ptr %0, align 16, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN3igl6opengl4glfw5imgui14ImGuizmoWidgetD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #16, !inline_history !87
  br label %_ZN3igl6opengl4glfw5imgui14ImGuizmoWidgetD2Ev.exit

_ZN3igl6opengl4glfw5imgui14ImGuizmoWidgetD2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl6opengl4glfw5imgui11ImGuiWidget8shutdownEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw5imgui11ImGuiWidget10mouse_downEii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw5imgui11ImGuiWidget8mouse_upEii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw5imgui11ImGuiWidget10mouse_moveEii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw5imgui11ImGuiWidget11key_pressedEji(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw5imgui11ImGuiWidget8key_downEii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw5imgui11ImGuiWidget6key_upEii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
end_hunk_0
