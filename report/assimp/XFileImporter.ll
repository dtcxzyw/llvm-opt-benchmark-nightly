Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/XFileImporter?download=true
inline.NumInlined: 969
inline.NumDeleted: 533
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %.loopexit285, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cl
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %i.cq = phi ptr [ %i.cn, %bb.p ], [ %i.cs, %bb.q ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cp
  br i1 %i.ct, label %.loopexit285, label %bb.q

.loopexit285:                                     ; preds = %bb.q, %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bn, i64 1032 ; 3 uses
  store ptr %i.cn, ptr %i.cu, align 8
  %i.cv = load ptr, ptr %i.cc, align 8
  %i.cw = load ptr, ptr %i.ca, align 8
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = sdiv exact i64 %i.cz, 72                ; 3 uses
  %i.db = trunc i64 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bn, i64 1040
  store i32 %i.db, ptr %i.dc, align 8
  %i.dd = and i64 %i.da, 4294967295               ; 4 uses
  %i.de = shl nuw nsw i64 %i.dd, 5
  %i.df = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #21
          to label %bb.r unwind label %bb.w       ; 4 uses

bb.r:                                             ; preds = %.loopexit285
  %i.dg = icmp eq i64 %i.dd, 0
  br i1 %i.dg, label %.loopexit284, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %i.dd
  %i.di = add nuw nsw i64 %i.dd, 576460752303423487
  %i.dj = and i64 %i.di, 576460752303423487
  %xtraiter = and i64 %i.da, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.s, %.prol.preheader
  %i.dk = phi ptr [ %i.dn, %.prol.preheader ], [ %i.df, %bb.s ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.s ]
  store double 0.000000e+00, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store i32 1, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !18

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.s
  %.unr = phi ptr [ %i.df, %bb.s ], [ %i.dn, %.prol.preheader ]
  %i.do = icmp samesign ult i64 %i.dj, 7
  br i1 %i.do, label %.loopexit284, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.dp = phi ptr [ %i.en, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store i32 1, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store double 0.000000e+00, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  store i32 1, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  store double 0.000000e+00, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  store i32 1, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 96
  store double 0.000000e+00, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 120
  store i32 1, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  store double 0.000000e+00, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 152
  store i32 1, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 160
  store double 0.000000e+00, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 184
  store i32 1, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dp, i64 192
  store double 0.000000e+00, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dp, i64 216
  store i32 1, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dp, i64 224
  store double 0.000000e+00, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.dp, i64 248
  store i32 1, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 256 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.dh
  br i1 %i.eo, label %.loopexit284, label %.new

.loopexit284:                                     ; preds = %.prol.loopexit, %.new, %bb.r
  store ptr %i.df, ptr %i.bo, align 8
  %i.ep = load ptr, ptr %i.cc, align 8
  %i.eq = load ptr, ptr %i.ca, align 8
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = sdiv exact i64 %i.et, 72                ; 2 uses
  %i.ev = trunc i64 %i.eu to i32
  store i32 %i.ev, ptr %i.bp, align 8
  %i.ew = and i64 %i.eu, 4294967295               ; 3 uses
  %i.ex = mul nuw nsw i64 %i.ew, 24
  %i.ey = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ex) #21
          to label %bb.t unwind label %bb.w       ; 3 uses

bb.t:                                             ; preds = %.loopexit284
  %i.ez = icmp eq i64 %i.ew, 0
  br i1 %i.ez, label %.loopexit283, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.ew
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %i.fb = phi ptr [ %i.ey, %bb.u ], [ %i.fd, %bb.v ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.fc, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 24 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.fa
  br i1 %i.fe, label %.loopexit283, label %bb.v

.loopexit283:                                     ; preds = %bb.v, %bb.t
  store ptr %i.ey, ptr %i.bq, align 8
  %i.ff = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.fg = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not325 = icmp eq ptr %i.ff, %i.fg
  br i1 %.not325, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit, %.loopexit283
  %.lcssa = phi ptr [ %i.ff, %.loopexit283 ], [ %i.kk, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ]
  %i.fh = getelementptr inbounds i8, ptr %.lcssa, i64 -72
  %i.fi = load double, ptr %i.t, align 8          ; 2 uses
  %i.fj = load double, ptr %i.fh, align 8         ; 2 uses
  %i.fk = fcmp olt double %i.fi, %i.fj
  %i.fl = select i1 %i.fk, double %i.fj, double %i.fi
  br label %.sink.split

bb.w:                                             ; preds = %bb.aq, %bb.ai, %bb.ae, %.loopexit284, %.loopexit285, %bb.n, %.lr.ph309
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.lr.ph:                                           ; preds = %.loopexit283, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit
  %i.fn = phi ptr [ %i.kl, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ], [ %i.fg, %.loopexit283 ]
  %i.fo = phi i64 [ %i.kj, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ], [ 0, %.loopexit283 ] ; 7 uses
  %.0127297 = phi i32 [ %i.ki, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ], [ 0, %.loopexit283 ]
  %i.fp = getelementptr inbounds nuw [72 x i8], ptr %i.fn, i64 %i.fo ; 13 uses
  %i.fq = load double, ptr %i.fp, align 8         ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 28
  %.sroa.13.0.copyload = load float, ptr %.sroa.13.0..sroa_idx, align 4 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %.sroa.15.0.copyload = load float, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 36
  %.sroa.17.0.copyload = load float, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 8 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 44
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 3 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 52
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  %i.fs = load ptr, ptr %i.cu, align 8
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %i.fo
  %i.fu = fmul float %.sroa.13.0.copyload, %.sroa.13.0.copyload
  %i.fv = load <2 x float>, ptr %i.fr, align 8    ; 2 uses
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  store double %i.fq, ptr %i.ft, align 8
  %i.fw = load ptr, ptr %i.cu, align 8
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %i.fo ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store float %.sroa.10.0.copyload, ptr %i.fy, align 8
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store float %.sroa.17.0.copyload, ptr %.sroa.5235.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx236 = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store float %.sroa.24.0.copyload, ptr %.sroa.6.0..sroa_idx236, align 8
  %i.fz = tail call float @llvm.fmuladd.f32(float %.sroa.6.0.copyload, float %.sroa.6.0.copyload, float %i.fu)
  %i.ga = tail call noundef float @llvm.fmuladd.f32(float %.sroa.20.0.copyload, float %.sroa.20.0.copyload, float %i.fz)
  %sqrt.i158 = tail call noundef float @llvm.sqrt.f32(float %i.ga) ; 4 uses
  %i.gb = insertelement <2 x float> poison, float %.sroa.15.0.copyload, i64 0
  %i.gc = insertelement <2 x float> %i.gb, float %.sroa.11.0.copyload, i64 1 ; 2 uses
  %i.gd = fmul <2 x float> %i.gc, %i.gc
  %i.ge = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.gf = insertelement <2 x float> %i.ge, float %.sroa.8.0.copyload, i64 0 ; 2 uses
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.gf, <2 x float> %i.gd)
  %i.gh = insertelement <2 x float> poison, float %.sroa.22.0.copyload, i64 0
  %i.gi = insertelement <2 x float> %i.gh, float %.sroa.18.0.copyload, i64 1 ; 2 uses
  %i.gj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.gi, <2 x float> %i.gg)
  %i.gk = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gj) ; 5 uses
  %i.gl = load ptr, ptr %i.bq, align 8
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %i.fo
  store double %i.fq, ptr %i.gm, align 8
  %i.gn = load ptr, ptr %i.bq, align 8
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gn, i64 %i.fo ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = extractelement <2 x float> %i.gk, i64 1
  store float %i.gq, ptr %i.gp, align 8
  %.sroa.7231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store float %sqrt.i158, ptr %.sroa.7231.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx232 = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gr = extractelement <2 x float> %i.gk, i64 0
  store float %i.gr, ptr %.sroa.10.0..sroa_idx232, align 8
  %3 = insertelement <2 x float> poison, float %.sroa.8.0.copyload, i64 0
  %i.gs = insertelement <2 x float> %3, float %.sroa.11.0.copyload, i64 1
  %4 = fdiv <2 x float> %i.gs, %i.gk              ; 6 uses
  %5 = fdiv float %.sroa.13.0.copyload, %sqrt.i158 ; 6 uses
  %i.gt = insertelement <4 x float> <float 2.000000e+00, float poison, float poison, float poison>, float %.sroa.15.0.copyload, i64 1
  %i.gu = insertelement <4 x float> %i.gt, float %.sroa.18.0.copyload, i64 2
  %i.gv = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gw = shufflevector <4 x float> %i.gu, <4 x float> %i.gv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gx = shufflevector <2 x float> %i.gk, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gy = insertelement <4 x float> %i.gx, float 1.000000e+00, i64 0
  %i.gz = insertelement <4 x float> %i.gy, float %sqrt.i158, i64 3
  %i.ha = fdiv <4 x float> %i.gw, %i.gz           ; 8 uses
  %i.hb = fdiv float %.sroa.20.0.copyload, %sqrt.i158 ; 4 uses
  %i.hc = insertelement <2 x float> %i.ge, float %.sroa.22.0.copyload, i64 0
  %i.hd = fdiv <2 x float> %i.hc, %i.gk           ; 2 uses
  %i.he = extractelement <2 x float> %i.hd, i64 1 ; 6 uses
  %i.hf = extractelement <2 x float> %i.hd, i64 0 ; 6 uses
  %i.hg = load ptr, ptr %i.bo, align 8
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.hg, i64 %i.fo
  store double %i.fq, ptr %i.hh, align 8
  %i.hi = fadd float %i.he, %5
  %i.hj = fadd float %i.hi, %i.hf                 ; 2 uses
  %i.hk = fcmp ogt float %i.hj, 0.000000e+00
  br i1 %i.hk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph
  %i.hl = fadd float %i.hj, 1.000000e+00
  %i.hm = tail call noundef float @sqrtf(float noundef %i.hl) #18
  %i.hn = insertelement <4 x float> poison, float %i.hm, i64 0
  %i.ho = insertelement <4 x float> %i.hn, float %i.hb, i64 1
  %i.hp = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hq = shufflevector <4 x float> %i.ho, <4 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.hr = fmul <4 x float> %i.hq, %i.ha           ; 2 uses
  %i.hs = fsub <4 x float> %i.hq, %i.ha
  %i.ht = shufflevector <4 x float> %i.hr, <4 x float> %i.hs, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.hu = shufflevector <4 x float> <float 2.500000e-01, float poison, float poison, float poison>, <4 x float> %i.hr, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %i.hv = fmul <4 x float> %i.ht, %i.hu
  %i.hw = fdiv <4 x float> %i.ht, %i.hu
  %i.hx = shufflevector <4 x float> %i.hv, <4 x float> %i.hw, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.y:                                             ; preds = %.lr.ph
  %6 = fcmp ogt float %i.he, %5
  %7 = fcmp ogt float %i.he, %i.hf
  %or.cond.i = and i1 %6, %7
  br i1 %or.cond.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hy = fadd float %i.he, 1.000000e+00
  %i.hz = fsub float %i.hy, %5
  %i.ia = fsub float %i.hz, %i.hf
  %i.ib = tail call noundef float @sqrtf(float noundef %i.ia) #18
  %i.ic = fmul float %i.ib, 2.000000e+00
  %i.id = extractelement <4 x float> %i.ha, i64 1
  %i.ie = fsub float %i.hb, %i.id
  %i.if = insertelement <4 x float> poison, float %i.ie, i64 0
  %i.ig = insertelement <4 x float> %i.if, float %i.ic, i64 1 ; 2 uses
  %i.ih = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 poison>
  %i.ii = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ij = fadd <4 x float> %i.ih, %i.ii
  %i.ik = shufflevector <4 x float> %i.ig, <4 x float> %i.ij, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.il = shufflevector <4 x float> %i.ig, <4 x float> <float poison, float 2.500000e-01, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1> ; 2 uses
  %i.im = fdiv <4 x float> %i.ik, %i.il
  %i.in = fmul <4 x float> %i.ik, %i.il
  %i.io = shufflevector <4 x float> %i.im, <4 x float> %i.in, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.aa:                                            ; preds = %bb.y
  %i.ip = fcmp ogt float %5, %i.hf
  br i1 %i.ip, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.iq = fadd float %5, 1.000000e+00
  %i.ir = fsub float %i.iq, %i.he
  %i.is = fsub float %i.ir, %i.hf
  %i.it = tail call noundef float @sqrtf(float noundef %i.is) #18
  %i.iu = fmul float %i.it, 2.000000e+00
  %i.iv = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iw = insertelement <2 x float> %i.iv, float %i.hb, i64 1
  %i.ix = extractelement <4 x float> %i.ha, i64 2
  %i.iy = extractelement <2 x float> %4, i64 0
  %i.iz = fsub float %i.iy, %i.ix
  %i.ja = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.iz, i64 0
  %i.jb = shufflevector <2 x float> %i.iw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.jc = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 1, i32 poison>
  %i.jd = fadd <4 x float> %i.jb, %i.jc
  %i.je = shufflevector <4 x float> %i.ja, <4 x float> %i.jd, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.jf = insertelement <4 x float> poison, float %i.iu, i64 0
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jh = fdiv <4 x float> %i.je, %i.jg
  %i.ji = fmul <4 x float> %i.je, %i.jg
  %i.jj = shufflevector <4 x float> %i.jh, <4 x float> %i.ji, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.ac:                                            ; preds = %bb.aa
  %i.jk = fadd float %i.hf, 1.000000e+00
  %i.jl = fsub float %i.jk, %i.he
  %i.jm = fsub float %i.jl, %5
  %i.jn = tail call noundef float @sqrtf(float noundef %i.jm) #18
  %i.jo = fmul float %i.jn, 2.000000e+00
  %i.jp = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jq = insertelement <2 x float> %i.jp, float %i.hb, i64 0
  %i.jr = extractelement <4 x float> %i.ha, i64 3
  %i.js = extractelement <2 x float> %4, i64 1
  %i.jt = fsub float %i.js, %i.jr
  %i.ju = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.jt, i64 0
  %i.jv = shufflevector <2 x float> %i.jq, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.jw = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 poison, i32 poison>
  %i.jx = fadd <4 x float> %i.jv, %i.jw
  %i.jy = shufflevector <4 x float> %i.ju, <4 x float> %i.jx, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 2 uses
  %i.jz = insertelement <4 x float> poison, float %i.jo, i64 0
  %i.ka = shufflevector <4 x float> %i.jz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kb = fdiv <4 x float> %i.jy, %i.ka
  %i.kc = fmul <4 x float> %i.jy, %i.ka
  %i.kd = shufflevector <4 x float> %i.kb, <4 x float> %i.kc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.x, %bb.z, %bb.ab, %bb.ac
  %i.ke = phi <4 x float> [ %i.hx, %bb.x ], [ %i.io, %bb.z ], [ %i.jj, %bb.ab ], [ %i.kd, %bb.ac ]
  %i.kf = load ptr, ptr %i.bo, align 8
  %i.kg = getelementptr inbounds nuw [32 x i8], ptr %i.kf, i64 %i.fo
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store <4 x float> %i.ke, ptr %i.kh, align 8
  %i.ki = add i32 %.0127297, 1                    ; 2 uses
  %i.kj = zext i32 %i.ki to i64                   ; 2 uses
  %i.kk = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.kl = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = sdiv exact i64 %i.ko, 72
  %i.kq = icmp ugt i64 %i.kp, %i.kj
  br i1 %i.kq, label %.lr.ph, label %._crit_edge, !llvm.loop !19

bb.ad:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit157
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.bm, i64 40 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = load ptr, ptr %i.kr, align 8
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = sdiv exact i64 %i.kx, 24                ; 2 uses
  %i.kz = trunc i64 %i.ky to i32                  ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.bn, i64 1028 ; 3 uses
  store i32 %i.kz, ptr %i.la, align 4
  %.not146 = icmp eq i32 %i.kz, 0
  br i1 %.not146, label %.loopexit282, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lb = and i64 %i.ky, 4294967295               ; 2 uses
  %i.lc = mul nuw nsw i64 %i.lb, 24
  %i.ld = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lc) #21
          to label %bb.af unwind label %bb.w      ; 3 uses

bb.af:                                            ; preds = %bb.ae
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.ld, i64 %i.lb
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %i.lf = phi ptr [ %i.ld, %bb.af ], [ %i.lh, %bb.ag ] ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lf, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.lg, align 4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 24 ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.le
  br i1 %i.li, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.lj = getelementptr inbounds nuw i8, ptr %i.bn, i64 1032 ; 3 uses
  store ptr %i.ld, ptr %i.lj, align 8
  %i.lk = load i32, ptr %i.la, align 4
  %.not326 = icmp eq i32 %i.lk, 0
  br i1 %.not326, label %.loopexit282, label %.lr.ph300

.lr.ph300:                                        ; preds = %bb.ah, %.lr.ph300
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph300 ], [ 0, %bb.ah ] ; 4 uses
  %i.ll = load ptr, ptr %i.kr, align 8
  %i.lm = getelementptr inbounds nuw [24 x i8], ptr %i.ll, i64 %indvars.iv ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %.sroa.0.0.copyload = load <3 x float>, ptr %i.ln, align 8
  %i.lo = load double, ptr %i.lm, align 8
  %i.lp = load ptr, ptr %i.lj, align 8
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.lp, i64 %indvars.iv
  store double %i.lo, ptr %i.lq, align 8
  %i.lr = load ptr, ptr %i.lj, align 8
  %i.ls = getelementptr inbounds nuw [24 x i8], ptr %i.lr, i64 %indvars.iv
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store <3 x float> %.sroa.0.0.copyload, ptr %i.lt, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lu = load i32, ptr %i.la, align 4
  %i.lv = zext i32 %i.lu to i64
  %i.lw = icmp samesign ult i64 %indvars.iv.next, %i.lv
  br i1 %i.lw, label %.lr.ph300, label %.loopexit282, !llvm.loop !20

.loopexit282:                                     ; preds = %.lr.ph300, %bb.ah, %bb.ad
  %i.lx = getelementptr inbounds nuw i8, ptr %i.bm, i64 56 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bm, i64 64 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = load ptr, ptr %i.lx, align 8
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = sub i64 %i.mb, %i.mc
  %i.me = ashr exact i64 %i.md, 5                 ; 3 uses
  %i.mf = trunc i64 %i.me to i32                  ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bn, i64 1040 ; 3 uses
  store i32 %i.mf, ptr %i.mg, align 8
  %.not147 = icmp eq i32 %i.mf, 0
  br i1 %.not147, label %.loopexit281, label %bb.ai

bb.ai:                                            ; preds = %.loopexit282
  %i.mh = and i64 %i.me, 4294967295               ; 3 uses
  %i.mi = shl nuw nsw i64 %i.mh, 5
  %i.mj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mi) #21
          to label %bb.aj unwind label %bb.w      ; 4 uses

bb.aj:                                            ; preds = %bb.ai
  %i.mk = getelementptr inbounds nuw [32 x i8], ptr %i.mj, i64 %i.mh
  %i.ml = add nuw nsw i64 %i.mh, 576460752303423487
  %i.mm = and i64 %i.ml, 576460752303423487
  %xtraiter411 = and i64 %i.me, 7                 ; 2 uses
  %lcmp.mod412.not = icmp eq i64 %xtraiter411, 0
  br i1 %lcmp.mod412.not, label %.prol.loopexit409, label %.prol.preheader408

.prol.preheader408:                               ; preds = %bb.aj, %.prol.preheader408
  %i.mn = phi ptr [ %i.mq, %.prol.preheader408 ], [ %i.mj, %bb.aj ] ; 4 uses
  %prol.iter413 = phi i64 [ %prol.iter413.next, %.prol.preheader408 ], [ 0, %bb.aj ]
  store double 0.000000e+00, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.mo, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  store i32 1, ptr %i.mp, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 32 ; 2 uses
  %prol.iter413.next = add i64 %prol.iter413, 1   ; 2 uses
  %prol.iter413.cmp.not = icmp eq i64 %prol.iter413.next, %xtraiter411
  br i1 %prol.iter413.cmp.not, label %.prol.loopexit409, label %.prol.preheader408, !llvm.loop !21

.prol.loopexit409:                                ; preds = %.prol.preheader408, %bb.aj
  %.unr414 = phi ptr [ %i.mj, %bb.aj ], [ %i.mq, %.prol.preheader408 ]
  %i.mr = icmp samesign ult i64 %i.mm, 7
  br i1 %i.mr, label %.unr-lcssa, label %.new410

.new410:                                          ; preds = %.prol.loopexit409, %.new410
  %i.ms = phi ptr [ %i.nq, %.new410 ], [ %.unr414, %.prol.loopexit409 ] ; 25 uses
  store double 0.000000e+00, ptr %i.ms, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.mt, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  store i32 1, ptr %i.mu, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  store double 0.000000e+00, ptr %i.mv, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.mw, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 56
  store i32 1, ptr %i.mx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 64
  store double 0.000000e+00, ptr %i.my, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ms, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.mz, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.ms, i64 88
  store i32 1, ptr %i.na, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ms, i64 96
  store double 0.000000e+00, ptr %i.nb, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ms, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.nc, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ms, i64 120
  store i32 1, ptr %i.nd, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ms, i64 128
  store double 0.000000e+00, ptr %i.ne, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ms, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.nf, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ms, i64 152
  store i32 1, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ms, i64 160
  store double 0.000000e+00, ptr %i.nh, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ms, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ni, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ms, i64 184
  store i32 1, ptr %i.nj, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ms, i64 192
  store double 0.000000e+00, ptr %i.nk, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ms, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ms, i64 216
  store i32 1, ptr %i.nm, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ms, i64 224
  store double 0.000000e+00, ptr %i.nn, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.ms, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.no, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.ms, i64 248
  store i32 1, ptr %i.np, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ms, i64 256 ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.mk
  br i1 %i.nr, label %.unr-lcssa, label %.new410

.unr-lcssa:                                       ; preds = %.new410, %.prol.loopexit409
  store ptr %i.mj, ptr %i.bo, align 8
  %i.ns = load i32, ptr %i.mg, align 8
  %.not327 = icmp eq i32 %i.ns, 0
  br i1 %.not327, label %.loopexit281, label %.lr.ph303

.lr.ph303:                                        ; preds = %.unr-lcssa, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162 ], [ 0, %.unr-lcssa ] ; 5 uses
  %i.nt = load ptr, ptr %i.lx, align 8
end_hunk_0
