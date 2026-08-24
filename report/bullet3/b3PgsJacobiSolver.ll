Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3PgsJacobiSolver?download=true
inline.NumInlined: 892
inline.NumDeleted: 188
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN17b3PgsJacobiSolver28setFrictionConstraintImpulseEP15b3RigidBodyDataP13b3InertiaDataR18b3SolverConstraintiiR14b3ContactPointRK19b3ContactSolverInfo:bb.a
  %i.co = load <2 x float>, ptr %i.bz, align 16, !tbaa !17
  %i.cp = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.cq, %i.co
  %i.cs = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cu = fmul <2 x float> %i.cr, %i.ct
  %i.cv = load <2 x float>, ptr %i.cj, align 16, !tbaa !17
  %i.cw = fmul <2 x float> %i.cu, %i.cv
  %i.cx = load <2 x float>, ptr %i.cn, align 16, !tbaa !17
  %i.cy = fadd <2 x float> %i.cw, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.da = load float, ptr %i.cz, align 8, !tbaa !17
  %i.db = fadd float %i.cm, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.de = load float, ptr %i.dd, align 8, !tbaa !17
  %i.df = fmul float %i.de, %i.ch
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.dh = load <2 x float>, ptr %i.cd, align 16, !tbaa !17
  store <2 x float> %i.cy, ptr %i.cn, align 16, !tbaa !17
  store float %i.db, ptr %i.cz, align 8, !tbaa !17
  %i.di = load <2 x float>, ptr %i.dc, align 16, !tbaa !17
  %i.dj = fmul <2 x float> %i.di, %i.ct
  %i.dk = load <2 x float>, ptr %i.dg, align 16, !tbaa !17
  %i.dl = fmul <2 x float> %i.dh, %i.dj
  %i.dm = fsub <2 x float> %i.dk, %i.dl
  store <2 x float> %i.dm, ptr %i.dg, align 16, !tbaa !17
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.do = load float, ptr %i.dn, align 8, !tbaa !17
  %i.dp = fmul float %i.cf, %i.df
  %i.dq = fsub float %i.do, %i.dp
  store float %i.dq, ptr %i.dn, align 8, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  store float 0.000000e+00, ptr %i.dr, align 4, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.ds = load i32, ptr %i.m, align 4, !tbaa !71  ; 2 uses
  %i.dt = and i32 %i.ds, 16
  %.not47 = icmp eq i32 %i.dt, 0
  br i1 %.not47, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.du = load i32, ptr %i.g, align 4, !tbaa !98
  %i.dv = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.dw = sext i32 %i.du to i64
  %i.dx = getelementptr [160 x i8], ptr %i.dv, i64 %i.dw ; 10 uses
  %i.dy = and i32 %i.ds, 4
  %.not48 = icmp eq i32 %i.dy, 0
  br i1 %.not48, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !106
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !103
  %i.ed = fmul float %i.ea, %i.ec                 ; 4 uses
  %i.ee = getelementptr i8, ptr %i.dx, i64 244    ; 2 uses
  store float %i.ed, ptr %i.ee, align 4, !tbaa !74
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.eg = load i32, ptr %i.ef, align 16, !tbaa !17
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [80 x i8], ptr %1, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 68
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !85 ; 3 uses
  %i.el = fcmp une float %i.ek, 0.000000e+00
  br i1 %i.el, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.em = getelementptr i8, ptr %i.dx, i64 176
  %i.en = getelementptr i8, ptr %i.dx, i64 184
  %i.eo = load float, ptr %i.en, align 8, !tbaa !17
  %i.ep = fmul float %i.ek, %i.eo
  %i.eq = getelementptr i8, ptr %i.dx, i64 208
  %i.er = fmul float %i.ed, %i.ep
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.eu = load float, ptr %i.et, align 8, !tbaa !17
  %i.ev = fmul float %i.er, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.ex = load <2 x float>, ptr %i.em, align 16, !tbaa !17
  %i.ey = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x float> %i.ez, %i.ex
  %i.fb = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fd = fmul <2 x float> %i.fc, %i.fa
  %i.fe = load <2 x float>, ptr %i.es, align 16, !tbaa !17
  %i.ff = fmul <2 x float> %i.fd, %i.fe
  %i.fg = load <2 x float>, ptr %i.ew, align 16, !tbaa !17
  %i.fh = fadd <2 x float> %i.ff, %i.fg
  store <2 x float> %i.fh, ptr %i.ew, align 16, !tbaa !17
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !17
  %i.fk = fadd float %i.ev, %i.fj
  store float %i.fk, ptr %i.fi, align 8, !tbaa !17
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !17
  %i.fo = fmul float %i.ed, %i.fn
  %i.fp = getelementptr i8, ptr %i.dx, i64 216
  %i.fq = load float, ptr %i.fp, align 8, !tbaa !17
  %i.fr = fmul float %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.ft = load <2 x float>, ptr %i.fl, align 16, !tbaa !17
  %i.fu = fmul <2 x float> %i.fc, %i.ft
  %i.fv = load <2 x float>, ptr %i.eq, align 16, !tbaa !17
  %i.fw = fmul <2 x float> %i.fu, %i.fv
  %i.fx = load <2 x float>, ptr %i.fs, align 16, !tbaa !17
  %i.fy = fadd <2 x float> %i.fw, %i.fx
  store <2 x float> %i.fy, ptr %i.fs, align 16, !tbaa !17
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !17
  %i.gb = fadd float %i.fr, %i.ga
  store float %i.gb, ptr %i.fz, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.gd = load i32, ptr %i.gc, align 16, !tbaa !17
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [80 x i8], ptr %1, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 68
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !85 ; 3 uses
  %i.gi = fcmp une float %i.gh, 0.000000e+00
  br i1 %i.gi, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.gj = getelementptr i8, ptr %i.dx, i64 176
  %i.gk = getelementptr i8, ptr %i.dx, i64 184
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !17
  %i.gm = fmul float %i.gh, %i.gl
  %i.gn = getelementptr i8, ptr %i.dx, i64 224
  %i.go = getelementptr i8, ptr %i.dx, i64 232
  %i.gp = load float, ptr %i.go, align 8, !tbaa !17
  %i.gq = load float, ptr %i.ee, align 4, !tbaa !74
  %i.gr = fneg float %i.gq                        ; 3 uses
  %i.gs = fmul float %i.gm, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.gu = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !17
  %i.gw = fmul float %i.gs, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.gy = load <2 x float>, ptr %i.gj, align 16, !tbaa !17
  %i.gz = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x float> %i.ha, %i.gy
  %i.hc = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.he = fmul <2 x float> %i.hb, %i.hd
  %i.hf = load <2 x float>, ptr %i.gt, align 16, !tbaa !17
  %i.hg = fmul <2 x float> %i.he, %i.hf
  %i.hh = load <2 x float>, ptr %i.gx, align 16, !tbaa !17
  %i.hi = fadd <2 x float> %i.hg, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.hk = load float, ptr %i.hj, align 8, !tbaa !17
  %i.hl = fadd float %i.gw, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.ho = load float, ptr %i.hn, align 8, !tbaa !17
  %i.hp = fmul float %i.ho, %i.gr
  %i.hq = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.hr = load <2 x float>, ptr %i.gn, align 16, !tbaa !17
  store <2 x float> %i.hi, ptr %i.gx, align 16, !tbaa !17
  store float %i.hl, ptr %i.hj, align 8, !tbaa !17
  %i.hs = load <2 x float>, ptr %i.hm, align 16, !tbaa !17
  %i.ht = fmul <2 x float> %i.hs, %i.hd
  %i.hu = load <2 x float>, ptr %i.hq, align 16, !tbaa !17
  %i.hv = fmul <2 x float> %i.hr, %i.ht
  %i.hw = fsub <2 x float> %i.hu, %i.hv
  store <2 x float> %i.hw, ptr %i.hq, align 16, !tbaa !17
  %i.hx = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.hy = load float, ptr %i.hx, align 8, !tbaa !17
  %i.hz = fmul float %i.gp, %i.hp
  %i.ia = fsub float %i.hy, %i.hz
  store float %i.ia, ptr %i.hx, align 8, !tbaa !17
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.ib = getelementptr i8, ptr %i.dx, i64 244
  store float 0.000000e+00, ptr %i.ib, align 4, !tbaa !74
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17b3PgsJacobiSolver14convertContactEP15b3RigidBodyDataP13b3InertiaDataP10b3Contact4RK19b3ContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(84) %4) local_unnamed_addr #13 align 2 {
bb.a:
  %5 = alloca %struct.b3ContactPoint, align 16    ; 32 uses
  %6 = alloca %class.b3Vector3, align 16          ; 9 uses
  %7 = alloca %class.b3Vector3, align 16          ; 9 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %8 = alloca %class.b3Vector3, align 16          ; 5 uses
  %9 = alloca %class.b3Vector3, align 16          ; 6 uses
  %10 = alloca %class.b3Vector3, align 16         ; 7 uses
  %11 = alloca %class.b3Vector3, align 16         ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !107
  %i.e = tail call noundef i32 @llvm.abs.i32(i32 %i.d, i1 true)
  %i.f = tail call noundef i32 @_ZN17b3PgsJacobiSolver19getOrInitSolverBodyEiP15b3RigidBodyDataP13b3InertiaData(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %i.e, ptr noundef %1, ptr poison) ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.h = load i32, ptr %i.g, align 4, !tbaa !109
  %i.i = tail call noundef i32 @llvm.abs.i32(i32 %i.h, i1 true)
  %i.j = tail call noundef i32 @_ZN17b3PgsJacobiSolver19getOrInitSolverBodyEiP15b3RigidBodyDataP13b3InertiaData(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %i.i, ptr noundef %1, ptr poison) ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %i.m = sext i32 %i.f to i64
  %i.n = getelementptr inbounds [240 x i8], ptr %i.l, i64 %i.m ; 8 uses
  %i.o = sext i32 %i.j to i64
  %i.p = getelementptr inbounds [240 x i8], ptr %i.l, i64 %i.o ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.r = load float, ptr %i.q, align 16, !tbaa !17
  %i.s = fcmp oeq float %i.r, 0.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 132
  %i.u = load float, ptr %i.t, align 4
  %i.v = fcmp oeq float %i.u, 0.000000e+00
  %or.cond.i = select i1 %i.s, i1 %i.v, i1 false
  br i1 %or.cond.i, label %_ZNK9b3Vector36isZeroEv.exit, label %_ZNK9b3Vector36isZeroEv.exit.thread

_ZNK9b3Vector36isZeroEv.exit:                     ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.x = load float, ptr %i.w, align 8, !tbaa !17
  %i.y = fcmp oeq float %i.x, 0.000000e+00
  br i1 %i.y, label %bb.b, label %_ZNK9b3Vector36isZeroEv.exit.thread

bb.b:                                             ; preds = %_ZNK9b3Vector36isZeroEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.aa = load float, ptr %i.z, align 16, !tbaa !17
  %i.ab = fcmp oeq float %i.aa, 0.000000e+00
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = fcmp oeq float %i.ad, 0.000000e+00
  %or.cond.i134 = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %or.cond.i134, label %_ZNK9b3Vector36isZeroEv.exit135, label %_ZNK9b3Vector36isZeroEv.exit.thread

_ZNK9b3Vector36isZeroEv.exit135:                  ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.ag = load float, ptr %i.af, align 8, !tbaa !17
  %i.ah = fcmp oeq float %i.ag, 0.000000e+00
  br i1 %i.ah, label %.loopexit, label %_ZNK9b3Vector36isZeroEv.exit.thread

_ZNK9b3Vector36isZeroEv.exit.thread:              ; preds = %bb.b, %bb.a, %_ZNK9b3Vector36isZeroEv.exit135, %_ZNK9b3Vector36isZeroEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !17
  %i.ak = fptosi float %i.aj to i32               ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK9b3Vector36isZeroEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 124
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 7 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 68 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 108
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 116
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 120
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.aj
  %.0172 = phi i32 [ 0, %.lr.ph ], [ %i.jt, %bb.aj ] ; 2 uses
  %.0127171 = phi i32 [ 1, %.lr.ph ], [ %.2, %bb.aj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_Z15getContactPointP10b3Contact4iR14b3ContactPoint(ptr noundef nonnull %3, i32 noundef %.0172, ptr noundef nonnull align 16 dereferenceable(128) %5)
  %i.by = load float, ptr %i.am, align 4, !tbaa !18
  %i.bz = fcmp ugt float %i.by, 2.000000e-02
  br i1 %i.bz, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ca = load i32, ptr %i.an, align 4, !tbaa !35 ; 17 uses
  %i.cb = load i32, ptr %i.ao, align 8, !tbaa !36
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.e, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %i.ca, 0
  %i.cd = shl nsw i32 %i.ca, 1
  %i.ce = select i1 %.not.i.i, i32 1, i32 %i.cd   ; 6 uses
  %i.cf = icmp slt i32 %i.ca, %i.ce
  br i1 %i.cf, label %bb.f, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.f
  %i.cg = sext i32 %i.ce to i64
  %i.ch = mul nsw i64 %i.cg, 160
  %i.ci = call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.ch, i32 noundef 16) ; 7 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i
  %i.ck = load i32, ptr %i.an, align 4, !tbaa !35 ; 4 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ck to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.cm = icmp eq i32 %i.ck, 1
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.cn = getelementptr inbounds nuw [160 x i8], ptr %i.ci, i64 %indvars.iv.i.i.i
  %i.co = load ptr, ptr %i.ap, align 8, !tbaa !34
  %i.cp = getelementptr inbounds nuw [160 x i8], ptr %i.co, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.cn, ptr noundef nonnull align 16 dereferenceable(160) %i.cp, i64 160, i1 false), !tbaa.struct !95
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [160 x i8], ptr %i.ci, i64 %indvars.iv.next.i.i.i
  %i.cr = load ptr, ptr %i.ap, align 8, !tbaa !34
  %i.cs = getelementptr inbounds nuw [160 x i8], ptr %i.cr, i64 %indvars.iv.next.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.cq, ptr noundef nonnull align 16 dereferenceable(160) %i.cs, i64 160, i1 false), !tbaa.struct !95
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !96

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i, %bb.f
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 301)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.8)
  store i32 0, ptr %i.an, align 4, !tbaa !35
  br label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod197 = trunc i32 %i.ck to i1
  call void @llvm.assume(i1 %lcmp.mod197)
  %i.ct = getelementptr inbounds nuw [160 x i8], ptr %i.ci, i64 %indvars.iv.i.i.i.epil.init
  %i.cu = load ptr, ptr %i.ap, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw [160 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.ct, ptr noundef nonnull align 16 dereferenceable(160) %i.cv, i64 160, i1 false), !tbaa.struct !95
  br label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.ci, %.split.i.i ], [ %i.ci, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.ci, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.ce, %.split.i.i ], [ %i.ce, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.ce, %.epil.preheader ]
  %i.cw = load ptr, ptr %i.ap, align 8, !tbaa !34 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i
  %i.cx = load i8, ptr %i.aq, align 8, !tbaa !30, !range !63, !noundef !93
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.i, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.cw)
  br label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.i, %bb.h, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.aq, align 8, !tbaa !30
  store ptr %.0.i12.i.i, ptr %i.ap, align 8, !tbaa !34
  store i32 %.0.i.i, ptr %i.ao, align 8, !tbaa !36
  %.pre.i = load i32, ptr %i.an, align 4, !tbaa !35
  br label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit: ; preds = %bb.d, %bb.e, %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i
  %i.cz = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i ], [ %i.ca, %bb.e ], [ %i.ca, %bb.d ]
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.an, align 4, !tbaa !35
  %i.db = load ptr, ptr %i.ap, align 8, !tbaa !34
  %i.dc = sext i32 %i.ca to i64
  %i.dd = getelementptr inbounds [160 x i8], ptr %i.db, i64 %i.dc ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  store i32 %i.f, ptr %i.de, align 16, !tbaa !89
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 148
  store i32 %i.j, ptr %i.df, align 4, !tbaa !90
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 128
  store ptr %5, ptr %i.dg, align 16, !tbaa !17
  call void @_ZN17b3PgsJacobiSolver22setupContactConstraintEP15b3RigidBodyDataP13b3InertiaDataR18b3SolverConstraintiiR14b3ContactPointRK19b3ContactSolverInfoR9b3Vector3RfSD_SC_SC_(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(160) %i.dd, i32 noundef %i.f, i32 noundef %i.j, ptr noundef nonnull align 16 dereferenceable(128) %5, ptr noundef nonnull align 4 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7)
  %i.dh = load i32, ptr %i.ar, align 4, !tbaa !35
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 140
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !98
  %i.dj = load ptr, ptr %i.as, align 16, !tbaa !17
  %.not.i = icmp eq ptr %i.dj, null
  br i1 %.not.i, label %_ZNK12b3SolverBody18getAngularVelocityER9b3Vector3.exit, label %bb.j

bb.j:                                             ; preds = %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit
  %i.dk = load <2 x float>, ptr %i.at, align 16, !tbaa !17
  %i.dl = load <2 x float>, ptr %i.au, align 16, !tbaa !17
  %i.dm = fadd <2 x float> %i.dk, %i.dl
  %i.dn = load float, ptr %i.av, align 8, !tbaa !17
  %i.do = load float, ptr %i.aw, align 8, !tbaa !17
  %i.dp = fadd float %i.dn, %i.do
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dp, i64 0
  br label %_ZNK12b3SolverBody18getAngularVelocityER9b3Vector3.exit

_ZNK12b3SolverBody18getAngularVelocityER9b3Vector3.exit: ; preds = %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit, %bb.j
  %.sroa.0169.0 = phi <2 x float> [ %i.dm, %bb.j ], [ zeroinitializer, %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit ] ; 2 uses
  %.sroa.6170.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i, %bb.j ], [ zeroinitializer, %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit ]
  %i.dq = load ptr, ptr %i.ax, align 16, !tbaa !17
  %.not.i136 = icmp eq ptr %i.dq, null
  br i1 %.not.i136, label %_ZNK12b3SolverBody18getAngularVelocityER9b3Vector3.exit141, label %bb.k

bb.k:                                             ; preds = %_ZNK12b3SolverBody18getAngularVelocityER9b3Vector3.exit
  %i.dr = load <2 x float>, ptr %i.ay, align 16, !tbaa !17
  %i.ds = load <2 x float>, ptr %i.az, align 16, !tbaa !17
  %i.dt = fadd <2 x float> %i.dr, %i.ds
  %i.du = load float, ptr %i.ba, align 8, !tbaa !17
  %i.dv = load float, ptr %i.bb, align 8, !tbaa !17
  %i.dw = fadd float %i.du, %i.dv
  %.sroa.3.12.vec.insert.i.i.i139 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dw, i64 0
  br label %_ZNK12b3SolverBody18getAngularVelocityER9b3Vector3.exit141

_ZNK12b3SolverBody18getAngularVelocityER9b3Vector3.exit141: ; preds = %_ZNK12b3SolverBody18getAngularVelocityER9b3Vector3.exit, %bb.k
  %.sroa.0168.0 = phi <2 x float> [ %i.dt, %bb.k ], [ zeroinitializer, %_ZNK12b3SolverBody18getAngularVelocityER9b3Vector3.exit ] ; 2 uses
  %.sroa.6.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i139, %bb.k ], [ zeroinitializer, %_ZNK12b3SolverBody18getAngularVelocityER9b3Vector3.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %foldExtExtBinop = fsub <2 x float> %.sroa.0168.0, %.sroa.0169.0
  %13 = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop186.a = fsub <2 x float> %.sroa.0168.0, %.sroa.0169.0
  %14 = extractelement <2 x float> %foldExtExtBinop186.a, i64 1 ; 3 uses
  %foldExtExtBinop188.a = fsub <2 x float> %.sroa.6.0, %.sroa.6170.0 ; 2 uses
  %i.dx = extractelement <2 x float> %foldExtExtBinop188.a, i64 0 ; 3 uses
  %.sroa.3.12.vec.insert.i.i196 = insertelement <2 x float> %foldExtExtBinop188.a, float 0.000000e+00, i64 1
  store <2 x float> %.sroa.3.12.vec.insert.i.i196, ptr %12, align 8
  %i.dy = load float, ptr %i.bc, align 8, !tbaa !99
  %i.dz = fcmp ogt float %i.dy, 0.000000e+00
  %i.ea = icmp sgt i32 %.0127171, 0
  %or.cond = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond, label %bb.l, label %bb.v

bb.l:                                             ; preds = %_ZNK12b3SolverBody18getAngularVelocityER9b3Vector3.exit141
  %15 = fmul float %14, %14
  %i.eb = call float @llvm.fmuladd.f32(float %13, float %13, float %15)
  %i.ec = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.eb)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.ec) ; 2 uses
  %i.ed = load float, ptr %i.be, align 4, !tbaa !110
  %i.ee = fcmp ogt float %sqrt.i, %i.ed
  br i1 %i.ee, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ef = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %16 = fmul float %13, %i.ef                     ; 3 uses
  store float %16, ptr %9, align 16, !tbaa !17
  %i.eg = fmul float %14, %i.ef                   ; 3 uses
  store float %i.eg, ptr %i.bd, align 4, !tbaa !17
  %17 = fmul float %i.dx, %i.ef                   ; 3 uses
  store float %17, ptr %12, align 8, !tbaa !17
  %18 = fmul float %i.eg, %i.eg
  %i.eh = call float @llvm.fmuladd.f32(float %16, float %16, float %18)
  %i.ei = call noundef float @llvm.fmuladd.f32(float %17, float %17, float %i.eh)
  %sqrt.i142 = call noundef float @llvm.sqrt.f32(float %i.ei)
  %i.ej = fpext float %sqrt.i142 to double
  %i.ek = fcmp ogt double %i.ej, 1.000000e-03
  br i1 %i.ek, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.el = call noundef nonnull align 16 dereferenceable(160) ptr @_ZN17b3PgsJacobiSolver28addRollingFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataRK9b3Vector3iiiR14b3ContactPointS6_S6_S1_S1_fff(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %9, i32 noundef %i.f, i32 noundef %i.j, i32 noundef %i.ca, ptr noundef nonnull align 16 dereferenceable(128) %5, ptr nonnull align 16 poison, ptr nonnull align 16 poison, ptr poison, ptr poison, float poison, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 0 uses
  br label %bb.v

bb.o:                                             ; preds = %bb.l
  %i.em = call noundef nonnull align 16 dereferenceable(160) ptr @_ZN17b3PgsJacobiSolver28addRollingFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataRK9b3Vector3iiiR14b3ContactPointS6_S6_S1_S1_fff(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %i.bf, i32 noundef %i.f, i32 noundef %i.j, i32 noundef %i.ca, ptr noundef nonnull align 16 dereferenceable(128) %5, ptr nonnull align 16 poison, ptr nonnull align 16 poison, ptr poison, ptr poison, float poison, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.en = load float, ptr %i.bg, align 8, !tbaa !14 ; 6 uses
  %i.eo = call noundef float @llvm.fabs.f32(float %i.en)
  %i.ep = fcmp ogt float %i.eo, f0x3F3504F3
  br i1 %i.ep, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eq = load float, ptr %i.bi, align 4, !tbaa !14 ; 3 uses
  %i.er = fmul nnan float %i.en, %i.en
  %i.es = call float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.er) ; 2 uses
  %sqrt.i143 = call float @llvm.sqrt.f32(float %i.es)
  %i.et = fdiv float 1.000000e+00, %sqrt.i143     ; 3 uses
  store float 0.000000e+00, ptr %10, align 16, !tbaa !14
  %i.eu = fneg float %i.en
  %i.ev = fmul float %i.et, %i.eu                 ; 3 uses
  store float %i.ev, ptr %i.bj, align 4, !tbaa !14
  %i.ew = fmul float %i.eq, %i.et                 ; 3 uses
  store float %i.ew, ptr %i.bh, align 8, !tbaa !14
  %i.ex = fmul float %i.es, %i.et                 ; 2 uses
  store float %i.ex, ptr %11, align 16, !tbaa !14
  %i.ey = load float, ptr %i.bf, align 16, !tbaa !14 ; 2 uses
  %i.ez = fneg float %i.ey
  %i.fa = fmul float %i.ew, %i.ez                 ; 2 uses
  store float %i.fa, ptr %i.bk, align 4, !tbaa !14
  %i.fb = fmul float %i.ev, %i.ey
  br label %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit

bb.q:                                             ; preds = %bb.o
  %i.fc = load float, ptr %i.bf, align 16, !tbaa !14 ; 3 uses
  %i.fd = load float, ptr %i.bi, align 4, !tbaa !14 ; 3 uses
  %i.fe = fmul float %i.fd, %i.fd
  %i.ff = call float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.fe) ; 2 uses
  %sqrt43.i = call float @llvm.sqrt.f32(float %i.ff)
  %i.fg = fdiv float 1.000000e+00, %sqrt43.i      ; 3 uses
  %i.fh = fneg float %i.fd
  %i.fi = fmul float %i.fg, %i.fh                 ; 3 uses
  store float %i.fi, ptr %10, align 16, !tbaa !14
  %i.fj = fmul float %i.fc, %i.fg                 ; 3 uses
  store float %i.fj, ptr %i.bj, align 4, !tbaa !14
  store float 0.000000e+00, ptr %i.bh, align 8, !tbaa !14
  %i.fk = fneg float %i.en
  %i.fl = fmul float %i.fj, %i.fk                 ; 2 uses
  store float %i.fl, ptr %11, align 16, !tbaa !14
  %i.fm = fmul float %i.en, %i.fi                 ; 2 uses
  store float %i.fm, ptr %i.bk, align 4, !tbaa !14
  %i.fn = fmul float %i.ff, %i.fg
  br label %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit

_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit:   ; preds = %bb.p, %bb.q
  %i.fo = phi float [ %i.ew, %bb.p ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %i.fp = phi float [ %i.ev, %bb.p ], [ %i.fj, %bb.q ] ; 2 uses
  %i.fq = phi float [ 0.000000e+00, %bb.p ], [ %i.fi, %bb.q ] ; 2 uses
  %i.fr = phi float [ %i.fa, %bb.p ], [ %i.fm, %bb.q ] ; 2 uses
  %i.fs = phi float [ %i.ex, %bb.p ], [ %i.fl, %bb.q ] ; 2 uses
  %.sink.i = phi float [ %i.fb, %bb.p ], [ %i.fn, %bb.q ] ; 3 uses
  store float %.sink.i, ptr %i.bl, align 8, !tbaa !14
  %i.ft = fmul float %i.fp, %i.fp
  %i.fu = call float @llvm.fmuladd.f32(float %i.fq, float %i.fq, float %i.ft)
  %i.fv = call noundef float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %i.fu)
  %sqrt.i144 = call noundef float @llvm.sqrt.f32(float %i.fv)
  %i.fw = fpext float %sqrt.i144 to double
  %i.fx = fcmp ogt double %i.fw, 1.000000e-03
  br i1 %i.fx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit
  %i.fy = call noundef nonnull align 16 dereferenceable(160) ptr @_ZN17b3PgsJacobiSolver28addRollingFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataRK9b3Vector3iiiR14b3ContactPointS6_S6_S1_S1_fff(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %10, i32 noundef %i.f, i32 noundef %i.j, i32 noundef %i.ca, ptr noundef nonnull align 16 dereferenceable(128) %5, ptr nonnull align 16 poison, ptr nonnull align 16 poison, ptr poison, ptr poison, float poison, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit
  %i.fz = fmul float %i.fr, %i.fr
  %i.ga = call float @llvm.fmuladd.f32(float %i.fs, float %i.fs, float %i.fz)
  %i.gb = call noundef float @llvm.fmuladd.f32(float %.sink.i, float %.sink.i, float %i.ga)
  %sqrt.i145 = call noundef float @llvm.sqrt.f32(float %i.gb)
  %i.gc = fpext float %sqrt.i145 to double
  %i.gd = fcmp ogt double %i.gc, 1.000000e-03
  br i1 %i.gd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ge = call noundef nonnull align 16 dereferenceable(160) ptr @_ZN17b3PgsJacobiSolver28addRollingFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataRK9b3Vector3iiiR14b3ContactPointS6_S6_S1_S1_fff(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %11, i32 noundef %i.f, i32 noundef %i.j, i32 noundef %i.ca, ptr noundef nonnull align 16 dereferenceable(128) %5, ptr nonnull align 16 poison, ptr nonnull align 16 poison, ptr poison, ptr poison, float poison, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.n, %bb.m, %_ZNK12b3SolverBody18getAngularVelocityER9b3Vector3.exit141
  %.1 = phi i32 [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.u ], [ %.0127171, %_ZNK12b3SolverBody18getAngularVelocityER9b3Vector3.exit141 ]
  %i.gf = load i32, ptr %i.bm, align 4, !tbaa !71 ; 4 uses
  %i.gg = and i32 %i.gf, 32
  %i.gh = icmp ne i32 %i.gg, 0
  %i.gi = load i8, ptr %i.bn, align 4, !range !63
  %i.gj = trunc nuw i8 %i.gi to i1
  %or.cond4 = select i1 %i.gh, i1 %i.gj, i1 false
  br i1 %or.cond4, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gk = load float, ptr %i.bf, align 16, !tbaa !17 ; 7 uses
  %i.gl = load float, ptr %i.b, align 4, !tbaa !14
  %i.gm = load <2 x float>, ptr %i.bi, align 4, !tbaa !17 ; 9 uses
  %i.gn = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gp = fmul <2 x float> %i.go, %i.gm
  %i.gq = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gr = insertelement <2 x float> %i.gq, float %i.gk, i64 1 ; 2 uses
  %i.gs = fmul <2 x float> %i.gr, %i.go
  %i.gt = load <2 x float>, ptr %i.bo, align 4, !tbaa !17
  %i.gu = load <3 x float>, ptr %8, align 16, !tbaa !17
  %i.gv = shufflevector <3 x float> %i.gu, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.gw = fsub <2 x float> %i.gt, %i.gp           ; 6 uses
  %i.gx = fsub <2 x float> %i.gv, %i.gs           ; 3 uses
  %i.gy = shufflevector <2 x float> %i.gw, <2 x float> %i.gx, <2 x i32> <i32 3, i32 0>
  %i.gz = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.gw, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.gy, ptr %i.bp, align 16
  store <2 x float> %i.gz, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !17
  %foldExtExtBinop190 = fmul <2 x float> %i.gw, %i.gw
  %i.ha = extractelement <2 x float> %foldExtExtBinop190, i64 0
  %i.hb = extractelement <2 x float> %i.gx, i64 1 ; 2 uses
  %i.hc = call float @llvm.fmuladd.f32(float %i.hb, float %i.hb, float %i.ha)
  %i.hd = extractelement <2 x float> %i.gw, i64 1 ; 2 uses
  %i.he = call noundef float @llvm.fmuladd.f32(float %i.hd, float %i.hd, float %i.hc) ; 2 uses
  %i.hf = and i32 %i.gf, 64
  %i.hg = icmp eq i32 %i.hf, 0
  %i.hh = fcmp ogt float %i.he, f0x34000000
  %or.cond6 = and i1 %i.hg, %i.hh
  br i1 %or.cond6, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %sqrt = call float @llvm.sqrt.f32(float %i.he)
  %i.hi = fdiv float 1.000000e+00, %sqrt
  %i.hj = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hl = fmul <2 x float> %i.gx, %i.hk           ; 2 uses
  %i.hm = extractelement <2 x float> %i.hl, i64 1 ; 2 uses
  store float %i.hm, ptr %i.bp, align 16, !tbaa !17
  %i.hn = fmul <2 x float> %i.gw, %i.hk           ; 3 uses
  store <2 x float> %i.hn, ptr %i.bq, align 4, !tbaa !17
  %i.ho = and i32 %i.gf, 16
  %.not131 = icmp eq i32 %i.ho, 0
  %.pre173 = load float, ptr %i.a, align 4, !tbaa !14 ; 2 uses
  br i1 %.not131, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hp = fneg <2 x float> %i.gm
  %i.hq = fneg float %i.gk
  %i.hr = extractelement <2 x float> %i.hn, i64 0
  %i.hs = fmul float %i.hr, %i.hq
  %i.ht = extractelement <2 x float> %i.gm, i64 0
  %i.hu = call float @llvm.fmuladd.f32(float %i.hm, float %i.ht, float %i.hs) ; 4 uses
  %.sroa.3.12.vec.insert.i.i158 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hu, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i158, ptr %i.bt, align 8, !tbaa !17
  %i.hv = fmul <2 x float> %i.hl, %i.hp
  %i.hw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> %i.gr, <2 x float> %i.hv) ; 4 uses
  %foldExtExtBinop192 = fmul <2 x float> %i.hw, %i.hw
  %i.hx = extractelement <2 x float> %foldExtExtBinop192, i64 1
  %i.hy = extractelement <2 x float> %i.hw, i64 0 ; 2 uses
  %i.hz = call float @llvm.fmuladd.f32(float %i.hy, float %i.hy, float %i.hx)
  %i.ia = call noundef float @llvm.fmuladd.f32(float %i.hu, float %i.hu, float %i.hz)
  %sqrt.i.i161 = call noundef float @llvm.sqrt.f32(float %i.ia)
  %i.ib = fdiv float 1.000000e+00, %sqrt.i.i161   ; 2 uses
  %i.ic = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ie = fmul <2 x float> %i.hw, %i.id
  store <2 x float> %i.ie, ptr %i.br, align 16, !tbaa !17
  %i.if = fmul float %i.hu, %i.ib
  store float %i.if, ptr %i.bt, align 8, !tbaa !17
  %i.ig = call noundef nonnull align 16 dereferenceable(160) ptr @_ZN17b3PgsJacobiSolver21addFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataRK9b3Vector3iiiR14b3ContactPointS6_S6_S1_S1_fff(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %i.br, i32 noundef %i.f, i32 noundef %i.j, i32 noundef %i.ca, ptr noundef nonnull align 16 dereferenceable(128) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr poison, ptr poison, float noundef %.pre173, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ih = call noundef nonnull align 16 dereferenceable(160) ptr @_ZN17b3PgsJacobiSolver21addFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataRK9b3Vector3iiiR14b3ContactPointS6_S6_S1_S1_fff(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %i.bp, i32 noundef %i.f, i32 noundef %i.j, i32 noundef %i.ca, ptr noundef nonnull align 16 dereferenceable(128) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr poison, ptr poison, float noundef %.pre173, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 0 uses
  br label %bb.ai

bb.aa:                                            ; preds = %bb.w
  %i.ii = extractelement <2 x float> %i.gm, i64 1 ; 6 uses
  %i.ij = call noundef float @llvm.fabs.f32(float %i.ii)
  %i.ik = fcmp ogt float %i.ij, f0x3F3504F3
  br i1 %i.ik, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.il = fmul nnan float %i.ii, %i.ii
  %i.im = extractelement <2 x float> %i.gm, i64 0 ; 3 uses
  %i.in = call float @llvm.fmuladd.f32(float %i.im, float %i.im, float %i.il) ; 2 uses
  %sqrt.i164 = call float @llvm.sqrt.f32(float %i.in)
  %i.io = fdiv float 1.000000e+00, %sqrt.i164     ; 3 uses
  store float 0.000000e+00, ptr %i.bp, align 16, !tbaa !14
  %i.ip = fneg float %i.ii
  %i.iq = fmul float %i.io, %i.ip                 ; 2 uses
end_hunk_0
