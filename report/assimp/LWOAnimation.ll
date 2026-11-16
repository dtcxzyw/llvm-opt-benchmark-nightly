Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/LWOAnimation?download=true
inline.NumInlined: 685
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3LWO12AnimResolver18ExtractAnimChannelEPP10aiNodeAnimj:bb.a
bb.ac:                                            ; preds = %.loopexit132
  %i.ek = icmp eq i64 %i.dv, 24
  br i1 %i.ek, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.thread, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.thread: ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false)
  br label %bb.ad

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit: ; preds = %bb.ac, %bb.ab
  %.not.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = sub i64 %i.en, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.eo) #18
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit:      ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ag

bb.ae:                                            ; preds = %bb.x, %bb.w
  %i.ep = landingpad { ptr, i32 }
          cleanup
  %i.eq = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit77, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.et, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ev) #18
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit77

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit77:    ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.az

bb.ag:                                            ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit, %bb.v
  br i1 %i.bs, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ew = load ptr, ptr %i.al, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.fc = load i32, ptr %i.fb, align 4
  invoke void @_ZN6Assimp3LWO12AnimResolver7GetKeysERSt6vectorI11aiVectorKeySaIS3_EEPNS0_8EnvelopeES8_S8_j(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.ew, ptr noundef %i.ey, ptr noundef %i.fa, i32 noundef %i.fc)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = load ptr, ptr %4, align 8               ; 4 uses
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = sdiv exact i64 %i.fi, 24                ; 3 uses
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dc, i64 1040 ; 3 uses
  store i32 %i.fk, ptr %i.fl, align 8
  %i.fm = and i64 %i.fj, 4294967295               ; 4 uses
  %i.fn = shl nuw nsw i64 %i.fm, 5
  %i.fo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fn) #17
          to label %bb.aj unwind label %bb.al     ; 4 uses

bb.aj:                                            ; preds = %bb.ai
  %i.fp = icmp eq i64 %i.fm, 0
  br i1 %i.fp, label %.loopexit131, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fq = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %i.fm
  %i.fr = add nuw nsw i64 %i.fm, 576460752303423487
  %i.fs = and i64 %i.fr, 576460752303423487
  %xtraiter = and i64 %i.fj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ak, %.prol.preheader
  %i.ft = phi ptr [ %i.fw, %.prol.preheader ], [ %i.fo, %bb.ak ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ak ]
  store double 0.000000e+00, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store i32 1, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !59

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ak
  %.unr = phi ptr [ %i.fo, %bb.ak ], [ %i.fw, %.prol.preheader ]
  %i.fx = icmp samesign ult i64 %i.fs, 7
  br i1 %i.fx, label %.loopexit131, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.fy = phi ptr [ %i.gw, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store i32 1, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  store double 0.000000e+00, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  store i32 1, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  store double 0.000000e+00, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 88
  store i32 1, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 96
  store double 0.000000e+00, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 120
  store i32 1, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 128
  store double 0.000000e+00, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fy, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 152
  store i32 1, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 160
  store double 0.000000e+00, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.fy, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fy, i64 184
  store i32 1, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fy, i64 192
  store double 0.000000e+00, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fy, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fy, i64 216
  store i32 1, ptr %i.gs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fy, i64 224
  store double 0.000000e+00, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fy, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fy, i64 248
  store i32 1, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fy, i64 256 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.fq
  br i1 %i.gx, label %.loopexit131, label %.new

.loopexit131:                                     ; preds = %.prol.loopexit, %.new, %bb.aj
  store ptr %i.fo, ptr %i.dd, align 8
  %i.gy = load i32, ptr %i.fl, align 8
  %.not134 = icmp eq i32 %i.gy, 0
  br i1 %.not134, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit131
  %.not.i.i.i78 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit79, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph, %._crit_edge
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = sub i64 %i.hb, %i.fh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.hc) #18
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit79

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit79:    ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.an

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %i.hd = landingpad { ptr, i32 }
          cleanup
  %i.he = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i102 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i102, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit103, label %bb.am

.lr.ph:                                           ; preds = %.loopexit131, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.loopexit131 ] ; 3 uses
  %i.hf = load ptr, ptr %i.dd, align 8
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.hf, i64 %indvars.iv ; 3 uses
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %indvars.iv ; 4 uses
  %i.hi = load double, ptr %i.hh, align 8
  store double %i.hi, ptr %i.hg, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hk = load float, ptr %i.hj, align 8
  %i.hl = fmul float %i.hk, 5.000000e-01          ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.ho = tail call noundef float @sinf(float noundef %i.hl) #16 ; 3 uses
  %i.hp = tail call noundef float @cosf(float noundef %i.hl) #16
  %6 = insertelement <2 x float> poison, float %i.ho, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %7, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.hq = load float, ptr %i.hm, align 4
  %i.hr = fmul float %i.hq, 5.000000e-01          ; 2 uses
  %i.hs = tail call noundef float @sinf(float noundef %i.hr) #16 ; 3 uses
  %i.ht = tail call noundef float @cosf(float noundef %i.hr) #16 ; 3 uses
  %i.hu = insertelement <2 x float> poison, float %i.hs, i64 0 ; 2 uses
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x float> %i.hv, <float 0.000000e+00, float 1.000000e+00> ; 3 uses
  %i.hx = fneg float %i.hs
  %i.hy = fneg <2 x float> %8                     ; 3 uses
  %i.hz = fmul float %i.ho, %i.ht
  %i.ia = load float, ptr %i.hn, align 8
  %i.ib = fmul float %i.ia, 5.000000e-01          ; 2 uses
  %i.ic = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.id = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ie = insertelement <2 x float> %i.id, float %i.ht, i64 1
  %i.if = fmul <2 x float> %i.ic, %i.ie           ; 2 uses
  %i.ig = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ii = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ij = insertelement <2 x float> %i.if, float %i.hz, i64 0
  %i.ik = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.ii, <2 x float> %i.ij)
  %i.il = shufflevector <2 x float> %i.hu, <2 x float> %i.hw, <2 x i32> <i32 0, i32 2>
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> %i.il, <2 x float> %i.ik)
  %i.in = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.hw, <2 x float> %i.im) ; 4 uses
  %i.io = extractelement <2 x float> %i.in, i64 0
  %i.ip = fneg float %i.io                        ; 2 uses
  %i.iq = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.ir = insertelement <2 x float> %i.iq, float %i.hs, i64 1
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.ir, <2 x float> %i.if)
  %i.it = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iu = insertelement <2 x float> %i.it, float %i.ho, i64 1
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> %i.ii, <2 x float> %i.is)
  %i.iw = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iw, <2 x float> %i.ii, <2 x float> %i.iv) ; 4 uses
  %i.iy = tail call noundef float @sinf(float noundef %i.ib) #16 ; 3 uses
  %i.iz = tail call noundef float @cosf(float noundef %i.ib) #16 ; 3 uses
  %i.ja = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = fmul <2 x float> %i.jb, <float 1.000000e+00, float 0.000000e+00> ; 4 uses
  %i.jd = extractelement <2 x float> %i.jc, i64 1 ; 5 uses
  %i.je = fneg float %i.jd
  %i.jf = extractelement <2 x float> %i.in, i64 1 ; 2 uses
  %i.jg = fneg float %i.jf
  %i.jh = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ji = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jj = insertelement <2 x float> %i.ji, float %i.iz, i64 1
  %i.jk = fmul <2 x float> %i.jh, %i.jj
  %i.jl = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jm = insertelement <2 x float> %i.jc, float %i.iz, i64 0
  %i.jn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.jm, <2 x float> %i.jk)
  %i.jo = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> %i.in, <2 x i32> <i32 0, i32 2>
  %10 = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %10, <2 x float> %i.jn)
  %i.jr = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.jc, <2 x float> %i.jq)
  %i.ju = extractelement <2 x float> %i.ix, i64 0 ; 2 uses
  %i.jv = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jw = fmul <2 x float> %i.jv, %i.in           ; 2 uses
  %i.jx = extractelement <2 x float> %i.jw, i64 0
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.jd, float %i.jx)
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.jd, float %i.jy)
  %i.ka = extractelement <2 x float> %i.ix, i64 1 ; 2 uses
  %i.kb = fneg float %i.ka
  %i.kc = tail call float @llvm.fmuladd.f32(float %i.kb, float %i.iy, float %i.jz)
  %i.kd = extractelement <2 x float> %i.jw, i64 1
  %i.ke = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.iy, float %i.kd)
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.ka, float %i.jd, float %i.ke)
  %i.kg = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.jd, float %i.kf)
  %.sroa.3.8.vec.insert.i98 = insertelement <2 x float> poison, float %i.kc, i64 0
  %.sroa.3.12.vec.insert.i99 = insertelement <2 x float> %.sroa.3.8.vec.insert.i98, float %i.kg, i64 1
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store <2 x float> %i.jt, ptr %i.kh, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store <2 x float> %.sroa.3.12.vec.insert.i99, ptr %.sroa.5.0..sroa_idx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ki = load i32, ptr %i.fl, align 8
  %i.kj = zext i32 %i.ki to i64
  %i.kk = icmp samesign ult i64 %indvars.iv.next, %i.kj
  br i1 %i.kk, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !60

bb.am:                                            ; preds = %bb.al
  %i.kl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = ptrtoint ptr %i.he to i64
  %i.kp = sub i64 %i.kn, %i.ko
  tail call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.kp) #18
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit103

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit103:   ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.az

bb.an:                                            ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit79, %bb.ag
  br i1 %i.db, label %bb.ao, label %bb.ay

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.kq = load ptr, ptr %i.bt, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.kw = load i32, ptr %i.kv, align 4
  invoke void @_ZN6Assimp3LWO12AnimResolver7GetKeysERSt6vectorI11aiVectorKeySaIS3_EEPNS0_8EnvelopeES8_S8_j(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %i.kq, ptr noundef %i.ks, ptr noundef %i.ku, i32 noundef %i.kw)
          to label %bb.ap unwind label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.kx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = load ptr, ptr %5, align 8               ; 5 uses
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = ptrtoint ptr %i.kz to i64               ; 2 uses
  %i.lc = sub i64 %i.la, %i.lb                    ; 4 uses
  %i.ld = sdiv exact i64 %i.lc, 24                ; 2 uses
  %i.le = trunc i64 %i.ld to i32
  store i32 %i.le, ptr %i.de, align 8
  %i.lf = and i64 %i.ld, 4294967295               ; 3 uses
  %i.lg = mul nuw nsw i64 %i.lf, 24
  %i.lh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lg) #17
          to label %bb.aq unwind label %bb.aw     ; 5 uses

bb.aq:                                            ; preds = %bb.ap
  %i.li = icmp eq i64 %i.lf, 0
  br i1 %i.li, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %i.lh, i64 %i.lf
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %i.lk = phi ptr [ %i.lh, %bb.ar ], [ %i.lm, %bb.as ] ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lk, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.ll, align 4
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 24 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.lj
  br i1 %i.ln, label %.loopexit, label %bb.as

.loopexit:                                        ; preds = %bb.as, %bb.aq
  store ptr %i.lh, ptr %i.df, align 8
  %i.lo = icmp sgt i64 %i.lc, 24
  br i1 %i.lo, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lh, ptr align 8 %i.kz, i64 %i.lc, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104

bb.au:                                            ; preds = %.loopexit
  %i.lp = icmp eq i64 %i.lc, 24
  br i1 %i.lp, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104.thread, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104.thread: ; preds = %bb.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lh, ptr noundef nonnull align 8 dereferenceable(24) %i.kz, i64 24, i1 false)
  br label %bb.av

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104: ; preds = %bb.au, %bb.at
  %.not.i.i.i105 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit106, label %bb.av

bb.av:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104
  %i.lq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = sub i64 %i.ls, %i.lb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.lt) #18
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit106

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit106:   ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ay

bb.aw:                                            ; preds = %bb.ap, %bb.ao
  %i.lu = landingpad { ptr, i32 }
          cleanup
  %i.lv = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i107 = icmp eq ptr %i.lv, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit108, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = ptrtoint ptr %i.lv to i64
  %i.ma = sub i64 %i.ly, %i.lz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lv, i64 noundef %i.ma) #18
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit108

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit108:   ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.az

bb.ay:                                            ; preds = %bb.t, %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit106, %bb.an, %bb.a
  ret void

bb.az:                                            ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit108, %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit103, %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit77
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hd, %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit103 ], [ %i.lu, %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit108 ], [ %i.ep, %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit77 ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !67 {
bb.a:
  %.sroa.9 = alloca [39 x i8], align 1            ; 10 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.4.8.copyload = load i8, ptr %3, align 8  ; 7 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9.8..sroa_idx, i64 39, i1 false)
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 3 uses
  %i.k = sdiv exact i64 %i.j, 40                  ; 3 uses
  %i.l = icmp ugt i64 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.idx = mul i64 %2, -40                         ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.idx, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.012.i.i.i.i.i, i64 40, i1 false)
end_hunk_0
