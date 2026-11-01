Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_cacorrectrgb?download=true
inline.NumInlined: 20
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@process:bb.a
  %wide.gep722 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep673, i64 20
  %wide.masked.gather723 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep722, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !47, !alias.scope !144, !noalias !119
  %i.wy = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather723, %i.uy
  %wide.gep724 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep674, i64 20
  %wide.masked.gather725 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep724, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !47, !alias.scope !144, !noalias !119
  %i.wz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather725, %i.uz
  %i.xa = fsub reassoc nsz arcp contract afn <8 x float> %i.wy, %i.wx
  %i.xb = fadd reassoc nsz arcp contract afn <8 x float> %i.xa, %i.wz
  %i.xc = fmul reassoc nsz arcp contract afn <8 x float> %i.xb, %broadcast.splat659
  %i.xd = fadd reassoc nsz arcp contract afn <8 x float> %i.xc, %i.wx
  %wide.gep726 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep677, i64 20
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.xd, <8 x ptr> align 4 %wide.gep726, <8 x i1> splat (i1 true)), !tbaa !47, !alias.scope !145, !noalias !119
  %index.next727 = add nuw i64 %index671, 8       ; 2 uses
  %vec.ind.next728 = add nuw <8 x i64> %vec.ind672, splat (i64 8)
  %i.xe = icmp eq i64 %index.next727, %n.vec653
  br i1 %i.xe, label %middle.block729, label %vector.body670, !llvm.loop !89

middle.block729:                                  ; preds = %vector.body670
  br i1 %cmp.n730, label %._crit_edge.i64.i, label %scalar.ph650.preheader

scalar.ph650.preheader:                           ; preds = %.preheader.i58.i, %middle.block729
  %.08388.i60.i.ph = phi i64 [ 0, %.preheader.i58.i ], [ %n.vec653, %middle.block729 ]
  %i.xf = insertelement <4 x float> poison, float %i.ud, i64 0
  %i.xg = shufflevector <4 x float> %i.xf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xh = insertelement <2 x float> poison, float %i.ud, i64 0
  %i.xi = shufflevector <2 x float> %i.xh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph650

._crit_edge.i64.i:                                ; preds = %scalar.ph650, %middle.block729
  %i.xj = add nuw i64 %.08489.i59.i, 1            ; 2 uses
  %exitcond93.not.i65.i = icmp eq i64 %i.xj, %i.u
  br i1 %exitcond93.not.i65.i, label %interpolate_bilinear.exit66.i, label %.preheader.i58.i

scalar.ph650:                                     ; preds = %scalar.ph650.preheader, %scalar.ph650
  %.08388.i60.i = phi i64 [ %i.zu, %scalar.ph650 ], [ %.08388.i60.i.ph, %scalar.ph650.preheader ] ; 3 uses
  %i.xk = uitofp reassoc nsz arcp contract afn i64 %.08388.i60.i to float
  %i.xl = fmul reassoc nnan nsz arcp contract afn float %i.tl, %i.xk
  %i.xm = fmul reassoc nsz arcp contract afn float %i.xl, %i.tp ; 2 uses
  %i.xn = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.xm)
  %i.xo = fptoui float %i.xn to i64               ; 3 uses
  %i.xp = add i64 %i.xo, 1                        ; 2 uses
  %i.xq = icmp ugt i64 %i.ao, %i.xo
  %i.xr = select i1 %i.xq, i64 %i.xo, i64 %i.tj   ; 2 uses
  %i.xs = icmp ult i64 %i.xp, %i.ao
  %i.xt = select i1 %i.xs, i64 %i.xp, i64 %i.tj   ; 3 uses
  %i.xu = add i64 %i.xr, %i.ua
  %.idx83.i = mul i64 %i.xu, 24
  %i.xv = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx83.i ; 2 uses
  %i.xw = add i64 %i.xt, %i.ua
  %.idx84.i = mul i64 %i.xw, 24
  %i.xx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx84.i ; 2 uses
  %i.xy = add i64 %i.xt, %i.ub
  %.idx85.i = mul i64 %i.xy, 24
  %i.xz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx85.i ; 2 uses
  %i.ya = add i64 %i.xr, %i.ub
  %.idx86.i = mul i64 %i.ya, 24
  %i.yb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx86.i ; 2 uses
  %i.yc = uitofp reassoc nsz arcp contract afn i64 %i.xt to float
  %i.yd = fsub reassoc nsz arcp contract afn float %i.yc, %i.xm ; 3 uses
  %i.ye = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.yd ; 2 uses
  %i.yf = add i64 %.08388.i60.i, %i.ue
  %.idx87.i = mul i64 %i.yf, 24
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ti, i64 %.idx87.i ; 2 uses
  %i.yh = load <4 x float>, ptr %i.yb, align 8, !tbaa !47, !alias.scope !144, !noalias !119
  %i.yi = insertelement <4 x float> poison, float %i.yd, i64 0
  %i.yj = shufflevector <4 x float> %i.yi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.yk = fmul reassoc nsz arcp contract afn <4 x float> %i.yj, %i.yh
  %i.yl = load <4 x float>, ptr %i.xz, align 8, !tbaa !47, !alias.scope !144, !noalias !119
  %i.ym = insertelement <4 x float> poison, float %i.ye, i64 0
  %i.yn = shufflevector <4 x float> %i.ym, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.yo = fmul reassoc nsz arcp contract afn <4 x float> %i.yn, %i.yl
  %i.yp = fadd reassoc nsz arcp contract afn <4 x float> %i.yo, %i.yk ; 2 uses
  %i.yq = load <4 x float>, ptr %i.xv, align 8, !tbaa !47, !alias.scope !144, !noalias !119
  %i.yr = fmul reassoc nsz arcp contract afn <4 x float> %i.yj, %i.yq
  %i.ys = load <4 x float>, ptr %i.xx, align 8, !tbaa !47, !alias.scope !144, !noalias !119
  %i.yt = fmul reassoc nsz arcp contract afn <4 x float> %i.yn, %i.ys
  %i.yu = fsub reassoc nsz arcp contract afn <4 x float> %i.yr, %i.yp
  %i.yv = fadd reassoc nsz arcp contract afn <4 x float> %i.yu, %i.yt
  %i.yw = fmul reassoc nsz arcp contract afn <4 x float> %i.yv, %i.xg
  %i.yx = fadd reassoc nsz arcp contract afn <4 x float> %i.yw, %i.yp
  store <4 x float> %i.yx, ptr %i.yg, align 8, !tbaa !47, !alias.scope !145, !noalias !119
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  %i.yz = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  %i.za = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yg, i64 16
  %i.zd = load <2 x float>, ptr %i.yy, align 8, !tbaa !47, !alias.scope !144, !noalias !119
  %i.ze = insertelement <2 x float> poison, float %i.yd, i64 0
  %i.zf = shufflevector <2 x float> %i.ze, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zg = fmul reassoc nsz arcp contract afn <2 x float> %i.zd, %i.zf
  %i.zh = load <2 x float>, ptr %i.yz, align 8, !tbaa !47, !alias.scope !144, !noalias !119
  %i.zi = insertelement <2 x float> poison, float %i.ye, i64 0
  %i.zj = shufflevector <2 x float> %i.zi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zk = fmul reassoc nsz arcp contract afn <2 x float> %i.zh, %i.zj
  %i.zl = fadd reassoc nsz arcp contract afn <2 x float> %i.zk, %i.zg ; 2 uses
  %i.zm = load <2 x float>, ptr %i.za, align 8, !tbaa !47, !alias.scope !144, !noalias !119
  %i.zn = fmul reassoc nsz arcp contract afn <2 x float> %i.zm, %i.zf
  %i.zo = load <2 x float>, ptr %i.zb, align 8, !tbaa !47, !alias.scope !144, !noalias !119
  %i.zp = fmul reassoc nsz arcp contract afn <2 x float> %i.zo, %i.zj
  %i.zq = fsub reassoc nsz arcp contract afn <2 x float> %i.zn, %i.zl
  %i.zr = fadd reassoc nsz arcp contract afn <2 x float> %i.zq, %i.zp
  %i.zs = fmul reassoc nsz arcp contract afn <2 x float> %i.zr, %i.xi
  %i.zt = fadd reassoc nsz arcp contract afn <2 x float> %i.zs, %i.zl
  store <2 x float> %i.zt, ptr %i.zc, align 8, !tbaa !47, !alias.scope !145, !noalias !119
  %i.zu = add nuw i64 %.08388.i60.i, 1            ; 2 uses
  %exitcond92.not.i63.i = icmp eq i64 %i.zu, %i.r
  br i1 %exitcond92.not.i63.i, label %._crit_edge.i64.i, label %scalar.ph650, !llvm.loop !90

interpolate_bilinear.exit66.thread.i:             ; preds = %.preheader.lr.ph.i55.i, %get_manifolds.exit.i
  call void @free(ptr noundef %i.aw) #18, !noalias !119
  br label %apply_correction.exit.i

interpolate_bilinear.exit66.i:                    ; preds = %._crit_edge.i64.i
  call void @free(ptr noundef nonnull %i.aw) #18, !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.zv = zext i32 %i.ag to i64                   ; 9 uses
  %i.zw = add nuw nsw i64 %i.zv, 1                ; 3 uses
  %i.zx = urem i64 %i.zw, 3                       ; 5 uses
  %i.zy = udiv i64 %i.zw, 3
  %i.zz = add nuw nsw i64 %i.zv, 2                ; 3 uses
  %i.aaa = urem i64 %i.zz, 3                      ; 5 uses
  %i.aab = udiv i64 %i.zz, 3
  %min.iters.check771 = icmp ult i64 %i.tg, 9
  br i1 %min.iters.check771, label %scalar.ph770.preheader, label %vector.scevcheck732

vector.scevcheck732:                              ; preds = %interpolate_bilinear.exit66.i
  %i.aac = add nsw i64 %i.tg, -1                  ; 2 uses
  %i.aad = shl nuw nsw i64 %i.zv, 2               ; 2 uses
  %i.aae = udiv i64 %i.zw, 3
  %.neg = mul nsw i64 %i.aae, -12
  %i.aaf = getelementptr i8, ptr %3, i64 %.neg
  %i.aag = getelementptr i8, ptr %i.aaf, i64 %i.aad
  %scevgep733 = getelementptr i8, ptr %i.aag, i64 4 ; 2 uses
  %mul.result735 = shl i64 %i.aac, 4              ; 2 uses
  %mul.overflow736 = icmp ugt i64 %i.aac, 1152921504606846975
  %i.aah = getelementptr i8, ptr %scevgep733, i64 %mul.result735
  %i.aai = icmp ult ptr %i.aah, %scevgep733
  %i.aaj = udiv i64 %i.zz, 3
  %.neg906 = mul nsw i64 %i.aaj, -12
  %i.aak = getelementptr i8, ptr %3, i64 %.neg906
  %i.aal = getelementptr i8, ptr %i.aak, i64 %i.aad
  %scevgep737 = getelementptr i8, ptr %i.aal, i64 8 ; 2 uses
  %i.aam = getelementptr i8, ptr %scevgep737, i64 %mul.result735
  %i.aan = icmp ult ptr %i.aam, %scevgep737
  %i.aao = or i1 %i.aan, %mul.overflow736
  %i.aap = or i1 %i.aai, %i.aao
  br i1 %i.aap, label %scalar.ph770.preheader, label %vector.memcheck772

vector.memcheck772:                               ; preds = %vector.scevcheck732
  %i.aaq = shl nuw nsw i64 %i.zv, 2               ; 4 uses
  %i.aar = mul nuw nsw i64 %i.zy, 12              ; 2 uses
  %i.aas = add nuw nsw i64 %i.aaq, 4
  %i.aat = sub nsw i64 %i.aas, %i.aar
  %i.aau = getelementptr i8, ptr %3, i64 %i.aat   ; 3 uses
  %i.aav = mul nsw i64 %i.u, %i.r
  %i.aaw = shl i64 %i.aav, 4                      ; 2 uses
  %i.aax = add i64 %i.aaw, %i.aaq                 ; 3 uses
  %i.aay = add i64 %i.aax, -8
  %i.aaz = sub i64 %i.aay, %i.aar
  %i.aba = getelementptr i8, ptr %3, i64 %i.aaz   ; 3 uses
  %i.abb = mul nuw nsw i64 %i.aab, 12             ; 2 uses
  %i.abc = add nuw nsw i64 %i.aaq, 8
  %i.abd = sub nsw i64 %i.abc, %i.abb
  %i.abe = getelementptr i8, ptr %3, i64 %i.abd   ; 3 uses
  %i.abf = add i64 %i.aax, -4
  %i.abg = sub i64 %i.abf, %i.abb
  %i.abh = getelementptr i8, ptr %3, i64 %i.abg   ; 3 uses
  %i.abi = getelementptr i8, ptr %3, i64 %i.aaq   ; 3 uses
  %i.abj = getelementptr i8, ptr %3, i64 %i.aax
  %i.abk = getelementptr i8, ptr %i.abj, i64 -12  ; 3 uses
  %i.abl = getelementptr i8, ptr %3, i64 12       ; 3 uses
  %i.abm = getelementptr i8, ptr %3, i64 %i.aaw   ; 3 uses
  %bound0773 = icmp ult ptr %i.aau, %i.abh
  %bound1774 = icmp ult ptr %i.abe, %i.aba
  %found.conflict775 = and i1 %bound0773, %bound1774
  %bound0776 = icmp ult ptr %i.aau, %i.abk
  %bound1777 = icmp ult ptr %i.abi, %i.aba
  %found.conflict778 = and i1 %bound0776, %bound1777
  %conflict.rdx779 = or i1 %found.conflict775, %found.conflict778
  %bound0780 = icmp ult ptr %i.aau, %i.abm
  %bound1781 = icmp ult ptr %i.abl, %i.aba
  %found.conflict782 = and i1 %bound0780, %bound1781
  %conflict.rdx783 = or i1 %conflict.rdx779, %found.conflict782
  %bound0784 = icmp ult ptr %i.abe, %i.abk
  %bound1785 = icmp ult ptr %i.abi, %i.abh
  %found.conflict786 = and i1 %bound0784, %bound1785
  %conflict.rdx787 = or i1 %conflict.rdx783, %found.conflict786
  %bound0788 = icmp ult ptr %i.abe, %i.abm
  %bound1789 = icmp ult ptr %i.abl, %i.abh
  %found.conflict790 = and i1 %bound0788, %bound1789
  %conflict.rdx791 = or i1 %conflict.rdx787, %found.conflict790
  %bound0792 = icmp ult ptr %i.abi, %i.abm
  %bound1793 = icmp ult ptr %i.abl, %i.abk
  %found.conflict794 = and i1 %bound0792, %bound1793
  %conflict.rdx795 = or i1 %conflict.rdx791, %found.conflict794
  br i1 %conflict.rdx795, label %scalar.ph770.preheader, label %vector.ph796

vector.ph796:                                     ; preds = %vector.memcheck772
  %i.abn = and i64 %i.tg, 3                       ; 2 uses
  %i.abo = icmp eq i64 %i.abn, 0
  %i.abp = select i1 %i.abo, i64 4, i64 %i.abn
  %n.vec797 = sub nsw i64 %i.tg, %i.abp           ; 2 uses
  %broadcast.splatinsert798 = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat799 = shufflevector <4 x i32> %broadcast.splatinsert798, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %6 = icmp ult <4 x i32> %broadcast.splat799, splat (i32 3)
  %7 = icmp ult <4 x i32> %broadcast.splat799, splat (i32 3)
  %broadcast.splatinsert800 = insertelement <4 x i64> poison, i64 %i.zv, i64 0
  %broadcast.splat801 = shufflevector <4 x i64> %broadcast.splatinsert800, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert802 = insertelement <4 x i64> poison, i64 %i.zx, i64 0
  %broadcast.splat803 = shufflevector <4 x i64> %broadcast.splatinsert802, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert804 = insertelement <4 x i64> poison, i64 %i.aaa, i64 0
  %broadcast.splat805 = shufflevector <4 x i64> %broadcast.splatinsert804, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.abq = icmp eq i32 %i.ai, 1
  %i.abr = icmp eq i32 %i.ai, 0                   ; 2 uses
  %i.abs = icmp eq i32 %i.ai, 2
  br label %vector.body806

vector.body806:                                   ; preds = %vector.body806, %vector.ph796
  %index807 = phi i64 [ 0, %vector.ph796 ], [ %index.next838, %vector.body806 ]
  %vec.ind808 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph796 ], [ %vec.ind.next839, %vector.body806 ] ; 3 uses
  %8 = mul <4 x i64> %vec.ind808, splat (i64 24)
  %wide.gep809 = getelementptr i8, ptr %i.ti, <4 x i64> %8 ; 4 uses
  %wide.gep810 = getelementptr [4 x i8], <4 x ptr> %wide.gep809, i64 %i.zv
  %wide.masked.gather811 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep810, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !47, !alias.scope !147, !noalias !119
  %9 = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.masked.gather811, <4 x float> splat (float f0x358637BD)) ; 4 uses
  %wide.gep812 = getelementptr i8, <4 x ptr> %wide.gep809, i64 12 ; 3 uses
  %wide.gep813 = getelementptr [4 x i8], <4 x ptr> %wide.gep812, i64 %i.zv
  %wide.masked.gather814 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep813, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !47, !alias.scope !147, !noalias !119
  %10 = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.masked.gather814, <4 x float> splat (float f0x358637BD)) ; 4 uses
  %11 = call reassoc nsz arcp contract afn <4 x float> @llvm.log2.v4f32(<4 x float> %9) ; 2 uses
  %12 = call reassoc nsz arcp contract afn <4 x float> @llvm.log2.v4f32(<4 x float> %10)
  %13 = fsub reassoc nsz arcp contract afn <4 x float> %11, %12 ; 3 uses
  %14 = shl <4 x i64> %vec.ind808, splat (i64 2)  ; 4 uses
  %15 = add <4 x i64> %14, %broadcast.splat801    ; 2 uses
  %i.abt = extractelement <4 x i64> %15, i64 0
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.abt
  %wide.vec815 = load <16 x float>, ptr %i.abu, align 4, !tbaa !47, !alias.scope !149
  %strided.vec816 = shufflevector <16 x float> %wide.vec815, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %16 = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %strided.vec816, <4 x float> zeroinitializer) ; 4 uses
  %17 = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %16, <4 x float> %10)
  %18 = call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %17, <4 x float> %9)
  %19 = call reassoc nsz arcp contract afn <4 x float> @llvm.log2.v4f32(<4 x float> %18)
  %20 = fsub reassoc nsz arcp contract afn <4 x float> %11, %19
  %21 = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %20)
  %22 = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %13, <4 x float> splat (float f0x358637BD))
  %23 = fdiv reassoc nsz arcp contract afn <4 x float> %21, %22 ; 2 uses
  %24 = fcmp reassoc nsz arcp contract afn olt <4 x float> %13, splat (float 2.500000e-01)
  %25 = fmul reassoc nsz arcp contract afn <4 x float> %23, splat (float 4.000000e+00)
  %26 = fadd reassoc nsz arcp contract afn <4 x float> %25, splat (float -2.000000e+00)
  %27 = fmul reassoc nsz arcp contract afn <4 x float> %26, %13
  %28 = fadd reassoc nsz arcp contract afn <4 x float> %27, splat (float 5.000000e-01)
  %29 = select nsz <4 x i1> %24, <4 x float> %28, <4 x float> %23 ; 3 uses
  %30 = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %29
  %31 = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %30, <4 x float> zeroinitializer) ; 2 uses
  %32 = or disjoint <4 x i64> %14, %broadcast.splat803 ; 2 uses
  %i.abv = extractelement <4 x i64> %32, i64 0
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.abv
  %wide.vec817 = load <16 x float>, ptr %i.abw, align 4, !tbaa !47, !alias.scope !149
  %strided.vec818 = shufflevector <16 x float> %wide.vec817, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %33 = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %strided.vec818, <4 x float> zeroinitializer) ; 2 uses
  %wide.gep819 = getelementptr [4 x i8], <4 x ptr> %wide.gep809, i64 %i.zx
  %wide.masked.gather820 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep819, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !47, !alias.scope !147, !noalias !119
  %34 = fdiv reassoc nsz arcp contract afn <4 x float> %wide.masked.gather820, %9
  %wide.gep821 = getelementptr [4 x i8], <4 x ptr> %wide.gep812, i64 %i.zx
  %wide.masked.gather822 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep821, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !47, !alias.scope !147, !noalias !119
  %35 = fdiv reassoc nsz arcp contract afn <4 x float> %wide.masked.gather822, %10
  %36 = call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %35, <4 x float> %29)
  %37 = call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %34, <4 x float> %31)
  %38 = fmul reassoc nsz arcp contract afn <4 x float> %36, %16
  %39 = fmul reassoc nsz arcp contract afn <4 x float> %38, %37 ; 3 uses
  %40 = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %39, <4 x float> %33)
  %41 = call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %39, <4 x float> %33)
  %predphi = select i1 %i.abq, <4 x float> %41, <4 x float> %40
  %predphi823 = select i1 %i.abr, <4 x float> %39, <4 x float> %predphi
  %wide.gep824 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %32
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi823, <4 x ptr> align 4 %wide.gep824, <4 x i1> %6), !tbaa !47, !alias.scope !150, !noalias !151
  %42 = or disjoint <4 x i64> %14, %broadcast.splat805 ; 2 uses
  %i.abx = extractelement <4 x i64> %42, i64 0
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.abx
  %wide.vec825 = load <16 x float>, ptr %i.aby, align 4, !tbaa !47, !alias.scope !149
  %strided.vec826 = shufflevector <16 x float> %wide.vec825, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %43 = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %strided.vec826, <4 x float> zeroinitializer) ; 2 uses
  %wide.gep827 = getelementptr [4 x i8], <4 x ptr> %wide.gep809, i64 %i.aaa
  %wide.masked.gather828 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep827, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !47, !alias.scope !147, !noalias !119
  %44 = fdiv reassoc nsz arcp contract afn <4 x float> %wide.masked.gather828, %9
  %wide.gep829 = getelementptr [4 x i8], <4 x ptr> %wide.gep812, i64 %i.aaa
  %wide.masked.gather830 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep829, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !47, !alias.scope !147, !noalias !119
  %45 = fdiv reassoc nsz arcp contract afn <4 x float> %wide.masked.gather830, %10
  %46 = call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %45, <4 x float> %29)
  %47 = call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %44, <4 x float> %31)
  %48 = fmul reassoc nsz arcp contract afn <4 x float> %47, %16
  %49 = fmul reassoc nsz arcp contract afn <4 x float> %48, %46 ; 3 uses
  %50 = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %49, <4 x float> %43)
  %51 = call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %49, <4 x float> %43)
  %predphi831 = select i1 %i.abs, <4 x float> %50, <4 x float> %51
  %predphi832 = select i1 %i.abr, <4 x float> %49, <4 x float> %predphi831
  %wide.gep833 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %42
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi832, <4 x ptr> align 4 %wide.gep833, <4 x i1> %7), !tbaa !47, !alias.scope !152, !noalias !153
  %wide.gep834 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %15
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %16, <4 x ptr> align 4 %wide.gep834, <4 x i1> splat (i1 true)), !tbaa !47, !alias.scope !154, !noalias !155
  %52 = or disjoint <4 x i64> %14, splat (i64 3)  ; 2 uses
  %i.abz = extractelement <4 x i64> %52, i64 0
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.abz
  %wide.vec835 = load <16 x float>, ptr %i.aca, align 4, !tbaa !47, !alias.scope !149
  %strided.vec836 = shufflevector <16 x float> %wide.vec835, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.gep837 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %52
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec836, <4 x ptr> align 4 %wide.gep837, <4 x i1> splat (i1 true)), !tbaa !47, !alias.scope !156
  %index.next838 = add nuw i64 %index807, 4       ; 2 uses
  %vec.ind.next839 = add nuw <4 x i64> %vec.ind808, splat (i64 4)
  %i.acb = icmp eq i64 %index.next838, %n.vec797
  br i1 %i.acb, label %scalar.ph770.preheader, label %vector.body806, !llvm.loop !100

scalar.ph770.preheader:                           ; preds = %vector.body806, %vector.memcheck772, %vector.scevcheck732, %interpolate_bilinear.exit66.i
  %.07276.i.i.ph = phi i64 [ 0, %vector.memcheck772 ], [ 0, %vector.scevcheck732 ], [ 0, %interpolate_bilinear.exit66.i ], [ %n.vec797, %vector.body806 ]
  br label %scalar.ph770

scalar.ph770:                                     ; preds = %scalar.ph770.preheader, %bb.m
  %.07276.i.i = phi i64 [ %i.aeq, %bb.m ], [ %.07276.i.i.ph, %scalar.ph770.preheader ] ; 3 uses
  %.idx.i69.i = mul i64 %.07276.i.i, 24
  %i.acc = getelementptr i8, ptr %i.ti, i64 %.idx.i69.i ; 3 uses
  %i.acd = getelementptr [4 x i8], ptr %i.acc, i64 %i.zv
  %i.ace = call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.acd, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !47, !alias.scope !147, !noalias !119
  %i.acf = shufflevector <4 x float> %i.ace, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.acg = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.acf, <2 x float> splat (float f0x358637BD)) ; 4 uses
  %i.ach = extractelement <2 x float> %i.acg, i64 0 ; 2 uses
  %i.aci = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ach) ; 2 uses
  %i.acj = extractelement <2 x float> %i.acg, i64 1 ; 2 uses
  %i.ack = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.acj)
  %i.acl = fsub reassoc nsz arcp contract afn float %i.aci, %i.ack ; 3 uses
  %i.acm = shl i64 %.07276.i.i, 2                 ; 4 uses
  %i.acn = add i64 %i.acm, %i.zv                  ; 2 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.acn
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !47, !alias.scope !149
  %i.acq = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.acp, float 0.000000e+00) ; 4 uses
  %i.acr = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.acq, float %i.acj)
  %i.acs = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.acr, float %i.ach)
  %i.act = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.acs)
  %i.acu = fsub reassoc nsz arcp contract afn float %i.aci, %i.act
  %i.acv = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.acu)
  %i.acw = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.acl, float f0x358637BD)
  %i.acx = fdiv reassoc nsz arcp contract afn float %i.acv, %i.acw ; 2 uses
  %i.acy = fcmp reassoc nsz arcp contract afn olt float %i.acl, 2.500000e-01
  %i.acz = fmul reassoc nsz arcp contract afn float %i.acx, 4.000000e+00
  %reass.add.i.i = fadd reassoc nsz arcp contract afn float %i.acz, -2.000000e+00
  %reass.mul.i.i = fmul reassoc nsz arcp contract afn float %reass.add.i.i, %i.acl
  %i.ada = fadd reassoc nsz arcp contract afn float %reass.mul.i.i, 5.000000e-01
  %.073.i.i = select nsz i1 %i.acy, float %i.ada, float %i.acx ; 3 uses
  %i.adb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.073.i.i
  %i.adc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.adb, float 0.000000e+00) ; 2 uses
  %i.add = or disjoint i64 %i.acm, %i.zx          ; 2 uses
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.add
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !47, !alias.scope !149
  %i.adg = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.adf, float 0.000000e+00) ; 2 uses
  %i.adh = getelementptr [4 x i8], ptr %i.acc, i64 %i.zx
  %i.adi = call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.adh, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !47, !alias.scope !147, !noalias !119
  %i.adj = shufflevector <4 x float> %i.adi, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.adk = fdiv reassoc nsz arcp contract afn <2 x float> %i.adj, %i.acg ; 2 uses
  %i.adl = extractelement <2 x float> %i.adk, i64 1
  %i.adm = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adl, float %.073.i.i)
  %i.adn = extractelement <2 x float> %i.adk, i64 0
  %i.ado = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adn, float %i.adc)
  %i.adp = fmul reassoc nsz arcp contract afn float %i.adm, %i.acq
  %i.adq = fmul reassoc nsz arcp contract afn float %i.adp, %i.ado ; 3 uses
  switch i32 %i.ai, label %bb.j [
    i32 0, label %.sink.split.i.i
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %scalar.ph770
  %i.adr = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.adq, float %i.adg)
  br label %.sink.split.i.i

bb.i:                                             ; preds = %scalar.ph770
  %i.ads = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.adq, float %i.adg)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.i, %bb.h, %scalar.ph770
  %.sink.i70.i = phi float [ %i.ads, %bb.i ], [ %i.adr, %bb.h ], [ %i.adq, %scalar.ph770 ]
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.add
  store float %.sink.i70.i, ptr %i.adt, align 4, !tbaa !47, !alias.scope !157
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i.i, %scalar.ph770
  %i.adu = or disjoint i64 %i.acm, %i.aaa         ; 2 uses
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.adu
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !47, !alias.scope !149
  %i.adx = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.adw, float 0.000000e+00) ; 2 uses
  %i.ady = getelementptr [4 x i8], ptr %i.acc, i64 %i.aaa
  %i.adz = call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ady, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !47, !alias.scope !147, !noalias !119
  %i.aea = shufflevector <4 x float> %i.adz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.aeb = fdiv reassoc nsz arcp contract afn <2 x float> %i.aea, %i.acg ; 2 uses
  %i.aec = extractelement <2 x float> %i.aeb, i64 1
  %i.aed = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aec, float %.073.i.i)
  %i.aee = extractelement <2 x float> %i.aeb, i64 0
  %i.aef = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aee, float %i.adc)
  %i.aeg = fmul reassoc nsz arcp contract afn float %i.aef, %i.acq
  %i.aeh = fmul reassoc nsz arcp contract afn float %i.aeg, %i.aed ; 3 uses
  switch i32 %i.ai, label %bb.m [
    i32 0, label %.sink.split79.i.i
    i32 1, label %bb.l
    i32 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.aei = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aeh, float %i.adx)
  br label %.sink.split79.i.i

bb.l:                                             ; preds = %bb.j
  %i.aej = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.aeh, float %i.adx)
  br label %.sink.split79.i.i

.sink.split79.i.i:                                ; preds = %bb.l, %bb.k, %bb.j
  %.sink80.i.i = phi float [ %i.aei, %bb.k ], [ %i.aej, %bb.l ], [ %i.aeh, %bb.j ]
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.adu
  store float %.sink80.i.i, ptr %i.aek, align 4, !tbaa !47, !alias.scope !157
  br label %bb.m

bb.m:                                             ; preds = %.sink.split79.i.i, %bb.j
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.acn
  store float %i.acq, ptr %i.ael, align 4, !tbaa !47, !alias.scope !157
  %i.aem = or disjoint i64 %i.acm, 3              ; 2 uses
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aem
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !47, !alias.scope !149
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aem
  store float %i.aeo, ptr %i.aep, align 4, !tbaa !47, !alias.scope !157
  %i.aeq = add nuw i64 %.07276.i.i, 1             ; 2 uses
  %exitcond.not.i71.i = icmp eq i64 %i.aeq, %i.tg
  br i1 %exitcond.not.i71.i, label %apply_correction.exit.i, label %scalar.ph770, !llvm.loop !101

apply_correction.exit.i:                          ; preds = %bb.m, %interpolate_bilinear.exit66.thread.i
  %.not.i6778.i = phi i1 [ true, %interpolate_bilinear.exit66.thread.i ], [ false, %bb.m ] ; 2 uses
  call void @free(ptr noundef %i.ti) #18, !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.aer = shl i64 %i.tg, 4                       ; 2 uses
  %i.aes = call ptr @dt_alloc_aligned(i64 noundef %i.aer) #18, !noalias !160 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aes, i64 64) ]
  br i1 %.not.i6778.i, label %._crit_edge.i74.i, label %.preheader74.lr.ph.i.i

.preheader74.lr.ph.i.i:                           ; preds = %apply_correction.exit.i
  %i.aet = zext i32 %i.ag to i64                  ; 2 uses
  %i.aeu = add nuw nsw i64 %i.aet, 1
  %i.aev = urem i64 %i.aeu, 3                     ; 2 uses
  %i.aew = add nuw nsw i64 %i.aet, 2
  %i.aex = urem i64 %i.aew, 3                     ; 2 uses
  %min.iters.check843 = icmp ult i64 %i.tg, 3
  br i1 %min.iters.check843, label %.preheader74.i.i.preheader, label %vector.ph844

vector.ph844:                                     ; preds = %.preheader74.lr.ph.i.i
  %i.aey = add i64 %i.tg, -1
  %n.vec845 = and i64 %i.aey, -2                  ; 2 uses
  br label %vector.body846

vector.body846:                                   ; preds = %vector.body846, %vector.ph844
  %index847 = phi i64 [ 0, %vector.ph844 ], [ %index.next857, %vector.body846 ] ; 2 uses
  %i.aez = shl i64 %index847, 2                   ; 3 uses
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %i.aez
  %i.afb = or disjoint i64 %i.aez, %i.aev         ; 2 uses
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.afb
  %wide.vec848 = load <8 x float>, ptr %i.afc, align 4, !tbaa !47, !alias.scope !161
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.afb
  %wide.vec850 = load <8 x float>, ptr %i.afd, align 4, !tbaa !47, !alias.scope !162
  %i.afe = or disjoint i64 %i.aez, %i.aex         ; 2 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.afe
  %wide.vec852 = load <8 x float>, ptr %i.aff, align 4, !tbaa !47, !alias.scope !161
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.afe
  %wide.vec854 = load <8 x float>, ptr %i.afg, align 4, !tbaa !47, !alias.scope !162
  %i.afh = shufflevector <8 x float> %wide.vec848, <8 x float> %wide.vec850, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.afi = shufflevector <8 x float> %wide.vec852, <8 x float> %wide.vec854, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %interleaved.vec856 = shufflevector <4 x float> %i.afh, <4 x float> %i.afi, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x float> %interleaved.vec856, ptr %i.afa, align 32, !tbaa !47, !noalias !160
  %index.next857 = add nuw i64 %index847, 2       ; 2 uses
  %i.afj = icmp eq i64 %index.next857, %n.vec845
  br i1 %i.afj, label %.preheader74.i.i.preheader, label %vector.body846, !llvm.loop !105

.preheader74.i.i.preheader:                       ; preds = %vector.body846, %.preheader74.lr.ph.i.i
  %.06476.i.i.ph = phi i64 [ 0, %.preheader74.lr.ph.i.i ], [ %n.vec845, %vector.body846 ]
  br label %.preheader74.i.i

.preheader74.i.i:                                 ; preds = %.preheader74.i.i.preheader, %.preheader74.i.i
  %.06476.i.i = phi i64 [ %i.afz, %.preheader74.i.i ], [ %.06476.i.i.ph, %.preheader74.i.i.preheader ] ; 2 uses
  %i.afk = shl i64 %.06476.i.i, 2                 ; 3 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %i.afk ; 4 uses
  %i.afm = or disjoint i64 %i.afk, %i.aev         ; 2 uses
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.afm
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !47, !alias.scope !161
  store float %i.afo, ptr %i.afl, align 16, !tbaa !47, !noalias !160
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.afm
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !47, !alias.scope !162
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afl, i64 4
  store float %i.afq, ptr %i.afr, align 4, !tbaa !47, !noalias !160
  %i.afs = or disjoint i64 %i.afk, %i.aex         ; 2 uses
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.afs
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !47, !alias.scope !161
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  store float %i.afu, ptr %i.afv, align 8, !tbaa !47, !noalias !160
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.afs
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !47, !alias.scope !162
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afl, i64 12
  store float %i.afx, ptr %i.afy, align 4, !tbaa !47, !noalias !160
  %i.afz = add nuw i64 %.06476.i.i, 1             ; 2 uses
  %exitcond.not.i73.i = icmp eq i64 %i.afz, %i.tg
  br i1 %exitcond.not.i73.i, label %._crit_edge.i74.i, label %.preheader74.i.i, !llvm.loop !106

._crit_edge.i74.i:                                ; preds = %.preheader74.i.i, %apply_correction.exit.i
  %i.aga = call ptr @dt_alloc_aligned(i64 noundef %i.aer) #18, !noalias !160 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aga, i64 64) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !160
end_hunk_0
begin_hunk_1_@normalize_manifolds:bb.a
  %wide.masked.gather478 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep477, <8 x i1> %i.cz, <8 x float> poison), !tbaa !47
  %i.dm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather478, %i.dc
  %i.dn = fadd reassoc nsz arcp contract afn <8 x float> %i.dm, %i.dl
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.dn, <8 x ptr> align 4 %wide.gep475, <8 x i1> %i.cz), !tbaa !47, !alias.scope !210, !noalias !192
  %wide.masked.gather479 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !47, !alias.scope !192
  %i.do = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather479, %i.db
  %wide.gep480 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.bx ; 2 uses
  %wide.masked.gather481 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep480, <8 x i1> %i.cz, <8 x float> poison), !tbaa !47
  %i.dp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather481, %i.dc
  %i.dq = fadd reassoc nsz arcp contract afn <8 x float> %i.dp, %i.do
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.dq, <8 x ptr> align 4 %wide.gep, <8 x i1> %i.cz), !tbaa !47, !alias.scope !192
  %i.dr = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cb, splat (float 5.000000e-02) ; 11 uses
  %i.ds = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.cb, splat (float 2.500000e+01) ; 2 uses
  %i.dt = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ds, splat (float -2.500000e-01) ; 4 uses
  %i.du = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.250000e+00), %i.ds ; 4 uses
  %wide.gep482 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.bw ; 2 uses
  %wide.masked.gather483 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep482, <8 x i1> %i.dr, <8 x float> poison), !tbaa !47, !alias.scope !211, !noalias !212
  %i.dv = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather483, %i.dt
  %wide.masked.gather484 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep469, <8 x i1> %i.dr, <8 x float> poison), !tbaa !47
  %i.dw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather484, %i.du
  %i.dx = fadd reassoc nsz arcp contract afn <8 x float> %i.dw, %i.dv
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.dx, <8 x ptr> align 4 %wide.gep482, <8 x i1> %i.dr), !tbaa !47, !alias.scope !211, !noalias !212
  %wide.gep485 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.dg ; 2 uses
  %wide.masked.gather486 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep485, <8 x i1> %i.dr, <8 x float> poison), !tbaa !47, !alias.scope !213, !noalias !214
  %i.dy = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather486, %i.dt
  %wide.masked.gather487 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep473, <8 x i1> %i.dr, <8 x float> poison), !tbaa !47
  %i.dz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather487, %i.du
  %i.ea = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, %i.dy
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ea, <8 x ptr> align 4 %wide.gep485, <8 x i1> %i.dr), !tbaa !47, !alias.scope !213, !noalias !214
  %wide.gep488 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.dk ; 2 uses
  %wide.masked.gather489 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep488, <8 x i1> %i.dr, <8 x float> poison), !tbaa !47, !alias.scope !215, !noalias !193
  %i.eb = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather489, %i.dt
  %wide.masked.gather490 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep477, <8 x i1> %i.dr, <8 x float> poison), !tbaa !47
  %i.ec = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather490, %i.du
  %i.ed = fadd reassoc nsz arcp contract afn <8 x float> %i.ec, %i.eb
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ed, <8 x ptr> align 4 %wide.gep488, <8 x i1> %i.dr), !tbaa !47, !alias.scope !215, !noalias !193
  %wide.masked.gather491 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep447, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !47, !alias.scope !193
  %i.ee = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather491, %i.dt
  %wide.masked.gather492 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep480, <8 x i1> %i.dr, <8 x float> poison), !tbaa !47
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather492, %i.du
  %i.eg = fadd reassoc nsz arcp contract afn <8 x float> %i.ef, %i.ee
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eg, <8 x ptr> align 4 %wide.gep447, <8 x i1> %i.dr), !tbaa !47, !alias.scope !193
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %scalar.ph.preheader, label %vector.body, !llvm.loop !190

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %.loopexit
  %.07684 = phi i64 [ %i.hh, %.loopexit ], [ %.07684.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ei = shl i64 %.07684, 2                      ; 8 uses
  %i.ej = or disjoint i64 %i.ei, 3                ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !47
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ej
  %i.en = load float, ptr %i.em, align 4, !tbaa !47
  %i.eo = add i64 %i.ei, %i.b                     ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eo ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !47
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eo ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !47
  %i.et = or disjoint i64 %i.d, %i.ei             ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.et ; 2 uses
  %i.ew = or disjoint i64 %i.g, %i.ei             ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ew ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ew ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %i.el, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.en, i64 1
  %i.fb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fa, <2 x float> splat (float f0x3C23D70A)) ; 5 uses
  %i.fc = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.es, i64 1
  %i.fe = fdiv reassoc nsz arcp contract afn <2 x float> %i.fd, %i.fb ; 3 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0 ; 2 uses
  store float %i.ff, ptr %i.ep, align 4, !tbaa !47
  %i.fg = extractelement <2 x float> %i.fe, i64 1 ; 2 uses
  store float %i.fg, ptr %i.er, align 4, !tbaa !47
  %i.fh = load float, ptr %i.eu, align 4, !tbaa !47
  %i.fi = extractelement <2 x float> %i.fb, i64 0 ; 2 uses
  %i.fj = load float, ptr %i.ev, align 4, !tbaa !47
  %i.fk = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.fj, i64 1
  %i.fm = fdiv reassoc nsz arcp contract afn <2 x float> %i.fl, %i.fb ; 2 uses
  %i.fn = extractelement <2 x float> %i.fm, i64 0
  %i.fo = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fn)
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fo, %i.ff
  store float %i.fp, ptr %i.eu, align 4, !tbaa !47
  %i.fq = extractelement <2 x float> %i.fm, i64 1
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fq)
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, %i.fg
  store float %i.fs, ptr %i.ev, align 4, !tbaa !47
  %i.ft = load float, ptr %i.ex, align 4, !tbaa !47
  %i.fu = load float, ptr %i.ey, align 4, !tbaa !47
  %i.fv = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.fu, i64 1
  %i.fx = fdiv reassoc nsz arcp contract afn <2 x float> %i.fw, %i.fb
  %i.fy = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp2.v2f32(<2 x float> %i.fx)
  %i.fz = fmul reassoc nsz arcp contract afn <2 x float> %i.fy, %i.fe ; 2 uses
  %i.ga = extractelement <2 x float> %i.fz, i64 0
  store float %i.ga, ptr %i.ex, align 4, !tbaa !47
  %i.gb = extractelement <2 x float> %i.fz, i64 1
  store float %i.gb, ptr %i.ey, align 4, !tbaa !47
  %i.gc = fcmp reassoc nsz arcp contract afn olt float %i.fi, 5.000000e-02
  br i1 %i.gc, label %.loopexit80.loopexit, label %.loopexit80

.loopexit80.loopexit:                             ; preds = %scalar.ph
  %i.gd = fmul reassoc nnan nsz arcp contract afn float %i.fi, 2.500000e+01 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ei ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ei
  %i.gg = fadd reassoc nnan nsz arcp contract afn float %i.gd, -2.500000e-01
  %i.gh = fsub reassoc nnan nsz arcp contract afn float 1.250000e+00, %i.gd
  %i.gi = load <4 x float>, ptr %i.ge, align 4, !tbaa !47
  %i.gj = insertelement <4 x float> poison, float %i.gg, i64 0
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gl = fmul reassoc nsz arcp contract afn <4 x float> %i.gi, %i.gk
  %i.gm = load <4 x float>, ptr %i.gf, align 4, !tbaa !47
  %i.gn = insertelement <4 x float> poison, float %i.gh, i64 0
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gp = fmul reassoc nsz arcp contract afn <4 x float> %i.gm, %i.go
  %i.gq = fadd reassoc nsz arcp contract afn <4 x float> %i.gp, %i.gl
  store <4 x float> %i.gq, ptr %i.ge, align 4, !tbaa !47
  br label %.loopexit80

.loopexit80:                                      ; preds = %.loopexit80.loopexit, %scalar.ph
  %i.gr = extractelement <2 x float> %i.fb, i64 1 ; 2 uses
  %i.gs = fcmp reassoc nsz arcp contract afn olt float %i.gr, 5.000000e-02
  br i1 %i.gs, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit80
  %i.gt = fmul reassoc nnan nsz arcp contract afn float %i.gr, 2.500000e+01 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ei ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ei
  %i.gw = fadd reassoc nnan nsz arcp contract afn float %i.gt, -2.500000e-01
  %i.gx = fsub reassoc nnan nsz arcp contract afn float 1.250000e+00, %i.gt
  %i.gy = load <4 x float>, ptr %i.gu, align 4, !tbaa !47
  %i.gz = insertelement <4 x float> poison, float %i.gw, i64 0
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hb = fmul reassoc nsz arcp contract afn <4 x float> %i.gy, %i.ha
  %i.hc = load <4 x float>, ptr %i.gv, align 4, !tbaa !47
  %i.hd = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hf = fmul reassoc nsz arcp contract afn <4 x float> %i.hc, %i.he
  %i.hg = fadd reassoc nsz arcp contract afn <4 x float> %i.hf, %i.hb
  store <4 x float> %i.hg, ptr %i.gu, align 4, !tbaa !47
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit80
  %i.hh = add nuw i64 %.07684, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.hh, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !191
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #6

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #3

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log2.v8f32(<8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.log2.v4f32(<4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.pow.v4f32(<4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log2.v2f32(<2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp2.v8f32(<8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp2.v2f32(<2 x float>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!13 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!14 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!15 = !{!"dt_dev_histogram_collection_params_t", !14, i64 0, !8, i64 8}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 20}
!19 = !{!"float", !7, i64 0}
!20 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !19, i64 16}
!21 = !{!"short", !7, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 2}
!23 = !{!"", !8, i64 0, !7, i64 16}
!24 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !22, i64 48, !23, i64 64, !7, i64 96, !8, i64 112}
!25 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!26 = !{!"p1 float", !11, i64 0}
!27 = !{!"dt_dev_distorted_mask_cache_t", !26, i64 0, !20, i64 8, !17, i64 32, !17, i64 40}
!28 = !{!"dt_dev_pixelpipe_iop_t", !12, i64 0, !13, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !15, i64 40, !16, i64 56, !18, i64 64, !7, i64 88, !19, i64 104, !8, i64 108, !8, i64 112, !17, i64 120, !8, i64 128, !8, i64 132, !20, i64 136, !20, i64 156, !20, i64 176, !20, i64 196, !8, i64 216, !8, i64 220, !24, i64 224, !24, i64 352, !7, i64 480, !8, i64 516, !25, i64 520, !27, i64 528, !27, i64 576}
!29 = !{!28, !11, i64 16}
!30 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!31 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!32 = !{!"dt_pthread_mutex_t", !7, i64 0}
!33 = !{!"p1 _ZTS25dt_develop_blend_params_t", !11, i64 0}
!34 = !{!"", !25, i64 0, !25, i64 8}
!35 = !{!"", !12, i64 0, !8, i64 8}
!36 = !{!"", !34, i64 0, !35, i64 16}
!37 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!38 = !{!"p1 _ZTS7_GSList", !11, i64 0}
!39 = !{!"p1 _ZTS18dt_iop_module_so_t", !11, i64 0}
!40 = !{!"dt_iop_module_t", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !30, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !16, i64 608, !18, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !31, i64 664, !8, i64 672, !8, i64 676, !11, i64 680, !11, i64 688, !8, i64 696, !11, i64 704, !32, i64 712, !11, i64 752, !11, i64 760, !33, i64 768, !33, i64 776, !11, i64 784, !36, i64 792, !37, i64 824, !37, i64 832, !37, i64 840, !37, i64 848, !37, i64 856, !37, i64 864, !37, i64 872, !8, i64 880, !37, i64 888, !37, i64 896, !37, i64 904, !38, i64 912, !38, i64 920, !37, i64 928, !37, i64 936, !8, i64 944, !39, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !37, i64 1096, !11, i64 1104, !8, i64 1112}
!41 = !{!"dt_iop_cacorrectrgb_params_t", !8, i64 0, !19, i64 4, !19, i64 8, !8, i64 12, !8, i64 16}
!42 = !{!41, !19, i64 4}
!43 = !{!41, !19, i64 8}
!44 = !{!41, !8, i64 0}
!45 = !{!41, !8, i64 12}
!46 = !{!41, !8, i64 16}
!47 = !{!19, !19, i64 0}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!40, !11, i64 704}
!51 = !{!"dt_iop_cacorrectrgb_gui_data_t", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!52 = !{!51, !37, i64 32}
!53 = !{!51, !37, i64 0}
!54 = !{!51, !37, i64 8}
!55 = !{!51, !37, i64 16}
!56 = !{!51, !37, i64 24}
!57 = !{!40, !8, i64 696}
!58 = distinct !{!58, i1 true, !"reduce_chromatic_aberrations"}
!59 = distinct !{!59, !58, !"reduce_chromatic_aberrations: argument 0"}
!60 = distinct !{!60, !58, !"reduce_chromatic_aberrations: argument 1"}
!61 = distinct !{!61, i1 true, !"interpolate_bilinear"}
!62 = distinct !{!62, !61, !"interpolate_bilinear: argument 0"}
!63 = distinct !{!63, !61, !"interpolate_bilinear: argument 1"}
!64 = distinct !{!64, !48, !49}
!65 = distinct !{!65, !49, !48}
!66 = distinct !{!66, i1 true, !"get_manifolds"}
!67 = distinct !{!67, !66, !"get_manifolds: argument 0"}
!68 = distinct !{!68, !66, !"get_manifolds: argument 1"}
!69 = distinct !{!69, i1 false, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !69}
!73 = distinct !{!73, !69}
!74 = distinct !{!74, !69}
!75 = distinct !{!75, !69}
!76 = distinct !{!76, !69}
!77 = distinct !{!77, !69}
!78 = distinct !{!78, !69}
!79 = distinct !{!79, !69}
!80 = distinct !{!80, !69}
!81 = distinct !{!81, !69}
!82 = distinct !{!82, !48, !49}
!83 = distinct !{!83, !48}
!84 = distinct !{!84, !48, !49}
!85 = distinct !{!85, !48}
!86 = distinct !{!86, i1 true, !"interpolate_bilinear"}
!87 = distinct !{!87, !86, !"interpolate_bilinear: argument 0"}
!88 = distinct !{!88, !86, !"interpolate_bilinear: argument 1"}
!89 = distinct !{!89, !48, !49}
!90 = distinct !{!90, !49, !48}
!91 = distinct !{!91, i1 true, !"apply_correction"}
!92 = distinct !{!92, !91, !"apply_correction: argument 0"}
!93 = distinct !{!93, !91, !"apply_correction: argument 1"}
!94 = distinct !{!94, !91, !"apply_correction: argument 2"}
!95 = distinct !{!95, i1 false, !"LVerDomain"}
!96 = distinct !{!96, !95}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !95}
!99 = distinct !{!99, !95}
!100 = distinct !{!100, !48, !49}
!101 = distinct !{!101, !48}
!102 = distinct !{!102, i1 true, !"reduce_artifacts"}
!103 = distinct !{!103, !102, !"reduce_artifacts: argument 0"}
!104 = distinct !{!104, !102, !"reduce_artifacts: argument 1"}
!105 = distinct !{!105, !48, !49}
!106 = distinct !{!106, !49, !48}
!107 = distinct !{!107, i1 false, !"LVerDomain"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = distinct !{!110, !48, !49}
!111 = distinct !{!111, !48}
!112 = !{!28, !8, i64 132}
!113 = !{!28, !19, i64 104}
!114 = !{!20, !19, i64 16}
!115 = !{!20, !8, i64 8}
!116 = !{!20, !8, i64 12}
!117 = !{!59}
!118 = !{!60}
!119 = !{!59, !60}
!120 = !{!62}
!121 = !{!63}
!122 = !{!62, !59}
!123 = !{!67}
!124 = !{!68}
!125 = !{!67, !68, !59, !60}
!126 = !{!68, !59, !60}
!127 = !{!70}
!128 = !{!71}
!129 = !{!68, !59, !60, !81, !80, !79, !78, !77, !76, !75, !74, !73, !72, !70}
!130 = !{!81}
!131 = !{!68, !59, !60, !80, !79, !78, !77, !76, !75, !74, !73, !72, !70}
!132 = !{!80}
!133 = !{!68, !59, !60, !79, !78, !77, !76, !75, !74, !73, !72, !70}
!134 = !{!79}
!135 = !{!68, !59, !60, !78, !77, !76, !75, !74, !73, !72, !70}
!136 = !{!78}
!137 = !{!68, !59, !60, !77, !76, !75, !74, !73, !72, !70}
!138 = !{!77}
!139 = !{!68, !59, !60, !76, !75, !74, !73, !72, !70}
!140 = !{!76}
!141 = !{!68, !59, !60, !75, !74, !73, !72, !70}
!142 = !{!75}
!143 = !{!68, !59, !60, !74, !73, !72, !70}
!144 = !{!87}
!145 = !{!88}
!146 = !{!92}
!147 = !{!93}
!148 = !{!94}
!149 = !{!92, !59}
!150 = !{!94, !60, !96}
!151 = !{!99, !98, !97}
!152 = !{!94, !60, !99}
!153 = !{!98, !97}
!154 = !{!94, !60, !98}
end_hunk_1
