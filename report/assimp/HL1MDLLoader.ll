Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/HL1MDLLoader?download=true
inline.NumInlined: 2805
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15read_animationsEv:bb.a
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
  br i1 %i.km, label %.lr.ph164, label %._crit_edge165, !llvm.loop !352

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
  %sqrt.i = call float @llvm.sqrt.f32(float %i.sw)
  %i.ku = fdiv float 1.000000e+00, %sqrt.i
  %i.kv = insertelement <4 x float> poison, float %i.ku, i64 0
  %i.kw = shufflevector <4 x float> %i.kv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kx = fmul <4 x float> %i.so, %i.kw
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

_ZN13aiQuaterniontIfE9NormalizeEv.exit:           ; preds = %_ZN10aiVector3tIfEixEj.exit134.2, %bb.af
  %storemerge = phi <4 x float> [ %i.kx, %bb.af ], [ %i.so, %_ZN10aiVector3tIfEixEj.exit134.2 ]
  store <4 x float> %storemerge, ptr %i.sp, align 8
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.ky = load i32, ptr %i.ek, align 1
  %i.kz = sext i32 %i.ky to i64
  %i.la = icmp slt i64 %indvars.iv.next188, %i.kz
  br i1 %i.la, label %bb.ae, label %._crit_edge160, !llvm.loop !353

_ZN10aiVector3tIfEixEj.exit:                      ; preds = %bb.ae
  %i.lb = zext i16 %i.kt to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.lb ; 3 uses
  %i.ld = load float, ptr %i.js, align 1
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.lf = load i8, ptr %i.le, align 1             ; 2 uses
  %i.lg = zext i8 %i.lf to i64
  %.not18.i = icmp samesign ult i64 %indvars.iv187, %i.lg
  %i.lh = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN10aiVector3tIfEixEj.exit
  %i.li = zext i8 %i.lf to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.lj = phi i32 [ %i.lr, %.lr.ph.i ], [ %i.li, %.lr.ph.i.preheader ]
  %.020.i = phi i32 [ %i.lk, %.lr.ph.i ], [ %i.lh, %.lr.ph.i.preheader ]
  %.01619.i = phi ptr [ %i.lo, %.lr.ph.i ], [ %i.lc, %.lr.ph.i.preheader ] ; 2 uses
  %i.lk = sub nuw nsw i32 %.020.i, %i.lj          ; 3 uses
  %i.ll = load i8, ptr %.01619.i, align 1
  %i.lm = zext i8 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %.01619.i, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 2 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 3
  %i.lq = load i8, ptr %i.lp, align 1
  %i.lr = zext i8 %i.lq to i32                    ; 2 uses
  %.not.i116 = icmp samesign ult i32 %i.lk, %i.lr
  br i1 %.not.i116, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit, label %.lr.ph.i, !llvm.loop !11

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit: ; preds = %.lr.ph.i, %_ZN10aiVector3tIfEixEj.exit
  %.016.lcssa.i = phi ptr [ %i.lc, %_ZN10aiVector3tIfEixEj.exit ], [ %i.lo, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.lh, %_ZN10aiVector3tIfEixEj.exit ], [ %i.lk, %.lr.ph.i ] ; 2 uses
  %i.ls = load i8, ptr %.016.lcssa.i, align 1     ; 2 uses
  %i.lt = zext i8 %i.ls to i32
  %i.lu = icmp samesign ult i32 %.0.lcssa.i, %i.lt
  %i.lv = zext i8 %i.ls to i64
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i, i64 %i.lv
  %i.lx = zext nneg i32 %.0.lcssa.i to i64
  %i.ly = getelementptr [2 x i8], ptr %.016.lcssa.i, i64 %i.lx
  %i.lz = getelementptr i8, ptr %i.ly, i64 2
  %.pn.in.in.i = select i1 %i.lu, ptr %i.lz, ptr %i.lw
  %.pn.in.i = load i16, ptr %.pn.in.in.i, align 1
  %.pn.i = sitofp i16 %.pn.in.i to float
  %storemerge.i = fmul float %i.ld, %.pn.i
  br label %_ZN10aiVector3tIfEixEj.exit118

_ZN10aiVector3tIfEixEj.exit118:                   ; preds = %bb.ae, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit
  %.sroa.0136.0 = phi float [ 0.000000e+00, %bb.ae ], [ %storemerge.i, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit ]
  %i.ma = load float, ptr %i.jt, align 1
  %i.mb = fadd float %i.ma, %.sroa.0136.0
  %i.mc = load i16, ptr %.2161, align 1           ; 2 uses
  %.not114 = icmp eq i16 %i.mc, 0
  br i1 %.not114, label %_ZN10aiVector3tIfEixEj.exit134, label %_ZN10aiVector3tIfEixEj.exit120

_ZN10aiVector3tIfEixEj.exit120:                   ; preds = %_ZN10aiVector3tIfEixEj.exit118
  %i.md = zext i16 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.md ; 3 uses
  %i.mf = load float, ptr %i.jq, align 1
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 1
  %i.mh = load i8, ptr %i.mg, align 1             ; 2 uses
  %i.mi = zext i8 %i.mh to i64
  %.not18.i121 = icmp samesign ult i64 %indvars.iv187, %i.mi
  %i.mj = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i121, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132, label %.lr.ph.i122.preheader

.lr.ph.i122.preheader:                            ; preds = %_ZN10aiVector3tIfEixEj.exit120
  %i.mk = zext i8 %i.mh to i32
  br label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.preheader, %.lr.ph.i122
  %i.ml = phi i32 [ %i.mt, %.lr.ph.i122 ], [ %i.mk, %.lr.ph.i122.preheader ]
  %.020.i123 = phi i32 [ %i.mm, %.lr.ph.i122 ], [ %i.mj, %.lr.ph.i122.preheader ]
  %.01619.i124 = phi ptr [ %i.mq, %.lr.ph.i122 ], [ %i.me, %.lr.ph.i122.preheader ] ; 2 uses
  %i.mm = sub nuw nsw i32 %.020.i123, %i.ml       ; 3 uses
  %i.mn = load i8, ptr %.01619.i124, align 1
  %i.mo = zext i8 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.01619.i124, i64 %i.mo ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 2 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 3
  %i.ms = load i8, ptr %i.mr, align 1
  %i.mt = zext i8 %i.ms to i32                    ; 2 uses
  %.not.i125 = icmp samesign ult i32 %i.mm, %i.mt
  br i1 %.not.i125, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132, label %.lr.ph.i122, !llvm.loop !11

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132: ; preds = %.lr.ph.i122, %_ZN10aiVector3tIfEixEj.exit120
  %.016.lcssa.i126 = phi ptr [ %i.me, %_ZN10aiVector3tIfEixEj.exit120 ], [ %i.mq, %.lr.ph.i122 ] ; 3 uses
  %.0.lcssa.i127 = phi i32 [ %i.mj, %_ZN10aiVector3tIfEixEj.exit120 ], [ %i.mm, %.lr.ph.i122 ] ; 2 uses
  %i.mu = load i8, ptr %.016.lcssa.i126, align 1  ; 2 uses
  %i.mv = zext i8 %i.mu to i32
  %1 = icmp slt i32 %.0.lcssa.i127, %i.mv
  %i.mw = zext i8 %i.mu to i64
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i126, i64 %i.mw
  %2 = sext i32 %.0.lcssa.i127 to i64
  %i.my = getelementptr [2 x i8], ptr %.016.lcssa.i126, i64 %2
  %i.mz = getelementptr i8, ptr %i.my, i64 2
  %.pn.in.in.i128 = select i1 %1, ptr %i.mz, ptr %i.mx
  %.pn.in.i129 = load i16, ptr %.pn.in.in.i128, align 1
  %.pn.i130 = sitofp i16 %.pn.in.i129 to float
  %storemerge.i131 = fmul float %i.mf, %.pn.i130
  store float %storemerge.i131, ptr %i.kq, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134

_ZN10aiVector3tIfEixEj.exit134:                   ; preds = %_ZN10aiVector3tIfEixEj.exit118, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132
  %i.na = load float, ptr %i.jp, align 1
  %i.nb = load float, ptr %i.kq, align 4
  %i.nc = fadd float %i.na, %i.nb
  store float %i.nc, ptr %i.kq, align 4
  %i.nd = load i16, ptr %i.ju, align 1            ; 2 uses
  %.not113.1 = icmp eq i16 %i.nd, 0
  br i1 %.not113.1, label %_ZN10aiVector3tIfEixEj.exit118.1, label %_ZN10aiVector3tIfEixEj.exit.1

_ZN10aiVector3tIfEixEj.exit.1:                    ; preds = %_ZN10aiVector3tIfEixEj.exit134
  %i.ne = zext i16 %i.nd to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.ne ; 3 uses
  %i.ng = load float, ptr %i.jv, align 1
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  %i.ni = load i8, ptr %i.nh, align 1             ; 2 uses
  %i.nj = zext i8 %i.ni to i64
  %.not18.i.1 = icmp samesign ult i64 %indvars.iv187, %i.nj
  %i.nk = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1, label %.lr.ph.i.preheader.1

.lr.ph.i.preheader.1:                             ; preds = %_ZN10aiVector3tIfEixEj.exit.1
  %i.nl = zext i8 %i.ni to i32
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1, %.lr.ph.i.preheader.1
  %i.nm = phi i32 [ %i.nu, %.lr.ph.i.1 ], [ %i.nl, %.lr.ph.i.preheader.1 ]
  %.020.i.1 = phi i32 [ %i.nn, %.lr.ph.i.1 ], [ %i.nk, %.lr.ph.i.preheader.1 ]
  %.01619.i.1 = phi ptr [ %i.nr, %.lr.ph.i.1 ], [ %i.nf, %.lr.ph.i.preheader.1 ] ; 2 uses
  %i.nn = sub nuw nsw i32 %.020.i.1, %i.nm        ; 3 uses
  %i.no = load i8, ptr %.01619.i.1, align 1
  %i.np = zext i8 %i.no to i64
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.1, i64 %i.np ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 2 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 3
  %i.nt = load i8, ptr %i.ns, align 1
  %i.nu = zext i8 %i.nt to i32                    ; 2 uses
  %.not.i116.1 = icmp samesign ult i32 %i.nn, %i.nu
  br i1 %.not.i116.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1, label %.lr.ph.i.1, !llvm.loop !11

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1: ; preds = %.lr.ph.i.1, %_ZN10aiVector3tIfEixEj.exit.1
  %.016.lcssa.i.1 = phi ptr [ %i.nf, %_ZN10aiVector3tIfEixEj.exit.1 ], [ %i.nr, %.lr.ph.i.1 ] ; 3 uses
  %.0.lcssa.i.1 = phi i32 [ %i.nk, %_ZN10aiVector3tIfEixEj.exit.1 ], [ %i.nn, %.lr.ph.i.1 ] ; 2 uses
  %i.nv = load i8, ptr %.016.lcssa.i.1, align 1   ; 2 uses
  %i.nw = zext i8 %i.nv to i32
  %3 = icmp slt i32 %.0.lcssa.i.1, %i.nw
  %i.nx = zext i8 %i.nv to i64
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i.1, i64 %i.nx
  %4 = sext i32 %.0.lcssa.i.1 to i64
  %i.nz = getelementptr [2 x i8], ptr %.016.lcssa.i.1, i64 %4
  %i.oa = getelementptr i8, ptr %i.nz, i64 2
  %.pn.in.in.i.1 = select i1 %3, ptr %i.oa, ptr %i.ny
  %.pn.in.i.1 = load i16, ptr %.pn.in.in.i.1, align 1
  %.pn.i.1 = sitofp i16 %.pn.in.i.1 to float
  %storemerge.i.1 = fmul float %i.ng, %.pn.i.1
  br label %_ZN10aiVector3tIfEixEj.exit118.1

_ZN10aiVector3tIfEixEj.exit118.1:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1, %_ZN10aiVector3tIfEixEj.exit134
  %.sroa.6137.0 = phi float [ 0.000000e+00, %_ZN10aiVector3tIfEixEj.exit134 ], [ %storemerge.i.1, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1 ]
  %i.ob = load float, ptr %i.jw, align 1
  %i.oc = fadd float %i.ob, %.sroa.6137.0
  %i.od = load i16, ptr %i.jx, align 1            ; 2 uses
  %.not114.1 = icmp eq i16 %i.od, 0
  br i1 %.not114.1, label %_ZN10aiVector3tIfEixEj.exit134.1, label %_ZN10aiVector3tIfEixEj.exit120.1

_ZN10aiVector3tIfEixEj.exit120.1:                 ; preds = %_ZN10aiVector3tIfEixEj.exit118.1
  %i.oe = zext i16 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.oe ; 3 uses
  %i.og = load float, ptr %i.jy, align 1
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  %i.oi = load i8, ptr %i.oh, align 1             ; 2 uses
  %i.oj = zext i8 %i.oi to i64
  %.not18.i121.1 = icmp samesign ult i64 %indvars.iv187, %i.oj
  %i.ok = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i121.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1, label %.lr.ph.i122.preheader.1

.lr.ph.i122.preheader.1:                          ; preds = %_ZN10aiVector3tIfEixEj.exit120.1
  %i.ol = zext i8 %i.oi to i32
  br label %.lr.ph.i122.1

.lr.ph.i122.1:                                    ; preds = %.lr.ph.i122.1, %.lr.ph.i122.preheader.1
  %i.om = phi i32 [ %i.ou, %.lr.ph.i122.1 ], [ %i.ol, %.lr.ph.i122.preheader.1 ]
  %.020.i123.1 = phi i32 [ %i.on, %.lr.ph.i122.1 ], [ %i.ok, %.lr.ph.i122.preheader.1 ]
  %.01619.i124.1 = phi ptr [ %i.or, %.lr.ph.i122.1 ], [ %i.of, %.lr.ph.i122.preheader.1 ] ; 2 uses
  %i.on = sub nuw nsw i32 %.020.i123.1, %i.om     ; 3 uses
  %i.oo = load i8, ptr %.01619.i124.1, align 1
  %i.op = zext i8 %i.oo to i64
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %.01619.i124.1, i64 %i.op ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 2 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 3
  %i.ot = load i8, ptr %i.os, align 1
  %i.ou = zext i8 %i.ot to i32                    ; 2 uses
  %.not.i125.1 = icmp samesign ult i32 %i.on, %i.ou
  br i1 %.not.i125.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1, label %.lr.ph.i122.1, !llvm.loop !11

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1: ; preds = %.lr.ph.i122.1, %_ZN10aiVector3tIfEixEj.exit120.1
  %.016.lcssa.i126.1 = phi ptr [ %i.of, %_ZN10aiVector3tIfEixEj.exit120.1 ], [ %i.or, %.lr.ph.i122.1 ] ; 3 uses
  %.0.lcssa.i127.1 = phi i32 [ %i.ok, %_ZN10aiVector3tIfEixEj.exit120.1 ], [ %i.on, %.lr.ph.i122.1 ] ; 2 uses
  %i.ov = load i8, ptr %.016.lcssa.i126.1, align 1 ; 2 uses
  %i.ow = zext i8 %i.ov to i32
  %5 = icmp slt i32 %.0.lcssa.i127.1, %i.ow
  %i.ox = zext i8 %i.ov to i64
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i126.1, i64 %i.ox
  %6 = sext i32 %.0.lcssa.i127.1 to i64
  %i.oz = getelementptr [2 x i8], ptr %.016.lcssa.i126.1, i64 %6
  %i.pa = getelementptr i8, ptr %i.oz, i64 2
  %.pn.in.in.i128.1 = select i1 %5, ptr %i.pa, ptr %i.oy
  %.pn.in.i129.1 = load i16, ptr %.pn.in.in.i128.1, align 1
  %.pn.i130.1 = sitofp i16 %.pn.in.i129.1 to float
  %storemerge.i131.1 = fmul float %i.og, %.pn.i130.1
  store float %storemerge.i131.1, ptr %i.kr, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134.1

_ZN10aiVector3tIfEixEj.exit134.1:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1, %_ZN10aiVector3tIfEixEj.exit118.1
  %i.pb = load float, ptr %i.jz, align 1
  %i.pc = load float, ptr %i.kr, align 4
  %i.pd = fadd float %i.pb, %i.pc
  store float %i.pd, ptr %i.kr, align 4
  %i.pe = load i16, ptr %i.ka, align 1            ; 2 uses
  %.not113.2 = icmp eq i16 %i.pe, 0
  br i1 %.not113.2, label %_ZN10aiVector3tIfEixEj.exit118.2, label %_ZN10aiVector3tIfEixEj.exit.2

_ZN10aiVector3tIfEixEj.exit.2:                    ; preds = %_ZN10aiVector3tIfEixEj.exit134.1
  %i.pf = zext i16 %i.pe to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.pf ; 3 uses
  %i.ph = load float, ptr %i.kb, align 1
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 1
  %i.pj = load i8, ptr %i.pi, align 1             ; 2 uses
  %i.pk = zext i8 %i.pj to i64
  %.not18.i.2 = icmp samesign ult i64 %indvars.iv187, %i.pk
  %i.pl = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2, label %.lr.ph.i.preheader.2

.lr.ph.i.preheader.2:                             ; preds = %_ZN10aiVector3tIfEixEj.exit.2
  %i.pm = zext i8 %i.pj to i32
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.2, %.lr.ph.i.preheader.2
  %i.pn = phi i32 [ %i.pv, %.lr.ph.i.2 ], [ %i.pm, %.lr.ph.i.preheader.2 ]
  %.020.i.2 = phi i32 [ %i.po, %.lr.ph.i.2 ], [ %i.pl, %.lr.ph.i.preheader.2 ]
  %.01619.i.2 = phi ptr [ %i.ps, %.lr.ph.i.2 ], [ %i.pg, %.lr.ph.i.preheader.2 ] ; 2 uses
  %i.po = sub nuw nsw i32 %.020.i.2, %i.pn        ; 3 uses
  %i.pp = load i8, ptr %.01619.i.2, align 1
  %i.pq = zext i8 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.2, i64 %i.pq ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 2 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 3
  %i.pu = load i8, ptr %i.pt, align 1
  %i.pv = zext i8 %i.pu to i32                    ; 2 uses
  %.not.i116.2 = icmp samesign ult i32 %i.po, %i.pv
  br i1 %.not.i116.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2, label %.lr.ph.i.2, !llvm.loop !11

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2: ; preds = %.lr.ph.i.2, %_ZN10aiVector3tIfEixEj.exit.2
  %.016.lcssa.i.2 = phi ptr [ %i.pg, %_ZN10aiVector3tIfEixEj.exit.2 ], [ %i.ps, %.lr.ph.i.2 ] ; 3 uses
  %.0.lcssa.i.2 = phi i32 [ %i.pl, %_ZN10aiVector3tIfEixEj.exit.2 ], [ %i.po, %.lr.ph.i.2 ] ; 2 uses
  %i.pw = load i8, ptr %.016.lcssa.i.2, align 1   ; 2 uses
  %i.px = zext i8 %i.pw to i32
  %7 = icmp slt i32 %.0.lcssa.i.2, %i.px
  %i.py = zext i8 %i.pw to i64
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i.2, i64 %i.py
  %8 = sext i32 %.0.lcssa.i.2 to i64
  %i.qa = getelementptr [2 x i8], ptr %.016.lcssa.i.2, i64 %8
  %i.qb = getelementptr i8, ptr %i.qa, i64 2
  %.pn.in.in.i.2 = select i1 %7, ptr %i.qb, ptr %i.pz
  %.pn.in.i.2 = load i16, ptr %.pn.in.in.i.2, align 1
  %.pn.i.2 = sitofp i16 %.pn.in.i.2 to float
  %storemerge.i.2 = fmul float %i.ph, %.pn.i.2
  br label %_ZN10aiVector3tIfEixEj.exit118.2

_ZN10aiVector3tIfEixEj.exit118.2:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2, %_ZN10aiVector3tIfEixEj.exit134.1
  %.sroa.10.0 = phi float [ 0.000000e+00, %_ZN10aiVector3tIfEixEj.exit134.1 ], [ %storemerge.i.2, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2 ]
  %i.qc = load float, ptr %i.kc, align 1
  %i.qd = fadd float %i.qc, %.sroa.10.0
  %i.qe = load i16, ptr %i.kd, align 1            ; 2 uses
  %.not114.2 = icmp eq i16 %i.qe, 0
  br i1 %.not114.2, label %_ZN10aiVector3tIfEixEj.exit134.2, label %_ZN10aiVector3tIfEixEj.exit120.2

_ZN10aiVector3tIfEixEj.exit120.2:                 ; preds = %_ZN10aiVector3tIfEixEj.exit118.2
  %i.qf = zext i16 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %.2161, i64 %i.qf ; 3 uses
  %i.qh = load float, ptr %i.ke, align 1
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 1
  %i.qj = load i8, ptr %i.qi, align 1             ; 2 uses
  %i.qk = zext i8 %i.qj to i64
  %.not18.i121.2 = icmp samesign ult i64 %indvars.iv187, %i.qk
  %i.ql = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i121.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2, label %.lr.ph.i122.preheader.2

.lr.ph.i122.preheader.2:                          ; preds = %_ZN10aiVector3tIfEixEj.exit120.2
  %i.qm = zext i8 %i.qj to i32
  br label %.lr.ph.i122.2

.lr.ph.i122.2:                                    ; preds = %.lr.ph.i122.2, %.lr.ph.i122.preheader.2
  %i.qn = phi i32 [ %i.qv, %.lr.ph.i122.2 ], [ %i.qm, %.lr.ph.i122.preheader.2 ]
  %.020.i123.2 = phi i32 [ %i.qo, %.lr.ph.i122.2 ], [ %i.ql, %.lr.ph.i122.preheader.2 ]
  %.01619.i124.2 = phi ptr [ %i.qs, %.lr.ph.i122.2 ], [ %i.qg, %.lr.ph.i122.preheader.2 ] ; 2 uses
  %i.qo = sub nuw nsw i32 %.020.i123.2, %i.qn     ; 3 uses
  %i.qp = load i8, ptr %.01619.i124.2, align 1
  %i.qq = zext i8 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %.01619.i124.2, i64 %i.qq ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 2 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 3
  %i.qu = load i8, ptr %i.qt, align 1
  %i.qv = zext i8 %i.qu to i32                    ; 2 uses
  %.not.i125.2 = icmp samesign ult i32 %i.qo, %i.qv
  br i1 %.not.i125.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2, label %.lr.ph.i122.2, !llvm.loop !11

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2: ; preds = %.lr.ph.i122.2, %_ZN10aiVector3tIfEixEj.exit120.2
  %.016.lcssa.i126.2 = phi ptr [ %i.qg, %_ZN10aiVector3tIfEixEj.exit120.2 ], [ %i.qs, %.lr.ph.i122.2 ] ; 3 uses
  %.0.lcssa.i127.2 = phi i32 [ %i.ql, %_ZN10aiVector3tIfEixEj.exit120.2 ], [ %i.qo, %.lr.ph.i122.2 ] ; 2 uses
  %i.qw = load i8, ptr %.016.lcssa.i126.2, align 1 ; 2 uses
  %i.qx = zext i8 %i.qw to i32
  %9 = icmp slt i32 %.0.lcssa.i127.2, %i.qx
  %i.qy = zext i8 %i.qw to i64
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i126.2, i64 %i.qy
  %10 = sext i32 %.0.lcssa.i127.2 to i64
  %i.ra = getelementptr [2 x i8], ptr %.016.lcssa.i126.2, i64 %10
  %i.rb = getelementptr i8, ptr %i.ra, i64 2
  %.pn.in.in.i128.2 = select i1 %9, ptr %i.rb, ptr %i.qz
  %.pn.in.i129.2 = load i16, ptr %.pn.in.in.i128.2, align 1
  %.pn.i130.2 = sitofp i16 %.pn.in.i129.2 to float
  %storemerge.i131.2 = fmul float %i.qh, %.pn.i130.2
  store float %storemerge.i131.2, ptr %i.ks, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134.2

_ZN10aiVector3tIfEixEj.exit134.2:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2, %_ZN10aiVector3tIfEixEj.exit118.2
  %i.rc = load float, ptr %i.kf, align 1
  %i.rd = load float, ptr %i.ks, align 4
  %i.re = fadd float %i.rc, %i.rd
  store float %i.re, ptr %i.ks, align 4
  %i.rf = getelementptr inbounds nuw [32 x i8], ptr %i.kp, i64 %indvars.iv187 ; 2 uses
  %i.rg = trunc nuw nsw i64 %indvars.iv187 to i32
  %i.rh = uitofp nneg i32 %i.rg to double         ; 2 uses
  store double %i.rh, ptr %i.rf, align 8
  store double %i.rh, ptr %i.ko, align 8
  %i.ri = fmul float %i.oc, 5.000000e-01          ; 2 uses
  %i.rj = call noundef float @sinf(float noundef %i.ri) #23 ; 3 uses
  %i.rk = call noundef float @cosf(float noundef %i.ri) #23 ; 2 uses
  %i.rl = fmul float %i.qd, 5.000000e-01          ; 2 uses
  %i.rm = call noundef float @sinf(float noundef %i.rl) #23 ; 3 uses
  %i.rn = call noundef float @cosf(float noundef %i.rl) #23 ; 2 uses
  %i.ro = fmul float %i.mb, 5.000000e-01          ; 2 uses
  %i.rp = call noundef float @sinf(float noundef %i.ro) #23 ; 3 uses
  %i.rq = call noundef float @cosf(float noundef %i.ro) #23 ; 2 uses
  %i.rr = fmul float %i.rj, %i.rm                 ; 2 uses
  %i.rs = fneg float %i.rr
  %i.rt = fmul float %i.rk, %i.rp
  %i.ru = fmul float %i.rj, %i.rp
  %i.rv = fneg float %i.rn
  %i.rw = insertelement <4 x float> poison, float %i.rk, i64 0
  %i.rx = insertelement <4 x float> %i.rw, float %i.rj, i64 1
  %i.ry = shufflevector <4 x float> %i.rx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.rz = insertelement <4 x float> poison, float %i.rn, i64 0
  %i.sa = insertelement <4 x float> %i.rz, float %i.rq, i64 1 ; 2 uses
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.sc = fmul <4 x float> %i.ry, %i.sb
  %i.sd = insertelement <4 x float> poison, float %i.rr, i64 0
  %i.se = insertelement <4 x float> %i.sd, float %i.rq, i64 1
  %i.sf = insertelement <4 x float> %i.se, float %i.rm, i64 2
  %i.sg = insertelement <4 x float> %i.sf, float %i.ru, i64 3
  %i.sh = insertelement <4 x float> poison, float %i.rp, i64 0 ; 2 uses
  %i.si = insertelement <4 x float> %i.sh, float %i.rs, i64 1
  %i.sj = insertelement <4 x float> %i.si, float %i.rt, i64 2
  %i.sk = insertelement <4 x float> %i.sj, float %i.rv, i64 3
  %i.sl = fmul <4 x float> %i.sg, %i.sk
  %i.sm = shufflevector <4 x float> %i.sa, <4 x float> %i.sh, <4 x i32> <i32 1, i32 4, i32 0, i32 poison>
  %i.sn = insertelement <4 x float> %i.sm, float %i.rm, i64 3
  %i.so = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sn, <4 x float> %i.sc, <4 x float> %i.sl) ; 7 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.sq = extractelement <4 x float> %i.so, i64 0 ; 2 uses
  %i.sr = extractelement <4 x float> %i.so, i64 1 ; 2 uses
  %foldExtExtBinop = fmul <4 x float> %i.so, %i.so
  %i.ss = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.st = call float @llvm.fmuladd.f32(float %i.sr, float %i.sr, float %i.ss)
  %i.su = extractelement <4 x float> %i.so, i64 3 ; 2 uses
  %i.sv = call float @llvm.fmuladd.f32(float %i.su, float %i.su, float %i.st)
  %i.sw = call float @llvm.fmuladd.f32(float %i.sq, float %i.sq, float %i.sv) ; 2 uses
  %i.sx = fcmp une float %i.sw, 0.000000e+00
  br i1 %i.sx, label %bb.af, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

.loopexit143:                                     ; preds = %._crit_edge172, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader25get_num_blend_controllersEiRi.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3MDL8HalfLife12HL1MDLLoader19read_sequence_infosEv(ptr noundef nonnull align 8 dereferenceable(320) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !382 {
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
end_hunk_0
