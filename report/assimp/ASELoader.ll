Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ASELoader?download=true
inline.NumInlined: 2170
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6Assimp11ASEImporter15BuildAnimationsERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EE:bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cn, i64 224
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cn, i64 232
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = load ptr, ptr %i.fv, align 8
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = sdiv exact i64 %i.gb, 24
  %i.gd = icmp ugt i64 %i.gc, 1
  br i1 %i.gd, label %bb.z, label %bb.ao

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.ge = call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #25 ; 10 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1048 ; 4 uses
  store ptr null, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 1056 ; 3 uses
  store i32 0, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1064 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.ge, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i8 0, i64 16, i1 false)
  %i.gi = load ptr, ptr %i.bq, align 8
  %i.gj = add i32 %.4, 1                          ; 2 uses
  %i.gk = zext i32 %.4 to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gk
  store ptr %i.ge, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.gn = load i64, ptr %i.gm, align 8            ; 4 uses
  %i.go = icmp ugt i64 %i.gn, 1023
  br i1 %i.go, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.gq = trunc nuw nsw i64 %i.gn to i32
  store i32 %i.gq, ptr %i.ge, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  %i.gs = load ptr, ptr %i.gp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gr, ptr align 1 %i.gs, i64 %i.gn, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gn
  store i8 0, ptr %i.gt, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76: ; preds = %bb.z, %bb.aa
  %i.gu = load ptr, ptr %i.ff, align 8
  %i.gv = load ptr, ptr %i.fe, align 8
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = sdiv exact i64 %i.gy, 24                ; 3 uses
  %i.ha = icmp ugt i64 %i.gz, 1
  br i1 %i.ha, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76
  %i.hb = trunc i64 %i.gz to i32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ge, i64 1028 ; 2 uses
  store i32 %i.hb, ptr %i.hc, align 4
  %i.hd = and i64 %i.gz, 4294967295               ; 3 uses
  %i.he = mul nuw nsw i64 %i.hd, 24
  %i.hf = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.he) #25 ; 4 uses
  %i.hg = icmp eq i64 %i.hd, 0
  br i1 %i.hg, label %.loopexit128, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %i.hd
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %i.hi = phi ptr [ %i.hf, %bb.ac ], [ %i.hk, %bb.ad ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.hj, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 24 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.hh
  br i1 %i.hl, label %.loopexit128, label %bb.ad

.loopexit128:                                     ; preds = %bb.ad, %bb.ab
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ge, i64 1032
  store ptr %i.hf, ptr %i.hm, align 8
  %i.hn = load ptr, ptr %i.fe, align 8
  %i.ho = load i32, ptr %i.hc, align 4
  %i.hp = zext i32 %i.ho to i64
  %i.hq = mul nuw nsw i64 %i.hp, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hf, ptr nonnull align 8 %i.hn, i64 %i.hq, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit128, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cn, i64 176 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cn, i64 184
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = load ptr, ptr %i.hr, align 8
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 5                 ; 4 uses
  %i.hz = icmp ugt i64 %i.hy, 1
  br i1 %i.hz, label %bb.af, label %.loopexit126

bb.af:                                            ; preds = %bb.ae
  %i.ia = trunc i64 %i.hy to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ge, i64 1040 ; 3 uses
  store i32 %i.ia, ptr %i.ib, align 8
  %i.ic = and i64 %i.hy, 4294967295               ; 4 uses
  %i.id = shl nuw nsw i64 %i.ic, 5
  %i.ie = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.id) #25 ; 8 uses
  %i.if = icmp eq i64 %i.ic, 0
  br i1 %i.if, label %.loopexit127, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr %i.ie, i64 %i.ic
  %i.ih = add nuw nsw i64 %i.ic, 576460752303423487
  %i.ii = and i64 %i.ih, 576460752303423487
  %xtraiter = and i64 %i.hy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ag, %.prol.preheader
  %i.ij = phi ptr [ %i.im, %.prol.preheader ], [ %i.ie, %bb.ag ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ag ]
  store double 0.000000e+00, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  store i32 1, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !102

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ag
  %.unr = phi ptr [ %i.ie, %bb.ag ], [ %i.im, %.prol.preheader ]
  %i.in = icmp samesign ult i64 %i.ii, 7
  br i1 %i.in, label %.loopexit127, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.io = phi ptr [ %i.jm, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  store i32 1, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  store double 0.000000e+00, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  store i32 1, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 64
  store double 0.000000e+00, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 88
  store i32 1, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 96
  store double 0.000000e+00, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.io, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.io, i64 120
  store i32 1, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.io, i64 128
  store double 0.000000e+00, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.io, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.io, i64 152
  store i32 1, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.io, i64 160
  store double 0.000000e+00, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.io, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.io, i64 184
  store i32 1, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.io, i64 192
  store double 0.000000e+00, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.io, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.io, i64 216
  store i32 1, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.io, i64 224
  store double 0.000000e+00, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.io, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.io, i64 248
  store i32 1, ptr %i.jl, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.io, i64 256 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.ig
  br i1 %i.jn, label %.loopexit127, label %.new

.loopexit127:                                     ; preds = %.prol.loopexit, %.new, %bb.af
  store ptr %i.ie, ptr %i.gf, align 8
  %i.jo = load i32, ptr %i.ib, align 8            ; 2 uses
  %.not149 = icmp eq i32 %i.jo, 0
  br i1 %.not149, label %.loopexit126, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %.loopexit127
  %i.jp = load ptr, ptr %i.hr, align 8            ; 4 uses
  %.sroa.0.0.copyload77.peel = load double, ptr %i.jp, align 8
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %.sroa.4.0.copyload.peel = load <2 x float>, ptr %.sroa.4.0..sroa_idx.peel, align 8 ; 6 uses
  %.sroa.8.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %.sroa.8.0.copyload.peel = load <2 x float>, ptr %.sroa.8.0..sroa_idx.peel, align 8 ; 7 uses
  %.sroa.11.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jq = load i64, ptr %.sroa.11.0..sroa_idx.peel, align 8
  %i.jr = load ptr, ptr %i.cb, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 184
  %i.jt = load i32, ptr %i.js, align 8
  %i.ju = icmp ugt i32 %i.jt, 110
  br i1 %i.ju, label %bb.ah, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel

bb.ah:                                            ; preds = %.lr.ph143.preheader
  %.pre161 = extractelement <2 x float> %.sroa.4.0.copyload.peel, i64 1 ; 2 uses
  %.pre163 = extractelement <2 x float> %.sroa.8.0.copyload.peel, i64 1 ; 2 uses
  %.pre164 = extractelement <2 x float> %.sroa.4.0.copyload.peel, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.8.0.copyload.peel, %.sroa.8.0.copyload.peel
  %i.jv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.jw = call float @llvm.fmuladd.f32(float %.pre161, float %.pre161, float %i.jv)
  %i.jx = call float @llvm.fmuladd.f32(float %.pre163, float %.pre163, float %i.jw)
  %i.jy = call float @llvm.fmuladd.f32(float %.pre164, float %.pre164, float %i.jx) ; 2 uses
  %i.jz = fcmp une float %i.jy, 0.000000e+00
  br i1 %i.jz, label %bb.ai, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel

bb.ai:                                            ; preds = %bb.ah
  %sqrt.i.peel = call float @llvm.sqrt.f32(float %i.jy)
  %i.ka = fdiv float 1.000000e+00, %sqrt.i.peel
  %i.kb = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kd = fmul <2 x float> %.sroa.8.0.copyload.peel, %i.kc ; 2 uses
  %i.ke = fmul <2 x float> %.sroa.4.0.copyload.peel, %i.kc ; 2 uses
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel

_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel:      ; preds = %bb.ai, %bb.ah, %.lr.ph143.preheader
  %.sroa.12.1.peel = phi <2 x float> [ zeroinitializer, %.lr.ph143.preheader ], [ %i.kd, %bb.ai ], [ %.sroa.8.0.copyload.peel, %bb.ah ]
  %.sroa.086.1.peel = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %.lr.ph143.preheader ], [ %i.ke, %bb.ai ], [ %.sroa.4.0.copyload.peel, %bb.ah ]
  %.sroa.8.0.peel = phi <2 x float> [ %.sroa.8.0.copyload.peel, %.lr.ph143.preheader ], [ %i.kd, %bb.ai ], [ %.sroa.8.0.copyload.peel, %bb.ah ]
  %.sroa.4.0.peel = phi <2 x float> [ %.sroa.4.0.copyload.peel, %.lr.ph143.preheader ], [ %i.ke, %bb.ai ], [ %.sroa.4.0.copyload.peel, %bb.ah ] ; 2 uses
  store double %.sroa.0.0.copyload77.peel, ptr %i.ie, align 8
  %.sroa.4.0..sroa_idx79.peel = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  store <2 x float> %.sroa.4.0.peel, ptr %.sroa.4.0..sroa_idx79.peel, align 8
  %.sroa.8.0..sroa_idx82.peel = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store <2 x float> %.sroa.8.0.peel, ptr %.sroa.8.0..sroa_idx82.peel, align 8
  %.sroa.11.0..sroa_idx85.peel = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %.sroa.11.0.extract.trunc.peel = trunc i64 %i.jq to i32
  store i32 %.sroa.11.0.extract.trunc.peel, ptr %.sroa.11.0..sroa_idx85.peel, align 8
  %i.kf = extractelement <2 x float> %.sroa.4.0.peel, i64 0
  %i.kg = fneg float %i.kf
  store float %i.kg, ptr %.sroa.4.0..sroa_idx79.peel, align 8
  %.not185 = icmp eq i32 %i.jo, 1
  br i1 %.not185, label %.loopexit126, label %.lr.ph143

.lr.ph143:                                        ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ], [ 1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 4 uses
  %.sroa.086.0140 = phi <2 x float> [ %.sroa.086.1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ], [ %.sroa.086.1.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 5 uses
  %.sroa.12.0139 = phi <2 x float> [ %.sroa.12.1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ], [ %.sroa.12.1.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 6 uses
  %i.kh = load ptr, ptr %i.hr, align 8
  %i.ki = getelementptr inbounds nuw [32 x i8], ptr %i.kh, i64 %indvars.iv ; 4 uses
  %.sroa.0.0.copyload77 = load double, ptr %i.ki, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.4.0.copyload = load <2 x float>, ptr %.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 8 ; 6 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kj = load i64, ptr %.sroa.11.0..sroa_idx, align 8
  %i.kk = load ptr, ptr %i.cb, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 184
  %i.km = load i32, ptr %i.kl, align 8
  %i.kn = icmp ugt i32 %i.km, 110
  br i1 %i.kn, label %bb.aj, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

bb.aj:                                            ; preds = %.lr.ph143
  %i.ko = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.12.12.vec.extract = extractelement <2 x float> %.sroa.12.0139, i64 1
  %i.kp = shufflevector <2 x float> %.sroa.086.0140, <2 x float> %.sroa.12.0139, <2 x i32> <i32 1, i32 2>
  %i.kq = fneg <2 x float> %i.kp                  ; 2 uses
  %i.kr = shufflevector <2 x float> %.sroa.4.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = fmul <2 x float> %.sroa.12.0139, %i.kr
  %i.kt = shufflevector <2 x float> %.sroa.086.0140, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ku = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kt, <2 x float> %.sroa.8.0.copyload, <2 x float> %i.ks)
  %i.kv = shufflevector <2 x float> %.sroa.12.0139, <2 x float> %.sroa.086.0140, <2 x i32> <i32 1, i32 3>
  %i.kw = shufflevector <2 x float> %.sroa.4.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.kx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> %i.kw, <2 x float> %i.ku)
  %i.ky = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.4.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.kz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kq, <2 x float> %i.ky, <2 x float> %i.kx) ; 6 uses
  %i.la = fneg float %.sroa.12.12.vec.extract
  %i.lb = shufflevector <2 x float> %.sroa.086.0140, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lc = fneg <2 x float> %.sroa.4.0.copyload
  %i.ld = shufflevector <2 x float> %i.lc, <2 x float> %.sroa.4.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.le = fmul <2 x float> %i.lb, %i.ld
  %i.lf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kt, <2 x float> %.sroa.4.0.copyload, <2 x float> %i.le)
  %i.lg = shufflevector <2 x float> %i.kq, <2 x float> %.sroa.12.0139, <2 x i32> <i32 1, i32 2>
  %i.lh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lg, <2 x float> %.sroa.8.0.copyload, <2 x float> %i.lf)
  %i.li = insertelement <2 x float> poison, float %i.la, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %i.ko, <2 x float> %i.lh) ; 5 uses
  %foldExtExtBinop190 = fmul <2 x float> %i.kz, %i.kz
  %i.ll = extractelement <2 x float> %foldExtExtBinop190, i64 0
  %i.lm = extractelement <2 x float> %i.lk, i64 1 ; 2 uses
  %i.ln = call float @llvm.fmuladd.f32(float %i.lm, float %i.lm, float %i.ll)
  %i.lo = extractelement <2 x float> %i.kz, i64 1 ; 2 uses
  %i.lp = call float @llvm.fmuladd.f32(float %i.lo, float %i.lo, float %i.ln)
  %i.lq = extractelement <2 x float> %i.lk, i64 0 ; 2 uses
  %i.lr = call float @llvm.fmuladd.f32(float %i.lq, float %i.lq, float %i.lp) ; 2 uses
  %i.ls = fcmp une float %i.lr, 0.000000e+00
  br i1 %i.ls, label %bb.ak, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

bb.ak:                                            ; preds = %bb.aj
  %sqrt.i = call float @llvm.sqrt.f32(float %i.lr)
  %i.lt = fdiv float 1.000000e+00, %sqrt.i
  %i.lu = insertelement <2 x float> poison, float %i.lt, i64 0
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lw = fmul <2 x float> %i.kz, %i.lv           ; 2 uses
  %i.lx = fmul <2 x float> %i.lk, %i.lv           ; 2 uses
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

_ZN13aiQuaterniontIfE9NormalizeEv.exit:           ; preds = %bb.ak, %bb.aj, %.lr.ph143
  %.sroa.12.1 = phi <2 x float> [ %.sroa.12.0139, %.lr.ph143 ], [ %i.lw, %bb.ak ], [ %i.kz, %bb.aj ]
  %.sroa.086.1 = phi <2 x float> [ %.sroa.086.0140, %.lr.ph143 ], [ %i.lx, %bb.ak ], [ %i.lk, %bb.aj ]
  %.sroa.8.0 = phi <2 x float> [ %.sroa.8.0.copyload, %.lr.ph143 ], [ %i.lw, %bb.ak ], [ %i.kz, %bb.aj ]
  %.sroa.4.0 = phi <2 x float> [ %.sroa.4.0.copyload, %.lr.ph143 ], [ %i.lx, %bb.ak ], [ %i.lk, %bb.aj ]
  %i.ly = load ptr, ptr %i.gf, align 8
  %i.lz = getelementptr inbounds nuw [32 x i8], ptr %i.ly, i64 %indvars.iv ; 4 uses
  store double %.sroa.0.0.copyload77, ptr %i.lz, align 8
  %.sroa.4.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store <2 x float> %.sroa.4.0, ptr %.sroa.4.0..sroa_idx79, align 8
  %.sroa.8.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  store <2 x float> %.sroa.8.0, ptr %.sroa.8.0..sroa_idx82, align 8
  %.sroa.11.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %.sroa.11.0.extract.trunc = trunc i64 %i.kj to i32
  store i32 %.sroa.11.0.extract.trunc, ptr %.sroa.11.0..sroa_idx85, align 8
  %i.ma = load ptr, ptr %i.gf, align 8
  %i.mb = getelementptr inbounds nuw [32 x i8], ptr %i.ma, i64 %indvars.iv
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 2 uses
  %i.md = load float, ptr %i.mc, align 8
  %i.me = fneg float %i.md
  store float %i.me, ptr %i.mc, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mf = load i32, ptr %i.ib, align 8
  %i.mg = zext i32 %i.mf to i64
  %i.mh = icmp samesign ult i64 %indvars.iv.next, %i.mg
  br i1 %i.mh, label %.lr.ph143, label %.loopexit126, !llvm.loop !103

.loopexit126:                                     ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel, %.loopexit127, %bb.ae
  %i.mi = getelementptr inbounds nuw i8, ptr %i.cn, i64 224 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.cn, i64 232
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = load ptr, ptr %i.mi, align 8
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = sub i64 %i.mm, %i.mn
  %i.mp = sdiv exact i64 %i.mo, 24                ; 3 uses
  %i.mq = icmp ugt i64 %i.mp, 1
  br i1 %i.mq, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.loopexit126
  %i.mr = trunc i64 %i.mp to i32
  store i32 %i.mr, ptr %i.gg, align 8
  %i.ms = and i64 %i.mp, 4294967295               ; 3 uses
  %i.mt = mul nuw nsw i64 %i.ms, 24
  %i.mu = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.mt) #25 ; 4 uses
  %i.mv = icmp eq i64 %i.ms, 0
  br i1 %i.mv, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mw = getelementptr inbounds nuw [24 x i8], ptr %i.mu, i64 %i.ms
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %i.mx = phi ptr [ %i.mu, %bb.am ], [ %i.mz, %bb.an ] ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mx, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.my, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 24 ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.mw
  br i1 %i.na, label %.loopexit, label %bb.an

.loopexit:                                        ; preds = %bb.an, %bb.al
  store ptr %i.mu, ptr %i.gh, align 8
  %i.nb = load ptr, ptr %i.mi, align 8
  %i.nc = load i32, ptr %i.gg, align 8
  %i.nd = zext i32 %i.nc to i64
  %i.ne = mul nuw nsw i64 %i.nd, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mu, ptr nonnull align 8 %i.nb, i64 %i.ne, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit126, %.loopexit, %bb.y
  %.5 = phi i32 [ %.4, %bb.y ], [ %i.gj, %.loopexit ], [ %i.gj, %.loopexit126 ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0111.1145, i64 8 ; 2 uses
  %i.ng = load ptr, ptr %i.b, align 8
  %.not125 = icmp eq ptr %i.nf, %i.ng
  br i1 %.not125, label %.loopexit130, label %bb.o, !llvm.loop !105

.loopexit130:                                     ; preds = %bb.ao, %bb.a, %bb.n, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11ASEImporter12BuildCamerasEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 360
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i32 %i.l, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #25
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store ptr %i.u, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load i32, ptr %i.y, align 8
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ 0, %bb.b ] ; 3 uses
  %i.aa = tail call noalias noundef nonnull dereferenceable(1084) ptr @_Znwm(i64 noundef 1084) #25 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1044
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1084) %i.aa, i8 0, i64 1044, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1060
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1064
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1068
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 1072
  store <4 x float> <float 1.000000e+00, float f0x3F490FDB, float 1.000000e-01, float 1.000000e+03>, ptr %i.ac, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 1076
  store <2 x float> zeroinitializer, ptr %i.ag, align 4
  %i.ah = load ptr, ptr %i.m, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  store ptr %i.aa, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw [360 x i8], ptr %i.an, i64 %indvars.iv ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 348
  %i.aq = load float, ptr %i.ap, align 4
  store float %i.aq, ptr %i.af, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 344
  %i.as = load float, ptr %i.ar, align 8          ; 2 uses
  %i.at = fcmp une float %i.as, 0.000000e+00
  %i.au = select i1 %i.at, float %i.as, float 1.000000e-01
  store float %i.au, ptr %i.ae, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 340
  %i.aw = load float, ptr %i.av, align 4
  store float %i.aw, ptr %i.ad, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ay = load i64, ptr %i.ax, align 8            ; 4 uses
  %i.az = icmp ugt i64 %i.ay, 1023
  br i1 %i.az, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bb = trunc nuw nsw i64 %i.ay to i32
  store i32 %i.bb, ptr %i.aa, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr align 1 %i.bd, i64 %i.ay, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ay
  store i8 0, ptr %i.be, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load ptr, ptr %i.m, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ult i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %.lr.ph, label %.loopexit, !llvm.loop !106

.loopexit:                                        ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11ASEImporter11BuildLightsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 368
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i32 %i.l, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #25
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr %i.u, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load i32, ptr %i.y, align 8
  %.not = icmp eq i32 %i.z, 0
end_hunk_0
