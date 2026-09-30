Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texture3d?download=true
inline.NumInlined: 2854
inline.NumDeleted: 714
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  %i.yb = fmul float %i.ao, %i.ya
  %i.yc = extractelement <8 x float> %i.xz, i64 0
  %i.yd = call float @llvm.fmuladd.f32(float %i.yc, float %i.va, float %i.yb)
  %i.ye = extractelement <8 x float> %i.xz, i64 3
  %i.yf = fmul float %i.ao, %i.ye
  %i.yg = extractelement <8 x float> %i.xz, i64 2
  %i.yh = call float @llvm.fmuladd.f32(float %i.yg, float %i.va, float %i.yf)
  %i.yi = fmul float %i.ax, %i.yh
  %i.yj = call float @llvm.fmuladd.f32(float %i.vb, float %i.yd, float %i.yi)
  %i.yk = extractelement <8 x float> %i.xz, i64 5
  %i.yl = fmul float %i.ao, %i.yk
  %i.ym = extractelement <8 x float> %i.xz, i64 4
  %i.yn = call float @llvm.fmuladd.f32(float %i.ym, float %i.va, float %i.yl)
  %i.yo = extractelement <8 x float> %i.xz, i64 7
  %i.yp = fmul float %i.ao, %i.yo
  %i.yq = extractelement <8 x float> %i.xz, i64 6
  %i.yr = call float @llvm.fmuladd.f32(float %i.yq, float %i.va, float %i.yp)
  %i.ys = fmul float %i.ax, %i.yr
  %i.yt = call float @llvm.fmuladd.f32(float %i.vb, float %i.yn, float %i.ys)
  %i.yu = fmul float %i.aw, %i.yt
  %i.yv = call noundef float @llvm.fmuladd.f32(float %i.vc, float %i.yj, float %i.yu)
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.i ; 2 uses
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !184
  %i.yy = call float @llvm.fmuladd.f32(float %8, float %i.yv, float %i.yx)
  store float %i.yy, ptr %i.yw, align 4, !tbaa !184
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph710, !llvm.loop !465

bb.bw:                                            ; preds = %._crit_edge.i
  %i.yz = getelementptr inbounds nuw i8, ptr %i.us, i64 36
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !211
  %i.zb = sitofp i32 %i.za to float
  %i.zc = fmul float %8, %i.zb                    ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.us, i64 40
  %i.ze = load <2 x i32>, ptr %i.zd, align 4, !tbaa !42
  %i.zf = sitofp <2 x i32> %i.ze to <2 x float>   ; 2 uses
  %i.zg = extractelement <2 x float> %i.zf, i64 0
  %i.zh = fmul float %8, %i.zg                    ; 2 uses
  %i.zi = extractelement <2 x float> %i.zf, i64 1
  %i.zj = fmul float %8, %i.zi                    ; 2 uses
  br i1 %.not549, label %.critedge, label %.lr.ph148.i

.lr.ph148.i:                                      ; preds = %bb.bw
  %i.zk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.zl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.zm = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.zn = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.zo = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.zp = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.zq = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.zr = fsub float 1.000000e+00, %i.ax          ; 4 uses
  %i.zs = fsub float 1.000000e+00, %i.aw          ; 3 uses
  %i.zt = fsub float 1.000000e+00, %i.ao          ; 4 uses
  %wide.trip.count153.i = zext nneg i32 %7 to i64 ; 4 uses
  %i.zu = load ptr, ptr %i.zk, align 8, !tbaa !131 ; 2 uses
  %i.zv = load ptr, ptr %i.e, align 16, !tbaa !131 ; 2 uses
  %i.zw = load ptr, ptr %i.zm, align 8, !tbaa !131 ; 2 uses
  %i.zx = load ptr, ptr %i.zl, align 16, !tbaa !131 ; 2 uses
  %i.zy = load ptr, ptr %i.zo, align 8, !tbaa !131 ; 2 uses
  %i.zz = load ptr, ptr %i.zn, align 16, !tbaa !131 ; 2 uses
  %i.aaa = load ptr, ptr %i.zq, align 8, !tbaa !131 ; 2 uses
  %i.aab = load ptr, ptr %i.zp, align 16, !tbaa !131 ; 2 uses
  %min.iters.check753 = icmp ult i32 %7, 4
  br i1 %min.iters.check753, label %scalar.ph752.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph148.i
  %i.aac = shl nuw nsw i64 %wide.trip.count153.i, 2 ; 3 uses
  %i.aad = getelementptr i8, ptr %10, i64 %i.aac  ; 2 uses
  %i.aae = getelementptr i8, ptr %11, i64 %i.aac  ; 2 uses
  %i.aaf = getelementptr i8, ptr %12, i64 %i.aac  ; 2 uses
  %bound0 = icmp ult ptr %10, %i.aae
  %bound1 = icmp ult ptr %11, %i.aad
  %found.conflict = and i1 %bound0, %bound1
  %bound0754 = icmp ult ptr %10, %i.aaf
  %bound1755 = icmp ult ptr %12, %i.aad
  %found.conflict756 = and i1 %bound0754, %bound1755
  %conflict.rdx = or i1 %found.conflict, %found.conflict756
  %bound0757 = icmp ult ptr %11, %i.aaf
  %bound1758 = icmp ult ptr %12, %i.aae
  %found.conflict759 = and i1 %bound0757, %bound1758
  %conflict.rdx760 = or i1 %conflict.rdx, %found.conflict759
  br i1 %conflict.rdx760, label %scalar.ph752.preheader, label %vector.ph761

vector.ph761:                                     ; preds = %vector.memcheck
  %n.vec762 = and i64 %wide.trip.count153.i, 2147483644 ; 3 uses
  %broadcast.splatinsert763 = insertelement <4 x float> poison, float %i.zr, i64 0
  %broadcast.splat764 = shufflevector <4 x float> %broadcast.splatinsert763, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert765 = insertelement <4 x float> poison, float %i.zs, i64 0
  %broadcast.splat766 = shufflevector <4 x float> %broadcast.splatinsert765, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert767 = insertelement <4 x float> poison, float %i.zt, i64 0
  %broadcast.splat768 = shufflevector <4 x float> %broadcast.splatinsert767, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat770 = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splat772 = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert773 = insertelement <4 x float> poison, float %i.zc, i64 0
  %broadcast.splat774 = shufflevector <4 x float> %broadcast.splatinsert773, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert775 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat776 = shufflevector <4 x float> %broadcast.splatinsert775, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert777 = insertelement <4 x float> poison, float %i.zh, i64 0
  %broadcast.splat778 = shufflevector <4 x float> %broadcast.splatinsert777, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert779 = insertelement <4 x float> poison, float %i.zj, i64 0
  %broadcast.splat780 = shufflevector <4 x float> %broadcast.splatinsert779, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body781

vector.body781:                                   ; preds = %vector.body781, %vector.ph761
  %index782 = phi i64 [ 0, %vector.ph761 ], [ %index.next794, %vector.body781 ] ; 12 uses
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %i.zu, i64 %index782
  %wide.load783 = load <4 x i16>, ptr %i.aag, align 2, !tbaa !237
  %i.aah = uitofp <4 x i16> %wide.load783 to <4 x float>
  %i.aai = fmul nnan <4 x float> %i.aah, splat (float f0x37800080) ; 3 uses
  %i.aaj = getelementptr inbounds nuw [2 x i8], ptr %i.zv, i64 %index782
  %wide.load784 = load <4 x i16>, ptr %i.aaj, align 2, !tbaa !237
  %i.aak = uitofp <4 x i16> %wide.load784 to <4 x float>
  %i.aal = fmul nnan <4 x float> %i.aak, splat (float f0x37800080) ; 2 uses
  %i.aam = fsub <4 x float> %i.aai, %i.aal
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %i.zw, i64 %index782
  %wide.load785 = load <4 x i16>, ptr %i.aan, align 2, !tbaa !237
  %i.aao = uitofp <4 x i16> %wide.load785 to <4 x float>
  %i.aap = fmul nnan <4 x float> %i.aao, splat (float f0x37800080) ; 3 uses
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.zx, i64 %index782
  %wide.load786 = load <4 x i16>, ptr %i.aaq, align 2, !tbaa !237
  %i.aar = uitofp <4 x i16> %wide.load786 to <4 x float>
  %i.aas = fmul nnan <4 x float> %i.aar, splat (float f0x37800080) ; 3 uses
  %i.aat = fsub nnan <4 x float> %i.aap, %i.aas
  %i.aau = getelementptr inbounds nuw [2 x i8], ptr %i.zy, i64 %index782
  %wide.load787 = load <4 x i16>, ptr %i.aau, align 2, !tbaa !237
  %i.aav = uitofp <4 x i16> %wide.load787 to <4 x float>
  %i.aaw = fmul nnan <4 x float> %i.aav, splat (float f0x37800080) ; 2 uses
  %i.aax = getelementptr inbounds nuw [2 x i8], ptr %i.zz, i64 %index782
  %wide.load788 = load <4 x i16>, ptr %i.aax, align 2, !tbaa !237
  %i.aay = uitofp <4 x i16> %wide.load788 to <4 x float>
  %i.aaz = fmul nnan <4 x float> %i.aay, splat (float f0x37800080) ; 3 uses
  %i.aba = fsub nnan <4 x float> %i.aaw, %i.aaz
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %i.aaa, i64 %index782
  %wide.load789 = load <4 x i16>, ptr %i.abb, align 2, !tbaa !237
  %i.abc = uitofp <4 x i16> %wide.load789 to <4 x float>
  %i.abd = fmul nnan <4 x float> %i.abc, splat (float f0x37800080) ; 3 uses
  %i.abe = getelementptr inbounds nuw [2 x i8], ptr %i.aab, i64 %index782
  %wide.load790 = load <4 x i16>, ptr %i.abe, align 2, !tbaa !237
  %i.abf = uitofp <4 x i16> %wide.load790 to <4 x float>
  %i.abg = fmul nnan <4 x float> %i.abf, splat (float f0x37800080) ; 3 uses
  %i.abh = fsub nnan <4 x float> %i.abd, %i.abg
  %i.abi = fmul <4 x float> %broadcast.splat770, %i.aat
  %i.abj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aam, <4 x float> %broadcast.splat764, <4 x float> %i.abi)
  %i.abk = fmul <4 x float> %broadcast.splat770, %i.abh
  %i.abl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aba, <4 x float> %broadcast.splat764, <4 x float> %i.abk)
  %i.abm = fmul <4 x float> %broadcast.splat772, %i.abl
  %i.abn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat766, <4 x float> %i.abj, <4 x float> %i.abm)
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %index782 ; 2 uses
  %wide.load791 = load <4 x float>, ptr %i.abo, align 4, !tbaa !184, !alias.scope !514, !noalias !515
  %i.abp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat774, <4 x float> %i.abn, <4 x float> %wide.load791)
  store <4 x float> %i.abp, ptr %i.abo, align 4, !tbaa !184, !alias.scope !514, !noalias !515
  %i.abq = fsub <4 x float> %i.aas, %i.aal
  %i.abr = fsub nnan <4 x float> %i.aap, %i.aai
  %i.abs = fsub nnan <4 x float> %i.abg, %i.aaz
  %i.abt = fsub nnan <4 x float> %i.abd, %i.aaw
  %i.abu = fmul <4 x float> %broadcast.splat776, %i.abr
  %i.abv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abq, <4 x float> %broadcast.splat768, <4 x float> %i.abu)
  %i.abw = fmul <4 x float> %broadcast.splat776, %i.abt
  %i.abx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abs, <4 x float> %broadcast.splat768, <4 x float> %i.abw)
  %i.aby = fmul <4 x float> %broadcast.splat772, %i.abx
  %i.abz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat766, <4 x float> %i.abv, <4 x float> %i.aby)
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %index782 ; 2 uses
  %wide.load792 = load <4 x float>, ptr %i.aca, align 4, !tbaa !184, !alias.scope !516, !noalias !517
  %i.acb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat778, <4 x float> %i.abz, <4 x float> %wide.load792)
  store <4 x float> %i.acb, ptr %i.aca, align 4, !tbaa !184, !alias.scope !516, !noalias !517
  %i.acc = fsub <4 x float> %i.aas, %i.abg
  %i.acd = fsub nnan <4 x float> %i.aap, %i.abd
  %i.ace = fsub nnan <4 x float> %i.aai, %i.aaz
  %i.acf = fmul <4 x float> %broadcast.splat776, %i.acd ; 2 uses
  %i.acg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acc, <4 x float> %broadcast.splat768, <4 x float> %i.acf)
  %i.ach = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ace, <4 x float> %broadcast.splat768, <4 x float> %i.acf)
  %i.aci = fmul <4 x float> %broadcast.splat770, %i.ach
  %i.acj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat764, <4 x float> %i.acg, <4 x float> %i.aci)
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %index782 ; 2 uses
  %wide.load793 = load <4 x float>, ptr %i.ack, align 4, !tbaa !184, !alias.scope !517
  %i.acl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat780, <4 x float> %i.acj, <4 x float> %wide.load793)
  store <4 x float> %i.acl, ptr %i.ack, align 4, !tbaa !184, !alias.scope !517
  %index.next794 = add nuw i64 %index782, 4       ; 2 uses
  %i.acm = icmp eq i64 %index.next794, %n.vec762
  br i1 %i.acm, label %middle.block795, label %vector.body781, !llvm.loop !470

middle.block795:                                  ; preds = %vector.body781
  %cmp.n796 = icmp eq i64 %n.vec762, %wide.trip.count153.i
  br i1 %cmp.n796, label %.critedge, label %scalar.ph752.preheader

scalar.ph752.preheader:                           ; preds = %vector.memcheck, %.lr.ph148.i, %middle.block795
  %indvars.iv150.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph148.i ], [ %n.vec762, %middle.block795 ]
  %i.acn = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.aco = shufflevector <2 x float> %i.acn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acp = insertelement <2 x float> poison, float %i.zt, i64 0
  %i.acq = shufflevector <2 x float> %i.acp, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph752

scalar.ph752:                                     ; preds = %scalar.ph752.preheader, %scalar.ph752
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i, %scalar.ph752 ], [ %indvars.iv150.i.ph, %scalar.ph752.preheader ] ; 12 uses
  %i.acr = getelementptr inbounds nuw [2 x i8], ptr %i.zu, i64 %indvars.iv150.i
  %i.acs = load i16, ptr %i.acr, align 2, !tbaa !237
  %i.act = getelementptr inbounds nuw [2 x i8], ptr %i.zv, i64 %indvars.iv150.i
  %i.acu = load i16, ptr %i.act, align 2, !tbaa !237
  %21 = insertelement <2 x i16> poison, i16 %i.acs, i64 0
  %22 = insertelement <2 x i16> %21, i16 %i.acu, i64 1
  %23 = uitofp <2 x i16> %22 to <2 x float>
  %24 = fmul nnan <2 x float> %23, splat (float f0x37800080) ; 4 uses
  %25 = extractelement <2 x float> %24, i64 0
  %shift = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %24, %shift
  %26 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.acv = getelementptr inbounds nuw [2 x i8], ptr %i.zw, i64 %indvars.iv150.i
  %i.acw = load i16, ptr %i.acv, align 2, !tbaa !237
  %i.acx = getelementptr inbounds nuw [2 x i8], ptr %i.zx, i64 %indvars.iv150.i
  %i.acy = load i16, ptr %i.acx, align 2, !tbaa !237
  %27 = insertelement <2 x i16> poison, i16 %i.acw, i64 0
  %28 = insertelement <2 x i16> %27, i16 %i.acy, i64 1
  %29 = uitofp <2 x i16> %28 to <2 x float>
  %30 = fmul nnan <2 x float> %29, splat (float f0x37800080) ; 4 uses
  %31 = extractelement <2 x float> %30, i64 0
  %32 = extractelement <2 x float> %30, i64 1     ; 2 uses
  %33 = fsub nnan float %31, %32
  %34 = getelementptr inbounds nuw [2 x i8], ptr %i.zy, i64 %indvars.iv150.i
  %35 = load i16, ptr %34, align 2, !tbaa !237
  %36 = getelementptr inbounds nuw [2 x i8], ptr %i.zz, i64 %indvars.iv150.i
  %37 = load i16, ptr %36, align 2, !tbaa !237
  %38 = insertelement <2 x i16> poison, i16 %35, i64 0
  %39 = insertelement <2 x i16> %38, i16 %37, i64 1
  %40 = uitofp <2 x i16> %39 to <2 x float>
  %41 = fmul nnan <2 x float> %40, splat (float f0x37800080) ; 3 uses
  %42 = extractelement <2 x float> %41, i64 0
  %43 = extractelement <2 x float> %41, i64 1     ; 2 uses
  %44 = fsub nnan float %42, %43
  %45 = getelementptr inbounds nuw [2 x i8], ptr %i.aaa, i64 %indvars.iv150.i
  %46 = load i16, ptr %45, align 2, !tbaa !237
  %47 = getelementptr inbounds nuw [2 x i8], ptr %i.aab, i64 %indvars.iv150.i
  %48 = load i16, ptr %47, align 2, !tbaa !237
  %49 = insertelement <2 x i16> poison, i16 %46, i64 0
  %50 = insertelement <2 x i16> %49, i16 %48, i64 1
  %51 = uitofp <2 x i16> %50 to <2 x float>
  %52 = fmul nnan <2 x float> %51, splat (float f0x37800080) ; 4 uses
  %53 = extractelement <2 x float> %52, i64 0
  %i.acz = extractelement <2 x float> %52, i64 1  ; 2 uses
  %54 = fsub nnan float %53, %i.acz
  %55 = fmul float %i.ax, %33
  %i.ada = call float @llvm.fmuladd.f32(float %26, float %i.zr, float %55)
  %i.adb = fmul float %i.ax, %54
  %i.adc = call float @llvm.fmuladd.f32(float %44, float %i.zr, float %i.adb)
  %56 = fmul float %i.aw, %i.adc
  %i.add = call noundef float @llvm.fmuladd.f32(float %i.zs, float %i.ada, float %56)
  %57 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv150.i ; 2 uses
  %58 = load float, ptr %57, align 4, !tbaa !184
  %59 = call float @llvm.fmuladd.f32(float %i.zc, float %i.add, float %58)
  store float %59, ptr %57, align 4, !tbaa !184
  %60 = shufflevector <2 x float> %30, <2 x float> %52, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %61 = shufflevector <2 x float> %24, <2 x float> %41, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %62 = fsub <4 x float> %60, %61                 ; 4 uses
  %i.ade = extractelement <4 x float> %62, i64 1
  %63 = fmul float %i.ao, %i.ade
  %i.adf = extractelement <4 x float> %62, i64 0
  %64 = call float @llvm.fmuladd.f32(float %i.adf, float %i.zt, float %63)
  %65 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv150.i ; 2 uses
  %66 = load float, ptr %65, align 4, !tbaa !184
  %67 = fsub float %32, %i.acz
  %i.adg = fsub nnan <2 x float> %30, %52
  %68 = fsub nnan float %25, %43
  %69 = shufflevector <4 x float> %62, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %70 = shufflevector <2 x float> %i.adg, <2 x float> %69, <2 x i32> <i32 0, i32 3>
  %i.adh = fmul <2 x float> %i.aco, %70           ; 2 uses
  %71 = shufflevector <4 x float> %62, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %72 = insertelement <2 x float> %71, float %68, i64 0
  %i.adi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %72, <2 x float> %i.acq, <2 x float> %i.adh)
  %i.adj = fmul <2 x float> %i.av, %i.adi         ; 2 uses
  %i.adk = extractelement <2 x float> %i.adj, i64 1
  %i.adl = call noundef float @llvm.fmuladd.f32(float %i.zs, float %64, float %i.adk)
  %i.adm = call float @llvm.fmuladd.f32(float %i.zh, float %i.adl, float %66)
  store float %i.adm, ptr %65, align 4, !tbaa !184
  %i.adn = extractelement <2 x float> %i.adh, i64 0
  %i.ado = call float @llvm.fmuladd.f32(float %67, float %i.zt, float %i.adn)
  %i.adp = extractelement <2 x float> %i.adj, i64 0
  %i.adq = call noundef float @llvm.fmuladd.f32(float %i.zr, float %i.ado, float %i.adp)
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv150.i ; 2 uses
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !184
  %i.adt = call float @llvm.fmuladd.f32(float %i.zj, float %i.adq, float %i.ads)
  store float %i.adt, ptr %i.adr, align 4, !tbaa !184
  %indvars.iv.next151.i = add nuw nsw i64 %indvars.iv150.i, 1 ; 2 uses
  %exitcond154.not.i = icmp eq i64 %indvars.iv.next151.i, %wide.trip.count153.i
  br i1 %exitcond154.not.i, label %.critedge, label %scalar.ph752, !llvm.loop !471

bb.bx:                                            ; preds = %.critedge374
  %i.adu = load ptr, ptr %i.k, align 8, !tbaa !197
  %i.adv = getelementptr inbounds nuw [40 x i8], ptr %i.adu, i64 %i.l
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !207 ; 2 uses
  %.not.i.i387 = icmp eq ptr %i.adw, null
  %i.adx = load ptr, ptr %i.p, align 8
  %i.ady = select i1 %.not.i.i387, ptr %i.adx, ptr %i.adw ; 2 uses
  %.not548 = icmp eq i32 %7, 0                    ; 2 uses
  br i1 %.not548, label %._crit_edge.i388, label %.lr.ph.i390

.lr.ph.i390:                                      ; preds = %bb.bx
  %i.adz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aea = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aec = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.aed = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aee = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.aef = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.aeg = fsub float 1.000000e+00, %i.ao
  %i.aeh = fsub float 1.000000e+00, %i.ax         ; 2 uses
  %i.aei = fsub float 1.000000e+00, %i.aw
  %wide.trip.count.i391 = zext nneg i32 %7 to i64
  %i.aej = load ptr, ptr %i.e, align 16, !tbaa !131
  %i.aek = load ptr, ptr %i.adz, align 8, !tbaa !131
  %i.ael = load ptr, ptr %i.aea, align 16, !tbaa !131
  %i.aem = load ptr, ptr %i.aeb, align 8, !tbaa !131
  %i.aen = load ptr, ptr %i.aec, align 16, !tbaa !131
  %i.aeo = load ptr, ptr %i.aed, align 8, !tbaa !131
  %i.aep = load ptr, ptr %i.aee, align 16, !tbaa !131
  %i.aeq = load ptr, ptr %i.aef, align 8, !tbaa !131
  %i.aer = insertelement <4 x float> poison, float %i.aeg, i64 0
  %i.aes = shufflevector <4 x float> %i.aer, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aet = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.aeu = shufflevector <4 x float> %i.aet, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.by

._crit_edge.i388:                                 ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit509, %bb.bx
  %.not.i389 = icmp eq ptr %10, null
  br i1 %.not.i389, label %.critedge, label %bb.dn

bb.by:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit509, %.lr.ph.i390
  %indvars.iv.i392 = phi i64 [ 0, %.lr.ph.i390 ], [ %indvars.iv.next.i393, %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit509 ] ; 10 uses
  %i.aev = getelementptr inbounds nuw [2 x i8], ptr %i.aej, i64 %indvars.iv.i392
  %.sroa.061.0.copyload.i = load i16, ptr %i.aev, align 2, !tbaa !237 ; 2 uses
  %i.aew = zext i16 %.sroa.061.0.copyload.i to i32
  %i.aex = shl nuw nsw i32 %i.aew, 13
  %i.aey = and i32 %i.aex, 268427264              ; 6 uses
  %.signext.i.i.i534 = sext i16 %.sroa.061.0.copyload.i to i32
  %i.aez = and i32 %.signext.i.i.i534, -2147483648 ; 3 uses
  %i.afa = icmp samesign ugt i32 %i.aey, 8388607
  br i1 %i.afa, label %bb.bz, label %bb.cc, !prof !240

bb.bz:                                            ; preds = %bb.by
  %i.afb = or disjoint i32 %i.aey, %i.aez         ; 2 uses
  %i.afc = icmp samesign ult i32 %i.aey, 260046848
  br i1 %i.afc, label %bb.ca, label %bb.cb, !prof !240

bb.ca:                                            ; preds = %bb.bz
  %i.afd = add nuw nsw i32 %i.afb, 939524096
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537

bb.cb:                                            ; preds = %bb.bz
  %i.afe = or i32 %i.afb, 2139095040
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537

bb.cc:                                            ; preds = %bb.by
  %.not.i.i.i535 = icmp eq i32 %i.aey, 0
  br i1 %.not.i.i.i535, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aff = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.aey, i1 true)
  %i.afg = add nsw i32 %i.aff, -8                 ; 2 uses
  %i.afh = shl i32 %i.aey, %i.afg
  %i.afi = or i32 %i.aez, %i.afh
  %i.afj = or i32 %i.afi, 947912704
  %i.afk = shl nuw nsw i32 %i.afg, 23
  %i.afl = sub nuw i32 %i.afj, %i.afk
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537

_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537: ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.cd
  %.sroa.0.0.i.i.i536 = phi i32 [ %i.afd, %bb.ca ], [ %i.afe, %bb.cb ], [ %i.afl, %bb.cd ], [ %i.aez, %bb.cc ]
  %i.afm = getelementptr inbounds nuw [2 x i8], ptr %i.aek, i64 %indvars.iv.i392
  %.sroa.060.0.copyload.i = load i16, ptr %i.afm, align 2, !tbaa !237 ; 2 uses
  %i.afn = zext i16 %.sroa.060.0.copyload.i to i32
  %i.afo = shl nuw nsw i32 %i.afn, 13
  %i.afp = and i32 %i.afo, 268427264              ; 6 uses
  %.signext.i.i.i530 = sext i16 %.sroa.060.0.copyload.i to i32
  %i.afq = and i32 %.signext.i.i.i530, -2147483648 ; 3 uses
  %i.afr = icmp samesign ugt i32 %i.afp, 8388607
  br i1 %i.afr, label %bb.ce, label %bb.ch, !prof !240

bb.ce:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537
  %i.afs = or disjoint i32 %i.afp, %i.afq         ; 2 uses
  %i.aft = icmp samesign ult i32 %i.afp, 260046848
  br i1 %i.aft, label %bb.cf, label %bb.cg, !prof !240

bb.cf:                                            ; preds = %bb.ce
  %i.afu = add nuw nsw i32 %i.afs, 939524096
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533

bb.cg:                                            ; preds = %bb.ce
  %i.afv = or i32 %i.afs, 2139095040
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533

bb.ch:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit537
  %.not.i.i.i531 = icmp eq i32 %i.afp, 0
  br i1 %.not.i.i.i531, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.afw = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.afp, i1 true)
  %i.afx = add nsw i32 %i.afw, -8                 ; 2 uses
  %i.afy = shl i32 %i.afp, %i.afx
  %i.afz = or i32 %i.afq, %i.afy
  %i.aga = or i32 %i.afz, 947912704
  %i.agb = shl nuw nsw i32 %i.afx, 23
  %i.agc = sub nuw i32 %i.aga, %i.agb
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533

_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533: ; preds = %bb.cf, %bb.cg, %bb.ch, %bb.ci
  %.sroa.0.0.i.i.i532 = phi i32 [ %i.afu, %bb.cf ], [ %i.afv, %bb.cg ], [ %i.agc, %bb.ci ], [ %i.afq, %bb.ch ]
  %i.agd = getelementptr inbounds nuw [2 x i8], ptr %i.ael, i64 %indvars.iv.i392
  %.sroa.059.0.copyload.i = load i16, ptr %i.agd, align 2, !tbaa !237 ; 2 uses
  %i.age = zext i16 %.sroa.059.0.copyload.i to i32
  %i.agf = shl nuw nsw i32 %i.age, 13
  %i.agg = and i32 %i.agf, 268427264              ; 6 uses
  %.signext.i.i.i526 = sext i16 %.sroa.059.0.copyload.i to i32
  %i.agh = and i32 %.signext.i.i.i526, -2147483648 ; 3 uses
  %i.agi = icmp samesign ugt i32 %i.agg, 8388607
  br i1 %i.agi, label %bb.cj, label %bb.cm, !prof !240

bb.cj:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533
  %i.agj = or disjoint i32 %i.agg, %i.agh         ; 2 uses
  %i.agk = icmp samesign ult i32 %i.agg, 260046848
  br i1 %i.agk, label %bb.ck, label %bb.cl, !prof !240

bb.ck:                                            ; preds = %bb.cj
  %i.agl = add nuw nsw i32 %i.agj, 939524096
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit529

bb.cl:                                            ; preds = %bb.cj
  %i.agm = or i32 %i.agj, 2139095040
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit529

bb.cm:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit533
  %.not.i.i.i527 = icmp eq i32 %i.agg, 0
  br i1 %.not.i.i.i527, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit529, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.agn = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.agg, i1 true)
  %i.ago = add nsw i32 %i.agn, -8                 ; 2 uses
  %i.agp = shl i32 %i.agg, %i.ago
  %i.agq = or i32 %i.agh, %i.agp
  %i.agr = or i32 %i.agq, 947912704
  %i.ags = shl nuw nsw i32 %i.ago, 23
  %i.agt = sub nuw i32 %i.agr, %i.ags
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit529

_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit529: ; preds = %bb.ck, %bb.cl, %bb.cm, %bb.cn
  %.sroa.0.0.i.i.i528 = phi i32 [ %i.agl, %bb.ck ], [ %i.agm, %bb.cl ], [ %i.agt, %bb.cn ], [ %i.agh, %bb.cm ]
  %i.agu = getelementptr inbounds nuw [2 x i8], ptr %i.aem, i64 %indvars.iv.i392
  %.sroa.058.0.copyload.i = load i16, ptr %i.agu, align 2, !tbaa !237 ; 2 uses
  %i.agv = zext i16 %.sroa.058.0.copyload.i to i32
  %i.agw = shl nuw nsw i32 %i.agv, 13
  %i.agx = and i32 %i.agw, 268427264              ; 6 uses
  %.signext.i.i.i522 = sext i16 %.sroa.058.0.copyload.i to i32
  %i.agy = and i32 %.signext.i.i.i522, -2147483648 ; 3 uses
  %i.agz = icmp samesign ugt i32 %i.agx, 8388607
  br i1 %i.agz, label %bb.co, label %bb.cr, !prof !240

bb.co:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit529
  %i.aha = or disjoint i32 %i.agx, %i.agy         ; 2 uses
  %i.ahb = icmp samesign ult i32 %i.agx, 260046848
  br i1 %i.ahb, label %bb.cp, label %bb.cq, !prof !240

bb.cp:                                            ; preds = %bb.co
  %i.ahc = add nuw nsw i32 %i.aha, 939524096
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit525

bb.cq:                                            ; preds = %bb.co
  %i.ahd = or i32 %i.aha, 2139095040
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit525

bb.cr:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit529
  %.not.i.i.i523 = icmp eq i32 %i.agx, 0
  br i1 %.not.i.i.i523, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110half2floatEN9Imath_3_14halfE.exit525, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ahe = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.agx, i1 true)
  %i.ahf = add nsw i32 %i.ahe, -8                 ; 2 uses
  %i.ahg = shl i32 %i.agx, %i.ahf
end_hunk_0
