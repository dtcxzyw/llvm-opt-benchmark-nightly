Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/HL1MDLLoader?download=true
inline.NumInlined: 2805
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15read_animationsEv:bb.a
  br i1 %i.gx, label %bb.q, label %._crit_edge172, !llvm.loop !235

.lr.ph164:                                        ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %._crit_edge160
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %._crit_edge160 ], [ 0, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %.097162 = phi ptr [ %i.kg, %._crit_edge160 ], [ %i.fj, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 13 uses
  %.2161 = phi ptr [ %i.kh, %._crit_edge160 ], [ %.1104167, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 13 uses
  %i.gy = call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #26 ; 11 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1048 ; 3 uses
  store ptr null, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 1056 ; 2 uses
  store i32 0, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 1064
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.gy, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i8 0, i64 16, i1 false)
  %i.hc = load ptr, ptr %i.fo, align 8
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv190
  store ptr %i.gy, ptr %i.hd, align 8
  %i.he = load ptr, ptr %i.cg, align 8
  %i.hf = getelementptr inbounds nuw [160 x i8], ptr %i.he, i64 %indvars.iv190
  %i.hg = load ptr, ptr %i.hf, align 8            ; 3 uses
  %i.hh = icmp eq ptr %i.gy, %i.hg
  br i1 %i.hh, label %_ZN8aiStringaSERKS_.exit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph164
  %i.hi = load i32, ptr %i.hg, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.hi, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.gy, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hl = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hj, ptr nonnull align 4 %i.hk, i64 %i.hl, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hl
  store i8 0, ptr %i.hm, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %.lr.ph164, %bb.aa
  %i.hn = load i32, ptr %i.ek, align 1            ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gy, i64 1028
  store i32 %i.hn, ptr %i.ho, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gy, i64 1040 ; 2 uses
  store i32 %i.hn, ptr %i.hp, align 8
  store i32 0, ptr %i.ha, align 8
  %i.hq = zext i32 %i.hn to i64                   ; 2 uses
  %i.hr = mul nuw nsw i64 %i.hq, 24
  %i.hs = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.hr) #26 ; 3 uses
  %i.ht = icmp eq i32 %i.hn, 0
  br i1 %i.ht, label %.loopexit142, label %bb.ab

bb.ab:                                            ; preds = %_ZN8aiStringaSERKS_.exit
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.hq
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %i.hv = phi ptr [ %i.hs, %bb.ab ], [ %i.hx, %bb.ac ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.hw, align 4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 24 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.hu
  br i1 %i.hy, label %.loopexit142, label %bb.ac

.loopexit142:                                     ; preds = %bb.ac, %_ZN8aiStringaSERKS_.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1032 ; 2 uses
  store ptr %i.hs, ptr %i.hz, align 8
  %i.ia = load i32, ptr %i.hp, align 8            ; 2 uses
  %i.ib = zext i32 %i.ia to i64                   ; 4 uses
  %i.ic = shl nuw nsw i64 %i.ib, 5
  %i.id = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ic) #26 ; 4 uses
  %i.ie = icmp eq i32 %i.ia, 0
  br i1 %i.ie, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.loopexit142
  %i.if = getelementptr inbounds nuw [32 x i8], ptr %i.id, i64 %i.ib
  %i.ig = add nuw nsw i64 %i.ib, 576460752303423487
  %i.ih = and i64 %i.ig, 576460752303423487
  %xtraiter = and i64 %i.ib, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ad, %.prol.preheader
  %i.ii = phi ptr [ %i.il, %.prol.preheader ], [ %i.id, %bb.ad ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ad ]
  store double 0.000000e+00, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  store i32 1, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !236

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ad
  %.unr = phi ptr [ %i.id, %bb.ad ], [ %i.il, %.prol.preheader ]
  %i.im = icmp samesign ult i64 %i.ih, 7
  br i1 %i.im, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.in = phi ptr [ %i.jl, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  store i32 1, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  store double 0.000000e+00, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 56
  store i32 1, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 64
  store double 0.000000e+00, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 88
  store i32 1, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.in, i64 96
  store double 0.000000e+00, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.in, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 120
  store i32 1, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.in, i64 128
  store double 0.000000e+00, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.in, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.in, i64 152
  store i32 1, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.in, i64 160
  store double 0.000000e+00, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.in, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.in, i64 184
  store i32 1, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.in, i64 192
  store double 0.000000e+00, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.in, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.in, i64 216
  store i32 1, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.in, i64 224
  store double 0.000000e+00, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.in, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.in, i64 248
  store i32 1, ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.in, i64 256 ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.if
  br i1 %i.jm, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %.loopexit142
  store ptr %i.id, ptr %i.gz, align 8
  %i.jn = load i32, ptr %i.ek, align 1
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %.lr.ph159, label %._crit_edge160

.lr.ph159:                                        ; preds = %.loopexit
  %i.jp = getelementptr inbounds nuw i8, ptr %.097162, i64 64
  %i.jq = getelementptr inbounds nuw i8, ptr %.097162, i64 88
  %i.jr = getelementptr inbounds nuw i8, ptr %.2161, i64 6
  %i.js = getelementptr inbounds nuw i8, ptr %.097162, i64 100
  %i.jt = getelementptr inbounds nuw i8, ptr %.097162, i64 76
  %i.ju = getelementptr inbounds nuw i8, ptr %.2161, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %.097162, i64 104
  %i.jw = getelementptr inbounds nuw i8, ptr %.097162, i64 80
  %i.jx = getelementptr inbounds nuw i8, ptr %.2161, i64 2
  %i.jy = getelementptr inbounds nuw i8, ptr %.097162, i64 92
  %i.jz = getelementptr inbounds nuw i8, ptr %.097162, i64 68
  %i.ka = getelementptr inbounds nuw i8, ptr %.2161, i64 10
  %i.kb = getelementptr inbounds nuw i8, ptr %.097162, i64 108
  %i.kc = getelementptr inbounds nuw i8, ptr %.097162, i64 84
  %i.kd = getelementptr inbounds nuw i8, ptr %.2161, i64 4
  %i.ke = getelementptr inbounds nuw i8, ptr %.097162, i64 96
  %i.kf = getelementptr inbounds nuw i8, ptr %.097162, i64 72
  br label %bb.ae

._crit_edge160:                                   ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit, %.loopexit
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.097162, i64 112
  %i.kh = getelementptr inbounds nuw i8, ptr %.2161, i64 12 ; 2 uses
  %i.ki = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 140
  %i.kk = load i32, ptr %i.kj, align 4
  %i.kl = sext i32 %i.kk to i64
  %i.km = icmp slt i64 %indvars.iv.next191, %i.kl
  br i1 %i.km, label %.lr.ph164, label %._crit_edge165, !llvm.loop !237

bb.ae:                                            ; preds = %.lr.ph159, %_ZN13aiQuaterniontIfE9NormalizeEv.exit
  %indvars.iv187 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next188, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ] ; 16 uses
  %i.kn = load ptr, ptr %i.hz, align 8
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %i.kn, i64 %indvars.iv187 ; 4 uses
  %i.kp = load ptr, ptr %i.gz, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 12 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 3 uses
  %i.kt = load i16, ptr %i.jr, align 1            ; 2 uses
  %.not113 = icmp eq i16 %i.kt, 0
  br i1 %.not113, label %_ZN10aiVector3tIfEixEj.exit118, label %_ZN10aiVector3tIfEixEj.exit

bb.af:                                            ; preds = %_ZN10aiVector3tIfEixEj.exit134.2
  %sqrt.i = call float @llvm.sqrt.f32(float %3)
  %1 = fdiv float 1.000000e+00, %sqrt.i
  %i.ku = insertelement <4 x float> poison, float %1, i64 0
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kw = fmul <4 x float> %i.sx, %i.kv
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

_ZN13aiQuaterniontIfE9NormalizeEv.exit:           ; preds = %_ZN10aiVector3tIfEixEj.exit134.2, %bb.af
  %storemerge = phi <4 x float> [ %i.kw, %bb.af ], [ %i.sx, %_ZN10aiVector3tIfEixEj.exit134.2 ]
  store <4 x float> %storemerge, ptr %2, align 8
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.kx = load i32, ptr %i.ek, align 1
  %i.ky = sext i32 %i.kx to i64
  %i.kz = icmp slt i64 %indvars.iv.next188, %i.ky
  br i1 %i.kz, label %bb.ae, label %._crit_edge160, !llvm.loop !238

_ZN10aiVector3tIfEixEj.exit:                      ; preds = %bb.ae
  %i.la = zext i16 %i.kt to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.la ; 3 uses
  %i.lc = load float, ptr %i.js, align 1
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  %i.le = load i8, ptr %i.ld, align 1             ; 2 uses
  %i.lf = zext i8 %i.le to i64
  %.not18.i = icmp samesign ult i64 %indvars.iv187, %i.lf
  %i.lg = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN10aiVector3tIfEixEj.exit
  %i.lh = zext i8 %i.le to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.li = phi i32 [ %i.lq, %.lr.ph.i ], [ %i.lh, %.lr.ph.i.preheader ]
  %.020.i = phi i32 [ %i.lj, %.lr.ph.i ], [ %i.lg, %.lr.ph.i.preheader ]
  %.01619.i = phi ptr [ %i.ln, %.lr.ph.i ], [ %i.lb, %.lr.ph.i.preheader ] ; 2 uses
  %i.lj = sub nuw nsw i32 %.020.i, %i.li          ; 3 uses
  %i.lk = load i8, ptr %.01619.i, align 1
  %i.ll = zext i8 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %.01619.i, i64 %i.ll ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 2 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 3
  %i.lp = load i8, ptr %i.lo, align 1
  %i.lq = zext i8 %i.lp to i32                    ; 2 uses
  %.not.i116 = icmp samesign ult i32 %i.lj, %i.lq
  br i1 %.not.i116, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit, label %.lr.ph.i, !llvm.loop !11

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit: ; preds = %.lr.ph.i, %_ZN10aiVector3tIfEixEj.exit
  %.016.lcssa.i = phi ptr [ %i.lb, %_ZN10aiVector3tIfEixEj.exit ], [ %i.ln, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.lg, %_ZN10aiVector3tIfEixEj.exit ], [ %i.lj, %.lr.ph.i ] ; 2 uses
  %i.lr = load i8, ptr %.016.lcssa.i, align 1     ; 2 uses
  %i.ls = zext i8 %i.lr to i32
  %i.lt = icmp samesign ult i32 %.0.lcssa.i, %i.ls
  %i.lu = zext i8 %i.lr to i64
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i, i64 %i.lu
  %i.lw = zext nneg i32 %.0.lcssa.i to i64
  %i.lx = getelementptr [2 x i8], ptr %.016.lcssa.i, i64 %i.lw
  %i.ly = getelementptr i8, ptr %i.lx, i64 2
  %.pn.in.in.i = select i1 %i.lt, ptr %i.ly, ptr %i.lv
  %.pn.in.i = load i16, ptr %.pn.in.in.i, align 1
  %.pn.i = sitofp i16 %.pn.in.i to float
  %storemerge.i = fmul float %i.lc, %.pn.i
  br label %_ZN10aiVector3tIfEixEj.exit118

_ZN10aiVector3tIfEixEj.exit118:                   ; preds = %bb.ae, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit
  %.sroa.0136.0 = phi float [ 0.000000e+00, %bb.ae ], [ %storemerge.i, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit ]
  %i.lz = load float, ptr %i.jt, align 1
  %i.ma = fadd float %i.lz, %.sroa.0136.0
  %i.mb = load i16, ptr %.2161, align 1           ; 2 uses
  %.not114 = icmp eq i16 %i.mb, 0
  br i1 %.not114, label %_ZN10aiVector3tIfEixEj.exit134, label %_ZN10aiVector3tIfEixEj.exit120

_ZN10aiVector3tIfEixEj.exit120:                   ; preds = %_ZN10aiVector3tIfEixEj.exit118
  %i.mc = zext i16 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.mc ; 3 uses
  %i.me = load float, ptr %i.jq, align 1
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 1
  %i.mg = load i8, ptr %i.mf, align 1             ; 2 uses
  %i.mh = zext i8 %i.mg to i64
  %.not18.i121 = icmp samesign ult i64 %indvars.iv187, %i.mh
  %i.mi = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i121, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132, label %.lr.ph.i122.preheader

.lr.ph.i122.preheader:                            ; preds = %_ZN10aiVector3tIfEixEj.exit120
  %i.mj = zext i8 %i.mg to i32
  br label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.preheader, %.lr.ph.i122
  %i.mk = phi i32 [ %i.ms, %.lr.ph.i122 ], [ %i.mj, %.lr.ph.i122.preheader ]
  %.020.i123 = phi i32 [ %i.ml, %.lr.ph.i122 ], [ %i.mi, %.lr.ph.i122.preheader ]
  %.01619.i124 = phi ptr [ %i.mp, %.lr.ph.i122 ], [ %i.md, %.lr.ph.i122.preheader ] ; 2 uses
  %i.ml = sub nuw nsw i32 %.020.i123, %i.mk       ; 3 uses
  %i.mm = load i8, ptr %.01619.i124, align 1
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.01619.i124, i64 %i.mn ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 2 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 3
  %i.mr = load i8, ptr %i.mq, align 1
  %i.ms = zext i8 %i.mr to i32                    ; 2 uses
  %.not.i125 = icmp samesign ult i32 %i.ml, %i.ms
  br i1 %.not.i125, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132, label %.lr.ph.i122, !llvm.loop !11

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132: ; preds = %.lr.ph.i122, %_ZN10aiVector3tIfEixEj.exit120
  %.016.lcssa.i126 = phi ptr [ %i.md, %_ZN10aiVector3tIfEixEj.exit120 ], [ %i.mp, %.lr.ph.i122 ] ; 3 uses
  %.0.lcssa.i127 = phi i32 [ %i.mi, %_ZN10aiVector3tIfEixEj.exit120 ], [ %i.ml, %.lr.ph.i122 ] ; 2 uses
  %i.mt = load i8, ptr %.016.lcssa.i126, align 1  ; 2 uses
  %i.mu = zext i8 %i.mt to i32
  %i.mv = icmp slt i32 %.0.lcssa.i127, %i.mu
  %i.mw = zext i8 %i.mt to i64
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i126, i64 %i.mw
  %i.my = sext i32 %.0.lcssa.i127 to i64
  %i.mz = getelementptr [2 x i8], ptr %.016.lcssa.i126, i64 %i.my
  %i.na = getelementptr i8, ptr %i.mz, i64 2
  %.pn.in.in.i128 = select i1 %i.mv, ptr %i.na, ptr %i.mx
  %.pn.in.i129 = load i16, ptr %.pn.in.in.i128, align 1
  %.pn.i130 = sitofp i16 %.pn.in.i129 to float
  %storemerge.i131 = fmul float %i.me, %.pn.i130
  store float %storemerge.i131, ptr %i.kq, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134

_ZN10aiVector3tIfEixEj.exit134:                   ; preds = %_ZN10aiVector3tIfEixEj.exit118, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132
  %i.nb = load float, ptr %i.jp, align 1
  %i.nc = load float, ptr %i.kq, align 4
  %i.nd = fadd float %i.nb, %i.nc
  store float %i.nd, ptr %i.kq, align 4
  %i.ne = load i16, ptr %i.ju, align 1            ; 2 uses
  %.not113.1 = icmp eq i16 %i.ne, 0
  br i1 %.not113.1, label %_ZN10aiVector3tIfEixEj.exit118.1, label %_ZN10aiVector3tIfEixEj.exit.1

_ZN10aiVector3tIfEixEj.exit.1:                    ; preds = %_ZN10aiVector3tIfEixEj.exit134
  %i.nf = zext i16 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.nf ; 3 uses
  %i.nh = load float, ptr %i.jv, align 1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 1
  %i.nj = load i8, ptr %i.ni, align 1             ; 2 uses
  %i.nk = zext i8 %i.nj to i64
  %.not18.i.1 = icmp samesign ult i64 %indvars.iv187, %i.nk
  %i.nl = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1, label %.lr.ph.i.preheader.1

.lr.ph.i.preheader.1:                             ; preds = %_ZN10aiVector3tIfEixEj.exit.1
  %i.nm = zext i8 %i.nj to i32
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1, %.lr.ph.i.preheader.1
  %i.nn = phi i32 [ %i.nv, %.lr.ph.i.1 ], [ %i.nm, %.lr.ph.i.preheader.1 ]
  %.020.i.1 = phi i32 [ %i.no, %.lr.ph.i.1 ], [ %i.nl, %.lr.ph.i.preheader.1 ]
  %.01619.i.1 = phi ptr [ %i.ns, %.lr.ph.i.1 ], [ %i.ng, %.lr.ph.i.preheader.1 ] ; 2 uses
  %i.no = sub nuw nsw i32 %.020.i.1, %i.nn        ; 3 uses
  %i.np = load i8, ptr %.01619.i.1, align 1
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.1, i64 %i.nq ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 2 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 3
  %i.nu = load i8, ptr %i.nt, align 1
  %i.nv = zext i8 %i.nu to i32                    ; 2 uses
  %.not.i116.1 = icmp samesign ult i32 %i.no, %i.nv
  br i1 %.not.i116.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1, label %.lr.ph.i.1, !llvm.loop !11

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1: ; preds = %.lr.ph.i.1, %_ZN10aiVector3tIfEixEj.exit.1
  %.016.lcssa.i.1 = phi ptr [ %i.ng, %_ZN10aiVector3tIfEixEj.exit.1 ], [ %i.ns, %.lr.ph.i.1 ] ; 3 uses
  %.0.lcssa.i.1 = phi i32 [ %i.nl, %_ZN10aiVector3tIfEixEj.exit.1 ], [ %i.no, %.lr.ph.i.1 ] ; 2 uses
  %i.nw = load i8, ptr %.016.lcssa.i.1, align 1   ; 2 uses
  %i.nx = zext i8 %i.nw to i32
  %i.ny = icmp slt i32 %.0.lcssa.i.1, %i.nx
  %i.nz = zext i8 %i.nw to i64
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i.1, i64 %i.nz
  %i.ob = sext i32 %.0.lcssa.i.1 to i64
  %i.oc = getelementptr [2 x i8], ptr %.016.lcssa.i.1, i64 %i.ob
  %i.od = getelementptr i8, ptr %i.oc, i64 2
  %.pn.in.in.i.1 = select i1 %i.ny, ptr %i.od, ptr %i.oa
  %.pn.in.i.1 = load i16, ptr %.pn.in.in.i.1, align 1
  %.pn.i.1 = sitofp i16 %.pn.in.i.1 to float
  %storemerge.i.1 = fmul float %i.nh, %.pn.i.1
  br label %_ZN10aiVector3tIfEixEj.exit118.1

_ZN10aiVector3tIfEixEj.exit118.1:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1, %_ZN10aiVector3tIfEixEj.exit134
  %.sroa.6137.0 = phi float [ 0.000000e+00, %_ZN10aiVector3tIfEixEj.exit134 ], [ %storemerge.i.1, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1 ]
  %i.oe = load float, ptr %i.jw, align 1
  %i.of = fadd float %i.oe, %.sroa.6137.0
  %i.og = load i16, ptr %i.jx, align 1            ; 2 uses
  %.not114.1 = icmp eq i16 %i.og, 0
  br i1 %.not114.1, label %_ZN10aiVector3tIfEixEj.exit134.1, label %_ZN10aiVector3tIfEixEj.exit120.1

_ZN10aiVector3tIfEixEj.exit120.1:                 ; preds = %_ZN10aiVector3tIfEixEj.exit118.1
  %i.oh = zext i16 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.oh ; 3 uses
  %i.oj = load float, ptr %i.jy, align 1
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 1
  %i.ol = load i8, ptr %i.ok, align 1             ; 2 uses
  %i.om = zext i8 %i.ol to i64
  %.not18.i121.1 = icmp samesign ult i64 %indvars.iv187, %i.om
  %i.on = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i121.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1, label %.lr.ph.i122.preheader.1

.lr.ph.i122.preheader.1:                          ; preds = %_ZN10aiVector3tIfEixEj.exit120.1
  %i.oo = zext i8 %i.ol to i32
  br label %.lr.ph.i122.1

.lr.ph.i122.1:                                    ; preds = %.lr.ph.i122.1, %.lr.ph.i122.preheader.1
  %i.op = phi i32 [ %i.ox, %.lr.ph.i122.1 ], [ %i.oo, %.lr.ph.i122.preheader.1 ]
  %.020.i123.1 = phi i32 [ %i.oq, %.lr.ph.i122.1 ], [ %i.on, %.lr.ph.i122.preheader.1 ]
  %.01619.i124.1 = phi ptr [ %i.ou, %.lr.ph.i122.1 ], [ %i.oi, %.lr.ph.i122.preheader.1 ] ; 2 uses
  %i.oq = sub nuw nsw i32 %.020.i123.1, %i.op     ; 3 uses
  %i.or = load i8, ptr %.01619.i124.1, align 1
  %i.os = zext i8 %i.or to i64
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %.01619.i124.1, i64 %i.os ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 2 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 3
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = zext i8 %i.ow to i32                    ; 2 uses
  %.not.i125.1 = icmp samesign ult i32 %i.oq, %i.ox
  br i1 %.not.i125.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1, label %.lr.ph.i122.1, !llvm.loop !11

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1: ; preds = %.lr.ph.i122.1, %_ZN10aiVector3tIfEixEj.exit120.1
  %.016.lcssa.i126.1 = phi ptr [ %i.oi, %_ZN10aiVector3tIfEixEj.exit120.1 ], [ %i.ou, %.lr.ph.i122.1 ] ; 3 uses
  %.0.lcssa.i127.1 = phi i32 [ %i.on, %_ZN10aiVector3tIfEixEj.exit120.1 ], [ %i.oq, %.lr.ph.i122.1 ] ; 2 uses
  %i.oy = load i8, ptr %.016.lcssa.i126.1, align 1 ; 2 uses
  %i.oz = zext i8 %i.oy to i32
  %i.pa = icmp slt i32 %.0.lcssa.i127.1, %i.oz
  %i.pb = zext i8 %i.oy to i64
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i126.1, i64 %i.pb
  %i.pd = sext i32 %.0.lcssa.i127.1 to i64
  %i.pe = getelementptr [2 x i8], ptr %.016.lcssa.i126.1, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.pe, i64 2
  %.pn.in.in.i128.1 = select i1 %i.pa, ptr %i.pf, ptr %i.pc
  %.pn.in.i129.1 = load i16, ptr %.pn.in.in.i128.1, align 1
  %.pn.i130.1 = sitofp i16 %.pn.in.i129.1 to float
  %storemerge.i131.1 = fmul float %i.oj, %.pn.i130.1
  store float %storemerge.i131.1, ptr %i.kr, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134.1

_ZN10aiVector3tIfEixEj.exit134.1:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1, %_ZN10aiVector3tIfEixEj.exit118.1
  %i.pg = load float, ptr %i.jz, align 1
  %i.ph = load float, ptr %i.kr, align 4
  %i.pi = fadd float %i.pg, %i.ph
  store float %i.pi, ptr %i.kr, align 4
  %i.pj = load i16, ptr %i.ka, align 1            ; 2 uses
  %.not113.2 = icmp eq i16 %i.pj, 0
  br i1 %.not113.2, label %_ZN10aiVector3tIfEixEj.exit118.2, label %_ZN10aiVector3tIfEixEj.exit.2

_ZN10aiVector3tIfEixEj.exit.2:                    ; preds = %_ZN10aiVector3tIfEixEj.exit134.1
  %i.pk = zext i16 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.pk ; 3 uses
  %i.pm = load float, ptr %i.kb, align 1
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 1
  %i.po = load i8, ptr %i.pn, align 1             ; 2 uses
  %i.pp = zext i8 %i.po to i64
  %.not18.i.2 = icmp samesign ult i64 %indvars.iv187, %i.pp
  %i.pq = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2, label %.lr.ph.i.preheader.2

.lr.ph.i.preheader.2:                             ; preds = %_ZN10aiVector3tIfEixEj.exit.2
  %i.pr = zext i8 %i.po to i32
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.2, %.lr.ph.i.preheader.2
  %i.ps = phi i32 [ %i.qa, %.lr.ph.i.2 ], [ %i.pr, %.lr.ph.i.preheader.2 ]
  %.020.i.2 = phi i32 [ %i.pt, %.lr.ph.i.2 ], [ %i.pq, %.lr.ph.i.preheader.2 ]
  %.01619.i.2 = phi ptr [ %i.px, %.lr.ph.i.2 ], [ %i.pl, %.lr.ph.i.preheader.2 ] ; 2 uses
  %i.pt = sub nuw nsw i32 %.020.i.2, %i.ps        ; 3 uses
  %i.pu = load i8, ptr %.01619.i.2, align 1
  %i.pv = zext i8 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.2, i64 %i.pv ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 2 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 3
  %i.pz = load i8, ptr %i.py, align 1
  %i.qa = zext i8 %i.pz to i32                    ; 2 uses
  %.not.i116.2 = icmp samesign ult i32 %i.pt, %i.qa
  br i1 %.not.i116.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2, label %.lr.ph.i.2, !llvm.loop !11

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2: ; preds = %.lr.ph.i.2, %_ZN10aiVector3tIfEixEj.exit.2
  %.016.lcssa.i.2 = phi ptr [ %i.pl, %_ZN10aiVector3tIfEixEj.exit.2 ], [ %i.px, %.lr.ph.i.2 ] ; 3 uses
  %.0.lcssa.i.2 = phi i32 [ %i.pq, %_ZN10aiVector3tIfEixEj.exit.2 ], [ %i.pt, %.lr.ph.i.2 ] ; 2 uses
  %i.qb = load i8, ptr %.016.lcssa.i.2, align 1   ; 2 uses
  %i.qc = zext i8 %i.qb to i32
  %i.qd = icmp slt i32 %.0.lcssa.i.2, %i.qc
  %i.qe = zext i8 %i.qb to i64
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i.2, i64 %i.qe
  %i.qg = sext i32 %.0.lcssa.i.2 to i64
  %i.qh = getelementptr [2 x i8], ptr %.016.lcssa.i.2, i64 %i.qg
  %i.qi = getelementptr i8, ptr %i.qh, i64 2
  %.pn.in.in.i.2 = select i1 %i.qd, ptr %i.qi, ptr %i.qf
  %.pn.in.i.2 = load i16, ptr %.pn.in.in.i.2, align 1
  %.pn.i.2 = sitofp i16 %.pn.in.i.2 to float
  %storemerge.i.2 = fmul float %i.pm, %.pn.i.2
  br label %_ZN10aiVector3tIfEixEj.exit118.2

_ZN10aiVector3tIfEixEj.exit118.2:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2, %_ZN10aiVector3tIfEixEj.exit134.1
  %.sroa.10.0 = phi float [ 0.000000e+00, %_ZN10aiVector3tIfEixEj.exit134.1 ], [ %storemerge.i.2, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2 ]
  %i.qj = load float, ptr %i.kc, align 1
  %i.qk = fadd float %i.qj, %.sroa.10.0
  %i.ql = load i16, ptr %i.kd, align 1            ; 2 uses
  %.not114.2 = icmp eq i16 %i.ql, 0
  br i1 %.not114.2, label %_ZN10aiVector3tIfEixEj.exit134.2, label %_ZN10aiVector3tIfEixEj.exit120.2

_ZN10aiVector3tIfEixEj.exit120.2:                 ; preds = %_ZN10aiVector3tIfEixEj.exit118.2
  %i.qm = zext i16 %i.ql to i64
  %i.qn = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.qm ; 3 uses
  %i.qo = load float, ptr %i.ke, align 1
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 1
  %i.qq = load i8, ptr %i.qp, align 1             ; 2 uses
  %i.qr = zext i8 %i.qq to i64
  %.not18.i121.2 = icmp samesign ult i64 %indvars.iv187, %i.qr
  %i.qs = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i121.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2, label %.lr.ph.i122.preheader.2

.lr.ph.i122.preheader.2:                          ; preds = %_ZN10aiVector3tIfEixEj.exit120.2
  %i.qt = zext i8 %i.qq to i32
  br label %.lr.ph.i122.2

.lr.ph.i122.2:                                    ; preds = %.lr.ph.i122.2, %.lr.ph.i122.preheader.2
  %i.qu = phi i32 [ %i.rc, %.lr.ph.i122.2 ], [ %i.qt, %.lr.ph.i122.preheader.2 ]
  %.020.i123.2 = phi i32 [ %i.qv, %.lr.ph.i122.2 ], [ %i.qs, %.lr.ph.i122.preheader.2 ]
  %.01619.i124.2 = phi ptr [ %i.qz, %.lr.ph.i122.2 ], [ %i.qn, %.lr.ph.i122.preheader.2 ] ; 2 uses
  %i.qv = sub nuw nsw i32 %.020.i123.2, %i.qu     ; 3 uses
  %i.qw = load i8, ptr %.01619.i124.2, align 1
  %i.qx = zext i8 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %.01619.i124.2, i64 %i.qx ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 2 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 3
  %i.rb = load i8, ptr %i.ra, align 1
  %i.rc = zext i8 %i.rb to i32                    ; 2 uses
  %.not.i125.2 = icmp samesign ult i32 %i.qv, %i.rc
  br i1 %.not.i125.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2, label %.lr.ph.i122.2, !llvm.loop !11

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2: ; preds = %.lr.ph.i122.2, %_ZN10aiVector3tIfEixEj.exit120.2
  %.016.lcssa.i126.2 = phi ptr [ %i.qn, %_ZN10aiVector3tIfEixEj.exit120.2 ], [ %i.qz, %.lr.ph.i122.2 ] ; 3 uses
  %.0.lcssa.i127.2 = phi i32 [ %i.qs, %_ZN10aiVector3tIfEixEj.exit120.2 ], [ %i.qv, %.lr.ph.i122.2 ] ; 2 uses
  %i.rd = load i8, ptr %.016.lcssa.i126.2, align 1 ; 2 uses
  %i.re = zext i8 %i.rd to i32
  %i.rf = icmp slt i32 %.0.lcssa.i127.2, %i.re
  %i.rg = zext i8 %i.rd to i64
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i126.2, i64 %i.rg
  %i.ri = sext i32 %.0.lcssa.i127.2 to i64
  %i.rj = getelementptr [2 x i8], ptr %.016.lcssa.i126.2, i64 %i.ri
  %i.rk = getelementptr i8, ptr %i.rj, i64 2
  %.pn.in.in.i128.2 = select i1 %i.rf, ptr %i.rk, ptr %i.rh
  %.pn.in.i129.2 = load i16, ptr %.pn.in.in.i128.2, align 1
  %.pn.i130.2 = sitofp i16 %.pn.in.i129.2 to float
  %storemerge.i131.2 = fmul float %i.qo, %.pn.i130.2
  store float %storemerge.i131.2, ptr %i.ks, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134.2

_ZN10aiVector3tIfEixEj.exit134.2:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2, %_ZN10aiVector3tIfEixEj.exit118.2
  %i.rl = load float, ptr %i.kf, align 1
  %i.rm = load float, ptr %i.ks, align 4
  %i.rn = fadd float %i.rl, %i.rm
  store float %i.rn, ptr %i.ks, align 4
  %i.ro = getelementptr inbounds nuw [32 x i8], ptr %i.kp, i64 %indvars.iv187 ; 2 uses
  %i.rp = trunc nuw nsw i64 %indvars.iv187 to i32
  %i.rq = uitofp nneg i32 %i.rp to double         ; 2 uses
  store double %i.rq, ptr %i.ro, align 8
  store double %i.rq, ptr %i.ko, align 8
  %i.rr = fmul float %i.of, 5.000000e-01          ; 2 uses
  %i.rs = call noundef float @sinf(float noundef %i.rr) #23 ; 3 uses
  %i.rt = call noundef float @cosf(float noundef %i.rr) #23 ; 2 uses
  %i.ru = fmul float %i.qk, 5.000000e-01          ; 2 uses
  %i.rv = call noundef float @sinf(float noundef %i.ru) #23 ; 3 uses
  %i.rw = call noundef float @cosf(float noundef %i.ru) #23 ; 2 uses
  %i.rx = fmul float %i.ma, 5.000000e-01          ; 2 uses
  %i.ry = call noundef float @sinf(float noundef %i.rx) #23 ; 3 uses
  %i.rz = call noundef float @cosf(float noundef %i.rx) #23 ; 2 uses
  %i.sa = fmul float %i.rs, %i.rv                 ; 2 uses
  %i.sb = fneg float %i.sa
  %i.sc = fmul float %i.rt, %i.ry
  %i.sd = fmul float %i.rs, %i.ry
  %i.se = fneg float %i.rw
  %i.sf = insertelement <4 x float> poison, float %i.rt, i64 0
  %i.sg = insertelement <4 x float> %i.sf, float %i.rs, i64 1
  %i.sh = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.si = insertelement <4 x float> poison, float %i.rw, i64 0
  %i.sj = insertelement <4 x float> %i.si, float %i.rz, i64 1 ; 2 uses
  %i.sk = shufflevector <4 x float> %i.sj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.sl = fmul <4 x float> %i.sh, %i.sk
  %i.sm = insertelement <4 x float> poison, float %i.sa, i64 0
  %i.sn = insertelement <4 x float> %i.sm, float %i.rz, i64 1
  %i.so = insertelement <4 x float> %i.sn, float %i.rv, i64 2
  %i.sp = insertelement <4 x float> %i.so, float %i.sd, i64 3
  %i.sq = insertelement <4 x float> poison, float %i.ry, i64 0 ; 2 uses
  %i.sr = insertelement <4 x float> %i.sq, float %i.sb, i64 1
  %i.ss = insertelement <4 x float> %i.sr, float %i.sc, i64 2
  %i.st = insertelement <4 x float> %i.ss, float %i.se, i64 3
  %i.su = fmul <4 x float> %i.sp, %i.st
  %i.sv = shufflevector <4 x float> %i.sj, <4 x float> %i.sq, <4 x i32> <i32 1, i32 4, i32 0, i32 poison>
  %i.sw = insertelement <4 x float> %i.sv, float %i.rv, i64 3
  %i.sx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sw, <4 x float> %i.sl, <4 x float> %i.su) ; 7 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.sy = extractelement <4 x float> %i.sx, i64 0 ; 2 uses
  %i.sz = extractelement <4 x float> %i.sx, i64 1 ; 2 uses
  %foldExtExtBinop = fmul <4 x float> %i.sx, %i.sx
  %i.ta = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.tb = call float @llvm.fmuladd.f32(float %i.sz, float %i.sz, float %i.ta)
  %i.tc = extractelement <4 x float> %i.sx, i64 3 ; 2 uses
  %i.td = call float @llvm.fmuladd.f32(float %i.tc, float %i.tc, float %i.tb)
  %3 = call float @llvm.fmuladd.f32(float %i.sy, float %i.sy, float %i.td) ; 2 uses
  %i.te = fcmp une float %3, 0.000000e+00
  br i1 %i.te, label %bb.af, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

.loopexit143:                                     ; preds = %._crit_edge172, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader25get_num_blend_controllersEiRi.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3MDL8HalfLife12HL1MDLLoader19read_sequence_infosEv(ptr noundef nonnull align 8 dereferenceable(320) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %struct.aiString, align 4          ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %struct.aiString, align 4          ; 6 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 164
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = tail call noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_16SequenceDesc_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef %i.l, i32 noundef %i.j)
  %i.o = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.p, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 20, ptr %i.f, align 8
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.q, ptr %11, align 8
  %i.r = load i64, ptr %i.f, align 8              ; 3 uses
  store i64 %i.r, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.q, ptr noundef nonnull align 1 dereferenceable(20) @.str.31, i64 20, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %11, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.noexc
  %i.v = load ptr, ptr %11, align 8               ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.x = load i64, ptr %i.p, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.o, ptr %i.ab, align 8
  %i.ae = load ptr, ptr %i.aa, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.aa, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load ptr, ptr %i.z, align 8             ; 4 uses
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.e, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #26 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  store ptr %i.o, ptr %i.as, align 8
  %i.at = icmp sgt i64 %i.aj, 0
  br i1 %i.at, label %bb.f, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.av = load ptr, ptr %i.ac, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ax) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ar, ptr %i.z, align 8
  store ptr %i.au, ptr %i.aa, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ay, ptr %i.ac, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.az = load ptr, ptr %i.g, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 164
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 1104
  store i32 %i.bb, ptr %i.bc, align 8
  %i.bd = zext i32 %i.bb to i64
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 1112 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.g, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 164
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %_ZNSt6vectorIP6aiNodeSaIS1_EE5clearEv.exit.lr.ph, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE5clearEv.exit.lr.ph: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_default_appendEm:bb.a
  store ptr %i.ao, ptr %0, align 8
  %i.bq = getelementptr inbounds nuw [10 x i8], ptr %i.ap, i64 %1
  store ptr %i.bq, ptr %i.a, align 8
  %i.br = getelementptr inbounds nuw [10 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.br, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp3MDL8HalfLife14HL1MeshTrivertEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE13_M_deallocateEPS3_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_16SequenceDesc_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.86)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext nneg i32 %2 to i64
  %i.i = sub nuw i64 %i.f, %i.d
  %i.j = udiv i64 %i.i, 176
  %i.k = icmp samesign ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.86)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  ret ptr %i.o

bb.k:                                             ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.l, %bb.i ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_17SequenceGroup_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.86)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext nneg i32 %2 to i64
  %i.i = sub nuw i64 %i.f, %i.d
  %i.j = udiv i64 %i.i, 104
  %i.k = icmp samesign ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.86)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  ret ptr %i.o

bb.k:                                             ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.l, %bb.i ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_19AnimValueOffset_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.86)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext nneg i32 %2 to i64
  %i.i = sub nuw i64 %i.f, %i.d
  %i.j = udiv i64 %i.i, 12
  %i.k = icmp samesign ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.86)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  ret ptr %i.o

bb.k:                                             ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.l, %bb.i ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_13AnimEvent_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.86)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext nneg i32 %2 to i64
  %i.i = sub nuw i64 %i.f, %i.d
  %i.j = udiv i64 %i.i, 76
  %i.k = icmp samesign ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.86)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  ret ptr %i.o

bb.k:                                             ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.l, %bb.i ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_14Attachment_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.86)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext nneg i32 %2 to i64
  %i.i = sub nuw i64 %i.f, %i.d
  %i.j = udiv i64 %i.i, 88
  %i.k = icmp samesign ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.86)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  ret ptr %i.o

bb.k:                                             ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.l, %bb.i ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_10Hitbox_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.86)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext nneg i32 %2 to i64
  %i.i = sub nuw i64 %i.f, %i.d
  %i.j = lshr i64 %i.i, 5
  %i.k = icmp samesign ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.86)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  ret ptr %i.o

bb.k:                                             ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.l, %bb.i ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_18BoneController_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.86)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_18BoneController_HL1EEEPKT_ii:bb.a
  %i.d = zext nneg i32 %1 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext nneg i32 %2 to i64
  %i.i = sub nuw i64 %i.f, %i.d
  %i.j = udiv i64 %i.i, 24
  %i.k = icmp samesign ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.86)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  ret ptr %i.o

bb.k:                                             ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.l, %bb.i ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA2_KcERKiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(376) %2, i32 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(2) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #23
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #23
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #23
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !499
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !499
  store i8 0, ptr %i.c, align 8, !alias.scope !499
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !499 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !499 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !499 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !499 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !499
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #24
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #23
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #23
  resume { ptr, i32 } %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = distinct !{!3, !24}
!4 = distinct !{!4, !24}
!5 = distinct !{!5, !24}
!6 = distinct !{!6, !24}
!7 = distinct !{!7, !24}
!8 = distinct !{!8, !24}
!9 = distinct !{!9, !24}
!10 = distinct !{!10, !24}
!11 = distinct !{!11, !24}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{null, null}
!15 = distinct !{!15, !24}
!16 = distinct !{!16, !24}
!17 = distinct !{!17, !24}
!18 = distinct !{!18, !24}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!22 = !{}
!23 = !{i8 0, i8 2}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{i64 8}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, i1 false, !"_ZN6Assimp3MDL8HalfLife13HL1DataBuffer4viewEPKhm"}
!28 = distinct !{!28, !27, !"_ZN6Assimp3MDL8HalfLife13HL1DataBuffer4viewEPKhm: argument 0"}
!29 = !{!28}
!30 = distinct !{!30, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!31 = distinct !{!31, !30, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!32 = distinct !{!32, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!33 = distinct !{!33, !32, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!34 = distinct !{!34, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!35 = distinct !{!35, !34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!36 = distinct !{!36, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!37 = distinct !{!37, !36, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!38 = distinct !{!38, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!39 = distinct !{!39, !38, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!40 = distinct !{!40, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!41 = distinct !{!41, !40, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!42 = distinct !{!42, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!43 = distinct !{!43, !42, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!44 = distinct !{!44, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!45 = distinct !{!45, !44, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!46 = distinct !{!46, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!47 = distinct !{!47, !46, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!48 = distinct !{!48, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!49 = distinct !{!49, !48, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!50 = distinct !{!50, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!51 = distinct !{!51, !50, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!52 = distinct !{!52, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!53 = distinct !{!53, !52, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!54 = distinct !{!54, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!55 = distinct !{!55, !54, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!56 = distinct !{!56, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!57 = distinct !{!57, !56, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!58 = distinct !{!58, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!59 = distinct !{!59, !58, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!60 = distinct !{!60, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!61 = distinct !{!61, !60, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!62 = distinct !{!62, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!63 = distinct !{!63, !62, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!64 = distinct !{!64, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!65 = distinct !{!65, !64, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!66 = distinct !{!66, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!67 = distinct !{!67, !66, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!68 = distinct !{!68, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!69 = distinct !{!69, !68, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!70 = distinct !{!70, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!71 = distinct !{!71, !70, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!72 = distinct !{!72, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!73 = distinct !{!73, !72, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!74 = distinct !{!74, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!75 = distinct !{!75, !74, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!76 = distinct !{!76, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!77 = distinct !{!77, !76, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!78 = distinct !{!78, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!79 = distinct !{!79, !78, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!80 = distinct !{!80, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!81 = distinct !{!81, !80, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!82 = distinct !{!82, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!83 = distinct !{!83, !82, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!84 = distinct !{!84, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!85 = distinct !{!85, !84, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!86 = distinct !{!86, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!87 = distinct !{!87, !86, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!88 = distinct !{!88, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!89 = distinct !{!89, !88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!90 = distinct !{!90, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!91 = distinct !{!91, !90, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!92 = distinct !{!92, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!93 = distinct !{!93, !92, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!94 = distinct !{!94, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!95 = distinct !{!95, !94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!96 = !{!31}
!97 = !{!33, !31}
!98 = !{!35}
!99 = !{!37}
!100 = !{!39}
!101 = !{!41}
!102 = !{!43}
!103 = !{!45}
!104 = !{!47}
!105 = !{!49}
!106 = !{!51}
!107 = !{!53}
!108 = !{!55, !53}
!109 = !{!57}
!110 = !{!59}
!111 = !{!61}
!112 = !{!63}
!113 = !{!65}
!114 = !{!67}
!115 = !{!69}
!116 = !{!71}
!117 = !{!73}
!118 = !{!75}
!119 = !{!77, !75}
!120 = !{!79}
!121 = !{!81}
!122 = !{!83}
!123 = !{!85}
!124 = !{!87}
!125 = !{!89}
!126 = !{!91}
!127 = !{!93}
!128 = !{!95}
!129 = distinct !{!129, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!130 = distinct !{!130, !129, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!131 = distinct !{!131, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!132 = distinct !{!132, !131, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!133 = distinct !{!133, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!134 = distinct !{!134, !133, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!135 = distinct !{!135, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!136 = distinct !{!136, !135, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!137 = distinct !{!137, i1 false, !"_ZN6Assimp3MDL8HalfLife13HL1DataBuffer4viewERKS2_"}
!138 = distinct !{!138, !137, !"_ZN6Assimp3MDL8HalfLife13HL1DataBuffer4viewERKS2_: argument 0"}
!139 = !{!130}
!140 = !{!132}
!141 = !{!134}
!142 = !{!136}
!143 = !{!138}
!144 = distinct !{!144, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!145 = distinct !{!145, !144, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!146 = distinct !{!146, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!147 = distinct !{!147, !146, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!148 = distinct !{null}
!149 = distinct !{!149, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!150 = distinct !{!150, !149, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!151 = distinct !{!151, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!152 = distinct !{!152, !151, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!153 = distinct !{!153, !24}
!154 = !{!145}
!155 = !{!147}
!156 = !{!150}
!157 = !{!152}
!158 = !{!152, !150}
!159 = distinct !{!159, !24}
!160 = distinct !{!160, !24, !162}
!161 = distinct !{!161, !24}
end_hunk_2
