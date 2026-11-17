Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texture3d?download=true
inline.NumInlined: 2854
inline.NumDeleted: 714
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  %i.vv = uitofp <4 x i16> %wide.load821 to <4 x float>
  %i.vw = fmul nnan <4 x float> %i.vv, splat (float f0x37800080)
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr %i.vf, i64 %index816
  %wide.load822 = load <4 x i16>, ptr %i.vx, align 2, !tbaa !298
  %i.vy = uitofp <4 x i16> %wide.load822 to <4 x float>
  %i.vz = fmul nnan <4 x float> %i.vy, splat (float f0x37800080)
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.vg, i64 %index816
  %wide.load823 = load <4 x i16>, ptr %i.wa, align 2, !tbaa !298
  %i.wb = uitofp <4 x i16> %wide.load823 to <4 x float>
  %i.wc = fmul nnan <4 x float> %i.wb, splat (float f0x37800080)
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %i.vh, i64 %index816
  %wide.load824 = load <4 x i16>, ptr %i.wd, align 2, !tbaa !298
  %i.we = uitofp <4 x i16> %wide.load824 to <4 x float>
  %i.wf = fmul nnan <4 x float> %i.we, splat (float f0x37800080)
  %i.wg = fmul <4 x float> %broadcast.splat808, %i.vn
  %i.wh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vk, <4 x float> %broadcast.splat802, <4 x float> %i.wg)
  %i.wi = fmul <4 x float> %broadcast.splat808, %i.vt
  %i.wj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vq, <4 x float> %broadcast.splat802, <4 x float> %i.wi)
  %i.wk = fmul <4 x float> %broadcast.splat810, %i.wj
  %i.wl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat804, <4 x float> %i.wh, <4 x float> %i.wk)
  %i.wm = fmul <4 x float> %broadcast.splat808, %i.vz
  %i.wn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vw, <4 x float> %broadcast.splat802, <4 x float> %i.wm)
  %i.wo = fmul <4 x float> %broadcast.splat808, %i.wf
  %i.wp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wc, <4 x float> %broadcast.splat802, <4 x float> %i.wo)
  %i.wq = fmul <4 x float> %broadcast.splat810, %i.wp
  %i.wr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat804, <4 x float> %i.wn, <4 x float> %i.wq)
  %i.ws = fmul <4 x float> %broadcast.splat812, %i.wr
  %i.wt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat806, <4 x float> %i.wl, <4 x float> %i.ws)
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index816 ; 2 uses
  %wide.load825 = load <4 x float>, ptr %i.wu, align 4, !tbaa !245
  %i.wv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat814, <4 x float> %i.wt, <4 x float> %wide.load825)
  store <4 x float> %i.wv, ptr %i.wu, align 4, !tbaa !245
  %index.next826 = add nuw i64 %index816, 4       ; 2 uses
  %i.ww = icmp eq i64 %index.next826, %n.vec800
  br i1 %i.ww, label %middle.block827, label %vector.body815, !llvm.loop !537

middle.block827:                                  ; preds = %vector.body815
  %cmp.n828 = icmp eq i64 %n.vec800, %wide.trip.count.i
  br i1 %cmp.n828, label %._crit_edge.i, label %scalar.ph797.preheader

scalar.ph797.preheader:                           ; preds = %.lr.ph.i, %middle.block827
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec800, %middle.block827 ]
  br label %scalar.ph797

._crit_edge.i:                                    ; preds = %scalar.ph797, %middle.block827, %bb.br
  %.not.i386 = icmp eq ptr %10, null
  br i1 %.not.i386, label %.critedge, label %bb.bs

scalar.ph797:                                     ; preds = %scalar.ph797.preheader, %scalar.ph797
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph797 ], [ %indvars.iv.i.ph, %scalar.ph797.preheader ] ; 10 uses
  %i.wx = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %indvars.iv.i
  %i.wy = load i16, ptr %i.wx, align 2, !tbaa !298
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %i.vb, i64 %indvars.iv.i
  %i.xa = load i16, ptr %i.wz, align 2, !tbaa !298
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv.i
  %i.xc = load i16, ptr %i.xb, align 2, !tbaa !298
  %i.xd = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %indvars.iv.i
  %i.xe = load i16, ptr %i.xd, align 2, !tbaa !298
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv.i
  %i.xg = load i16, ptr %i.xf, align 2, !tbaa !298
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %i.vf, i64 %indvars.iv.i
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !298
  %i.xj = getelementptr inbounds nuw [2 x i8], ptr %i.vg, i64 %indvars.iv.i
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !298
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr %i.vh, i64 %indvars.iv.i
  %i.xm = load i16, ptr %i.xl, align 2, !tbaa !298
  %i.xn = insertelement <8 x i16> poison, i16 %i.wy, i64 0
  %i.xo = insertelement <8 x i16> %i.xn, i16 %i.xa, i64 1
  %i.xp = insertelement <8 x i16> %i.xo, i16 %i.xc, i64 2
  %i.xq = insertelement <8 x i16> %i.xp, i16 %i.xe, i64 3
  %i.xr = insertelement <8 x i16> %i.xq, i16 %i.xg, i64 4
  %i.xs = insertelement <8 x i16> %i.xr, i16 %i.xi, i64 5
  %i.xt = insertelement <8 x i16> %i.xs, i16 %i.xk, i64 6
  %i.xu = insertelement <8 x i16> %i.xt, i16 %i.xm, i64 7
  %i.xv = uitofp <8 x i16> %i.xu to <8 x float>
  %i.xw = fmul nnan <8 x float> %i.xv, splat (float f0x37800080) ; 8 uses
  %i.xx = extractelement <8 x float> %i.xw, i64 1
  %i.xy = fmul float %i.ao, %i.xx
  %i.xz = extractelement <8 x float> %i.xw, i64 0
  %i.ya = call float @llvm.fmuladd.f32(float %i.xz, float %i.ux, float %i.xy)
  %i.yb = extractelement <8 x float> %i.xw, i64 3
  %i.yc = fmul float %i.ao, %i.yb
  %i.yd = extractelement <8 x float> %i.xw, i64 2
  %i.ye = call float @llvm.fmuladd.f32(float %i.yd, float %i.ux, float %i.yc)
  %i.yf = fmul float %i.ax, %i.ye
  %i.yg = call float @llvm.fmuladd.f32(float %i.uy, float %i.ya, float %i.yf)
  %i.yh = extractelement <8 x float> %i.xw, i64 5
  %i.yi = fmul float %i.ao, %i.yh
  %i.yj = extractelement <8 x float> %i.xw, i64 4
  %i.yk = call float @llvm.fmuladd.f32(float %i.yj, float %i.ux, float %i.yi)
  %i.yl = extractelement <8 x float> %i.xw, i64 7
  %i.ym = fmul float %i.ao, %i.yl
  %i.yn = extractelement <8 x float> %i.xw, i64 6
  %i.yo = call float @llvm.fmuladd.f32(float %i.yn, float %i.ux, float %i.ym)
  %i.yp = fmul float %i.ax, %i.yo
  %i.yq = call float @llvm.fmuladd.f32(float %i.uy, float %i.yk, float %i.yp)
  %i.yr = fmul float %i.aw, %i.yq
  %i.ys = call noundef float @llvm.fmuladd.f32(float %i.uz, float %i.yg, float %i.yr)
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.i ; 2 uses
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !245
  %i.yv = call float @llvm.fmuladd.f32(float %8, float %i.ys, float %i.yu)
  store float %i.yv, ptr %i.yt, align 4, !tbaa !245
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph797, !llvm.loop !538

bb.bs:                                            ; preds = %._crit_edge.i
  %i.yw = getelementptr inbounds nuw i8, ptr %i.up, i64 36
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !272
  %i.yy = sitofp i32 %i.yx to float
  %i.yz = fmul float %8, %i.yy                    ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.up, i64 40
  %i.zb = load <2 x i32>, ptr %i.za, align 4, !tbaa !42
  %i.zc = sitofp <2 x i32> %i.zb to <2 x float>   ; 2 uses
  %i.zd = extractelement <2 x float> %i.zc, i64 0
  %i.ze = fmul float %8, %i.zd                    ; 2 uses
  %i.zf = extractelement <2 x float> %i.zc, i64 1
  %i.zg = fmul float %8, %i.zf                    ; 2 uses
  br i1 %.not549, label %.critedge, label %.lr.ph148.i

.lr.ph148.i:                                      ; preds = %bb.bs
  %i.zh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.zj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.zk = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.zl = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.zm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.zn = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.zo = fsub float 1.000000e+00, %i.ax          ; 4 uses
  %i.zp = fsub float 1.000000e+00, %i.aw          ; 3 uses
  %i.zq = fsub float 1.000000e+00, %i.ao          ; 4 uses
  %wide.trip.count153.i = zext nneg i32 %7 to i64 ; 4 uses
  %i.zr = load ptr, ptr %i.zh, align 8, !tbaa !192 ; 2 uses
  %i.zs = load ptr, ptr %i.e, align 16, !tbaa !192 ; 2 uses
  %i.zt = load ptr, ptr %i.zj, align 8, !tbaa !192 ; 2 uses
  %i.zu = load ptr, ptr %i.zi, align 16, !tbaa !192 ; 2 uses
  %i.zv = load ptr, ptr %i.zl, align 8, !tbaa !192 ; 2 uses
  %i.zw = load ptr, ptr %i.zk, align 16, !tbaa !192 ; 2 uses
  %i.zx = load ptr, ptr %i.zn, align 8, !tbaa !192 ; 2 uses
  %i.zy = load ptr, ptr %i.zm, align 16, !tbaa !192 ; 2 uses
  %min.iters.check845 = icmp ult i32 %7, 4
  br i1 %min.iters.check845, label %scalar.ph844.preheader, label %vector.memcheck846

vector.memcheck846:                               ; preds = %.lr.ph148.i
  %i.zz = shl nuw nsw i64 %wide.trip.count153.i, 2 ; 3 uses
  %i.aaa = getelementptr i8, ptr %10, i64 %i.zz   ; 2 uses
  %i.aab = getelementptr i8, ptr %11, i64 %i.zz   ; 2 uses
  %i.aac = getelementptr i8, ptr %12, i64 %i.zz   ; 2 uses
  %bound0847 = icmp ult ptr %10, %i.aab
  %bound1848 = icmp ult ptr %11, %i.aaa
  %found.conflict849 = and i1 %bound0847, %bound1848
  %bound0850 = icmp ult ptr %10, %i.aac
  %bound1851 = icmp ult ptr %12, %i.aaa
  %found.conflict852 = and i1 %bound0850, %bound1851
  %conflict.rdx853 = or i1 %found.conflict849, %found.conflict852
  %bound0854 = icmp ult ptr %11, %i.aac
  %bound1855 = icmp ult ptr %12, %i.aab
  %found.conflict856 = and i1 %bound0854, %bound1855
  %conflict.rdx857 = or i1 %conflict.rdx853, %found.conflict856
  br i1 %conflict.rdx857, label %scalar.ph844.preheader, label %vector.ph858

vector.ph858:                                     ; preds = %vector.memcheck846
  %n.vec859 = and i64 %wide.trip.count153.i, 2147483644 ; 3 uses
  %broadcast.splatinsert860 = insertelement <4 x float> poison, float %i.zo, i64 0
  %broadcast.splat861 = shufflevector <4 x float> %broadcast.splatinsert860, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert862 = insertelement <4 x float> poison, float %i.zp, i64 0
  %broadcast.splat863 = shufflevector <4 x float> %broadcast.splatinsert862, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert864 = insertelement <4 x float> poison, float %i.zq, i64 0
  %broadcast.splat865 = shufflevector <4 x float> %broadcast.splatinsert864, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat867 = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splat869 = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert870 = insertelement <4 x float> poison, float %i.yz, i64 0
  %broadcast.splat871 = shufflevector <4 x float> %broadcast.splatinsert870, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert872 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat873 = shufflevector <4 x float> %broadcast.splatinsert872, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert874 = insertelement <4 x float> poison, float %i.ze, i64 0
  %broadcast.splat875 = shufflevector <4 x float> %broadcast.splatinsert874, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert876 = insertelement <4 x float> poison, float %i.zg, i64 0
  %broadcast.splat877 = shufflevector <4 x float> %broadcast.splatinsert876, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body878

vector.body878:                                   ; preds = %vector.body878, %vector.ph858
  %index879 = phi i64 [ 0, %vector.ph858 ], [ %index.next891, %vector.body878 ] ; 12 uses
  %i.aad = getelementptr inbounds nuw [2 x i8], ptr %i.zr, i64 %index879
  %wide.load880 = load <4 x i16>, ptr %i.aad, align 2, !tbaa !298
  %i.aae = uitofp <4 x i16> %wide.load880 to <4 x float>
  %i.aaf = fmul nnan <4 x float> %i.aae, splat (float f0x37800080) ; 3 uses
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %i.zs, i64 %index879
  %wide.load881 = load <4 x i16>, ptr %i.aag, align 2, !tbaa !298
  %i.aah = uitofp <4 x i16> %wide.load881 to <4 x float>
  %i.aai = fmul nnan <4 x float> %i.aah, splat (float f0x37800080) ; 2 uses
  %i.aaj = fsub <4 x float> %i.aaf, %i.aai
  %i.aak = getelementptr inbounds nuw [2 x i8], ptr %i.zt, i64 %index879
  %wide.load882 = load <4 x i16>, ptr %i.aak, align 2, !tbaa !298
  %i.aal = uitofp <4 x i16> %wide.load882 to <4 x float>
  %i.aam = fmul nnan <4 x float> %i.aal, splat (float f0x37800080) ; 3 uses
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %i.zu, i64 %index879
  %wide.load883 = load <4 x i16>, ptr %i.aan, align 2, !tbaa !298
  %i.aao = uitofp <4 x i16> %wide.load883 to <4 x float>
  %i.aap = fmul nnan <4 x float> %i.aao, splat (float f0x37800080) ; 3 uses
  %i.aaq = fsub nnan <4 x float> %i.aam, %i.aap
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.zv, i64 %index879
  %wide.load884 = load <4 x i16>, ptr %i.aar, align 2, !tbaa !298
  %i.aas = uitofp <4 x i16> %wide.load884 to <4 x float>
  %i.aat = fmul nnan <4 x float> %i.aas, splat (float f0x37800080) ; 2 uses
  %i.aau = getelementptr inbounds nuw [2 x i8], ptr %i.zw, i64 %index879
  %wide.load885 = load <4 x i16>, ptr %i.aau, align 2, !tbaa !298
  %i.aav = uitofp <4 x i16> %wide.load885 to <4 x float>
  %i.aaw = fmul nnan <4 x float> %i.aav, splat (float f0x37800080) ; 3 uses
  %i.aax = fsub nnan <4 x float> %i.aat, %i.aaw
  %i.aay = getelementptr inbounds nuw [2 x i8], ptr %i.zx, i64 %index879
  %wide.load886 = load <4 x i16>, ptr %i.aay, align 2, !tbaa !298
  %i.aaz = uitofp <4 x i16> %wide.load886 to <4 x float>
  %i.aba = fmul nnan <4 x float> %i.aaz, splat (float f0x37800080) ; 3 uses
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %i.zy, i64 %index879
  %wide.load887 = load <4 x i16>, ptr %i.abb, align 2, !tbaa !298
  %i.abc = uitofp <4 x i16> %wide.load887 to <4 x float>
  %i.abd = fmul nnan <4 x float> %i.abc, splat (float f0x37800080) ; 3 uses
  %i.abe = fsub nnan <4 x float> %i.aba, %i.abd
  %i.abf = fmul <4 x float> %broadcast.splat867, %i.aaq
  %i.abg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaj, <4 x float> %broadcast.splat861, <4 x float> %i.abf)
  %i.abh = fmul <4 x float> %broadcast.splat867, %i.abe
  %i.abi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aax, <4 x float> %broadcast.splat861, <4 x float> %i.abh)
  %i.abj = fmul <4 x float> %broadcast.splat869, %i.abi
  %i.abk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat863, <4 x float> %i.abg, <4 x float> %i.abj)
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %index879 ; 2 uses
  %wide.load888 = load <4 x float>, ptr %i.abl, align 4, !tbaa !245, !alias.scope !593, !noalias !594
  %i.abm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat871, <4 x float> %i.abk, <4 x float> %wide.load888)
  store <4 x float> %i.abm, ptr %i.abl, align 4, !tbaa !245, !alias.scope !593, !noalias !594
  %i.abn = fsub <4 x float> %i.aap, %i.aai
  %i.abo = fsub nnan <4 x float> %i.aam, %i.aaf
  %i.abp = fsub nnan <4 x float> %i.abd, %i.aaw
  %i.abq = fsub nnan <4 x float> %i.aba, %i.aat
  %i.abr = fmul <4 x float> %broadcast.splat873, %i.abo
  %i.abs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abn, <4 x float> %broadcast.splat865, <4 x float> %i.abr)
  %i.abt = fmul <4 x float> %broadcast.splat873, %i.abq
  %i.abu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abp, <4 x float> %broadcast.splat865, <4 x float> %i.abt)
  %i.abv = fmul <4 x float> %broadcast.splat869, %i.abu
  %i.abw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat863, <4 x float> %i.abs, <4 x float> %i.abv)
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %index879 ; 2 uses
  %wide.load889 = load <4 x float>, ptr %i.abx, align 4, !tbaa !245, !alias.scope !595, !noalias !596
  %i.aby = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat875, <4 x float> %i.abw, <4 x float> %wide.load889)
  store <4 x float> %i.aby, ptr %i.abx, align 4, !tbaa !245, !alias.scope !595, !noalias !596
  %i.abz = fsub <4 x float> %i.aap, %i.abd
  %i.aca = fsub nnan <4 x float> %i.aam, %i.aba
  %i.acb = fsub nnan <4 x float> %i.aaf, %i.aaw
  %i.acc = fmul <4 x float> %broadcast.splat873, %i.aca ; 2 uses
  %i.acd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abz, <4 x float> %broadcast.splat865, <4 x float> %i.acc)
  %i.ace = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acb, <4 x float> %broadcast.splat865, <4 x float> %i.acc)
  %i.acf = fmul <4 x float> %broadcast.splat867, %i.ace
  %i.acg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat861, <4 x float> %i.acd, <4 x float> %i.acf)
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %index879 ; 2 uses
  %wide.load890 = load <4 x float>, ptr %i.ach, align 4, !tbaa !245, !alias.scope !596
  %i.aci = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat877, <4 x float> %i.acg, <4 x float> %wide.load890)
  store <4 x float> %i.aci, ptr %i.ach, align 4, !tbaa !245, !alias.scope !596
  %index.next891 = add nuw i64 %index879, 4       ; 2 uses
  %i.acj = icmp eq i64 %index.next891, %n.vec859
  br i1 %i.acj, label %middle.block892, label %vector.body878, !llvm.loop !543

middle.block892:                                  ; preds = %vector.body878
  %cmp.n893 = icmp eq i64 %n.vec859, %wide.trip.count153.i
  br i1 %cmp.n893, label %.critedge, label %scalar.ph844.preheader

scalar.ph844.preheader:                           ; preds = %vector.memcheck846, %.lr.ph148.i, %middle.block892
  %indvars.iv150.i.ph = phi i64 [ 0, %vector.memcheck846 ], [ 0, %.lr.ph148.i ], [ %n.vec859, %middle.block892 ]
  %i.ack = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.acl = shufflevector <2 x float> %i.ack, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acm = insertelement <2 x float> poison, float %i.zq, i64 0
  %i.acn = shufflevector <2 x float> %i.acm, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph844

scalar.ph844:                                     ; preds = %scalar.ph844.preheader, %scalar.ph844
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i, %scalar.ph844 ], [ %indvars.iv150.i.ph, %scalar.ph844.preheader ] ; 12 uses
  %i.aco = getelementptr inbounds nuw [2 x i8], ptr %i.zr, i64 %indvars.iv150.i
  %i.acp = load i16, ptr %i.aco, align 2, !tbaa !298
  %i.acq = getelementptr inbounds nuw [2 x i8], ptr %i.zs, i64 %indvars.iv150.i
  %i.acr = load i16, ptr %i.acq, align 2, !tbaa !298
  %i.acs = insertelement <2 x i16> poison, i16 %i.acp, i64 0
  %i.act = insertelement <2 x i16> %i.acs, i16 %i.acr, i64 1
  %i.acu = uitofp <2 x i16> %i.act to <2 x float>
  %i.acv = fmul nnan <2 x float> %i.acu, splat (float f0x37800080) ; 4 uses
  %i.acw = extractelement <2 x float> %i.acv, i64 0
  %shift = shufflevector <2 x float> %i.acv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.acv, %shift
  %i.acx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.acy = getelementptr inbounds nuw [2 x i8], ptr %i.zt, i64 %indvars.iv150.i
  %i.acz = load i16, ptr %i.acy, align 2, !tbaa !298
  %i.ada = getelementptr inbounds nuw [2 x i8], ptr %i.zu, i64 %indvars.iv150.i
  %i.adb = load i16, ptr %i.ada, align 2, !tbaa !298
  %i.adc = insertelement <2 x i16> poison, i16 %i.acz, i64 0
  %i.add = insertelement <2 x i16> %i.adc, i16 %i.adb, i64 1
  %i.ade = uitofp <2 x i16> %i.add to <2 x float>
  %i.adf = fmul nnan <2 x float> %i.ade, splat (float f0x37800080) ; 4 uses
  %i.adg = extractelement <2 x float> %i.adf, i64 0
  %i.adh = extractelement <2 x float> %i.adf, i64 1 ; 2 uses
  %i.adi = fsub nnan float %i.adg, %i.adh
  %i.adj = getelementptr inbounds nuw [2 x i8], ptr %i.zv, i64 %indvars.iv150.i
  %i.adk = load i16, ptr %i.adj, align 2, !tbaa !298
  %i.adl = getelementptr inbounds nuw [2 x i8], ptr %i.zw, i64 %indvars.iv150.i
  %i.adm = load i16, ptr %i.adl, align 2, !tbaa !298
  %i.adn = insertelement <2 x i16> poison, i16 %i.adk, i64 0
  %i.ado = insertelement <2 x i16> %i.adn, i16 %i.adm, i64 1
  %i.adp = uitofp <2 x i16> %i.ado to <2 x float>
  %i.adq = fmul nnan <2 x float> %i.adp, splat (float f0x37800080) ; 3 uses
  %i.adr = extractelement <2 x float> %i.adq, i64 0
  %i.ads = extractelement <2 x float> %i.adq, i64 1 ; 2 uses
  %i.adt = fsub nnan float %i.adr, %i.ads
  %i.adu = getelementptr inbounds nuw [2 x i8], ptr %i.zx, i64 %indvars.iv150.i
  %i.adv = load i16, ptr %i.adu, align 2, !tbaa !298
  %i.adw = getelementptr inbounds nuw [2 x i8], ptr %i.zy, i64 %indvars.iv150.i
  %i.adx = load i16, ptr %i.adw, align 2, !tbaa !298
  %i.ady = insertelement <2 x i16> poison, i16 %i.adv, i64 0
  %i.adz = insertelement <2 x i16> %i.ady, i16 %i.adx, i64 1
  %i.aea = uitofp <2 x i16> %i.adz to <2 x float>
  %i.aeb = fmul nnan <2 x float> %i.aea, splat (float f0x37800080) ; 4 uses
  %i.aec = extractelement <2 x float> %i.aeb, i64 0
  %i.aed = extractelement <2 x float> %i.aeb, i64 1 ; 2 uses
  %i.aee = fsub nnan float %i.aec, %i.aed
  %i.aef = fmul float %i.ax, %i.adi
  %i.aeg = call float @llvm.fmuladd.f32(float %i.acx, float %i.zo, float %i.aef)
  %i.aeh = fmul float %i.ax, %i.aee
  %i.aei = call float @llvm.fmuladd.f32(float %i.adt, float %i.zo, float %i.aeh)
  %i.aej = fmul float %i.aw, %i.aei
  %i.aek = call noundef float @llvm.fmuladd.f32(float %i.zp, float %i.aeg, float %i.aej)
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv150.i ; 2 uses
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !245
  %i.aen = call float @llvm.fmuladd.f32(float %i.yz, float %i.aek, float %i.aem)
  store float %i.aen, ptr %i.ael, align 4, !tbaa !245
  %i.aeo = shufflevector <2 x float> %i.adf, <2 x float> %i.aeb, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aep = shufflevector <2 x float> %i.acv, <2 x float> %i.adq, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aeq = fsub <4 x float> %i.aeo, %i.aep        ; 4 uses
  %i.aer = extractelement <4 x float> %i.aeq, i64 1
  %i.aes = fmul float %i.ao, %i.aer
  %i.aet = extractelement <4 x float> %i.aeq, i64 0
  %i.aeu = call float @llvm.fmuladd.f32(float %i.aet, float %i.zq, float %i.aes)
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv150.i ; 2 uses
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !245
  %i.aex = fsub float %i.adh, %i.aed
  %foldExtExtBinop1283 = fsub nnan <2 x float> %i.adf, %i.aeb
  %i.aey = fsub nnan float %i.acw, %i.ads
  %i.aez = shufflevector <4 x float> %i.aeq, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.afa = shufflevector <2 x float> %foldExtExtBinop1283, <2 x float> %i.aez, <2 x i32> <i32 0, i32 3>
  %i.afb = fmul <2 x float> %i.acl, %i.afa        ; 2 uses
  %i.afc = shufflevector <4 x float> %i.aeq, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.afd = insertelement <2 x float> %i.afc, float %i.aey, i64 0
  %i.afe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afd, <2 x float> %i.acn, <2 x float> %i.afb)
  %i.aff = fmul <2 x float> %i.av, %i.afe         ; 2 uses
  %i.afg = extractelement <2 x float> %i.aff, i64 1
  %i.afh = call noundef float @llvm.fmuladd.f32(float %i.zp, float %i.aeu, float %i.afg)
  %i.afi = call float @llvm.fmuladd.f32(float %i.ze, float %i.afh, float %i.aew)
  store float %i.afi, ptr %i.aev, align 4, !tbaa !245
  %i.afj = extractelement <2 x float> %i.afb, i64 0
  %i.afk = call float @llvm.fmuladd.f32(float %i.aex, float %i.zq, float %i.afj)
  %i.afl = extractelement <2 x float> %i.aff, i64 0
  %i.afm = call noundef float @llvm.fmuladd.f32(float %i.zo, float %i.afk, float %i.afl)
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv150.i ; 2 uses
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !245
  %i.afp = call float @llvm.fmuladd.f32(float %i.zg, float %i.afm, float %i.afo)
  store float %i.afp, ptr %i.afn, align 4, !tbaa !245
  %indvars.iv.next151.i = add nuw nsw i64 %indvars.iv150.i, 1 ; 2 uses
  %exitcond154.not.i = icmp eq i64 %indvars.iv.next151.i, %wide.trip.count153.i
  br i1 %exitcond154.not.i, label %.critedge, label %scalar.ph844, !llvm.loop !544

bb.bt:                                            ; preds = %.critedge374
  %i.afq = load ptr, ptr %i.k, align 8, !tbaa !258
  %i.afr = getelementptr inbounds nuw [40 x i8], ptr %i.afq, i64 %i.l
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !268 ; 2 uses
  %.not.i.i387 = icmp eq ptr %i.afs, null
  %i.aft = load ptr, ptr %i.p, align 8
  %i.afu = select i1 %.not.i.i387, ptr %i.aft, ptr %i.afs ; 2 uses
  %.not548 = icmp eq i32 %7, 0                    ; 2 uses
  br i1 %.not548, label %._crit_edge.i388, label %.lr.ph.i390

.lr.ph.i390:                                      ; preds = %bb.bt
  %i.afv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.afw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.afx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.afy = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.afz = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aga = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.agb = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.agc = fsub float 1.000000e+00, %i.ao
  %i.agd = fsub float 1.000000e+00, %i.ax         ; 2 uses
  %i.age = fsub float 1.000000e+00, %i.aw
  %wide.trip.count.i391 = zext nneg i32 %7 to i64
  %i.agf = load ptr, ptr %i.e, align 16, !tbaa !192
  %i.agg = load ptr, ptr %i.afv, align 8, !tbaa !192
  %i.agh = load ptr, ptr %i.afw, align 16, !tbaa !192
  %i.agi = load ptr, ptr %i.afx, align 8, !tbaa !192
  %i.agj = load ptr, ptr %i.afy, align 16, !tbaa !192
  %i.agk = load ptr, ptr %i.afz, align 8, !tbaa !192
  %i.agl = load ptr, ptr %i.aga, align 16, !tbaa !192
  %i.agm = load ptr, ptr %i.agb, align 8, !tbaa !192
  %i.agn = insertelement <4 x float> poison, float %i.agc, i64 0
  %i.ago = shufflevector <4 x float> %i.agn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agp = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.agq = shufflevector <4 x float> %i.agp, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.bu

._crit_edge.i388:                                 ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit509, %bb.bt
  %.not.i389 = icmp eq ptr %10, null
  br i1 %.not.i389, label %.critedge, label %bb.dj

bb.bu:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit509, %.lr.ph.i390
  %indvars.iv.i392 = phi i64 [ 0, %.lr.ph.i390 ], [ %indvars.iv.next.i393, %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit509 ] ; 10 uses
  %i.agr = getelementptr inbounds nuw [2 x i8], ptr %i.agf, i64 %indvars.iv.i392
  %.sroa.061.0.copyload.i = load i16, ptr %i.agr, align 2, !tbaa !298 ; 2 uses
  %i.ags = zext i16 %.sroa.061.0.copyload.i to i32
  %i.agt = shl nuw nsw i32 %i.ags, 13
  %i.agu = and i32 %i.agt, 268427264              ; 6 uses
  %.signext.i.i.i534 = sext i16 %.sroa.061.0.copyload.i to i32
  %i.agv = and i32 %.signext.i.i.i534, -2147483648 ; 3 uses
  %i.agw = icmp samesign ugt i32 %i.agu, 8388607
  br i1 %i.agw, label %bb.bv, label %bb.by, !prof !301

bb.bv:                                            ; preds = %bb.bu
  %i.agx = or disjoint i32 %i.agu, %i.agv         ; 2 uses
  %i.agy = icmp samesign ult i32 %i.agu, 260046848
  br i1 %i.agy, label %bb.bw, label %bb.bx, !prof !301

bb.bw:                                            ; preds = %bb.bv
  %i.agz = add nuw nsw i32 %i.agx, 939524096
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537

bb.bx:                                            ; preds = %bb.bv
  %i.aha = or i32 %i.agx, 2139095040
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537

bb.by:                                            ; preds = %bb.bu
  %.not.i.i.i535 = icmp eq i32 %i.agu, 0
  br i1 %.not.i.i.i535, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ahb = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.agu, i1 true)
  %i.ahc = add nsw i32 %i.ahb, -8                 ; 2 uses
  %i.ahd = shl i32 %i.agu, %i.ahc
  %i.ahe = or i32 %i.agv, %i.ahd
  %i.ahf = or i32 %i.ahe, 947912704
  %i.ahg = shl nuw nsw i32 %i.ahc, 23
  %i.ahh = sub nuw i32 %i.ahf, %i.ahg
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537

_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537: ; preds = %bb.bw, %bb.bx, %bb.by, %bb.bz
  %.sroa.0.0.i.i.i536 = phi i32 [ %i.agz, %bb.bw ], [ %i.aha, %bb.bx ], [ %i.ahh, %bb.bz ], [ %i.agv, %bb.by ]
  %i.ahi = getelementptr inbounds nuw [2 x i8], ptr %i.agg, i64 %indvars.iv.i392
  %.sroa.060.0.copyload.i = load i16, ptr %i.ahi, align 2, !tbaa !298 ; 2 uses
  %i.ahj = zext i16 %.sroa.060.0.copyload.i to i32
  %i.ahk = shl nuw nsw i32 %i.ahj, 13
  %i.ahl = and i32 %i.ahk, 268427264              ; 6 uses
  %.signext.i.i.i530 = sext i16 %.sroa.060.0.copyload.i to i32
  %i.ahm = and i32 %.signext.i.i.i530, -2147483648 ; 3 uses
  %i.ahn = icmp samesign ugt i32 %i.ahl, 8388607
  br i1 %i.ahn, label %bb.ca, label %bb.cd, !prof !301

bb.ca:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537
  %i.aho = or disjoint i32 %i.ahl, %i.ahm         ; 2 uses
  %i.ahp = icmp samesign ult i32 %i.ahl, 260046848
  br i1 %i.ahp, label %bb.cb, label %bb.cc, !prof !301

bb.cb:                                            ; preds = %bb.ca
  %i.ahq = add nuw nsw i32 %i.aho, 939524096
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533

bb.cc:                                            ; preds = %bb.ca
  %i.ahr = or i32 %i.aho, 2139095040
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533

bb.cd:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537
  %.not.i.i.i531 = icmp eq i32 %i.ahl, 0
  br i1 %.not.i.i.i531, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ahs = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ahl, i1 true)
  %i.aht = add nsw i32 %i.ahs, -8                 ; 2 uses
  %i.ahu = shl i32 %i.ahl, %i.aht
  %i.ahv = or i32 %i.ahm, %i.ahu
  %i.ahw = or i32 %i.ahv, 947912704
  %i.ahx = shl nuw nsw i32 %i.aht, 23
  %i.ahy = sub nuw i32 %i.ahw, %i.ahx
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533

_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533: ; preds = %bb.cb, %bb.cc, %bb.cd, %bb.ce
  %.sroa.0.0.i.i.i532 = phi i32 [ %i.ahq, %bb.cb ], [ %i.ahr, %bb.cc ], [ %i.ahy, %bb.ce ], [ %i.ahm, %bb.cd ]
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %i.agh, i64 %indvars.iv.i392
  %.sroa.059.0.copyload.i = load i16, ptr %i.ahz, align 2, !tbaa !298 ; 2 uses
  %i.aia = zext i16 %.sroa.059.0.copyload.i to i32
  %i.aib = shl nuw nsw i32 %i.aia, 13
  %i.aic = and i32 %i.aib, 268427264              ; 6 uses
  %.signext.i.i.i526 = sext i16 %.sroa.059.0.copyload.i to i32
  %i.aid = and i32 %.signext.i.i.i526, -2147483648 ; 3 uses
  %i.aie = icmp samesign ugt i32 %i.aic, 8388607
  br i1 %i.aie, label %bb.cf, label %bb.ci, !prof !301

bb.cf:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533
  %i.aif = or disjoint i32 %i.aic, %i.aid         ; 2 uses
  %i.aig = icmp samesign ult i32 %i.aic, 260046848
  br i1 %i.aig, label %bb.cg, label %bb.ch, !prof !301

bb.cg:                                            ; preds = %bb.cf
  %i.aih = add nuw nsw i32 %i.aif, 939524096
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit529

bb.ch:                                            ; preds = %bb.cf
  %i.aii = or i32 %i.aif, 2139095040
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit529

bb.ci:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533
  %.not.i.i.i527 = icmp eq i32 %i.aic, 0
  br i1 %.not.i.i.i527, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit529, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.aij = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.aic, i1 true)
  %i.aik = add nsw i32 %i.aij, -8                 ; 2 uses
  %i.ail = shl i32 %i.aic, %i.aik
  %i.aim = or i32 %i.aid, %i.ail
  %i.ain = or i32 %i.aim, 947912704
  %i.aio = shl nuw nsw i32 %i.aik, 23
  %i.aip = sub nuw i32 %i.ain, %i.aio
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit529

_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit529: ; preds = %bb.cg, %bb.ch, %bb.ci, %bb.cj
  %.sroa.0.0.i.i.i528 = phi i32 [ %i.aih, %bb.cg ], [ %i.aii, %bb.ch ], [ %i.aip, %bb.cj ], [ %i.aid, %bb.ci ]
  %i.aiq = getelementptr inbounds nuw [2 x i8], ptr %i.agi, i64 %indvars.iv.i392
  %.sroa.058.0.copyload.i = load i16, ptr %i.aiq, align 2, !tbaa !298 ; 2 uses
  %i.air = zext i16 %.sroa.058.0.copyload.i to i32
  %i.ais = shl nuw nsw i32 %i.air, 13
  %i.ait = and i32 %i.ais, 268427264              ; 6 uses
  %.signext.i.i.i522 = sext i16 %.sroa.058.0.copyload.i to i32
  %i.aiu = and i32 %.signext.i.i.i522, -2147483648 ; 3 uses
  %i.aiv = icmp samesign ugt i32 %i.ait, 8388607
  br i1 %i.aiv, label %bb.ck, label %bb.cn, !prof !301

bb.ck:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit529
  %i.aiw = or disjoint i32 %i.ait, %i.aiu         ; 2 uses
  %i.aix = icmp samesign ult i32 %i.ait, 260046848
  br i1 %i.aix, label %bb.cl, label %bb.cm, !prof !301

bb.cl:                                            ; preds = %bb.ck
  %i.aiy = add nuw nsw i32 %i.aiw, 939524096
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit525
end_hunk_0
