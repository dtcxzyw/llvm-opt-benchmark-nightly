Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/HL1MDLLoader?download=true
inline.NumInlined: 2805
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15read_animationsEv:bb.a
  store ptr null, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 1056 ; 2 uses
  store i32 0, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 1064
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.gv, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i8 0, i64 16, i1 false)
  %i.gz = load ptr, ptr %i.fn, align 8
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv190
  store ptr %i.gv, ptr %i.ha, align 8
  %i.hb = load ptr, ptr %i.cf, align 8
  %i.hc = getelementptr inbounds nuw [160 x i8], ptr %i.hb, i64 %indvars.iv190
  %i.hd = load ptr, ptr %i.hc, align 8            ; 3 uses
  %i.he = icmp eq ptr %i.gv, %i.hd
  br i1 %i.he, label %_ZN8aiStringaSERKS_.exit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph164
  %i.hf = load i32, ptr %i.hd, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.hf, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.gv, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hi = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hg, ptr nonnull align 4 %i.hh, i64 %i.hi, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hi
  store i8 0, ptr %i.hj, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %.lr.ph164, %bb.aa
  %i.hk = load i32, ptr %i.ej, align 1            ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 1028
  store i32 %i.hk, ptr %i.hl, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gv, i64 1040
  store i32 %i.hk, ptr %i.hm, align 8
  store i32 0, ptr %i.gx, align 8
  %i.hn = zext i32 %i.hk to i64                   ; 4 uses
  %i.ho = mul nuw nsw i64 %i.hn, 24
  %i.hp = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ho) #26 ; 4 uses
  %i.hq = icmp eq i32 %i.hk, 0
  br i1 %i.hq, label %.loopexit142.thread, label %bb.ab

.loopexit142.thread:                              ; preds = %_ZN8aiStringaSERKS_.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gv, i64 1032 ; 2 uses
  store ptr %i.hp, ptr %i.hr, align 8
  %i.hs = call noalias noundef nonnull ptr @_Znam(i64 noundef 0) #26
  br label %.loopexit

bb.ab:                                            ; preds = %_ZN8aiStringaSERKS_.exit
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.hp, i64 %i.hn
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %i.hu = phi ptr [ %i.hp, %bb.ab ], [ %i.hw, %bb.ac ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.hv, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 24 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.ht
  br i1 %i.hx, label %bb.ad, label %bb.ac

bb.ad:                                            ; preds = %bb.ac
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gv, i64 1032 ; 3 uses
  store ptr %i.hp, ptr %i.hy, align 8
  %i.hz = shl nuw nsw i64 %i.hn, 5                ; 2 uses
  %i.ia = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.hz) #26 ; 5 uses
  %i.ib = getelementptr inbounds nuw [32 x i8], ptr %i.ia, i64 %i.hn
  %i.ic = add nsw i64 %i.hz, -32                  ; 2 uses
  %i.id = lshr exact i64 %i.ic, 5
  %i.ie = add nuw nsw i64 %i.id, 1
  %xtraiter = and i64 %i.ie, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ad, %.prol.preheader
  %i.if = phi ptr [ %i.ii, %.prol.preheader ], [ %i.ia, %bb.ad ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ad ]
  store double 0.000000e+00, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  store i32 1, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !228

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ad
  %.unr = phi ptr [ %i.ia, %bb.ad ], [ %i.ii, %.prol.preheader ]
  %i.ij = icmp ult i64 %i.ic, 224
  br i1 %i.ij, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ik = phi ptr [ %i.ji, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  store i32 1, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  store double 0.000000e+00, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  store i32 1, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  store double 0.000000e+00, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 88
  store i32 1, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 96
  store double 0.000000e+00, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ik, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ik, i64 120
  store i32 1, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 128
  store double 0.000000e+00, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ik, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ik, i64 152
  store i32 1, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ik, i64 160
  store double 0.000000e+00, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ik, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ik, i64 184
  store i32 1, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ik, i64 192
  store double 0.000000e+00, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ik, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.ik, i64 216
  store i32 1, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ik, i64 224
  store double 0.000000e+00, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ik, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ik, i64 248
  store i32 1, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ik, i64 256 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.ib
  br i1 %i.jj, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %.loopexit142.thread
  %i.jk = phi ptr [ %i.hs, %.loopexit142.thread ], [ %i.ia, %.new ], [ %i.ia, %.prol.loopexit ]
  %i.jl = phi ptr [ %i.hr, %.loopexit142.thread ], [ %i.hy, %.new ], [ %i.hy, %.prol.loopexit ]
  store ptr %i.jk, ptr %i.gw, align 8
  %i.jm = load i32, ptr %i.ej, align 1
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph159, label %._crit_edge160

.lr.ph159:                                        ; preds = %.loopexit
  %i.jo = getelementptr inbounds nuw i8, ptr %.097162, i64 64
  %i.jp = getelementptr inbounds nuw i8, ptr %.097162, i64 88
  %i.jq = getelementptr inbounds nuw i8, ptr %.2161, i64 6
  %i.jr = getelementptr inbounds nuw i8, ptr %.097162, i64 100
  %i.js = getelementptr inbounds nuw i8, ptr %.097162, i64 76
  %i.jt = getelementptr inbounds nuw i8, ptr %.2161, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %.097162, i64 104
  %i.jv = getelementptr inbounds nuw i8, ptr %.097162, i64 80
  %i.jw = getelementptr inbounds nuw i8, ptr %.2161, i64 2
  %i.jx = getelementptr inbounds nuw i8, ptr %.097162, i64 92
  %i.jy = getelementptr inbounds nuw i8, ptr %.097162, i64 68
  %i.jz = getelementptr inbounds nuw i8, ptr %.2161, i64 10
  %i.ka = getelementptr inbounds nuw i8, ptr %.097162, i64 108
  %i.kb = getelementptr inbounds nuw i8, ptr %.097162, i64 84
  %i.kc = getelementptr inbounds nuw i8, ptr %.2161, i64 4
  %i.kd = getelementptr inbounds nuw i8, ptr %.097162, i64 96
  %i.ke = getelementptr inbounds nuw i8, ptr %.097162, i64 72
  br label %bb.ae

._crit_edge160:                                   ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit, %.loopexit
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.097162, i64 112
  %i.kg = getelementptr inbounds nuw i8, ptr %.2161, i64 12 ; 2 uses
  %i.kh = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 140
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = sext i32 %i.kj to i64
  %i.kl = icmp slt i64 %indvars.iv.next191, %i.kk
  br i1 %i.kl, label %.lr.ph164, label %._crit_edge165, !llvm.loop !229

bb.ae:                                            ; preds = %.lr.ph159, %_ZN13aiQuaterniontIfE9NormalizeEv.exit
  %indvars.iv187 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next188, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ] ; 16 uses
  %i.km = load ptr, ptr %i.jl, align 8
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.km, i64 %indvars.iv187 ; 4 uses
  %i.ko = load ptr, ptr %i.gw, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 12 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 3 uses
  %i.ks = load i16, ptr %i.jq, align 1            ; 2 uses
  %.not113 = icmp eq i16 %i.ks, 0
  br i1 %.not113, label %_ZN10aiVector3tIfEixEj.exit118, label %_ZN10aiVector3tIfEixEj.exit

bb.af:                                            ; preds = %_ZN10aiVector3tIfEixEj.exit134.2
  %sqrt.i = call float @llvm.sqrt.f32(float %i.te)
  %i.kt = fdiv float 1.000000e+00, %sqrt.i
  %i.ku = insertelement <4 x float> poison, float %i.kt, i64 0
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kw = fmul <4 x float> %i.sx, %i.kv
  store <4 x float> %i.kw, ptr %i.sy, align 8
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

_ZN13aiQuaterniontIfE9NormalizeEv.exit:           ; preds = %_ZN10aiVector3tIfEixEj.exit134.2, %bb.af
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.kx = load i32, ptr %i.ej, align 1
  %i.ky = sext i32 %i.kx to i64
  %i.kz = icmp slt i64 %indvars.iv.next188, %i.ky
  br i1 %i.kz, label %bb.ae, label %._crit_edge160, !llvm.loop !230

_ZN10aiVector3tIfEixEj.exit:                      ; preds = %bb.ae
  %i.la = zext i16 %i.ks to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.la ; 3 uses
  %i.lc = load float, ptr %i.jr, align 1
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
  %i.lj = sub nsw i32 %.020.i, %i.li              ; 3 uses
  %i.lk = load i8, ptr %.01619.i, align 1
  %i.ll = zext i8 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %.01619.i, i64 %i.ll ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 2 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 3
  %i.lp = load i8, ptr %i.lo, align 1
  %i.lq = zext i8 %i.lp to i32                    ; 2 uses
  %.not.i116 = icmp slt i32 %i.lj, %i.lq
  br i1 %.not.i116, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit, label %.lr.ph.i, !llvm.loop !231

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit: ; preds = %.lr.ph.i, %_ZN10aiVector3tIfEixEj.exit
  %.016.lcssa.i = phi ptr [ %i.lb, %_ZN10aiVector3tIfEixEj.exit ], [ %i.ln, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.lg, %_ZN10aiVector3tIfEixEj.exit ], [ %i.lj, %.lr.ph.i ] ; 2 uses
  %i.lr = load i8, ptr %.016.lcssa.i, align 1     ; 2 uses
  %i.ls = zext i8 %i.lr to i32
  %i.lt = icmp slt i32 %.0.lcssa.i, %i.ls
  %i.lu = zext i8 %i.lr to i64
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i, i64 %i.lu
  %i.lw = sext i32 %.0.lcssa.i to i64
  %i.lx = getelementptr [2 x i8], ptr %.016.lcssa.i, i64 %i.lw
  %i.ly = getelementptr i8, ptr %i.lx, i64 2
  %.pn.in.in.i = select i1 %i.lt, ptr %i.ly, ptr %i.lv
  %.pn.in.i = load i16, ptr %.pn.in.in.i, align 1
  %.pn.i = sitofp i16 %.pn.in.i to float
  %storemerge.i = fmul float %i.lc, %.pn.i
  br label %_ZN10aiVector3tIfEixEj.exit118

_ZN10aiVector3tIfEixEj.exit118:                   ; preds = %bb.ae, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit
  %.sroa.0136.0 = phi float [ 0.000000e+00, %bb.ae ], [ %storemerge.i, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit ]
  %i.lz = load float, ptr %i.js, align 1
  %i.ma = fadd float %i.lz, %.sroa.0136.0
  %i.mb = load i16, ptr %.2161, align 1           ; 2 uses
  %.not114 = icmp eq i16 %i.mb, 0
  br i1 %.not114, label %_ZN10aiVector3tIfEixEj.exit134, label %_ZN10aiVector3tIfEixEj.exit120

_ZN10aiVector3tIfEixEj.exit120:                   ; preds = %_ZN10aiVector3tIfEixEj.exit118
  %i.mc = zext i16 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.mc ; 3 uses
  %i.me = load float, ptr %i.jp, align 1
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
  %i.ml = sub nsw i32 %.020.i123, %i.mk           ; 3 uses
  %i.mm = load i8, ptr %.01619.i124, align 1
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.01619.i124, i64 %i.mn ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 2 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 3
  %i.mr = load i8, ptr %i.mq, align 1
  %i.ms = zext i8 %i.mr to i32                    ; 2 uses
  %.not.i125 = icmp slt i32 %i.ml, %i.ms
  br i1 %.not.i125, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132, label %.lr.ph.i122, !llvm.loop !231

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
  store float %storemerge.i131, ptr %i.kp, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134

_ZN10aiVector3tIfEixEj.exit134:                   ; preds = %_ZN10aiVector3tIfEixEj.exit118, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132
  %i.nb = load float, ptr %i.jo, align 1
  %i.nc = load float, ptr %i.kp, align 4
  %i.nd = fadd float %i.nb, %i.nc
  store float %i.nd, ptr %i.kp, align 4
  %i.ne = load i16, ptr %i.jt, align 1            ; 2 uses
  %.not113.1 = icmp eq i16 %i.ne, 0
  br i1 %.not113.1, label %_ZN10aiVector3tIfEixEj.exit118.1, label %_ZN10aiVector3tIfEixEj.exit.1

_ZN10aiVector3tIfEixEj.exit.1:                    ; preds = %_ZN10aiVector3tIfEixEj.exit134
  %i.nf = zext i16 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.nf ; 3 uses
  %i.nh = load float, ptr %i.ju, align 1
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
  %i.no = sub nsw i32 %.020.i.1, %i.nn            ; 3 uses
  %i.np = load i8, ptr %.01619.i.1, align 1
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.1, i64 %i.nq ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 2 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 3
  %i.nu = load i8, ptr %i.nt, align 1
  %i.nv = zext i8 %i.nu to i32                    ; 2 uses
  %.not.i116.1 = icmp slt i32 %i.no, %i.nv
  br i1 %.not.i116.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1, label %.lr.ph.i.1, !llvm.loop !231

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
  %i.oe = load float, ptr %i.jv, align 1
  %i.of = fadd float %i.oe, %.sroa.6137.0
  %i.og = load i16, ptr %i.jw, align 1            ; 2 uses
  %.not114.1 = icmp eq i16 %i.og, 0
  br i1 %.not114.1, label %_ZN10aiVector3tIfEixEj.exit134.1, label %_ZN10aiVector3tIfEixEj.exit120.1

_ZN10aiVector3tIfEixEj.exit120.1:                 ; preds = %_ZN10aiVector3tIfEixEj.exit118.1
  %i.oh = zext i16 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.oh ; 3 uses
  %i.oj = load float, ptr %i.jx, align 1
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
  %i.oq = sub nsw i32 %.020.i123.1, %i.op         ; 3 uses
  %i.or = load i8, ptr %.01619.i124.1, align 1
  %i.os = zext i8 %i.or to i64
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %.01619.i124.1, i64 %i.os ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 2 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 3
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = zext i8 %i.ow to i32                    ; 2 uses
  %.not.i125.1 = icmp slt i32 %i.oq, %i.ox
  br i1 %.not.i125.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1, label %.lr.ph.i122.1, !llvm.loop !231

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
  store float %storemerge.i131.1, ptr %i.kq, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134.1

_ZN10aiVector3tIfEixEj.exit134.1:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1, %_ZN10aiVector3tIfEixEj.exit118.1
  %i.pg = load float, ptr %i.jy, align 1
  %i.ph = load float, ptr %i.kq, align 4
  %i.pi = fadd float %i.pg, %i.ph
  store float %i.pi, ptr %i.kq, align 4
  %i.pj = load i16, ptr %i.jz, align 1            ; 2 uses
  %.not113.2 = icmp eq i16 %i.pj, 0
  br i1 %.not113.2, label %_ZN10aiVector3tIfEixEj.exit118.2, label %_ZN10aiVector3tIfEixEj.exit.2

_ZN10aiVector3tIfEixEj.exit.2:                    ; preds = %_ZN10aiVector3tIfEixEj.exit134.1
  %i.pk = zext i16 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.pk ; 3 uses
  %i.pm = load float, ptr %i.ka, align 1
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
  %i.pt = sub nsw i32 %.020.i.2, %i.ps            ; 3 uses
  %i.pu = load i8, ptr %.01619.i.2, align 1
  %i.pv = zext i8 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.2, i64 %i.pv ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 2 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 3
  %i.pz = load i8, ptr %i.py, align 1
  %i.qa = zext i8 %i.pz to i32                    ; 2 uses
  %.not.i116.2 = icmp slt i32 %i.pt, %i.qa
  br i1 %.not.i116.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2, label %.lr.ph.i.2, !llvm.loop !231

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
  %i.qj = load float, ptr %i.kb, align 1
  %i.qk = fadd float %i.qj, %.sroa.10.0
  %i.ql = load i16, ptr %i.kc, align 1            ; 2 uses
  %.not114.2 = icmp eq i16 %i.ql, 0
  br i1 %.not114.2, label %_ZN10aiVector3tIfEixEj.exit134.2, label %_ZN10aiVector3tIfEixEj.exit120.2

_ZN10aiVector3tIfEixEj.exit120.2:                 ; preds = %_ZN10aiVector3tIfEixEj.exit118.2
  %i.qm = zext i16 %i.ql to i64
  %i.qn = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.qm ; 3 uses
  %i.qo = load float, ptr %i.kd, align 1
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
  %i.qv = sub nsw i32 %.020.i123.2, %i.qu         ; 3 uses
  %i.qw = load i8, ptr %.01619.i124.2, align 1
  %i.qx = zext i8 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %.01619.i124.2, i64 %i.qx ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 2 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 3
  %i.rb = load i8, ptr %i.ra, align 1
  %i.rc = zext i8 %i.rb to i32                    ; 2 uses
  %.not.i125.2 = icmp slt i32 %i.qv, %i.rc
  br i1 %.not.i125.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2, label %.lr.ph.i122.2, !llvm.loop !231

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
  store float %storemerge.i131.2, ptr %i.kr, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134.2

_ZN10aiVector3tIfEixEj.exit134.2:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2, %_ZN10aiVector3tIfEixEj.exit118.2
  %i.rl = load float, ptr %i.ke, align 1
  %i.rm = load float, ptr %i.kr, align 4
  %i.rn = fadd float %i.rl, %i.rm
  store float %i.rn, ptr %i.kr, align 4
  %i.ro = getelementptr inbounds nuw [32 x i8], ptr %i.ko, i64 %indvars.iv187 ; 5 uses
  %i.rp = trunc nuw nsw i64 %indvars.iv187 to i32
  %i.rq = uitofp nneg i32 %i.rp to double         ; 2 uses
  store double %i.rq, ptr %i.ro, align 8
  store double %i.rq, ptr %i.kn, align 8
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
  %i.sx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sw, <4 x float> %i.sl, <4 x float> %i.su) ; 5 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ro, i64 8 ; 2 uses
  %i.sz = extractelement <4 x float> %i.sx, i64 0 ; 3 uses
  store float %i.sz, ptr %i.sy, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  %i.ta = extractelement <4 x float> %i.sx, i64 1 ; 3 uses
  store float %i.ta, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.tb = extractelement <4 x float> %i.sx, i64 2 ; 3 uses
  store float %i.tb, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ro, i64 20
  %i.tc = extractelement <4 x float> %i.sx, i64 3 ; 3 uses
  store float %i.tc, ptr %.sroa.6.0..sroa_idx, align 4
  %1 = fmul float %i.tb, %i.tb
  %2 = call float @llvm.fmuladd.f32(float %i.ta, float %i.ta, float %1)
  %i.td = call float @llvm.fmuladd.f32(float %i.tc, float %i.tc, float %2)
  %i.te = call float @llvm.fmuladd.f32(float %i.sz, float %i.sz, float %i.td) ; 2 uses
  %i.tf = fcmp une float %i.te, 0.000000e+00
  br i1 %i.tf, label %bb.af, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

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
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %struct.aiString, align 4          ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %struct.aiString, align 4          ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
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
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
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
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
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
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aj) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ar, ptr %i.z, align 8
  store ptr %i.au, ptr %i.aa, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.av, ptr %i.ac, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.aw = load ptr, ptr %i.g, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 164 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 1104
  store i32 %i.ay, ptr %i.az, align 8
  %i.ba = zext i32 %i.ay to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 1112 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = load i32, ptr %i.ax, align 4
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %_ZNSt6vectorIP6aiNodeSaIS1_EE5clearEv.exit.lr.ph, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE5clearEv.exit.lr.ph: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
end_hunk_0
