Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_mapblock?download=true
inline.NumInlined: 881
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN21MapblockMeshGenerator15drawLiquidSidesEv:bb.a
  %i.fq = call nsz float @llvm.fmuladd.f32(float %i.ez, float %i.fp, float %i.fo)
  %i.fr = extractelement <4 x float> %i.dy, i64 1
  %i.fs = call nsz float @llvm.fmuladd.f32(float %i.ey, float %i.fr, float %i.fq)
  %i.ft = extractelement <4 x float> %i.dy, i64 2
  %i.fu = call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.ft, float %i.fs)
  %i.fv = fmul nsz float %i.fg, %i.dk
  %i.fw = call nsz float @llvm.fmuladd.f32(float %i.ff, float %i.dl, float %i.fv)
  %i.fx = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.dm, float %i.fw)
  %i.fy = call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.dr, float %i.fx)
  %i.fz = call nsz float @llvm.fmuladd.f32(float %i.ez, float %i.ds, float %i.fy)
  %i.ga = call nsz float @llvm.fmuladd.f32(float %i.ey, float %i.dt, float %i.fz)
  %i.gb = call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.du, float %i.ga)
  %i.gc = extractelement <4 x float> %i.dp, i64 0
  %i.gd = fmul nsz float %i.fg, %i.gc
  %i.ge = extractelement <4 x float> %i.dp, i64 1
  %i.gf = call nsz float @llvm.fmuladd.f32(float %i.ff, float %i.ge, float %i.gd)
  %i.gg = extractelement <4 x float> %i.dp, i64 2
  %i.gh = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.gg, float %i.gf)
  %i.gi = extractelement <4 x float> %i.dp, i64 3
  %i.gj = call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.gi, float %i.gh)
  %i.gk = extractelement <4 x float> %i.dx, i64 0
  %i.gl = call nsz float @llvm.fmuladd.f32(float %i.ez, float %i.gk, float %i.gj)
  %i.gm = extractelement <4 x float> %i.dx, i64 1
  %i.gn = call nsz float @llvm.fmuladd.f32(float %i.ey, float %i.gm, float %i.gl)
  %i.go = extractelement <4 x float> %i.dx, i64 2
  %i.gp = call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.go, float %i.gn)
  %i.gq = fmul nsz float %i.eu, %i.eg             ; 3 uses
  %i.gr = extractelement <4 x float> %i.dx, i64 3
  %i.gs = call nsz float @llvm.fmuladd.f32(float %i.gq, float %i.gr, float %i.gp)
  %i.gt = load float, ptr %i.o, align 4, !tbaa !44
  %i.gu = call nsz float @llvm.fmuladd.f32(float %i.gq, float %i.gt, float %i.gb)
  %i.gv = extractelement <4 x float> %i.dy, i64 3
  %i.gw = call nsz float @llvm.fmuladd.f32(float %i.gq, float %i.gv, float %i.fu)
  %i.gx = fmul nsz float %i.gw, 0.000000e+00
  %i.gy = fadd nsz float %i.gs, %i.gx
  %i.gz = fadd nsz float %i.gy, 5.000000e-01
  %i.ha = call nsz noundef float @llvm.floor.f32(float %i.gz)
  %i.hb = fptosi float %i.ha to i32
  %i.hc = call i32 @llvm.smax.i32(i32 %i.hb, i32 0)
  %i.hd = call i32 @llvm.umin.i32(i32 %i.hc, i32 255)
  %.sroa.0.0.insert.ext.i.i = trunc nuw nsw i32 %i.hd to i16
  %i.he = fadd nsz float %i.gu, 5.000000e-01
  %i.hf = call nsz noundef float @llvm.floor.f32(float %i.he)
  %i.hg = fptosi float %i.hf to i32
  %i.hh = call i32 @llvm.smax.i32(i32 %i.hg, i32 0)
  %i.hi = call i32 @llvm.umin.i32(i32 %i.hh, i32 255)
  %.sroa.2.0.insert.ext.i.i = trunc nuw nsw i32 %i.hi to i16
  %.sroa.2.0.insert.shift.i.i = shl nuw i16 %.sroa.2.0.insert.ext.i.i, 8
  %.sroa.0.0.insert.insert.i.i = or disjoint i16 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.hj = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1410
  %i.hl = load i8, ptr %i.hk, align 2, !tbaa !113
  %i.hm = call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.0.0.insert.insert.i.i, i8 noundef zeroext %i.hl)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.hn = load i32, ptr %i.d, align 8, !tbaa !115
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge = phi i32 [ %i.hn, %bb.q ], [ %i.hm, %bb.p ]
  %i.ho = load float, ptr %i.r, align 8, !tbaa !45
  %i.hp = fadd nsz float %i.cn, %i.ho
  %i.hq = load i16, ptr %i.bv, align 2, !tbaa !215
  %i.hr = sitofp nsz i16 %i.hq to float
  %i.hs = sitofp nsz i32 %i.bz to float
  %i.ht = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv ; 9 uses
  %i.hu = load <2 x float>, ptr %i.q, align 8, !tbaa !44
  %i.hv = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.hw = insertelement <2 x float> %i.hv, float %.sroa.845.0, i64 1
  %i.hx = fadd nsz <2 x float> %i.hw, %i.hu
  store <2 x float> %i.hx, ptr %i.ht, align 8, !tbaa !44
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store float %i.hp, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !44
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store float %i.bu, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !44
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store float %i.hr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !44
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 20
  store float %i.bw, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !44
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store i32 %storemerge, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !115
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 28
  store float %i.hs, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !44
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  store float %.035, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !44
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 36
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !121
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.i, label %bb.j, !llvm.loop !208

bb.s:                                             ; preds = %bb.i, %_ZNK14NodeDefManager3getEt.exit, %bb.e, %bb.d
  %.0.add = add nuw nsw i64 %.0.idx51, 18         ; 2 uses
  %.not = icmp eq i64 %.0.add, 72
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator13drawLiquidTopEv(ptr noundef nonnull align 8 dereferenceable(496) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca [4 x %"struct.video::S3DVertex"], align 16 ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 364
  %.sroa.052.0.copyload = load i32, ptr %i.a, align 4, !tbaa !115 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  store <4 x float> <float -5.000000e+00, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00>, ptr %1, align 16, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  store <2 x float> zeroinitializer, ptr %i.c, align 16, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %.sroa.052.0.copyload, ptr %i.e, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.f, align 4, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i16 0, ptr %i.g, align 4, !tbaa !112
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <4 x float> <float 5.000000e+00, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00>, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store <2 x float> zeroinitializer, ptr %i.i, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %.sroa.052.0.copyload, ptr %i.j, align 16, !tbaa !115
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 68
  store <2 x float> splat (float 1.000000e+00), ptr %i.k, align 4, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i16 0, ptr %i.l, align 4, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x float> <float 5.000000e+00, float 0.000000e+00, float -5.000000e+00, float 0.000000e+00>, ptr %i.m, align 16, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <2 x float> zeroinitializer, ptr %i.n, align 16, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %.sroa.052.0.copyload, ptr %i.o, align 8, !tbaa !115
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 3 uses
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.p, align 4, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 0, ptr %i.q, align 4, !tbaa !112
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  store <4 x float> <float -5.000000e+00, float 0.000000e+00, float -5.000000e+00, float 0.000000e+00>, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  store <2 x float> zeroinitializer, ptr %i.s, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 %.sroa.052.0.copyload, ptr %i.t, align 16, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 148
  store <2 x float> zeroinitializer, ptr %i.u, align 4, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i16 0, ptr %i.v, align 4, !tbaa !112
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.d

bb.b:                                             ; preds = %bb.g
  %i.ab = load float, ptr %i.w, align 8, !tbaa !44 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !44 ; 2 uses
  %i.ae = fadd nsz float %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ag = load float, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !44 ; 2 uses
  %i.aj = fadd nsz float %i.ag, %i.ai
  %i.ak = fsub nsz float %i.ae, %i.aj             ; 7 uses
  %i.al = fadd nsz float %i.ab, %i.ag
  %i.am = fadd nsz float %i.ad, %i.ai
  %i.an = fsub nsz float %i.al, %i.am             ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !217
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.au = load i16, ptr %i.at, align 4, !tbaa !153
  %i.av = sext i16 %i.au to i32
  %i.aw = add nsw i32 %i.av, %i.ar
  %i.ax = sitofp nsz i32 %i.aw to float
  %i.ay = load i16, ptr %i.ao, align 8, !tbaa !218
  %i.az = sext i16 %i.ay to i32
  %i.ba = load i16, ptr %i.as, align 8, !tbaa !154
  %i.bb = sext i16 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, %i.az
  %i.bd = sitofp nsz i32 %i.bc to float           ; 2 uses
  %i.be = fmul nsz float %i.ak, %i.ak
  %i.bf = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.be) ; 2 uses
  %i.bg = fcmp nsz oeq float %i.bf, 0.000000e+00
  br i1 %i.bg, label %_ZN4core8vector2dIfE9normalizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bh = tail call nsz float @llvm.sqrt.f32(float %i.bf)
  %i.bi = fdiv nsz float 1.000000e+00, %i.bh      ; 2 uses
  %i.bj = fmul nsz float %i.an, %i.bi
  %i.bk = fmul nsz float %i.ak, %i.bi
  br label %_ZN4core8vector2dIfE9normalizeEv.exit

_ZN4core8vector2dIfE9normalizeEv.exit:            ; preds = %bb.b, %bb.c
  %.sroa.662.0 = phi nsz float [ %i.ak, %bb.b ], [ %i.bk, %bb.c ] ; 4 uses
  %.sroa.061.0 = phi nsz float [ %i.an, %bb.b ], [ %i.bj, %bb.c ] ; 2 uses
  %i.bl = fcmp nsz oeq float %.sroa.061.0, 0.000000e+00
  %i.bm = fcmp nsz oeq float %.sroa.662.0, 0.000000e+00
  %2 = select i1 %i.bl, i1 %i.bm, i1 false
  %.sroa.063.0 = select nsz i1 %2, float 1.000000e+00, float %.sroa.061.0 ; 3 uses
  %i.bn = fneg nsz float %i.bd
  %i.bo = insertelement <2 x float> poison, float %.sroa.662.0, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %.sroa.063.0, i64 1 ; 6 uses
  %i.bq = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bd, i64 1
  %i.bs = fmul nsz <2 x float> %i.bp, %i.br
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %i.bu = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bv, <2 x float> %i.bs)
  %i.bx = fpext <2 x float> %i.bw to <2 x double> ; 3 uses
  %i.by = extractelement <2 x double> %i.bx, i64 0
  %i.bz = tail call nsz double @llvm.floor.f64(double %i.by)
  %i.ca = extractelement <2 x double> %i.bx, i64 1
  %i.cb = tail call nsz double @llvm.floor.f64(double %i.ca)
  %i.cc = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.cb, i64 1
  %i.ce = fsub nsz <2 x double> %i.bx, %i.cd
  %i.cf = fptrunc <2 x double> %i.ce to <2 x float> ; 8 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 66
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !219, !range !106, !noundef !107
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %_ZN4core8vector2dIfE9normalizeEv.exit.split.us.preheader, label %_ZN4core8vector3dIfE9normalizeEv.exit55.preheader

_ZN4core8vector3dIfE9normalizeEv.exit55.preheader: ; preds = %_ZN4core8vector2dIfE9normalizeEv.exit
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.an, float 1.000000e+00)
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.ck)
  %i.cm = fpext nsz float %i.cl to double
  %i.cn = tail call nsz double @llvm.sqrt.f64(double %i.cm)
  %i.co = fdiv nsz double 1.000000e+00, %i.cn     ; 3 uses
  %i.cp = fpext nsz float %i.ak to double
  %i.cq = fmul nsz double %i.co, %i.cp
  %i.cr = fptrunc nsz double %i.cq to float       ; 4 uses
  %i.cs = fptrunc nsz double %i.co to float       ; 4 uses
  %i.ct = fpext nsz float %i.an to double
  %i.cu = fmul nsz double %i.co, %i.ct
  %i.cv = fptrunc nsz double %i.cu to float       ; 4 uses
  %i.cw = fmul nsz <2 x float> %i.bp, <float -5.000000e-01, float 5.000000e-01> ; 2 uses
  %i.cx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> splat (float -5.000000e-01), <2 x float> %i.cw)
  %i.cy = fadd nsz <2 x float> %i.cx, splat (float 5.000000e-01)
  %i.cz = fadd nsz <2 x float> %i.cy, %i.cf
  store <2 x float> %i.cz, ptr %i.f, align 4, !tbaa !44
  store float %i.cv, ptr %i.b, align 4, !tbaa !44
  store float %i.cs, ptr %i.c, align 16, !tbaa !44
  store float %i.cr, ptr %i.d, align 4, !tbaa !44
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.db = insertelement <2 x float> poison, float %.sroa.063.0, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %.sroa.662.0, i64 1 ; 2 uses
  %i.dd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cw)
  %i.de = fadd nsz <2 x float> %i.dd, splat (float 5.000000e-01)
  %i.df = fadd nsz <2 x float> %i.de, %i.cf
  store <2 x float> %i.df, ptr %i.da, align 4, !tbaa !44
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.cv, ptr %i.dg, align 4, !tbaa !44
  %.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.cs, ptr %.sroa.6.0..sroa_idx.1, align 8, !tbaa !44
  %.sroa.9.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %i.cr, ptr %.sroa.9.0..sroa_idx.1, align 4, !tbaa !44
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.di = fmul nsz <2 x float> %i.bp, <float 5.000000e-01, float -5.000000e-01> ; 2 uses
  %i.dj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> splat (float 5.000000e-01), <2 x float> %i.di)
  %i.dk = fadd nsz <2 x float> %i.dj, splat (float 5.000000e-01)
  %i.dl = fadd nsz <2 x float> %i.dk, %i.cf
  store <2 x float> %i.dl, ptr %i.dh, align 4, !tbaa !44
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.cv, ptr %i.dm, align 4, !tbaa !44
  %.sroa.6.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store float %i.cs, ptr %.sroa.6.0..sroa_idx.2, align 16, !tbaa !44
  %.sroa.9.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %1, i64 100
  store float %i.cr, ptr %.sroa.9.0..sroa_idx.2, align 4, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.do = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> splat (float -5.000000e-01), <2 x float> %i.di)
  %i.dp = fadd nsz <2 x float> %i.do, splat (float 5.000000e-01)
  %i.dq = fadd nsz <2 x float> %i.dp, %i.cf
  store <2 x float> %i.dq, ptr %i.dn, align 4, !tbaa !44
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 132
  store float %i.cv, ptr %i.dr, align 4, !tbaa !44
  %.sroa.6.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %1, i64 136
  store float %i.cs, ptr %.sroa.6.0..sroa_idx.3, align 8, !tbaa !44
  %.sroa.9.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %1, i64 140
  store float %i.cr, ptr %.sroa.9.0..sroa_idx.3, align 4, !tbaa !44
  br label %.split.us

_ZN4core8vector2dIfE9normalizeEv.exit.split.us.preheader: ; preds = %_ZN4core8vector2dIfE9normalizeEv.exit
  %i.ds = fmul nsz <2 x float> %i.bp, <float -5.000000e-01, float 5.000000e-01> ; 2 uses
  %i.dt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> splat (float -5.000000e-01), <2 x float> %i.ds)
  %i.du = fadd nsz <2 x float> %i.dt, splat (float 5.000000e-01)
  %i.dv = fadd nsz <2 x float> %i.du, %i.cf
  store <2 x float> %i.dv, ptr %i.f, align 4, !tbaa !44
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.dx = insertelement <2 x float> poison, float %.sroa.063.0, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %.sroa.662.0, i64 1 ; 2 uses
  %i.dz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> splat (float 5.000000e-01), <2 x float> %i.ds)
  %i.ea = fadd nsz <2 x float> %i.dz, splat (float 5.000000e-01)
  %i.eb = fadd nsz <2 x float> %i.ea, %i.cf
  store <2 x float> %i.eb, ptr %i.dw, align 4, !tbaa !44
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ed = fmul nsz <2 x float> %i.bp, <float 5.000000e-01, float -5.000000e-01> ; 2 uses
  %i.ee = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> splat (float 5.000000e-01), <2 x float> %i.ed)
  %i.ef = fadd nsz <2 x float> %i.ee, splat (float 5.000000e-01)
  %i.eg = fadd nsz <2 x float> %i.ef, %i.cf
  store <2 x float> %i.eg, ptr %i.ec, align 4, !tbaa !44
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ei = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> splat (float -5.000000e-01), <2 x float> %i.ed)
  %i.ej = fadd nsz <2 x float> %i.ei, splat (float 5.000000e-01)
  %i.ek = fadd nsz <2 x float> %i.ej, %i.cf
  store <2 x float> %i.ek, ptr %i.eh, align 4, !tbaa !44
  br label %.split.us

bb.d:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr @_ZZN21MapblockMeshGenerator13drawLiquidTopEvE14corner_resolve, i64 %indvars.iv ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !115
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !115
  %i.ep = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 66
  %i.er = load i8, ptr %i.eq, align 2, !tbaa !219, !range !106, !noundef !107
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.e

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.d
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.eu = load float, ptr %i.et, align 8, !tbaa !220
  %i.ev = fcmp nsz ogt float %i.eu, 0.000000e+00  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ex = load float, ptr %i.ew, align 8, !tbaa !221
  %i.ey = fcmp nsz ogt float %i.ex, 0.000000e+00  ; 2 uses
  %i.ez = zext i1 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.ez ; 2 uses
  %i.fb = zext i1 %i.ev to i64                    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load float, ptr %i.fc, align 8, !tbaa !150 ; 2 uses
  %i.fe = select i1 %i.ev, i64 2, i64 1           ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fe
  %i.fg = load float, ptr %i.ff, align 8, !tbaa !150 ; 2 uses
  %i.fh = fsub nsz float %i.fd, %i.fg
  %i.fi = select i1 %i.ey, i64 2, i64 1
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fb
  %i.fl = load float, ptr %i.fk, align 8, !tbaa !150 ; 2 uses
  %i.fm = fadd nsz float %i.fh, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fe
  %i.fo = load float, ptr %i.fn, align 8, !tbaa !150 ; 2 uses
  %i.fp = fsub nsz float %i.fm, %i.fo
  %i.fq = fmul nsz float %i.fp, 5.000000e-01      ; 3 uses
  %i.fr = fsub nsz float %i.fd, %i.fl
  %i.fs = fadd nsz float %i.fg, %i.fr
  %i.ft = fsub nsz float %i.fs, %i.fo
  %i.fu = fmul nsz float %i.ft, 5.000000e-01      ; 3 uses
  %i.fv = tail call nsz float @llvm.fmuladd.f32(float %i.fq, float %i.fq, float 1.000000e+00)
  %i.fw = tail call nsz float @llvm.fmuladd.f32(float %i.fu, float %i.fu, float %i.fv)
  %i.fx = fpext nsz float %i.fw to double
  %i.fy = tail call nsz double @llvm.sqrt.f64(double %i.fx)
  %i.fz = fdiv nsz double 1.000000e+00, %i.fy     ; 3 uses
  %i.ga = fpext nsz float %i.fq to double
  %i.gb = fmul nsz double %i.fz, %i.ga
  %i.gc = fpext nsz float %i.fu to double
  %i.gd = fmul nsz double %i.fz, %i.gc
  %i.ge = fptrunc nsz double %i.gd to float
  %i.gf = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.gg = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.fz, i64 1
  %i.gi = fptrunc <2 x double> %i.gh to <2 x float>
  store <2 x float> %i.gi, ptr %i.gf, align 4, !tbaa !44
  %.sroa.978.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  store float %i.ge, ptr %.sroa.978.0..sroa_idx, align 4, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.d
  %i.gj = sext i32 %i.eo to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.gj
  %i.gl = sext i32 %i.em to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gl
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !44
  %i.go = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv ; 6 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4 ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !222
  %i.gr = tail call nsz float @llvm.fmuladd.f32(float %i.gn, float 1.000000e+01, float %i.gq) ; 2 uses
  store float %i.gr, ptr %i.gp, align 4, !tbaa !222
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ep, i64 65
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !114, !range !106, !noundef !107
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.gv = call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.go) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.gv, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.gv, 1
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.fca.0.extract.i, i64 0
  %i.gw = fmul nsz float %.fca.1.extract.i, 0.000000e+00
  %i.gx = fadd nsz float %.sroa.03.0.vec.extract.i, %i.gw
  %i.gy = insertelement <2 x float> %.fca.0.extract.i, float %i.gx, i64 0
  %i.gz = fadd nsz <2 x float> %i.gy, splat (float 5.000000e-01)
  %i.ha = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.gz)
  %i.hb = fptosi <2 x float> %i.ha to <2 x i32>
  %i.hc = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.hb, <2 x i32> zeroinitializer)
  %i.hd = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.hc, <2 x i32> splat (i32 255))
end_hunk_0
