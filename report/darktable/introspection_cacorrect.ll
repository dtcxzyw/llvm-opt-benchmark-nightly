inline.NumInlined: 74
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a
  %i.dwb = tail call i32 @llvm.smax.i32(i32 %i.dwa, i32 0)
  %i.dwc = trunc i64 %indvars.iv2493 to i32
  %i.dwd = add nsw i32 %i.bwu, -3
  %. = tail call i32 @llvm.smin.i32(i32 %i.dwd, i32 %i.ae) ; 2 uses
  %i.dwe = icmp sge i32 %i.dwb, %.
  %i.dwf = zext nneg i32 %. to i64
  %i.dwg = sub i32 384, %i.dwc
  %i.dwh = select i1 %i.bwx, i32 %i.dwg, i32 387
  %i.dwi = add i32 %smin3868, %i.bwe
  %i.dwj = add i32 %smin3877, %i.bwc
  %min.iters.check3833 = icmp ult i64 %i.bwj, 8
  %min.iters.check3835 = icmp ult i64 %i.bwj, 32
  %i.dwk = and i64 %i.bwj, 24
  %n.vec3837 = and i64 %i.bwj, -32                ; 5 uses
  %i.dwl = add nsw i64 %n.vec3837, %i.bwp
  %cmp.n3846 = icmp eq i64 %i.bwj, %n.vec3837
  %min.epilog.iters.check3853 = icmp eq i64 %i.dwk, 0
  %n.vec3855 = and i64 %i.bwj, -8                 ; 4 uses
  %i.dwm = add nsw i64 %n.vec3855, %i.bwp
  %cmp.n3861 = icmp eq i64 %i.bwj, %n.vec3855
  br label %bb.ac

.preheader1943:                                   ; preds = %.loopexit1910
  br i1 %i.bvr, label %.lr.ph2045, label %.preheader1942.thread

.lr.ph2045:                                       ; preds = %.preheader1943
  %i.dwn = add nsw i32 %i.bww, -4                 ; 2 uses
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph2038, %.loopexit1910
  %indvar3826 = phi i64 [ 0, %.lr.ph2038 ], [ %indvar.next3827, %.loopexit1910 ] ; 2 uses
  %indvars.iv2466 = phi i64 [ 3, %.lr.ph2038 ], [ %indvars.iv.next2467, %.loopexit1910 ] ; 3 uses
  %indvars.iv2459 = phi i32 [ %i.dwh, %.lr.ph2038 ], [ %indvars.iv.next2460, %.loopexit1910 ] ; 3 uses
  %indvars.iv2442 = phi i32 [ 387, %.lr.ph2038 ], [ %indvars.iv.next2443, %.loopexit1910 ] ; 2 uses
  %i.dwo = mul i64 %i.qc, %indvar3826
  %i.dwp = add i64 %i.bwm, %i.dwo
  %i.dwq = sext i32 %indvars.iv2459 to i64
  %i.dwr = shl nsw i64 %i.dwq, 2
  %i.dws = sext i32 %indvars.iv2459 to i64        ; 5 uses
  %i.dwt = add nsw i64 %indvars.iv2466, %indvars.iv2497 ; 3 uses
  %indvars.iv2466.tr = trunc i64 %indvars.iv2466 to i32
  %i.dwu = shl i32 %indvars.iv2466.tr, 1
  %i.dwv = and i32 %i.dwu, 14                     ; 2 uses
  %.tr.i1826 = shl nuw nsw i32 %i.dwv, 1
  %i.dww = or disjoint i32 %.tr.i1826, 2
  %i.dwx = lshr i32 %i.q, %i.dww
  %i.dwy = and i32 %i.dwx, 1                      ; 4 uses
  %i.dwz = add nuw nsw i32 %i.dwy, 3              ; 5 uses
  %i.dxa = icmp slt i32 %i.dwz, %i.dvy
  br i1 %i.dxa, label %.lr.ph2030, label %._crit_edge2031

.lr.ph2030:                                       ; preds = %bb.ac
  %i.dxb = and i32 %i.dwz, 1
  %i.dxc = or disjoint i32 %i.dxb, %i.dwv
  %i.dxd = shl nuw nsw i32 %i.dxc, 1
  %i.dxe = lshr i32 %i.q, %i.dxd
  %i.dxf = and i32 %i.dxe, 3
  %i.dxg = zext nneg i32 %i.dxf to i64
  %i.dxh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dxg
  %i.dxi = load ptr, ptr %i.dxh, align 8, !tbaa !59 ; 6 uses
  %i.dxj = add i32 %indvars.iv2442, %i.dwy
  %i.dxk = zext i32 %i.dxj to i64                 ; 6 uses
  %i.dxl = sub i32 %i.dwj, %i.dwy                 ; 2 uses
  %i.dxm = lshr i32 %i.dxl, 1
  %narrow = add nuw i32 %i.dxm, 1
  %i.dxn = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check3879 = icmp ult i32 %i.dxl, 16
  br i1 %min.iters.check3879, label %scalar.ph3878.preheader, label %vector.memcheck3864

scalar.ph3878.preheader:                          ; preds = %vector.body3885, %vector.memcheck3864, %.lr.ph2030
  %indvars.iv2444.ph = phi i64 [ %i.dxk, %vector.memcheck3864 ], [ %i.dxk, %.lr.ph2030 ], [ %i.dxy, %vector.body3885 ]
  %.016632028.ph = phi i32 [ %i.dwz, %vector.memcheck3864 ], [ %i.dwz, %.lr.ph2030 ], [ %i.dyb, %vector.body3885 ]
  br label %scalar.ph3878

vector.memcheck3864:                              ; preds = %.lr.ph2030
  %i.dxo = shl nuw nsw i64 %i.dxk, 2              ; 3 uses
  %scevgep3866 = getelementptr i8, ptr %scevgep3865, i64 %i.dxo
  %i.dxp = sub i32 %i.dwi, %i.dwy
  %i.dxq = lshr i32 %i.dxp, 1
  %i.dxr = zext nneg i32 %i.dxq to i64
  %i.dxs = shl nuw nsw i64 %i.dxr, 3
  %i.dxt = add nuw nsw i64 %i.dxs, %i.dxo         ; 2 uses
  %scevgep3869 = getelementptr i8, ptr %scevgep3867, i64 %i.dxt
  %scevgep3870 = getelementptr i8, ptr %i.dxi, i64 -1024
  %scevgep3871 = getelementptr i8, ptr %scevgep3870, i64 %i.dxo
  %scevgep3872 = getelementptr i8, ptr %i.dxi, i64 1028
  %scevgep3873 = getelementptr i8, ptr %scevgep3872, i64 %i.dxt
  %bound03874 = icmp ult ptr %scevgep3866, %scevgep3873
  %bound13875 = icmp ult ptr %scevgep3871, %scevgep3869
  %found.conflict3876 = and i1 %bound03874, %bound13875
  br i1 %found.conflict3876, label %scalar.ph3878.preheader, label %vector.ph3880

vector.ph3880:                                    ; preds = %vector.memcheck3864
  %i.dxu = and i64 %i.dxn, 7                      ; 2 uses
  %i.dxv = icmp eq i64 %i.dxu, 0
  %i.dxw = select i1 %i.dxv, i64 8, i64 %i.dxu
  %n.vec3881 = sub nsw i64 %i.dxn, %i.dxw         ; 3 uses
  %i.dxx = shl nsw i64 %n.vec3881, 1
  %i.dxy = add nsw i64 %i.dxx, %i.dxk
  %i.dxz = trunc i64 %n.vec3881 to i32
  %i.dya = shl i32 %i.dxz, 1
  %i.dyb = add i32 %i.dwz, %i.dya
  %broadcast.splatinsert3882 = insertelement <8 x i64> poison, i64 %i.dxk, i64 0
  %broadcast.splat3883 = shufflevector <8 x i64> %broadcast.splatinsert3882, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3884 = add nuw nsw <8 x i64> %broadcast.splat3883, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body3885

vector.body3885:                                  ; preds = %vector.body3885, %vector.ph3880
  %index3886 = phi i64 [ 0, %vector.ph3880 ], [ %index.next3915, %vector.body3885 ] ; 2 uses
  %vec.ind3887 = phi <8 x i64> [ %induction3884, %vector.ph3880 ], [ %vec.ind.next3916, %vector.body3885 ] ; 2 uses
  %i.dyc = shl nuw i64 %index3886, 1
  %i.dyd = add nuw i64 %i.dyc, %i.dxk             ; 2 uses
  %wide.gep3888 = getelementptr inbounds nuw [4 x i8], ptr %i.bts, <8 x i64> %vec.ind3887 ; 2 uses
  %i.dye = extractelement <8 x ptr> %wide.gep3888, i64 0 ; 8 uses
  %i.dyf = getelementptr inbounds nuw i8, ptr %i.dye, i64 512
  %wide.vec3889 = load <16 x float>, ptr %i.dyf, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3890 = shufflevector <16 x float> %wide.vec3889, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dyg = getelementptr i8, ptr %i.dye, i64 -512
  %wide.vec3891 = load <16 x float>, ptr %i.dyg, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3892 = shufflevector <16 x float> %wide.vec3891, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dyh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3890, %strided.vec3892
  %i.dyi = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyh)
  %i.dyj = fadd reassoc nsz arcp contract afn <8 x float> %i.dyi, splat (float f0x3727C5AC)
  %i.dyk = getelementptr inbounds nuw [4 x i8], ptr %i.dxi, i64 %i.dyd ; 4 uses
  %wide.vec3893 = load <16 x float>, ptr %i.dyk, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3894 = shufflevector <16 x float> %wide.vec3893, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dyl = getelementptr i8, ptr %i.dyk, i64 -1024
  %wide.vec3895 = load <16 x float>, ptr %i.dyl, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3896 = shufflevector <16 x float> %wide.vec3895, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dym = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3894, %strided.vec3896
  %i.dyn = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dym)
  %i.dyo = fadd reassoc nsz arcp contract afn <8 x float> %i.dyj, %i.dyn
  %i.dyp = getelementptr i8, ptr %i.dye, i64 -1536
  %wide.vec3897 = load <16 x float>, ptr %i.dyp, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3898 = shufflevector <16 x float> %wide.vec3897, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dyq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3892, %strided.vec3898
  %i.dyr = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyq)
  %i.dys = fadd reassoc nsz arcp contract afn <8 x float> %i.dyo, %i.dyr ; 2 uses
  %i.dyt = fmul reassoc nsz arcp contract afn <8 x float> %i.dys, %i.dys
  %i.dyu = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dyt ; 2 uses
  %i.dyv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3892, %strided.vec3890
  %i.dyw = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyv)
  %i.dyx = fadd reassoc nsz arcp contract afn <8 x float> %i.dyw, splat (float f0x3727C5AC)
  %i.dyy = getelementptr inbounds nuw i8, ptr %i.dyk, i64 1024
  %wide.vec3899 = load <16 x float>, ptr %i.dyy, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3900 = shufflevector <16 x float> %wide.vec3899, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dyz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3894, %strided.vec3900
  %i.dza = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyz)
  %i.dzb = fadd reassoc nsz arcp contract afn <8 x float> %i.dyx, %i.dza
  %i.dzc = getelementptr inbounds nuw i8, ptr %i.dye, i64 1536
  %wide.vec3901 = load <16 x float>, ptr %i.dzc, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3902 = shufflevector <16 x float> %wide.vec3901, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dzd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3890, %strided.vec3902
  %i.dze = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzd)
  %i.dzf = fadd reassoc nsz arcp contract afn <8 x float> %i.dzb, %i.dze ; 2 uses
  %i.dzg = fmul reassoc nsz arcp contract afn <8 x float> %i.dzf, %i.dzf
  %i.dzh = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dzg ; 2 uses
  %i.dzi = getelementptr inbounds nuw i8, ptr %i.dye, i64 4
  %wide.vec3903 = load <16 x float>, ptr %i.dzi, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3904 = shufflevector <16 x float> %wide.vec3903, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dzj = getelementptr i8, ptr %i.dye, i64 -4
  %wide.vec3905 = load <16 x float>, ptr %i.dzj, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3906 = shufflevector <16 x float> %wide.vec3905, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dzk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3904, %strided.vec3906
  %i.dzl = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzk)
  %i.dzm = fadd reassoc nsz arcp contract afn <8 x float> %i.dzl, splat (float f0x3727C5AC)
  %i.dzn = getelementptr i8, ptr %i.dyk, i64 -8
  %wide.vec3907 = load <16 x float>, ptr %i.dzn, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3908 = shufflevector <16 x float> %wide.vec3907, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dzo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3894, %strided.vec3908
  %i.dzp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzo)
  %i.dzq = fadd reassoc nsz arcp contract afn <8 x float> %i.dzm, %i.dzp
  %i.dzr = getelementptr i8, ptr %i.dye, i64 -12
  %wide.vec3909 = load <16 x float>, ptr %i.dzr, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3910 = shufflevector <16 x float> %wide.vec3909, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dzs = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3906, %strided.vec3910
  %i.dzt = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzs)
  %i.dzu = fadd reassoc nsz arcp contract afn <8 x float> %i.dzq, %i.dzt ; 2 uses
  %i.dzv = fmul reassoc nsz arcp contract afn <8 x float> %i.dzu, %i.dzu
  %i.dzw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dzv ; 2 uses
  %i.dzx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3906, %strided.vec3904
  %i.dzy = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzx)
  %i.dzz = fadd reassoc nsz arcp contract afn <8 x float> %i.dzy, splat (float f0x3727C5AC)
  %i.eaa = getelementptr inbounds nuw [4 x i8], ptr %i.dxi, i64 %i.dyd
  %i.eab = getelementptr inbounds nuw i8, ptr %i.eaa, i64 8
  %wide.vec3911 = load <16 x float>, ptr %i.eab, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3912 = shufflevector <16 x float> %wide.vec3911, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.eac = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3894, %strided.vec3912
  %i.ead = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eac)
  %i.eae = fadd reassoc nsz arcp contract afn <8 x float> %i.dzz, %i.ead
  %i.eaf = getelementptr inbounds nuw i8, ptr %i.dye, i64 12
  %wide.vec3913 = load <16 x float>, ptr %i.eaf, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3914 = shufflevector <16 x float> %wide.vec3913, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.eag = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3904, %strided.vec3914
  %i.eah = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eag)
  %i.eai = fadd reassoc nsz arcp contract afn <8 x float> %i.eae, %i.eah ; 2 uses
  %i.eaj = fmul reassoc nsz arcp contract afn <8 x float> %i.eai, %i.eai
  %i.eak = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.eaj ; 2 uses
  %i.eal = fmul reassoc nsz arcp contract afn <8 x float> %i.dyu, %strided.vec3892
  %i.eam = fmul reassoc nsz arcp contract afn <8 x float> %i.dzh, %strided.vec3890
  %i.ean = fadd reassoc nsz arcp contract afn <8 x float> %i.eam, %i.eal
  %i.eao = fmul reassoc nsz arcp contract afn <8 x float> %i.dzw, %strided.vec3906
  %i.eap = fadd reassoc nsz arcp contract afn <8 x float> %i.ean, %i.eao
  %i.eaq = fmul reassoc nsz arcp contract afn <8 x float> %i.eak, %strided.vec3904
  %i.ear = fadd reassoc nsz arcp contract afn <8 x float> %i.eap, %i.eaq
  %i.eas = fadd reassoc nsz arcp contract afn <8 x float> %i.dzh, %i.dyu
  %i.eat = fadd reassoc nsz arcp contract afn <8 x float> %i.eas, %i.dzw
  %i.eau = fadd reassoc nsz arcp contract afn <8 x float> %i.eat, %i.eak
  %i.eav = fdiv reassoc nsz arcp contract afn <8 x float> %i.ear, %i.eau
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eav, <8 x ptr> align 4 %wide.gep3888, <8 x i1> splat (i1 true)), !tbaa !58, !alias.scope !73, !noalias !76
  %index.next3915 = add nuw i64 %index3886, 8     ; 2 uses
  %vec.ind.next3916 = add nuw nsw <8 x i64> %vec.ind3887, splat (i64 16)
  %i.eaw = icmp eq i64 %index.next3915, %n.vec3881
  br i1 %i.eaw, label %scalar.ph3878.preheader, label %vector.body3885, !llvm.loop !78

._crit_edge2031:                                  ; preds = %scalar.ph3878, %bb.ac
  %i.eax = icmp slt i64 %i.dwt, 0
  %i.eay = icmp sge i64 %i.dwt, %i.bk
  %or.cond1798.not3016 = or i1 %i.eax, %i.eay
  %brmerge3008 = select i1 %or.cond1798.not3016, i1 true, i1 %i.dwe
  br i1 %brmerge3008, label %.loopexit1910, label %iter.check3850

scalar.ph3878:                                    ; preds = %scalar.ph3878.preheader, %scalar.ph3878
  %indvars.iv2444 = phi i64 [ %indvars.iv.next2445, %scalar.ph3878 ], [ %indvars.iv2444.ph, %scalar.ph3878.preheader ] ; 3 uses
  %.016632028 = phi i32 [ %i.ecf, %scalar.ph3878 ], [ %.016632028.ph, %scalar.ph3878.preheader ]
  %i.eaz = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %indvars.iv2444 ; 3 uses
  %i.eba = getelementptr inbounds nuw [4 x i8], ptr %i.dxi, i64 %indvars.iv2444 ; 3 uses
  %i.ebb = load float, ptr %i.eba, align 4, !tbaa !58
  %i.ebc = getelementptr i8, ptr %i.eba, <2 x i64> <i64 -1024, i64 1024>
  %i.ebd = getelementptr i8, ptr %i.eba, i64 -8
  %indvars.iv.next2445 = add nuw nsw i64 %indvars.iv2444, 2 ; 2 uses
  %i.ebe = getelementptr inbounds nuw [4 x i8], ptr %i.dxi, i64 %indvars.iv.next2445
  %i.ebf = getelementptr i8, ptr %i.eaz, <4 x i64> <i64 512, i64 -512, i64 -4, i64 4>
  %i.ebg = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ebf, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !58 ; 2 uses
  %i.ebh = getelementptr i8, ptr %i.eaz, <4 x i64> <i64 -1536, i64 1536, i64 12, i64 -12>
  %i.ebi = shufflevector <4 x float> %i.ebg, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 3 uses
  %i.ebj = fsub reassoc nsz arcp contract afn <4 x float> %i.ebg, %i.ebi
  %i.ebk = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ebj)
  %i.ebl = fadd reassoc nsz arcp contract afn <4 x float> %i.ebk, splat (float f0x3727C5AC)
  %i.ebm = shufflevector <2 x ptr> %i.ebc, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ebn = insertelement <4 x ptr> %i.ebm, ptr %i.ebe, i64 2
  %i.ebo = insertelement <4 x ptr> %i.ebn, ptr %i.ebd, i64 3
  %i.ebp = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ebo, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !58
  %i.ebq = insertelement <4 x float> poison, float %i.ebb, i64 0
  %i.ebr = shufflevector <4 x float> %i.ebq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ebs = fsub reassoc nsz arcp contract afn <4 x float> %i.ebr, %i.ebp
  %i.ebt = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ebs)
  %i.ebu = fadd reassoc nsz arcp contract afn <4 x float> %i.ebl, %i.ebt
  %i.ebv = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ebh, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !58
  %i.ebw = fsub reassoc nsz arcp contract afn <4 x float> %i.ebi, %i.ebv
  %i.ebx = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ebw)
  %i.eby = fadd reassoc nsz arcp contract afn <4 x float> %i.ebu, %i.ebx ; 2 uses
  %i.ebz = fmul reassoc nsz arcp contract afn <4 x float> %i.eby, %i.eby
  %i.eca = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ebz ; 2 uses
  %i.ecb = fmul reassoc nsz arcp contract afn <4 x float> %i.eca, %i.ebi
  %i.ecc = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ecb)
  %i.ecd = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.eca)
  %i.ece = fdiv reassoc nsz arcp contract afn float %i.ecc, %i.ecd
  store float %i.ece, ptr %i.eaz, align 4, !tbaa !58
  %i.ecf = add nuw nsw i32 %.016632028, 2         ; 2 uses
  %i.ecg = icmp slt i32 %i.ecf, %i.dvy
  br i1 %i.ecg, label %scalar.ph3878, label %._crit_edge2031, !llvm.loop !81

iter.check3850:                                   ; preds = %._crit_edge2031
  %i.ech = mul nsw i64 %i.dwt, %i.af
  %invariant.gep = getelementptr [4 x i8], ptr %i.do, i64 %i.ech ; 3 uses
  %i.eci = sub i64 %i.dwr, %i.dwp
  %diff.check = icmp ugt i64 %i.eci, -128
  %or.cond4058 = select i1 %min.iters.check3833, i1 true, i1 %diff.check
  br i1 %or.cond4058, label %vec.epilog.scalar.ph3851.preheader, label %vector.main.loop.iter.check3834

vector.main.loop.iter.check3834:                  ; preds = %iter.check3850
  br i1 %min.iters.check3835, label %vec.epilog.ph3854, label %vector.ph3836

vector.ph3836:                                    ; preds = %vector.main.loop.iter.check3834
  %i.ecj = add nsw i64 %n.vec3837, %i.dws
  %invariant.gep4496 = getelementptr [4 x i8], ptr %i.bts, i64 %i.dws
  %invariant.gep4498 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bwp
  br label %vector.body3838

vector.body3838:                                  ; preds = %vector.body3838, %vector.ph3836
  %index3839 = phi i64 [ 0, %vector.ph3836 ], [ %index.next3844, %vector.body3838 ] ; 3 uses
  %gep4497 = getelementptr [4 x i8], ptr %invariant.gep4496, i64 %index3839 ; 4 uses
  %i.eck = getelementptr inbounds nuw i8, ptr %gep4497, i64 32
  %i.ecl = getelementptr inbounds nuw i8, ptr %gep4497, i64 64
  %i.ecm = getelementptr inbounds nuw i8, ptr %gep4497, i64 96
  %wide.load3840 = load <8 x float>, ptr %gep4497, align 4, !tbaa !58
  %wide.load3841 = load <8 x float>, ptr %i.eck, align 4, !tbaa !58
  %wide.load3842 = load <8 x float>, ptr %i.ecl, align 4, !tbaa !58
  %wide.load3843 = load <8 x float>, ptr %i.ecm, align 4, !tbaa !58
  %gep4499 = getelementptr [4 x i8], ptr %invariant.gep4498, i64 %index3839 ; 4 uses
  %i.ecn = getelementptr i8, ptr %gep4499, i64 32
  %i.eco = getelementptr i8, ptr %gep4499, i64 64
  %i.ecp = getelementptr i8, ptr %gep4499, i64 96
  store <8 x float> %wide.load3840, ptr %gep4499, align 4, !tbaa !58
  store <8 x float> %wide.load3841, ptr %i.ecn, align 4, !tbaa !58
  store <8 x float> %wide.load3842, ptr %i.eco, align 4, !tbaa !58
  store <8 x float> %wide.load3843, ptr %i.ecp, align 4, !tbaa !58
  %index.next3844 = add nuw i64 %index3839, 32    ; 2 uses
  %i.ecq = icmp eq i64 %index.next3844, %n.vec3837
  br i1 %i.ecq, label %middle.block3845, label %vector.body3838, !llvm.loop !82

middle.block3845:                                 ; preds = %vector.body3838
  br i1 %cmp.n3846, label %.loopexit1910, label %vec.epilog.iter.check3852

vec.epilog.iter.check3852:                        ; preds = %middle.block3845
  br i1 %min.epilog.iters.check3853, label %vec.epilog.scalar.ph3851.preheader, label %vec.epilog.ph3854, !prof !83

vec.epilog.ph3854:                                ; preds = %vector.main.loop.iter.check3834, %vec.epilog.iter.check3852
  %vec.epilog.resume.val3847 = phi i64 [ %n.vec3837, %vec.epilog.iter.check3852 ], [ 0, %vector.main.loop.iter.check3834 ]
  %i.ecr = add nsw i64 %n.vec3855, %i.dws
  %invariant.gep4500 = getelementptr [4 x i8], ptr %i.bts, i64 %i.dws
  %invariant.gep4502 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bwp
  br label %vec.epilog.vector.body3856

vec.epilog.vector.body3856:                       ; preds = %vec.epilog.vector.body3856, %vec.epilog.ph3854
  %index3857 = phi i64 [ %vec.epilog.resume.val3847, %vec.epilog.ph3854 ], [ %index.next3859, %vec.epilog.vector.body3856 ] ; 3 uses
  %gep4501 = getelementptr [4 x i8], ptr %invariant.gep4500, i64 %index3857
  %wide.load3858 = load <8 x float>, ptr %gep4501, align 4, !tbaa !58
  %gep4503 = getelementptr [4 x i8], ptr %invariant.gep4502, i64 %index3857
  store <8 x float> %wide.load3858, ptr %gep4503, align 4, !tbaa !58
  %index.next3859 = add nuw i64 %index3857, 8     ; 2 uses
  %i.ecs = icmp eq i64 %index.next3859, %n.vec3855
  br i1 %i.ecs, label %vec.epilog.middle.block3860, label %vec.epilog.vector.body3856, !llvm.loop !84

vec.epilog.middle.block3860:                      ; preds = %vec.epilog.vector.body3856
  br i1 %cmp.n3861, label %.loopexit1910, label %vec.epilog.scalar.ph3851.preheader

vec.epilog.scalar.ph3851.preheader:               ; preds = %iter.check3850, %vec.epilog.iter.check3852, %vec.epilog.middle.block3860
  %indvars.iv2461.ph = phi i64 [ %i.dws, %iter.check3850 ], [ %i.ecj, %vec.epilog.iter.check3852 ], [ %i.ecr, %vec.epilog.middle.block3860 ]
  %indvars.iv2457.ph = phi i64 [ %i.bwp, %iter.check3850 ], [ %i.dwl, %vec.epilog.iter.check3852 ], [ %i.dwm, %vec.epilog.middle.block3860 ]
  br label %vec.epilog.scalar.ph3851

vec.epilog.scalar.ph3851:                         ; preds = %vec.epilog.scalar.ph3851.preheader, %vec.epilog.scalar.ph3851
  %indvars.iv2461 = phi i64 [ %indvars.iv.next2462, %vec.epilog.scalar.ph3851 ], [ %indvars.iv2461.ph, %vec.epilog.scalar.ph3851.preheader ] ; 2 uses
  %indvars.iv2457 = phi i64 [ %indvars.iv.next2458, %vec.epilog.scalar.ph3851 ], [ %indvars.iv2457.ph, %vec.epilog.scalar.ph3851.preheader ] ; 2 uses
  %i.ect = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %indvars.iv2461
  %i.ecu = load float, ptr %i.ect, align 4, !tbaa !58
  %gep2980 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv2457
  store float %i.ecu, ptr %gep2980, align 4, !tbaa !58
  %indvars.iv.next2458 = add nuw nsw i64 %indvars.iv2457, 1 ; 2 uses
  %indvars.iv.next2462 = add nsw i64 %indvars.iv2461, 1
  %i.ecv = icmp samesign ult i64 %indvars.iv.next2458, %i.dwf
  br i1 %i.ecv, label %vec.epilog.scalar.ph3851, label %.loopexit1910, !llvm.loop !85

.loopexit1910:                                    ; preds = %vec.epilog.scalar.ph3851, %middle.block3845, %vec.epilog.middle.block3860, %._crit_edge2031
  %indvars.iv.next2467 = add nuw nsw i64 %indvars.iv2466, 1 ; 2 uses
  %i.ecw = icmp slt i64 %indvars.iv.next2467, %i.bvy
  %indvars.iv.next2443 = add i32 %indvars.iv2442, 128
  %indvars.iv.next2460 = add i32 %indvars.iv2459, 128
  %indvar.next3827 = add i64 %indvar3826, 1
  br i1 %i.ecw, label %bb.ac, label %.preheader1943

.preheader1942.thread:                            ; preds = %.preheader1943, %.loopexit1945
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.h, i8 0, i64 48, i1 false), !tbaa !58
  br label %.preheader1908.1

.preheader1942:                                   ; preds = %._crit_edge2043
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.h, i8 0, i64 48, i1 false), !tbaa !58
  br i1 %i.bvt, label %.lr.ph2066, label %.preheader1908.1

bb.ad:                                            ; preds = %.lr.ph2045, %._crit_edge2043
  %indvars.iv2469 = phi i32 [ 516, %.lr.ph2045 ], [ %indvars.iv.next2470, %._crit_edge2043 ] ; 2 uses
  %.016762044 = phi i32 [ 4, %.lr.ph2045 ], [ %i.edn, %._crit_edge2043 ] ; 2 uses
  %i.ecx = shl nuw i32 %.016762044, 1
  %i.ecy = and i32 %i.ecx, 14                     ; 2 uses
  %i.ecz = shl nuw nsw i32 %i.ecy, 1
  %i.eda = lshr i32 %i.q, %i.ecz
  %i.edb = and i32 %i.eda, 1                      ; 3 uses
  %i.edc = or disjoint i32 %i.edb, 4              ; 2 uses
  %i.edd = icmp slt i32 %i.edc, %i.dwn
  br i1 %i.edd, label %.lr.ph2042, label %._crit_edge2043

.lr.ph2042:                                       ; preds = %bb.ad
  %i.ede = or disjoint i32 %i.edb, %i.ecy
  %i.edf = shl nuw nsw i32 %i.ede, 1
  %i.edg = lshr i32 %i.q, %i.edf
  %i.edh = and i32 %i.edg, 3
  %i.edi = zext nneg i32 %i.edh to i64
  %i.edj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.edi
  %i.edk = load ptr, ptr %i.edj, align 8, !tbaa !59 ; 9 uses
  %i.edl = or disjoint i32 %indvars.iv2469, %i.edb
  %i.edm = sext i32 %i.edl to i64
  br label %bb.ae

._crit_edge2043:                                  ; preds = %bb.ae, %bb.ad
  %i.edn = add nuw nsw i32 %.016762044, 1         ; 2 uses
  %i.edo = icmp slt i32 %i.edn, %i.bvq
  %indvars.iv.next2470 = add i32 %indvars.iv2469, 128
  br i1 %i.edo, label %bb.ad, label %.preheader1942

bb.ae:                                            ; preds = %.lr.ph2042, %bb.ae
  %indvars.iv2471 = phi i64 [ %i.edm, %.lr.ph2042 ], [ %indvars.iv.next2472, %bb.ae ] ; 11 uses
  %.016792040 = phi i32 [ %i.edc, %.lr.ph2042 ], [ %i.eic, %bb.ae ]
  %i.edp = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %indvars.iv2471 ; 3 uses
  %i.edq = load float, ptr %i.edp, align 4, !tbaa !58
  %i.edr = getelementptr inbounds nuw [4 x i8], ptr %i.edk, i64 %indvars.iv2471 ; 6 uses
  %i.eds = load float, ptr %i.edr, align 4, !tbaa !58
  %i.edt = fsub reassoc nsz arcp contract afn float %i.edq, %i.eds ; 2 uses
  %i.edu = add nuw nsw i64 %indvars.iv2471, 512   ; 2 uses
  %i.edv = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.edu
  %i.edw = load float, ptr %i.edv, align 4, !tbaa !58
  %i.edx = getelementptr inbounds nuw [4 x i8], ptr %i.edk, i64 %i.edu
  %i.edy = load float, ptr %i.edx, align 4, !tbaa !58
  %i.edz = fsub reassoc nsz arcp contract afn float %i.edw, %i.edy ; 2 uses
  %i.eea = fsub reassoc nsz arcp contract afn float %i.edt, %i.edz
  %i.eeb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eea)
  %i.eec = add nsw i64 %indvars.iv2471, -512      ; 2 uses
  %i.eed = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.eec
  %i.eee = load float, ptr %i.eed, align 4, !tbaa !58
  %i.eef = getelementptr inbounds [4 x i8], ptr %i.edk, i64 %i.eec
  %i.eeg = load float, ptr %i.eef, align 4, !tbaa !58
  %i.eeh = fsub reassoc nsz arcp contract afn float %i.eee, %i.eeg ; 2 uses
  %i.eei = fsub reassoc nsz arcp contract afn float %i.eeh, %i.edt
  %i.eej = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eei)
  %i.eek = fadd reassoc nsz arcp contract afn float %i.eej, %i.eeb
  %i.eel = fsub reassoc nsz arcp contract afn float %i.eeh, %i.edz
  %i.eem = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eel)
  %i.een = fsub reassoc nsz arcp contract afn float %i.eek, %i.eem
  %i.eeo = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.een)
  %i.eep = lshr i64 %indvars.iv2471, 1
  %i.eeq = and i64 %i.eep, 2147483647             ; 6 uses
  %i.eer = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.eeq
  store float %i.eeo, ptr %i.eer, align 4, !tbaa !58
  %i.ees = load float, ptr %i.edp, align 4, !tbaa !58
  %i.eet = load float, ptr %i.edr, align 4, !tbaa !58
  %i.eeu = fsub reassoc nsz arcp contract afn float %i.ees, %i.eet ; 2 uses
  %i.eev = add nuw nsw i64 %indvars.iv2471, 4     ; 2 uses
  %i.eew = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.eev
  %i.eex = load float, ptr %i.eew, align 4, !tbaa !58
  %i.eey = getelementptr inbounds nuw [4 x i8], ptr %i.edk, i64 %i.eev
  %i.eez = load float, ptr %i.eey, align 4, !tbaa !58
  %i.efa = fsub reassoc nsz arcp contract afn float %i.eex, %i.eez ; 2 uses
  %i.efb = fsub reassoc nsz arcp contract afn float %i.eeu, %i.efa
  %i.efc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.efb)
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.egq = load float, ptr %i.egp, align 4, !tbaa !58
  %i.egr = fadd reassoc nsz arcp contract afn float %i.ego, %i.egq
  %i.egs = fmul reassoc nsz arcp contract afn float %i.egr, 2.500000e-01
  %i.egt = fsub reassoc nsz arcp contract afn float %i.egb, %i.egs
  %i.egu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.egt)
  %i.egv = fadd reassoc nsz arcp contract afn float %i.egu, f0x3727C5AC
  %i.egw = getelementptr inbounds nuw [4 x i8], ptr %i.btx, i64 %i.eeq
  store float %i.egv, ptr %i.egw, align 4, !tbaa !58
  %i.egx = load float, ptr %i.edr, align 4, !tbaa !58
  %i.egy = fmul reassoc nsz arcp contract afn float %i.egx, 2.000000e+00
  %i.egz = getelementptr inbounds nuw [4 x i8], ptr %i.edk, i64 %indvars.iv.next2472 ; 2 uses
  %i.eha = load float, ptr %i.egz, align 4, !tbaa !58
  %i.ehb = fadd reassoc nsz arcp contract afn float %i.egy, %i.eha
  %i.ehc = getelementptr inbounds [4 x i8], ptr %i.edk, i64 %i.egf ; 2 uses
  %i.ehd = load float, ptr %i.ehc, align 4, !tbaa !58
  %i.ehe = fadd reassoc nsz arcp contract afn float %i.ehb, %i.ehd
  %i.ehf = fmul reassoc nsz arcp contract afn float %i.ehe, 2.500000e-01
  %i.ehg = fsub reassoc nsz arcp contract afn float %i.egj, %i.ehf
  %i.ehh = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ehg)
  %i.ehi = fadd reassoc nsz arcp contract afn float %i.ehh, f0x3727C5AC
  %i.ehj = getelementptr inbounds nuw [4 x i8], ptr %i.btw, i64 %i.eeq
  store float %i.ehi, ptr %i.ehj, align 4, !tbaa !58
  %i.ehk = load float, ptr %i.edr, align 4, !tbaa !58
  %i.ehl = fmul reassoc nsz arcp contract afn float %i.ehk, 2.000000e+00
  %i.ehm = load float, ptr %i.egm, align 4, !tbaa !58
  %i.ehn = fadd reassoc nsz arcp contract afn float %i.ehl, %i.ehm
  %i.eho = load float, ptr %i.egp, align 4, !tbaa !58
  %i.ehp = fadd reassoc nsz arcp contract afn float %i.ehn, %i.eho
  %i.ehq = fmul reassoc nsz arcp contract afn float %i.ehp, 2.500000e-01
  %i.ehr = fadd reassoc nsz arcp contract afn float %i.ehq, %i.egb
  %i.ehs = getelementptr inbounds nuw [4 x i8], ptr %i.btz, i64 %i.eeq
  store float %i.ehr, ptr %i.ehs, align 4, !tbaa !58
  %i.eht = load float, ptr %i.edr, align 4, !tbaa !58
  %i.ehu = fmul reassoc nsz arcp contract afn float %i.eht, 2.000000e+00
  %i.ehv = load float, ptr %i.egz, align 4, !tbaa !58
  %i.ehw = fadd reassoc nsz arcp contract afn float %i.ehu, %i.ehv
  %i.ehx = load float, ptr %i.ehc, align 4, !tbaa !58
  %i.ehy = fadd reassoc nsz arcp contract afn float %i.ehw, %i.ehx
  %i.ehz = fmul reassoc nsz arcp contract afn float %i.ehy, 2.500000e-01
  %i.eia = fadd reassoc nsz arcp contract afn float %i.ehz, %i.egj
  %i.eib = getelementptr inbounds nuw [4 x i8], ptr %i.bty, i64 %i.eeq
  store float %i.eia, ptr %i.eib, align 4, !tbaa !58
  %i.eic = add nuw nsw i32 %.016792040, 2         ; 2 uses
  %i.eid = icmp slt i32 %i.eic, %i.dwn
  br i1 %i.eid, label %bb.ae, label %._crit_edge2043

.lr.ph2066:                                       ; preds = %.preheader1942
  %i.eie = add nsw i32 %i.bww, -8                 ; 2 uses
  %i.eif = add i32 %smin3769, %i.bwo
  %i.eig = or disjoint i32 %.neg4055, 8
  %i.eih = sub i32 %i.eig, %smin3766
  br label %bb.af

.preheader1940:                                   ; preds = %bb.ag
  %.pre = load float, ptr %i.ey, align 16, !tbaa !58 ; 2 uses
  %i.eii = fcmp reassoc nsz arcp contract afn ogt float %.pre, 1.000000e-10
  br i1 %i.eii, label %bb.ah, label %.preheader1908.1

bb.af:                                            ; preds = %.lr.ph2066, %bb.ag
  %indvars.iv2482 = phi i32 [ 1032, %.lr.ph2066 ], [ %indvars.iv.next2483, %bb.ag ] ; 3 uses
  %.016942065 = phi i32 [ 8, %.lr.ph2066 ], [ %i.enu, %bb.ag ] ; 2 uses
  %i.eij = shl nuw i32 %.016942065, 1
  %i.eik = and i32 %i.eij, 14                     ; 2 uses
  %i.eil = shl nuw nsw i32 %i.eik, 1
  %i.eim = lshr i32 %i.q, %i.eil
  %i.ein = and i32 %i.eim, 1                      ; 6 uses
  %i.eio = or disjoint i32 %i.ein, 8              ; 4 uses
  %i.eip = icmp slt i32 %i.eio, %i.eie
  br i1 %i.eip, label %.lr.ph2052, label %bb.ag

.lr.ph2052:                                       ; preds = %bb.af
  %i.eiq = or disjoint i32 %i.ein, %i.eik
  %i.eir = shl nuw nsw i32 %i.eiq, 1
  %i.eis = lshr i32 %i.q, %i.eir
  %i.eit = and i32 %i.eis, 3                      ; 2 uses
  %i.eiu = zext nneg i32 %i.eit to i64
  %i.eiv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.eiu
  %i.eiw = load ptr, ptr %i.eiv, align 8, !tbaa !59 ; 2 uses
  %i.eix = lshr i32 %i.eit, 1
  %i.eiy = zext nneg i32 %i.eix to i64            ; 6 uses
  %i.eiz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.eiy ; 2 uses
  %i.eja = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.eiy ; 2 uses
  %i.ejb = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.eiy ; 2 uses
  %i.ejc = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.eiy ; 2 uses
  %i.ejd = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.eiy ; 2 uses
  %i.eje = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.eiy ; 2 uses
  %.promoted = load float, ptr %i.eiz, align 4, !tbaa !58 ; 3 uses
  %.promoted2055 = load float, ptr %i.eja, align 4, !tbaa !58 ; 3 uses
  %.promoted2057 = load float, ptr %i.ejb, align 4, !tbaa !58 ; 3 uses
  %.promoted2059 = load float, ptr %i.ejc, align 4, !tbaa !58 ; 3 uses
  %.promoted2061 = load float, ptr %i.ejd, align 4, !tbaa !58 ; 3 uses
  %.promoted2063 = load float, ptr %i.eje, align 4, !tbaa !58 ; 3 uses
  %i.ejf = or disjoint i32 %indvars.iv2482, %i.ein
  %i.ejg = sext i32 %i.ejf to i64                 ; 4 uses
  %i.ejh = sub i32 %i.eif, %i.ein                 ; 2 uses
  %i.eji = lshr i32 %i.ejh, 1
  %narrow4054 = add nuw i32 %i.eji, 1
  %i.ejj = zext i32 %narrow4054 to i64            ; 2 uses
  %min.iters.check3771 = icmp ult i32 %i.ejh, 16
  br i1 %min.iters.check3771, label %scalar.ph3770.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph2052
  %i.ejk = or disjoint i32 %indvars.iv2482, %i.ein
  %i.ejl = add i32 %i.eih, %i.ein
  %i.ejm = or i32 %i.ejl, 1
  %i.ejn = icmp ult i32 %i.ejm, %i.ejk
  br i1 %i.ejn, label %scalar.ph3770.preheader, label %vector.ph3772

vector.ph3772:                                    ; preds = %vector.scevcheck
  %i.ejo = and i64 %i.ejj, 7                      ; 2 uses
  %i.ejp = icmp eq i64 %i.ejo, 0
  %i.ejq = select i1 %i.ejp, i64 8, i64 %i.ejo
  %n.vec3773 = sub nsw i64 %i.ejj, %i.ejq         ; 3 uses
  %i.ejr = shl nsw i64 %n.vec3773, 1
  %i.ejs = add nsw i64 %i.ejr, %i.ejg
  %i.ejt = trunc i64 %n.vec3773 to i32
  %i.eju = shl i32 %i.ejt, 1
  %i.ejv = add i32 %i.eio, %i.eju
  %i.ejw = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.promoted2063, i64 0
  %i.ejx = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.promoted2061, i64 0
  %i.ejy = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.promoted2059, i64 0
  %i.ejz = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.promoted2057, i64 0
  %i.eka = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.promoted2055, i64 0
  %i.ekb = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.promoted, i64 0
  br label %vector.body3774

vector.body3774:                                  ; preds = %vector.body3774, %vector.ph3772
  %index3775 = phi i64 [ 0, %vector.ph3772 ], [ %index.next3813, %vector.body3774 ] ; 2 uses
  %vec.phi3776 = phi <8 x float> [ %i.ejw, %vector.ph3772 ], [ %i.enm, %vector.body3774 ]
  %vec.phi3777 = phi <8 x float> [ %i.ejx, %vector.ph3772 ], [ %i.enk, %vector.body3774 ]
  %vec.phi3778 = phi <8 x float> [ %i.ejy, %vector.ph3772 ], [ %i.enh, %vector.body3774 ]
  %vec.phi3779 = phi <8 x float> [ %i.ejz, %vector.ph3772 ], [ %i.eme, %vector.body3774 ]
  %vec.phi3780 = phi <8 x float> [ %i.eka, %vector.ph3772 ], [ %i.emc, %vector.body3774 ]
  %vec.phi3781 = phi <8 x float> [ %i.ekb, %vector.ph3772 ], [ %i.elz, %vector.body3774 ]
  %i.ekc = shl nuw i64 %index3775, 1
  %i.ekd = add nuw i64 %i.ekc, %i.ejg             ; 3 uses
  %i.eke = getelementptr [4 x i8], ptr %i.bts, i64 %i.ekd ; 6 uses
  %i.ekf = getelementptr inbounds nuw i8, ptr %i.eke, i64 508
  %wide.vec3782 = load <16 x float>, ptr %i.ekf, align 4, !tbaa !58 ; 2 uses
  %strided.vec3783 = shufflevector <16 x float> %wide.vec3782, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec3784 = shufflevector <16 x float> %wide.vec3782, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ekg = getelementptr i8, ptr %i.eke, i64 -516
  %wide.vec3785 = load <16 x float>, ptr %i.ekg, align 4, !tbaa !58 ; 2 uses
  %strided.vec3786 = shufflevector <16 x float> %wide.vec3785, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec3787 = shufflevector <16 x float> %wide.vec3785, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ekh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3784, %strided.vec3787
  %i.eki = fmul reassoc nsz arcp contract afn <8 x float> %i.ekh, splat (float 3.125000e-01)
  %i.ekj = getelementptr inbounds nuw i8, ptr %i.eke, i64 516
  %wide.vec3788 = load <16 x float>, ptr %i.ekj, align 4, !tbaa !58
  %strided.vec3789 = shufflevector <16 x float> %wide.vec3788, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.ekk = getelementptr i8, ptr %i.eke, i64 -508
  %wide.vec3790 = load <16 x float>, ptr %i.ekk, align 4, !tbaa !58
  %strided.vec3791 = shufflevector <16 x float> %wide.vec3790, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.ekl = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3789, %strided.vec3783
  %i.ekm = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3791, %strided.vec3786
  %i.ekn = fsub reassoc nsz arcp contract afn <8 x float> %i.ekl, %i.ekm
  %i.eko = fmul reassoc nsz arcp contract afn <8 x float> %i.ekn, splat (float 9.375000e-02)
  %i.ekp = fadd reassoc nsz arcp contract afn <8 x float> %i.eko, %i.eki ; 2 uses
  %i.ekq = getelementptr inbounds nuw [4 x i8], ptr %i.eiw, i64 %i.ekd
  %wide.vec3792 = load <16 x float>, ptr %i.ekq, align 4, !tbaa !58
  %strided.vec3793 = shufflevector <16 x float> %wide.vec3792, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ekr = getelementptr i8, ptr %i.eke, i64 -4
  %wide.vec3794 = load <16 x float>, ptr %i.ekr, align 4, !tbaa !58 ; 2 uses
  %strided.vec3795 = shufflevector <16 x float> %wide.vec3794, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3796 = shufflevector <16 x float> %wide.vec3794, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.eks = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3793, %strided.vec3796 ; 4 uses
  %i.ekt = trunc nsw i64 %i.ekd to i32
  %i.eku = lshr i32 %i.ekt, 1                     ; 5 uses
  %i.ekv = zext nneg i32 %i.eku to i64            ; 2 uses
  %i.ekw = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.ekv
  %wide.load3797 = load <8 x float>, ptr %i.ekw, align 4, !tbaa !58
  %i.ekx = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3797, splat (float 2.500000e-01)
  %i.eky = or disjoint i32 %i.eku, 1
  %i.ekz = zext nneg i32 %i.eky to i64            ; 3 uses
  %i.ela = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.ekz
  %wide.load3798 = load <8 x float>, ptr %i.ela, align 4, !tbaa !58
  %i.elb = add nsw i32 %i.eku, -1
  %i.elc = sext i32 %i.elb to i64                 ; 3 uses
  %i.eld = getelementptr inbounds [4 x i8], ptr %i.btv, i64 %i.elc
  %wide.load3799 = load <8 x float>, ptr %i.eld, align 4, !tbaa !58
  %i.ele = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3799, %wide.load3798
  %i.elf = fmul reassoc nsz arcp contract afn <8 x float> %i.ele, splat (float 1.250000e-01)
  %i.elg = fadd reassoc nsz arcp contract afn <8 x float> %i.elf, %i.ekx
  %i.elh = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.elg)
  %i.eli = add nsw i32 %i.eku, -128
  %i.elj = sext i32 %i.eli to i64                 ; 3 uses
  %i.elk = getelementptr inbounds [4 x i8], ptr %i.btz, i64 %i.elj
  %wide.load3800 = load <8 x float>, ptr %i.elk, align 4, !tbaa !58
  %i.ell = add nuw nsw i32 %i.eku, 128
  %i.elm = zext nneg i32 %i.ell to i64            ; 3 uses
  %i.eln = getelementptr inbounds nuw [4 x i8], ptr %i.btz, i64 %i.elm
  %wide.load3801 = load <8 x float>, ptr %i.eln, align 4, !tbaa !58
  %i.elo = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3801, %wide.load3800 ; 2 uses
  %i.elp = fmul reassoc nsz arcp contract afn <8 x float> %i.elh, %i.elo
  %i.elq = fmul reassoc nsz arcp contract afn <8 x float> %i.elo, splat (float 1.000000e-01)
  %i.elr = getelementptr inbounds [4 x i8], ptr %i.btx, i64 %i.elj
  %wide.load3802 = load <8 x float>, ptr %i.elr, align 4, !tbaa !58
  %i.els = getelementptr inbounds nuw [4 x i8], ptr %i.btx, i64 %i.elm
  %wide.load3803 = load <8 x float>, ptr %i.els, align 4, !tbaa !58
  %i.elt = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3802, splat (float f0x3727C5AC)
  %i.elu = fadd reassoc nsz arcp contract afn <8 x float> %i.elt, %i.elq
  %i.elv = fadd reassoc nsz arcp contract afn <8 x float> %i.elu, %wide.load3803
  %i.elw = fdiv reassoc nsz arcp contract afn <8 x float> %i.elp, %i.elv ; 2 uses
  %i.elx = fmul reassoc nsz arcp contract afn <8 x float> %i.eks, %i.eks ; 2 uses
  %i.ely = fmul reassoc nsz arcp contract afn <8 x float> %i.elw, %i.elx
  %i.elz = fadd reassoc nsz arcp contract afn <8 x float> %i.ely, %vec.phi3781 ; 2 uses
  %i.ema = fmul reassoc nsz arcp contract afn <8 x float> %i.elw, %i.ekp ; 2 uses
  %i.emb = fmul reassoc nsz arcp contract afn <8 x float> %i.ema, %i.eks
  %i.emc = fadd reassoc nsz arcp contract afn <8 x float> %i.emb, %vec.phi3780 ; 2 uses
  %i.emd = fmul reassoc nsz arcp contract afn <8 x float> %i.ema, %i.ekp
  %i.eme = fadd reassoc nsz arcp contract afn <8 x float> %i.emd, %vec.phi3779 ; 2 uses
  %i.emf = getelementptr inbounds nuw i8, ptr %i.eke, i64 4
  %wide.vec3804 = load <16 x float>, ptr %i.emf, align 4, !tbaa !58
  %strided.vec3805 = shufflevector <16 x float> %wide.vec3804, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.emg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3805, %strided.vec3795
  %i.emh = fmul reassoc nsz arcp contract afn <8 x float> %i.emg, splat (float 3.125000e-01)
  %i.emi = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3791, %strided.vec3789
  %i.emj = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3783, %strided.vec3786
  %i.emk = fsub reassoc nsz arcp contract afn <8 x float> %i.emi, %i.emj
  %i.eml = fmul reassoc nsz arcp contract afn <8 x float> %i.emk, splat (float 9.375000e-02)
  %i.emm = fadd reassoc nsz arcp contract afn <8 x float> %i.emh, %i.eml ; 2 uses
  %i.emn = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.ekv
  %wide.load3806 = load <8 x float>, ptr %i.emn, align 4, !tbaa !58
  %i.emo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3806, splat (float 2.500000e-01)
  %i.emp = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.elm
  %wide.load3807 = load <8 x float>, ptr %i.emp, align 4, !tbaa !58
  %i.emq = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.elj
  %wide.load3808 = load <8 x float>, ptr %i.emq, align 4, !tbaa !58
  %i.emr = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3808, %wide.load3807
  %i.ems = fmul reassoc nsz arcp contract afn <8 x float> %i.emr, splat (float 1.250000e-01)
  %i.emt = fadd reassoc nsz arcp contract afn <8 x float> %i.ems, %i.emo
  %i.emu = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.emt)
  %i.emv = getelementptr inbounds [4 x i8], ptr %i.bty, i64 %i.elc
  %wide.load3809 = load <8 x float>, ptr %i.emv, align 4, !tbaa !58
  %i.emw = getelementptr inbounds nuw [4 x i8], ptr %i.bty, i64 %i.ekz
  %wide.load3810 = load <8 x float>, ptr %i.emw, align 4, !tbaa !58
  %i.emx = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3810, %wide.load3809 ; 2 uses
  %i.emy = fmul reassoc nsz arcp contract afn <8 x float> %i.emu, %i.emx
  %i.emz = fmul reassoc nsz arcp contract afn <8 x float> %i.emx, splat (float 1.000000e-01)
  %i.ena = getelementptr inbounds [4 x i8], ptr %i.btw, i64 %i.elc
  %wide.load3811 = load <8 x float>, ptr %i.ena, align 4, !tbaa !58
  %i.enb = getelementptr inbounds nuw [4 x i8], ptr %i.btw, i64 %i.ekz
  %wide.load3812 = load <8 x float>, ptr %i.enb, align 4, !tbaa !58
  %i.enc = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3811, splat (float f0x3727C5AC)
  %i.end = fadd reassoc nsz arcp contract afn <8 x float> %i.enc, %i.emz
  %i.ene = fadd reassoc nsz arcp contract afn <8 x float> %i.end, %wide.load3812
  %i.enf = fdiv reassoc nsz arcp contract afn <8 x float> %i.emy, %i.ene ; 2 uses
  %i.eng = fmul reassoc nsz arcp contract afn <8 x float> %i.enf, %i.elx
  %i.enh = fadd reassoc nsz arcp contract afn <8 x float> %i.eng, %vec.phi3778 ; 2 uses
  %i.eni = fmul reassoc nsz arcp contract afn <8 x float> %i.enf, %i.emm ; 2 uses
  %i.enj = fmul reassoc nsz arcp contract afn <8 x float> %i.eni, %i.eks
  %i.enk = fadd reassoc nsz arcp contract afn <8 x float> %i.enj, %vec.phi3777 ; 2 uses
  %i.enl = fmul reassoc nsz arcp contract afn <8 x float> %i.eni, %i.emm
  %i.enm = fadd reassoc nsz arcp contract afn <8 x float> %i.enl, %vec.phi3776 ; 2 uses
  %index.next3813 = add nuw i64 %index3775, 8     ; 2 uses
  %i.enn = icmp eq i64 %index.next3813, %n.vec3773
  br i1 %i.enn, label %middle.block3814, label %vector.body3774, !llvm.loop !86

middle.block3814:                                 ; preds = %vector.body3774
  %i.eno = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.enm)
  %i.enp = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.enk)
  %i.enq = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.enh)
  %i.enr = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.eme)
  %i.ens = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.emc)
  %i.ent = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.elz)
  br label %scalar.ph3770.preheader

scalar.ph3770.preheader:                          ; preds = %vector.scevcheck, %.lr.ph2052, %middle.block3814
  %indvars.iv2484.ph = phi i64 [ %i.ejg, %vector.scevcheck ], [ %i.ejg, %.lr.ph2052 ], [ %i.ejs, %middle.block3814 ]
  %.ph = phi float [ %.promoted2063, %vector.scevcheck ], [ %.promoted2063, %.lr.ph2052 ], [ %i.eno, %middle.block3814 ]
  %.ph4184 = phi float [ %.promoted2061, %vector.scevcheck ], [ %.promoted2061, %.lr.ph2052 ], [ %i.enp, %middle.block3814 ]
  %.ph4185 = phi float [ %.promoted2059, %vector.scevcheck ], [ %.promoted2059, %.lr.ph2052 ], [ %i.enq, %middle.block3814 ]
  %.ph4186 = phi float [ %.promoted2057, %vector.scevcheck ], [ %.promoted2057, %.lr.ph2052 ], [ %i.enr, %middle.block3814 ]
  %.ph4187 = phi float [ %.promoted2055, %vector.scevcheck ], [ %.promoted2055, %.lr.ph2052 ], [ %i.ens, %middle.block3814 ]
  %.ph4188 = phi float [ %.promoted, %vector.scevcheck ], [ %.promoted, %.lr.ph2052 ], [ %i.ent, %middle.block3814 ]
  %.016952050.ph = phi i32 [ %i.eio, %vector.scevcheck ], [ %i.eio, %.lr.ph2052 ], [ %i.ejv, %middle.block3814 ]
  br label %scalar.ph3770

._crit_edge2053:                                  ; preds = %scalar.ph3770
  store float %i.eqn, ptr %i.eiz, align 4, !tbaa !58
  store float %i.eqq, ptr %i.eja, align 4, !tbaa !58
  store float %i.eqs, ptr %i.ejb, align 4, !tbaa !58
  store float %i.ese, ptr %i.ejc, align 4, !tbaa !58
  store float %i.esh, ptr %i.ejd, align 4, !tbaa !58
  store float %i.esj, ptr %i.eje, align 4, !tbaa !58
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge2053, %bb.af
  %i.enu = add nuw nsw i32 %.016942065, 1         ; 2 uses
  %i.env = icmp slt i32 %i.enu, %i.bvs
  %indvars.iv.next2483 = add i32 %indvars.iv2482, 128
  br i1 %i.env, label %bb.af, label %.preheader1940

scalar.ph3770:                                    ; preds = %scalar.ph3770.preheader, %scalar.ph3770
  %indvars.iv2484 = phi i64 [ %indvars.iv.next2485, %scalar.ph3770 ], [ %indvars.iv2484.ph, %scalar.ph3770.preheader ] ; 4 uses
  %i.enw = phi float [ %i.esj, %scalar.ph3770 ], [ %.ph, %scalar.ph3770.preheader ]
  %i.enx = phi float [ %i.esh, %scalar.ph3770 ], [ %.ph4184, %scalar.ph3770.preheader ]
  %i.eny = phi float [ %i.ese, %scalar.ph3770 ], [ %.ph4185, %scalar.ph3770.preheader ]
  %i.enz = phi float [ %i.eqs, %scalar.ph3770 ], [ %.ph4186, %scalar.ph3770.preheader ]
  %i.eoa = phi float [ %i.eqq, %scalar.ph3770 ], [ %.ph4187, %scalar.ph3770.preheader ]
  %i.eob = phi float [ %i.eqn, %scalar.ph3770 ], [ %.ph4188, %scalar.ph3770.preheader ]
  %.016952050 = phi i32 [ %i.esk, %scalar.ph3770 ], [ %.016952050.ph, %scalar.ph3770.preheader ]
  %i.eoc = getelementptr [4 x i8], ptr %i.bts, i64 %indvars.iv2484 ; 9 uses
  %i.eod = getelementptr inbounds nuw i8, ptr %i.eoc, i64 512
  %i.eoe = load float, ptr %i.eod, align 4, !tbaa !58
  %i.eof = getelementptr i8, ptr %i.eoc, i64 -512
  %i.eog = load float, ptr %i.eof, align 4, !tbaa !58
  %i.eoh = fsub reassoc nsz arcp contract afn float %i.eoe, %i.eog
  %i.eoi = fmul reassoc nsz arcp contract afn float %i.eoh, 3.125000e-01
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.eoc, i64 516
  %i.eok = load float, ptr %i.eoj, align 4, !tbaa !58 ; 2 uses
  %i.eol = getelementptr i8, ptr %i.eoc, i64 -508
  %i.eom = load float, ptr %i.eol, align 4, !tbaa !58 ; 2 uses
  %i.eon = getelementptr inbounds nuw i8, ptr %i.eoc, i64 508
  %i.eoo = load float, ptr %i.eon, align 4, !tbaa !58 ; 2 uses
  %i.eop = getelementptr i8, ptr %i.eoc, i64 -516
  %i.eoq = load float, ptr %i.eop, align 4, !tbaa !58 ; 2 uses
  %i.eor = fadd reassoc nsz arcp contract afn float %i.eok, %i.eoo
  %i.eos = fadd reassoc nsz arcp contract afn float %i.eom, %i.eoq
  %i.eot = fsub reassoc nsz arcp contract afn float %i.eor, %i.eos
  %i.eou = fmul reassoc nsz arcp contract afn float %i.eot, 9.375000e-02
  %i.eov = fadd reassoc nsz arcp contract afn float %i.eou, %i.eoi ; 2 uses
  %i.eow = getelementptr inbounds nuw [4 x i8], ptr %i.eiw, i64 %indvars.iv2484
  %i.eox = load float, ptr %i.eow, align 4, !tbaa !58
  %i.eoy = load float, ptr %i.eoc, align 4, !tbaa !58
  %i.eoz = fsub reassoc nsz arcp contract afn float %i.eox, %i.eoy ; 4 uses
  %i.epa = trunc nsw i64 %indvars.iv2484 to i32
  %i.epb = lshr i32 %i.epa, 1                     ; 5 uses
  %i.epc = zext nneg i32 %i.epb to i64            ; 2 uses
  %i.epd = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.epc
  %i.epe = load float, ptr %i.epd, align 4, !tbaa !58
  %i.epf = fmul reassoc nsz arcp contract afn float %i.epe, 2.500000e-01
  %i.epg = add nuw nsw i32 %i.epb, 1
  %i.eph = zext nneg i32 %i.epg to i64            ; 3 uses
  %i.epi = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.eph
  %i.epj = load float, ptr %i.epi, align 4, !tbaa !58
  %i.epk = add nsw i32 %i.epb, -1
  %i.epl = sext i32 %i.epk to i64                 ; 3 uses
  %i.epm = getelementptr inbounds [4 x i8], ptr %i.btv, i64 %i.epl
  %i.epn = load float, ptr %i.epm, align 4, !tbaa !58
  %i.epo = fadd reassoc nsz arcp contract afn float %i.epn, %i.epj
  %i.epp = fmul reassoc nsz arcp contract afn float %i.epo, 1.250000e-01
  %i.epq = fadd reassoc nsz arcp contract afn float %i.epp, %i.epf
  %i.epr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.epq)
  %i.eps = add nsw i32 %i.epb, -128
  %i.ept = sext i32 %i.eps to i64                 ; 3 uses
  %i.epu = getelementptr inbounds [4 x i8], ptr %i.btz, i64 %i.ept
  %i.epv = load float, ptr %i.epu, align 4, !tbaa !58
  %i.epw = add nuw nsw i32 %i.epb, 128
  %i.epx = zext nneg i32 %i.epw to i64            ; 3 uses
  %i.epy = getelementptr inbounds nuw [4 x i8], ptr %i.btz, i64 %i.epx
  %i.epz = load float, ptr %i.epy, align 4, !tbaa !58
  %i.eqa = fadd reassoc nsz arcp contract afn float %i.epz, %i.epv ; 2 uses
  %i.eqb = fmul reassoc nsz arcp contract afn float %i.epr, %i.eqa
  %i.eqc = fmul reassoc nsz arcp contract afn float %i.eqa, 1.000000e-01
  %i.eqd = getelementptr inbounds [4 x i8], ptr %i.btx, i64 %i.ept
  %i.eqe = load float, ptr %i.eqd, align 4, !tbaa !58
  %i.eqf = getelementptr inbounds nuw [4 x i8], ptr %i.btx, i64 %i.epx
  %i.eqg = load float, ptr %i.eqf, align 4, !tbaa !58
  %i.eqh = fadd reassoc nsz arcp contract afn float %i.eqe, f0x3727C5AC
  %i.eqi = fadd reassoc nsz arcp contract afn float %i.eqh, %i.eqc
  %i.eqj = fadd reassoc nsz arcp contract afn float %i.eqi, %i.eqg
  %i.eqk = fdiv reassoc nsz arcp contract afn float %i.eqb, %i.eqj ; 2 uses
  %i.eql = fmul reassoc nsz arcp contract afn float %i.eoz, %i.eoz ; 2 uses
  %i.eqm = fmul reassoc nsz arcp contract afn float %i.eqk, %i.eql
  %i.eqn = fadd reassoc nsz arcp contract afn float %i.eqm, %i.eob ; 2 uses
  %i.eqo = fmul reassoc nsz arcp contract afn float %i.eqk, %i.eov ; 2 uses
  %i.eqp = fmul reassoc nsz arcp contract afn float %i.eqo, %i.eoz
  %i.eqq = fadd reassoc nsz arcp contract afn float %i.eqp, %i.eoa ; 2 uses
  %i.eqr = fmul reassoc nsz arcp contract afn float %i.eqo, %i.eov
  %i.eqs = fadd reassoc nsz arcp contract afn float %i.eqr, %i.enz ; 2 uses
  %i.eqt = getelementptr inbounds nuw i8, ptr %i.eoc, i64 4
  %i.equ = load float, ptr %i.eqt, align 4, !tbaa !58
  %i.eqv = getelementptr i8, ptr %i.eoc, i64 -4
  %i.eqw = load float, ptr %i.eqv, align 4, !tbaa !58
  %i.eqx = fsub reassoc nsz arcp contract afn float %i.equ, %i.eqw
  %i.eqy = fmul reassoc nsz arcp contract afn float %i.eqx, 3.125000e-01
  %.neg1886 = fadd reassoc nsz arcp contract afn float %i.eom, %i.eok
  %i.eqz = fadd reassoc nsz arcp contract afn float %i.eoo, %i.eoq
  %i.era = fsub reassoc nsz arcp contract afn float %.neg1886, %i.eqz
  %i.erb = fmul reassoc nsz arcp contract afn float %i.era, 9.375000e-02
  %i.erc = fadd reassoc nsz arcp contract afn float %i.eqy, %i.erb ; 2 uses
  %i.erd = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.epc
  %i.ere = load float, ptr %i.erd, align 4, !tbaa !58
  %i.erf = fmul reassoc nsz arcp contract afn float %i.ere, 2.500000e-01
  %i.erg = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.epx
  %i.erh = load float, ptr %i.erg, align 4, !tbaa !58
  %i.eri = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.ept
  %i.erj = load float, ptr %i.eri, align 4, !tbaa !58
  %i.erk = fadd reassoc nsz arcp contract afn float %i.erj, %i.erh
  %i.erl = fmul reassoc nsz arcp contract afn float %i.erk, 1.250000e-01
  %i.erm = fadd reassoc nsz arcp contract afn float %i.erl, %i.erf
  %i.ern = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.erm)
  %i.ero = getelementptr inbounds [4 x i8], ptr %i.bty, i64 %i.epl
  %i.erp = load float, ptr %i.ero, align 4, !tbaa !58
  %i.erq = getelementptr inbounds nuw [4 x i8], ptr %i.bty, i64 %i.eph
  %i.err = load float, ptr %i.erq, align 4, !tbaa !58
  %i.ers = fadd reassoc nsz arcp contract afn float %i.err, %i.erp ; 2 uses
  %i.ert = fmul reassoc nsz arcp contract afn float %i.ern, %i.ers
  %i.eru = fmul reassoc nsz arcp contract afn float %i.ers, 1.000000e-01
  %i.erv = getelementptr inbounds [4 x i8], ptr %i.btw, i64 %i.epl
  %i.erw = load float, ptr %i.erv, align 4, !tbaa !58
  %i.erx = getelementptr inbounds nuw [4 x i8], ptr %i.btw, i64 %i.eph
  %i.ery = load float, ptr %i.erx, align 4, !tbaa !58
  %i.erz = fadd reassoc nsz arcp contract afn float %i.erw, f0x3727C5AC
  %i.esa = fadd reassoc nsz arcp contract afn float %i.erz, %i.eru
  %i.esb = fadd reassoc nsz arcp contract afn float %i.esa, %i.ery
  %i.esc = fdiv reassoc nsz arcp contract afn float %i.ert, %i.esb ; 2 uses
  %i.esd = fmul reassoc nsz arcp contract afn float %i.esc, %i.eql
  %i.ese = fadd reassoc nsz arcp contract afn float %i.esd, %i.eny ; 2 uses
  %i.esf = fmul reassoc nsz arcp contract afn float %i.esc, %i.erc ; 2 uses
  %i.esg = fmul reassoc nsz arcp contract afn float %i.esf, %i.eoz
  %i.esh = fadd reassoc nsz arcp contract afn float %i.esg, %i.enx ; 2 uses
  %i.esi = fmul reassoc nsz arcp contract afn float %i.esf, %i.erc
  %i.esj = fadd reassoc nsz arcp contract afn float %i.esi, %i.enw ; 2 uses
  %i.esk = add nuw nsw i32 %.016952050, 2         ; 2 uses
  %indvars.iv.next2485 = add nuw nsw i64 %indvars.iv2484, 2
  %i.esl = icmp slt i32 %i.esk, %i.eie
  br i1 %i.esl, label %scalar.ph3770, label %._crit_edge2053, !llvm.loop !87

bb.ah:                                            ; preds = %.preheader1940
  %i.esm = load float, ptr %i.ex, align 8, !tbaa !58
  %i.esn = fdiv reassoc nsz arcp contract afn float %i.esm, %.pre
  br label %.preheader1908.1

.preheader1908.1:                                 ; preds = %.preheader1942.thread, %.preheader1942, %.preheader1940, %bb.ah
  %.sroa.02813.0 = phi nsz float [ %i.esn, %bb.ah ], [ 1.700000e+01, %.preheader1940 ], [ 1.700000e+01, %.preheader1942 ], [ 1.700000e+01, %.preheader1942.thread ] ; 5 uses
  %.pn.reass = add i64 %i.bwr, %invariant.op4504  ; 2 uses
  %i.eso = getelementptr inbounds [16 x i8], ptr %i.en, i64 %.pn.reass ; 4 uses
  %i.esp = getelementptr inbounds [4 x i8], ptr %i.el, i64 %.pn.reass
  %i.esq = fadd reassoc nsz arcp contract afn float %.sroa.02805.2, %.sroa.02813.0
  %i.esr = fmul reassoc nnan nsz arcp contract afn float %.sroa.02813.0, %.sroa.02813.0
  %i.ess = fadd reassoc nsz arcp contract afn float %.sroa.02791.2, 1.000000e+00
  store float %.sroa.02813.0, ptr %i.eso, align 4, !tbaa !58
  %i.est = fadd reassoc nsz arcp contract afn float %.sroa.9.2, 1.000000e+00
  %i.esu = getelementptr inbounds nuw i8, ptr %i.eso, i64 4
  %i.esv = getelementptr inbounds nuw i8, ptr %i.eso, i64 8
  %i.esw = load <8 x float>, ptr %i.gr, align 4   ; 2 uses
  %i.esx = shufflevector <8 x float> %i.esw, <8 x float> poison, <2 x i32> <i32 2, i32 7> ; 2 uses
  %i.esy = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.esx, splat (float 1.000000e-10)
  %i.esz = shufflevector <8 x float> %i.esw, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.eta = fdiv reassoc nsz arcp contract afn <2 x float> %i.esz, %i.esx
  %i.etb = select <2 x i1> %i.esy, <2 x float> %i.eta, <2 x float> splat (float 1.700000e+01) ; 5 uses
  %i.etc = extractelement <2 x float> %i.etb, i64 1 ; 3 uses
  %i.etd = fmul reassoc nnan nsz arcp contract afn float %i.etc, %i.etc
  %i.ete = fadd reassoc nsz arcp contract afn float %.sroa.92801.2, %i.etd
  store float %i.etc, ptr %i.esu, align 4, !tbaa !58
  %i.etf = extractelement <2 x float> %i.etb, i64 0
  %foldExtExtBinop = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.etb, %i.etb
  %i.etg = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.eth = insertelement <4 x float> poison, float %.sroa.02813.0, i64 0
  %i.eti = shufflevector <2 x float> %i.etb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison> ; 2 uses
  %i.etj = shufflevector <4 x float> %i.eti, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.etk = shufflevector <4 x float> %i.eth, <4 x float> %i.eti, <4 x i32> <i32 0, i32 4, i32 4, i32 6>
  %i.etl = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.etk)
  %i.etm = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.etl, splat (float 2.000000e+00) ; 4 uses
  %i.etn = extractelement <4 x i1> %i.etm, i64 0  ; 2 uses
  %.sroa.02805.3 = select nsz i1 %i.etn, float %i.esq, float %.sroa.02805.2 ; 3 uses
  %i.eto = insertelement <4 x float> %i.etj, float %i.esr, i64 0
  %i.etp = shufflevector <4 x float> %i.eto, <4 x float> %i.etg, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.etq = fadd reassoc nsz arcp contract afn <4 x float> %i.bwa, %i.etp
  %.sroa.02791.3 = select nsz i1 %i.etn, float %i.ess, float %.sroa.02791.2 ; 3 uses
  %i.etr = extractelement <4 x i1> %i.etm, i64 3  ; 2 uses
  %.sroa.92801.3 = select nsz i1 %i.etr, float %i.ete, float %.sroa.92801.2 ; 3 uses
  %.sroa.9.3 = select nsz i1 %i.etr, float %i.est, float %.sroa.9.2 ; 3 uses
  %i.ets = fadd reassoc nsz arcp contract afn float %.sroa.62793.2, 1.000000e+00
  %i.ett = select <4 x i1> %i.etm, <4 x float> %i.etq, <4 x float> %i.bwa ; 3 uses
  %i.etu = extractelement <4 x i1> %i.etm, i64 1
  %.sroa.62793.3 = select nsz i1 %i.etu, float %i.ets, float %.sroa.62793.2 ; 3 uses
  store float %i.etf, ptr %i.esv, align 4, !tbaa !58
  %i.etv = load float, ptr %i.gs, align 4, !tbaa !58 ; 3 uses
  %i.etw = fcmp reassoc nsz arcp contract afn ogt float %i.etv, 1.000000e-10
  br i1 %i.etw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.preheader1908.1
  %i.etx = load float, ptr %i.gt, align 4, !tbaa !58
  %i.ety = fdiv reassoc nsz arcp contract afn float %i.etx, %i.etv
  %i.etz = load float, ptr %i.gu, align 4, !tbaa !58
  %i.eua = fadd reassoc nsz arcp contract afn float %i.etz, f0x3727C5AC
  %i.eub = fdiv reassoc nsz arcp contract afn float %i.etv, %i.eua
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader1908.1, %bb.ai
  %storemerge2944 = phi float [ %i.eub, %bb.ai ], [ 0.000000e+00, %.preheader1908.1 ]
  %.sroa.11.0 = phi nsz float [ %i.ety, %bb.ai ], [ 1.700000e+01, %.preheader1908.1 ] ; 5 uses
  store float %storemerge2944, ptr %i.esp, align 4, !tbaa !58
  %i.euc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.sroa.11.0)
  %i.eud = fcmp reassoc nsz arcp contract afn olt float %i.euc, 2.000000e+00 ; 3 uses
  %i.eue = fadd reassoc nsz arcp contract afn float %.sroa.122811.2, %.sroa.11.0
  %i.euf = fmul reassoc nnan nsz arcp contract afn float %.sroa.11.0, %.sroa.11.0
  %i.eug = fadd reassoc nsz arcp contract afn float %.sroa.122803.2, %i.euf
  %i.euh = fadd reassoc nsz arcp contract afn float %.sroa.12.2, 1.000000e+00
  %.sroa.122811.3 = select nsz i1 %i.eud, float %i.eue, float %.sroa.122811.2 ; 3 uses
  %.sroa.122803.3 = select nsz i1 %i.eud, float %i.eug, float %.sroa.122803.2 ; 3 uses
  %.sroa.12.3 = select nsz i1 %i.eud, float %i.euh, float %.sroa.12.2 ; 3 uses
  %i.eui = getelementptr inbounds nuw i8, ptr %i.eso, i64 12
  store float %.sroa.11.0, ptr %i.eui, align 4, !tbaa !58
  %indvars.iv.next2494 = add nsw i64 %indvars.iv2493, 112 ; 2 uses
  %i.euj = icmp slt i64 %indvars.iv.next2494, %i.af
  %indvars.iv.next2402 = add nuw i32 %indvars.iv2401, 112
  %indvars.iv.next2404 = add nsw i32 %indvars.iv2403, -112
  %indvars.iv.next2455 = add i32 %indvars.iv2454, 112
  %indvar.next3768 = add i32 %indvar3767, 1
  br i1 %i.euj, label %bb.p, label %._crit_edge2081

.preheader1973:                                   ; preds = %.loopexit1966.1
  br i1 %i.tu, label %.preheader1972, label %.preheader1964.preheader

.preheader1964.preheader:                         ; preds = %.preheader1973
  br i1 %i.akn, label %.preheader1964.epil.preheader, label %.preheader1964

bb.ak:                                            ; preds = %.preheader1975
  %i.euk = extractelement <8 x float> %i.bun, i64 0
  %i.eul = fdiv reassoc nsz arcp contract afn float %i.euk, %i.buo
  %i.eum = fdiv reassoc nsz arcp contract afn float %.sroa.02805.0, %i.buo ; 2 uses
  %i.eun = fmul reassoc nsz arcp contract afn float %i.eum, %i.eum
  %i.euo = fsub reassoc nsz arcp contract afn float %i.eul, %i.eun
  store float %i.euo, ptr %i.b, align 16, !tbaa !58
  %i.eup = fcmp reassoc nsz arcp contract afn une float %.sroa.62793.0, 0.000000e+00
  br i1 %i.eup, label %.loopexit1966.loopexit, label %bb.al

.loopexit1966.loopexit:                           ; preds = %bb.ak
  %i.euq = extractelement <8 x float> %i.bun, i64 2
  %i.eur = fdiv reassoc nsz arcp contract afn float %i.euq, %.sroa.62793.0
  %i.eus = extractelement <8 x float> %i.bun, i64 1
  %i.eut = fdiv reassoc nsz arcp contract afn float %i.eus, %.sroa.62793.0 ; 2 uses
  %i.euu = fmul reassoc nsz arcp contract afn float %i.eut, %i.eut
  %i.euv = fsub reassoc nsz arcp contract afn float %i.eur, %i.euu
  store float %i.euv, ptr %i.gv, align 4, !tbaa !58
  br label %.loopexit1966

bb.al:                                            ; preds = %bb.ak, %.preheader1975
  %i.euw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.eux = and i32 %i.euw, 33554432
  %.not1790 = icmp eq i32 %i.eux, 0
  br i1 %.not1790, label %.loopexit1966, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6) #20
  br label %.loopexit1966

.loopexit1966:                                    ; preds = %.loopexit1966.loopexit, %bb.al, %bb.am
  %i.euy = phi i1 [ true, %bb.al ], [ true, %bb.am ], [ false, %.loopexit1966.loopexit ]
  %i.euz = fcmp reassoc nsz arcp contract afn une float %.sroa.9.0, 0.000000e+00
  br i1 %i.euz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.loopexit1966
  %i.eva = extractelement <8 x float> %i.bun, i64 4
  %i.evb = fdiv reassoc nsz arcp contract afn float %i.eva, %.sroa.9.0
  %i.evc = extractelement <8 x float> %i.bun, i64 3
  %i.evd = fdiv reassoc nsz arcp contract afn float %i.evc, %.sroa.9.0 ; 2 uses
  %i.eve = fmul reassoc nsz arcp contract afn float %i.evd, %i.evd
  %i.evf = fsub reassoc nsz arcp contract afn float %i.evb, %i.eve
  store float %i.evf, ptr %i.fn, align 8, !tbaa !58
  %i.evg = fcmp reassoc nsz arcp contract afn une float %.sroa.12.0, 0.000000e+00
  br i1 %i.evg, label %.loopexit1966.1, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit1966
  %i.evh = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.evi = and i32 %i.evh, 33554432
  %.not1790.1 = icmp eq i32 %i.evi, 0
  br i1 %.not1790.1, label %.thread1866, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6) #20
  br label %.thread1866

.loopexit1966.1:                                  ; preds = %bb.an
  %i.evj = extractelement <8 x float> %i.bun, i64 6
  %i.evk = fdiv reassoc nsz arcp contract afn float %i.evj, %.sroa.12.0
  %i.evl = extractelement <8 x float> %i.bun, i64 5
  %i.evm = fdiv reassoc nsz arcp contract afn float %i.evl, %.sroa.12.0 ; 2 uses
  %i.evn = fmul reassoc nsz arcp contract afn float %i.evm, %i.evm
  %i.evo = fsub reassoc nsz arcp contract afn float %i.evk, %i.evn
  store float %i.evo, ptr %i.gw, align 4, !tbaa !58
  br i1 %i.euy, label %.thread1866, label %.preheader1973

.preheader1972.loopexit.unr-lcssa:                ; preds = %.preheader1964
  br i1 %lcmp.mod4298.not, label %.preheader1972, label %.preheader1964.epil.preheader

.preheader1964.epil.preheader:                    ; preds = %.preheader1972.loopexit.unr-lcssa, %.preheader1964.preheader
  %indvars.iv2523.epil.init = phi i64 [ 1, %.preheader1964.preheader ], [ %indvars.iv.next2524.3, %.preheader1972.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4299)
  br label %.preheader1964.epil

.preheader1964.epil:                              ; preds = %.preheader1964.epil, %.preheader1964.epil.preheader
  %indvars.iv2523.epil = phi i64 [ %indvars.iv.next2524.epil, %.preheader1964.epil ], [ %indvars.iv2523.epil.init, %.preheader1964.epil.preheader ] ; 2 uses
  %epil.iter4297 = phi i64 [ %epil.iter4297.next, %.preheader1964.epil ], [ 0, %.preheader1964.epil.preheader ]
  %i.evp = mul nsw i64 %indvars.iv2523.epil, %i.fx ; 2 uses
  %i.evq = getelementptr [16 x i8], ptr %i.en, i64 %i.evp ; 2 uses
  %i.evr = getelementptr i8, ptr %i.evq, i64 32
  %gep2982.epil = getelementptr [16 x i8], ptr %invariant.gep2981, i64 %i.evp ; 2 uses
  %i.evs = getelementptr i8, ptr %gep2982.epil, i64 -48
  %i.evt = getelementptr i8, ptr %gep2982.epil, i64 -16
  %i.evu = load <4 x float>, ptr %i.evr, align 4, !tbaa !58
  store <4 x float> %i.evu, ptr %i.evq, align 4, !tbaa !58
  %i.evv = load <4 x float>, ptr %i.evs, align 4, !tbaa !58
  store <4 x float> %i.evv, ptr %i.evt, align 4, !tbaa !58
  %indvars.iv.next2524.epil = add nuw nsw i64 %indvars.iv2523.epil, 1
  %epil.iter4297.next = add i64 %epil.iter4297, 1 ; 2 uses
  %epil.iter4297.cmp.not = icmp eq i64 %epil.iter4297.next, %xtraiter4296
  br i1 %epil.iter4297.cmp.not, label %.preheader1972, label %.preheader1964.epil, !llvm.loop !128

.preheader1972:                                   ; preds = %.preheader1972.loopexit.unr-lcssa, %.preheader1964.epil, %.preheader1973
  br i1 %i.fd, label %.preheader1963.preheader, label %._crit_edge2094

end_hunk_1
begin_hunk_2_@process:bb.a
  %i.hxg = fmul reassoc nsz arcp contract afn double %i.hxf, %i.hwz
  %i.hxh = fmul reassoc nsz arcp contract afn double %i.hxc, %i.hwz
  %i.hxi = insertelement <2 x double> poison, double %i.hxh, i64 0
  %i.hxj = insertelement <2 x double> %i.hxi, double %i.hxg, i64 1
  %i.hxk = fadd reassoc nsz arcp contract afn <2 x double> %i.hxj, %i.hxd ; 2 uses
  %i.hxl = fptrunc <2 x double> %i.hxk to <2 x float> ; 3 uses
  %i.hxm = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.hxa
  %i.hxn = load double, ptr %i.hxm, align 8, !tbaa !132
  %i.hxo = fpext <2 x float> %i.hwx to <2 x double>
  %i.hxp = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hxa
  %i.hxq = load double, ptr %i.hxp, align 8, !tbaa !132
  %i.hxr = fmul reassoc nsz arcp contract afn double %i.hxq, %i.hwz
  %i.hxs = fmul reassoc nsz arcp contract afn double %i.hxn, %i.hwz
  %i.hxt = insertelement <2 x double> poison, double %i.hxs, i64 0
  %i.hxu = insertelement <2 x double> %i.hxt, double %i.hxr, i64 1
  %i.hxv = fadd reassoc nsz arcp contract afn <2 x double> %i.hxu, %i.hxo ; 2 uses
  %i.hxw = fptrunc <2 x double> %i.hxv to <2 x float> ; 3 uses
  %.reass4508 = fmul reassoc nsz arcp contract afn float %.016672167, %invariant.op4507 ; 2 uses
  %indvars.iv.next2714.1 = add nuw nsw i64 %indvars.iv2713, 2 ; 2 uses
  %niter4423.next.1 = add i64 %niter4423, 2       ; 2 uses
  %niter4423.ncmp.1 = icmp eq i64 %niter4423.next.1, %unroll_iter4422
  br i1 %niter4423.ncmp.1, label %._crit_edge2170.unr-lcssa, label %.preheader1898.new

.lr.ph2208:                                       ; preds = %.preheader1920
  %i.hxx = add nsw i32 %i.fyv, -4                 ; 2 uses
  %i.hxy = zext nneg i32 %i.hxx to i64
  br label %bb.dy

bb.dr:                                            ; preds = %._crit_edge2193
  store i32 %i.hux, ptr %i.e, align 4, !tbaa !16
  store i32 %i.huv, ptr %i.g, align 4, !tbaa !16
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %._crit_edge2193
  %i.hxz = phi i32 [ %i.hux, %bb.dr ], [ %i.huv, %._crit_edge2193 ]
  %i.hya = sitofp reassoc nsz arcp contract afn i32 %i.hxz to float
  %i.hyb = fsub reassoc nsz arcp contract afn float %i.hut, %i.hya
  %i.hyc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hyb) ; 2 uses
  store float %i.hyc, ptr %i.j, align 4, !tbaa !58
  %i.hyd = extractelement <2 x float> %i.huo, i64 1 ; 4 uses
  %i.hye = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hyd)
  %i.hyf = fptosi float %i.hye to i32             ; 3 uses
  store i32 %i.hyf, ptr %i.d, align 4, !tbaa !16
  %i.hyg = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hyd)
  %i.hyh = fptosi float %i.hyg to i32             ; 3 uses
  store i32 %i.hyh, ptr %i.f, align 4, !tbaa !16
  %i.hyi = fcmp reassoc nsz arcp contract afn olt float %i.hyd, 0.000000e+00
  br i1 %i.hyi, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 %i.hyh, ptr %i.d, align 4, !tbaa !16
  store i32 %i.hyf, ptr %i.f, align 4, !tbaa !16
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.hyj = phi i32 [ %i.hyh, %bb.dt ], [ %i.hyf, %bb.ds ]
  %i.hyk = sitofp reassoc nsz arcp contract afn i32 %i.hyj to float
  %i.hyl = fsub reassoc nsz arcp contract afn float %i.hyd, %i.hyk
  %i.hym = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hyl) ; 2 uses
  store float %i.hym, ptr %i.i, align 4, !tbaa !58
  %i.hyn = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.huo, zeroinitializer
  %i.hyo = select <2 x i1> %i.hyn, <2 x i32> splat (i32 2), <2 x i32> splat (i32 -2)
  %i.hyp = shufflevector <2 x i32> %i.hyo, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.hyp, ptr align 16 %i.c, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !16
  %i.hyq = extractelement <2 x float> %i.hus, i64 0 ; 4 uses
  %i.hyr = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hyq)
  %i.hys = fptosi float %i.hyr to i32             ; 3 uses
  store i32 %i.hys, ptr %i.hn, align 4, !tbaa !16
  %i.hyt = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hyq)
  %i.hyu = fptosi float %i.hyt to i32             ; 3 uses
  store i32 %i.hyu, ptr %i.ho, align 4, !tbaa !16
  %i.hyv = fcmp reassoc nsz arcp contract afn olt float %i.hyq, 0.000000e+00
  br i1 %i.hyv, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 %i.hyu, ptr %i.hn, align 4, !tbaa !16
  store i32 %i.hys, ptr %i.ho, align 4, !tbaa !16
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.hyw = phi i32 [ %i.hyu, %bb.dv ], [ %i.hys, %bb.du ]
  %i.hyx = sitofp reassoc nsz arcp contract afn i32 %i.hyw to float
  %i.hyy = fsub reassoc nsz arcp contract afn float %i.hyq, %i.hyx
  %i.hyz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hyy) ; 2 uses
  store float %i.hyz, ptr %i.fv, align 4, !tbaa !58
  %i.hza = extractelement <2 x float> %i.hus, i64 1 ; 4 uses
  %i.hzb = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hza)
  %i.hzc = fptosi float %i.hzb to i32             ; 3 uses
  store i32 %i.hzc, ptr %i.hp, align 4, !tbaa !16
  %i.hzd = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hza)
  %i.hze = fptosi float %i.hzd to i32             ; 3 uses
  store i32 %i.hze, ptr %i.hq, align 4, !tbaa !16
  %i.hzf = fcmp reassoc nsz arcp contract afn olt float %i.hza, 0.000000e+00
  br i1 %i.hzf, label %bb.dx, label %.preheader1920

bb.dx:                                            ; preds = %bb.dw
  store i32 %i.hze, ptr %i.hp, align 4, !tbaa !16
  store i32 %i.hzc, ptr %i.hq, align 4, !tbaa !16
  br label %.preheader1920

.preheader1920:                                   ; preds = %bb.dx, %bb.dw
  %i.hzg = phi i32 [ %i.hze, %bb.dx ], [ %i.hzc, %bb.dw ]
  %i.hzh = sitofp reassoc nsz arcp contract afn i32 %i.hzg to float
  %i.hzi = fsub reassoc nsz arcp contract afn float %i.hza, %i.hzh
  %i.hzj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hzi) ; 2 uses
  store float %i.hzj, ptr %i.fu, align 4, !tbaa !58
  %i.hzk = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hus, zeroinitializer
  %i.hzl = select <2 x i1> %i.hzk, <2 x i32> splat (i32 2), <2 x i32> splat (i32 -2)
  %i.hzm = shufflevector <2 x i32> %i.hzl, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.hzm, ptr align 8 %i.hr, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !16
  br i1 %i.fya, label %.lr.ph2208, label %._crit_edge2209

._crit_edge2209:                                  ; preds = %._crit_edge2206, %.preheader1920
  %i.hzn = fmul reassoc nsz arcp contract afn float %i.hym, 5.000000e-01
  store float %i.hzn, ptr %i.i, align 4, !tbaa !58
  %i.hzo = fmul reassoc nsz arcp contract afn float %i.hzj, 5.000000e-01
  store float %i.hzo, ptr %i.fu, align 4, !tbaa !58
  %i.hzp = fmul reassoc nsz arcp contract afn float %i.hyc, 5.000000e-01
  store float %i.hzp, ptr %i.j, align 4, !tbaa !58
  %i.hzq = fmul reassoc nsz arcp contract afn float %i.hyz, 5.000000e-01
  store float %i.hzq, ptr %i.fv, align 4, !tbaa !58
  br i1 %i.fyc, label %.lr.ph2217, label %._crit_edge2226

.lr.ph2217:                                       ; preds = %._crit_edge2209
  %i.hzr = add nsw i32 %i.fyv, -8                 ; 2 uses
  br label %bb.ea

bb.dy:                                            ; preds = %.lr.ph2208, %._crit_edge2206
  %indvars.iv2729 = phi i64 [ 4, %.lr.ph2208 ], [ %indvars.iv.next2730, %._crit_edge2206 ] ; 4 uses
  %indvars.iv2729.tr = trunc i64 %indvars.iv2729 to i32
  %i.hzs = shl i32 %indvars.iv2729.tr, 1
  %i.hzt = and i32 %i.hzs, 14                     ; 2 uses
  %i.hzu = shl nuw nsw i32 %i.hzt, 1
  %i.hzv = lshr i32 %i.q, %i.hzu                  ; 2 uses
  %i.hzw = and i32 %i.hzv, 1                      ; 2 uses
  %i.hzx = or disjoint i32 %i.hzw, 4
  %i.hzy = icmp slt i32 %i.hzx, %i.hxx
  br i1 %i.hzy, label %.lr.ph2205, label %._crit_edge2206

.lr.ph2205:                                       ; preds = %bb.dy
  %i.hzz = or disjoint i32 %i.hzw, %i.hzt
  %i.iaa = shl nuw nsw i32 %i.hzz, 1
  %i.iab = lshr i32 %i.q, %i.iaa
  %i.iac = and i32 %i.iab, 3
  %i.iad = zext nneg i32 %i.iac to i64            ; 7 uses
  %i.iae = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.iad
  %i.iaf = load float, ptr %i.iae, align 4, !tbaa !58 ; 2 uses
  %i.iag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.iad
  %i.iah = load i32, ptr %i.iag, align 4, !tbaa !16
  %i.iai = trunc nuw nsw i64 %indvars.iv2729 to i32 ; 2 uses
  %i.iaj = add nsw i32 %i.iah, %i.iai
  %i.iak = shl nsw i32 %i.iaj, 7
  %i.ial = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.iad
  %i.iam = load i32, ptr %i.ial, align 4, !tbaa !16
  %i.ian = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.iad
  %i.iao = load i32, ptr %i.ian, align 4, !tbaa !16
  %i.iap = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.iad
  %i.iaq = load i32, ptr %i.iap, align 4, !tbaa !16
  %i.iar = add nsw i32 %i.iaq, %i.iai
  %i.ias = shl nsw i32 %i.iar, 7
  %i.iat = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.iad
  %i.iau = load float, ptr %i.iat, align 4, !tbaa !58
  %i.iav = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.iad
  %i.iaw = load ptr, ptr %i.iav, align 8, !tbaa !59
  %i.iax = shl nuw nsw i64 %indvars.iv2729, 7
  %i.iay = and i32 %i.hzv, 1
  %i.iaz = or disjoint i32 %i.iay, 4
  %i.iba = zext nneg i32 %i.iaz to i64
  %i.ibb = sext i32 %i.iak to i64
  %i.ibc = sext i32 %i.iam to i64                 ; 2 uses
  %i.ibd = sext i32 %i.iao to i64                 ; 2 uses
  %i.ibe = sext i32 %i.ias to i64
  %invariant.gep2993 = getelementptr [4 x i8], ptr %i.bts, i64 %i.ibc
  %invariant.gep2995 = getelementptr [4 x i8], ptr %i.bts, i64 %i.ibd
  %invariant.gep2997 = getelementptr [4 x i8], ptr %i.bts, i64 %i.ibc
  %invariant.gep2999 = getelementptr [4 x i8], ptr %i.bts, i64 %i.ibd
  br label %bb.dz

._crit_edge2206:                                  ; preds = %bb.dz, %bb.dy
  %indvars.iv.next2730 = add nuw nsw i64 %indvars.iv2729, 1 ; 2 uses
  %i.ibf = icmp slt i64 %indvars.iv.next2730, %i.fyg
  br i1 %i.ibf, label %bb.dy, label %._crit_edge2209

bb.dz:                                            ; preds = %.lr.ph2205, %bb.dz
  %indvars.iv2726 = phi i64 [ %i.iba, %.lr.ph2205 ], [ %indvars.iv.next2727, %bb.dz ] ; 4 uses
  %i.ibg = add nsw i64 %indvars.iv2726, %i.ibb    ; 2 uses
  %gep2994 = getelementptr [4 x i8], ptr %invariant.gep2993, i64 %i.ibg
  %i.ibh = load float, ptr %gep2994, align 4, !tbaa !58
  %gep2996 = getelementptr [4 x i8], ptr %invariant.gep2995, i64 %i.ibg
  %i.ibi = load float, ptr %gep2996, align 4, !tbaa !58 ; 2 uses
  %i.ibj = fsub reassoc nsz arcp contract afn float %i.ibh, %i.ibi
  %i.ibk = fmul reassoc nsz arcp contract afn float %i.ibj, %i.iaf
  %i.ibl = fadd reassoc nsz arcp contract afn float %i.ibk, %i.ibi ; 2 uses
  %i.ibm = add nsw i64 %indvars.iv2726, %i.ibe    ; 2 uses
  %gep2998 = getelementptr [4 x i8], ptr %invariant.gep2997, i64 %i.ibm
  %i.ibn = load float, ptr %gep2998, align 4, !tbaa !58
  %gep3000 = getelementptr [4 x i8], ptr %invariant.gep2999, i64 %i.ibm
  %i.ibo = load float, ptr %gep3000, align 4, !tbaa !58 ; 2 uses
  %i.ibp = fsub reassoc nsz arcp contract afn float %i.ibn, %i.ibo
  %i.ibq = fmul reassoc nsz arcp contract afn float %i.ibp, %i.iaf
  %6 = fsub reassoc nsz arcp contract afn float %i.ibo, %i.ibl
  %7 = fadd reassoc nsz arcp contract afn float %6, %i.ibq
  %i.ibr = fmul reassoc nsz arcp contract afn float %7, %i.iau
  %i.ibs = fadd reassoc nsz arcp contract afn float %i.ibr, %i.ibl ; 2 uses
  %i.ibt = add nuw nsw i64 %indvars.iv2726, %i.iax ; 2 uses
  %i.ibu = getelementptr inbounds nuw [4 x i8], ptr %i.iaw, i64 %i.ibt
  %i.ibv = load float, ptr %i.ibu, align 4, !tbaa !58
  %i.ibw = fsub reassoc nsz arcp contract afn float %i.ibs, %i.ibv
  %i.ibx = lshr i64 %i.ibt, 1
  %i.iby = and i64 %i.ibx, 2147483647             ; 2 uses
  %i.ibz = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.iby
  store float %i.ibw, ptr %i.ibz, align 4, !tbaa !58
  %i.ica = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.iby
  store float %i.ibs, ptr %i.ica, align 4, !tbaa !58
  %indvars.iv.next2727 = add nuw nsw i64 %indvars.iv2726, 2 ; 2 uses
  %i.icb = icmp samesign ult i64 %indvars.iv.next2727, %i.hxy
  br i1 %i.icb, label %bb.dz, label %._crit_edge2206

.lr.ph2225:                                       ; preds = %._crit_edge2214
  %i.icc = add nsw i32 %i.fyv, -8                 ; 2 uses
  %i.icd = zext nneg i32 %i.icc to i64
  br label %bb.ei

bb.ea:                                            ; preds = %.lr.ph2217, %._crit_edge2214
  %indvars.iv2732 = phi i32 [ 1032, %.lr.ph2217 ], [ %indvars.iv.next2733, %._crit_edge2214 ] ; 2 uses
  %.016552215 = phi i32 [ 8, %.lr.ph2217 ], [ %i.ide, %._crit_edge2214 ] ; 3 uses
  %i.ice = shl nuw i32 %.016552215, 1
  %i.icf = and i32 %i.ice, 14                     ; 2 uses
  %i.icg = shl nuw nsw i32 %i.icf, 1
  %i.ich = lshr i32 %i.q, %i.icg
  %i.ici = and i32 %i.ich, 1                      ; 3 uses
  %i.icj = or disjoint i32 %i.ici, 8              ; 2 uses
  %i.ick = icmp slt i32 %i.icj, %i.hzr
  br i1 %i.ick, label %.lr.ph2213, label %._crit_edge2214

.lr.ph2213:                                       ; preds = %bb.ea
  %i.icl = or disjoint i32 %i.ici, %i.icf
  %i.icm = shl nuw nsw i32 %i.icl, 1
  %i.icn = lshr i32 %i.q, %i.icm
  %i.ico = and i32 %i.icn, 3
  %i.icp = zext nneg i32 %i.ico to i64            ; 5 uses
  %i.icq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.icp
  %i.icr = load ptr, ptr %i.icq, align 8, !tbaa !59
  %i.ics = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.icp
  %i.ict = load float, ptr %i.ics, align 4, !tbaa !58 ; 2 uses
  %i.icu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.icp
  %i.icv = load i32, ptr %i.icu, align 4, !tbaa !16 ; 2 uses
  %i.icw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.icp
  %i.icx = load i32, ptr %i.icw, align 4, !tbaa !16
  %i.icy = sub nsw i32 %.016552215, %i.icx
  %i.icz = shl nsw i32 %i.icy, 7
  %i.ida = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.icp
  %i.idb = load float, ptr %i.ida, align 4, !tbaa !58
  %i.idc = or disjoint i32 %indvars.iv2732, %i.ici
  %i.idd = zext i32 %i.idc to i64
  br label %bb.eb

._crit_edge2214:                                  ; preds = %bb.eh, %bb.ea
  %i.ide = add nuw nsw i32 %.016552215, 1         ; 2 uses
  %i.idf = icmp slt i32 %i.ide, %i.fyb
  %indvars.iv.next2733 = add i32 %indvars.iv2732, 128
  br i1 %i.idf, label %bb.ea, label %.lr.ph2225

bb.eb:                                            ; preds = %.lr.ph2213, %bb.eh
  %indvars.iv2734 = phi i64 [ %i.idd, %.lr.ph2213 ], [ %indvars.iv.next2735, %bb.eh ] ; 5 uses
  %.016542210 = phi i32 [ %i.icj, %.lr.ph2213 ], [ %i.ige, %bb.eh ] ; 2 uses
  %i.idg = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %indvars.iv2734 ; 2 uses
  %i.idh = load float, ptr %i.idg, align 4, !tbaa !58 ; 4 uses
  %i.idi = getelementptr inbounds nuw [4 x i8], ptr %i.icr, i64 %indvars.iv2734 ; 3 uses
  %i.idj = load float, ptr %i.idi, align 4, !tbaa !58 ; 3 uses
  %i.idk = fsub reassoc nsz arcp contract afn float %i.idh, %i.idj ; 4 uses
  %i.idl = trunc nuw i64 %indvars.iv2734 to i32
  %i.idm = sub nsw i32 %i.idl, %i.icv
  %i.idn = ashr i32 %i.idm, 1
  %i.ido = sext i32 %i.idn to i64                 ; 2 uses
  %i.idp = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.ido
  %i.idq = load float, ptr %i.idp, align 4, !tbaa !58 ; 2 uses
  %i.idr = lshr i64 %indvars.iv2734, 1            ; 2 uses
  %i.ids = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.idr
  %i.idt = load float, ptr %i.ids, align 4, !tbaa !58 ; 3 uses
  %i.idu = fsub reassoc nsz arcp contract afn float %i.idq, %i.idt
  %i.idv = fmul reassoc nsz arcp contract afn float %i.idu, %i.ict
  %i.idw = fadd reassoc nsz arcp contract afn float %i.idv, %i.idt ; 2 uses
  %i.idx = add nsw i32 %i.icz, %.016542210        ; 2 uses
  %i.idy = sub nsw i32 %i.idx, %i.icv
  %i.idz = ashr i32 %i.idy, 1
  %i.iea = sext i32 %i.idz to i64                 ; 2 uses
  %i.ieb = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.iea
  %i.iec = load float, ptr %i.ieb, align 4, !tbaa !58 ; 2 uses
  %i.ied = ashr i32 %i.idx, 1
  %i.iee = sext i32 %i.ied to i64                 ; 2 uses
  %i.ief = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.iee
  %i.ieg = load float, ptr %i.ief, align 4, !tbaa !58 ; 3 uses
  %i.ieh = fsub reassoc nsz arcp contract afn float %i.iec, %i.ieg
  %i.iei = fmul reassoc nsz arcp contract afn float %i.ieh, %i.ict
  %8 = fsub reassoc nsz arcp contract afn float %i.ieg, %i.idw
  %9 = fadd reassoc nsz arcp contract afn float %8, %i.iei
  %i.iej = fmul reassoc nsz arcp contract afn float %9, %i.idb
  %i.iek = fadd reassoc nsz arcp contract afn float %i.iej, %i.idw ; 4 uses
  %i.iel = fsub reassoc nsz arcp contract afn float %i.idh, %i.iek ; 3 uses
  %i.iem = fsub reassoc nsz arcp contract afn float %i.iel, %i.idj
  %i.ien = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.iem)
  %i.ieo = fadd reassoc nsz arcp contract afn float %i.iel, %i.idj
  %i.iep = fmul reassoc nsz arcp contract afn float %i.ieo, 2.500000e-01
  %i.ieq = fcmp reassoc nsz arcp contract afn olt float %i.ien, %i.iep
  br i1 %i.ieq, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ier = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.idk)
  %i.ies = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.iek)
  %i.iet = fcmp reassoc nsz arcp contract afn ogt float %i.ier, %i.ies
  br i1 %i.iet, label %.sink.split, label %bb.ef

bb.ed:                                            ; preds = %bb.eb
  %i.ieu = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.idr
  %i.iev = load float, ptr %i.ieu, align 4, !tbaa !58
  %i.iew = getelementptr inbounds [4 x i8], ptr %i.btv, i64 %i.ido
  %i.iex = load float, ptr %i.iew, align 4, !tbaa !58
  %i.iey = getelementptr inbounds [4 x i8], ptr %i.btv, i64 %i.iee
  %i.iez = load float, ptr %i.iey, align 4, !tbaa !58
  %i.ifa = getelementptr inbounds [4 x i8], ptr %i.btv, i64 %i.iea
  %i.ifb = load float, ptr %i.ifa, align 4, !tbaa !58
  %i.ifc = insertelement <4 x float> poison, float %i.idh, i64 0
  %i.ifd = shufflevector <4 x float> %i.ifc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ife = insertelement <4 x float> poison, float %i.iex, i64 0
  %i.iff = insertelement <4 x float> %i.ife, float %i.iev, i64 1
  %i.ifg = insertelement <4 x float> %i.iff, float %i.iez, i64 2
  %i.ifh = insertelement <4 x float> %i.ifg, float %i.ifb, i64 3
  %i.ifi = fsub reassoc nsz arcp contract afn <4 x float> %i.ifd, %i.ifh
  %i.ifj = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ifi)
  %i.ifk = fadd reassoc nsz arcp contract afn <4 x float> %i.ifj, splat (float f0x3727C5AC)
  %i.ifl = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ifk ; 2 uses
  %i.ifm = insertelement <4 x float> poison, float %i.idq, i64 0
  %i.ifn = insertelement <4 x float> %i.ifm, float %i.idt, i64 1
  %i.ifo = insertelement <4 x float> %i.ifn, float %i.ieg, i64 2
  %i.ifp = insertelement <4 x float> %i.ifo, float %i.iec, i64 3
  %i.ifq = fmul reassoc nsz arcp contract afn <4 x float> %i.ifl, %i.ifp
  %i.ifr = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ifq)
  %i.ifs = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ifl)
  %i.ift = fdiv reassoc nsz arcp contract afn float %i.ifr, %i.ifs ; 4 uses
  %i.ifu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.idk)
  %i.ifv = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ift)
  %i.ifw = fcmp reassoc nsz arcp contract afn ogt float %i.ifu, %i.ifv
  br i1 %i.ifw, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.ifx = fsub reassoc nsz arcp contract afn float %i.idh, %i.ift
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ec, %bb.ee
  %.sink = phi float [ %i.ifx, %bb.ee ], [ %i.iel, %bb.ec ]
  %.01648.ph = phi float [ %i.ift, %bb.ee ], [ %i.iek, %bb.ec ]
  store float %.sink, ptr %i.idi, align 4, !tbaa !58
  br label %bb.ef

bb.ef:                                            ; preds = %.sink.split, %bb.ed, %bb.ec
  %.01648 = phi nsz float [ %i.ift, %bb.ed ], [ %i.iek, %bb.ec ], [ %.01648.ph, %.sink.split ] ; 2 uses
  %i.ify = fmul reassoc nsz arcp contract afn float %.01648, %i.idk
  %i.ifz = fcmp reassoc nsz arcp contract afn olt float %i.ify, 0.000000e+00
  br i1 %i.ifz, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.iga = load float, ptr %i.idg, align 4, !tbaa !58
  %i.igb = fadd reassoc nsz arcp contract afn float %.01648, %i.idk
  %i.igc = fmul reassoc nsz arcp contract afn float %i.igb, 5.000000e-01
  %i.igd = fsub reassoc nsz arcp contract afn float %i.iga, %i.igc
  store float %i.igd, ptr %i.idi, align 4, !tbaa !58
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.ige = add nuw nsw i32 %.016542210, 2         ; 2 uses
  %indvars.iv.next2735 = add nuw nsw i64 %indvars.iv2734, 2
  %i.igf = icmp slt i32 %i.ige, %i.hzr
  br i1 %i.igf, label %bb.eb, label %._crit_edge2214

._crit_edge2226:                                  ; preds = %._crit_edge2223, %._crit_edge2209
  %indvars.iv.next2748 = add nsw i64 %indvars.iv2747, 112 ; 2 uses
  %i.igg = icmp slt i64 %indvars.iv.next2748, %i.af
  %indvars.iv.next2671 = add nuw i32 %indvars.iv2670, 112
  %indvars.iv.next2674 = add nsw i32 %indvars.iv2673, -112
  %indvar.next = add i32 %indvar, 1
  br i1 %i.igg, label %bb.be, label %._crit_edge2229

bb.ei:                                            ; preds = %.lr.ph2225, %._crit_edge2223
  %indvar3066 = phi i25 [ 0, %.lr.ph2225 ], [ %indvar.next3067, %._crit_edge2223 ] ; 2 uses
  %indvars.iv2744 = phi i64 [ 8, %.lr.ph2225 ], [ %indvars.iv.next2745, %._crit_edge2223 ] ; 5 uses
  %i.igh = add i25 %indvar3066, 8
  %i.igi = zext i25 %i.igh to i64
  %i.igj = shl nuw nsw i64 %i.igi, 9              ; 2 uses
  %i.igk = trunc nuw nsw i64 %indvars.iv2744 to i32
  %i.igl = shl i32 %i.igk, 2
  %i.igm = and i32 %i.igl, 28
  %i.ign = lshr i32 %i.q, %i.igm                  ; 4 uses
  %i.igo = and i32 %i.ign, 1
  %i.igp = or disjoint i32 %i.igo, 8              ; 2 uses
  %i.igq = icmp slt i32 %i.igp, %i.icc
  br i1 %i.igq, label %iter.check3094, label %._crit_edge2223

iter.check3094:                                   ; preds = %bb.ei
  %i.igr = add nsw i64 %indvars.iv2744, %indvars.iv2751
  %i.igs = trunc i64 %i.igr to i32
  %i.igt = mul i32 %i.ae, %i.igs
  %i.igu = add i32 %i.igt, %i.fyu
  %i.igv = add i32 %i.igu, %i.igp
  %i.igw = ashr i32 %i.igv, 1
  %.tr = trunc i64 %indvars.iv2744 to i32
  %i.igx = shl i32 %.tr, 1
  %.tr.i1847 = and i32 %i.igx, 14                 ; 2 uses
  %i.igy = shl nuw nsw i32 %.tr.i1847, 1
  %i.igz = lshr i32 %i.q, %i.igy
  %i.iha = and i32 %i.igz, 1
  %.tr.i1848 = or disjoint i32 %i.iha, %.tr.i1847
  %i.ihb = shl nuw nsw i32 %.tr.i1848, 1
  %i.ihc = lshr i32 %i.q, %i.ihb
  %i.ihd = and i32 %i.ihc, 3
  %i.ihe = zext nneg i32 %i.ihd to i64
  %i.ihf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ihe
  %i.ihg = load ptr, ptr %i.ihf, align 8, !tbaa !59 ; 3 uses
  %i.ihh = sext i32 %i.igw to i64                 ; 8 uses
  %i.ihi = and i32 %i.ign, 1
  %i.ihj = or disjoint i32 %i.ihi, 8
  %i.ihk = zext nneg i32 %i.ihj to i64            ; 6 uses
  %i.ihl = shl i64 %indvars.iv2744, 7
  %i.ihm = and i64 %i.ihl, 4294967168
  %invariant.gep3001 = getelementptr inbounds nuw [4 x i8], ptr %i.ihg, i64 %i.ihm ; 6 uses
  %i.ihn = and i32 %i.ign, 1
  %i.iho = zext nneg i32 %i.ihn to i64            ; 2 uses
  %i.ihp = or disjoint i64 %i.iho, 10
  %umax3075 = call i64 @llvm.umax.i64(i64 %i.ihp, i64 %i.fyl)
  %i.ihq = add nsw i64 %umax3075, -9
  %i.ihr = sub nsw i64 %i.ihq, %i.iho             ; 3 uses
  %i.ihs = lshr i64 %i.ihr, 1
  %i.iht = add nuw nsw i64 %i.ihs, 1              ; 4 uses
  %min.iters.check3076 = icmp ult i64 %i.ihr, 16
  br i1 %min.iters.check3076, label %vec.epilog.scalar.ph3095.preheader, label %vector.memcheck3061

vector.memcheck3061:                              ; preds = %iter.check3094
  %i.ihu = shl nsw i64 %i.ihh, 2
  %scevgep3062 = getelementptr i8, ptr %i.ds, i64 %i.ihu
  %i.ihv = and i32 %i.ign, 1
  %i.ihw = zext nneg i32 %i.ihv to i64            ; 3 uses
  %i.ihx = or disjoint i64 %i.ihw, 10
  %umax = call i64 @llvm.umax.i64(i64 %i.ihx, i64 %i.fyo)
  %i.ihy = add nsw i64 %umax, -9
  %i.ihz = sub nsw i64 %i.ihy, %i.ihw
  %i.iia = lshr i64 %i.ihz, 1                     ; 2 uses
  %i.iib = add i64 %i.iia, %i.ihh
  %i.iic = shl i64 %i.iib, 2
  %scevgep3064 = getelementptr i8, ptr %scevgep3063, i64 %i.iic
  %scevgep3065 = getelementptr nuw i8, ptr %i.ihg, i64 32
  %i.iid = shl nuw nsw i64 %i.ihw, 2              ; 2 uses
  %i.iie = getelementptr nuw i8, ptr %scevgep3065, i64 %i.igj
  %scevgep3068 = getelementptr nuw i8, ptr %i.iie, i64 %i.iid
  %scevgep3069 = getelementptr i8, ptr %i.ihg, i64 36
  %i.iif = shl nuw nsw i64 %i.iia, 3
  %i.iig = getelementptr i8, ptr %scevgep3069, i64 %i.igj
  %i.iih = getelementptr i8, ptr %i.iig, i64 %i.iif
  %scevgep3070 = getelementptr i8, ptr %i.iih, i64 %i.iid
  %bound03071 = icmp ult ptr %scevgep3062, %scevgep3070
  %bound13072 = icmp ult ptr %scevgep3068, %scevgep3064
  %found.conflict3073 = and i1 %bound03071, %bound13072
  br i1 %found.conflict3073, label %vec.epilog.scalar.ph3095.preheader, label %vector.main.loop.iter.check3077

vector.main.loop.iter.check3077:                  ; preds = %vector.memcheck3061
  %min.iters.check3078 = icmp ult i64 %i.ihr, 64
  br i1 %min.iters.check3078, label %vec.epilog.ph3098, label %vector.ph3079

vector.ph3079:                                    ; preds = %vector.main.loop.iter.check3077
  %i.iii = and i64 %i.iht, 31                     ; 2 uses
  %i.iij = icmp eq i64 %i.iii, 0
  %i.iik = select i1 %i.iij, i64 32, i64 %i.iii   ; 2 uses
  %n.vec3080 = sub nsw i64 %i.iht, %i.iik         ; 4 uses
  %i.iil = shl i64 %n.vec3080, 1
  %i.iim = add i64 %i.iil, %i.ihk
  %i.iin = add i64 %n.vec3080, %i.ihh
  %invariant.gep4509 = getelementptr [4 x i8], ptr %i.ds, i64 %i.ihh
  br label %vector.body3081

vector.body3081:                                  ; preds = %vector.body3081, %vector.ph3079
  %index3082 = phi i64 [ 0, %vector.ph3079 ], [ %index.next3089, %vector.body3081 ] ; 3 uses
  %i.iio = shl nuw i64 %index3082, 1
  %i.iip = or disjoint i64 %i.iio, %i.ihk         ; 4 uses
  %i.iiq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3001, i64 %i.iip
  %i.iir = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3001, i64 %i.iip
  %i.iis = getelementptr inbounds nuw i8, ptr %i.iir, i64 64
  %i.iit = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3001, i64 %i.iip
  %i.iiu = getelementptr inbounds nuw i8, ptr %i.iit, i64 128
  %i.iiv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3001, i64 %i.iip
  %i.iiw = getelementptr inbounds nuw i8, ptr %i.iiv, i64 192
  %wide.vec = load <16 x float>, ptr %i.iiq, align 4, !tbaa !58, !alias.scope !176
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec3083 = load <16 x float>, ptr %i.iis, align 4, !tbaa !58, !alias.scope !176
  %strided.vec3084 = shufflevector <16 x float> %wide.vec3083, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec3085 = load <16 x float>, ptr %i.iiu, align 4, !tbaa !58, !alias.scope !176
  %strided.vec3086 = shufflevector <16 x float> %wide.vec3085, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec3087 = load <16 x float>, ptr %i.iiw, align 4, !tbaa !58, !alias.scope !176
  %strided.vec3088 = shufflevector <16 x float> %wide.vec3087, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %gep4510 = getelementptr [4 x i8], ptr %invariant.gep4509, i64 %index3082 ; 4 uses
  %i.iix = getelementptr inbounds nuw i8, ptr %gep4510, i64 32
  %i.iiy = getelementptr inbounds nuw i8, ptr %gep4510, i64 64
  %i.iiz = getelementptr inbounds nuw i8, ptr %gep4510, i64 96
  store <8 x float> %strided.vec, ptr %gep4510, align 4, !tbaa !58, !alias.scope !179, !noalias !176
  store <8 x float> %strided.vec3084, ptr %i.iix, align 4, !tbaa !58, !alias.scope !179, !noalias !176
  store <8 x float> %strided.vec3086, ptr %i.iiy, align 4, !tbaa !58, !alias.scope !179, !noalias !176
  store <8 x float> %strided.vec3088, ptr %i.iiz, align 4, !tbaa !58, !alias.scope !179, !noalias !176
  %index.next3089 = add nuw i64 %index3082, 32    ; 2 uses
  %i.ija = icmp eq i64 %index.next3089, %n.vec3080
  br i1 %i.ija, label %vec.epilog.iter.check3096, label %vector.body3081, !llvm.loop !181

vec.epilog.iter.check3096:                        ; preds = %vector.body3081
  %min.epilog.iters.check3097 = icmp samesign ult i64 %i.iik, 9
  br i1 %min.epilog.iters.check3097, label %vec.epilog.scalar.ph3095.preheader, label %vec.epilog.ph3098, !prof !83

vec.epilog.scalar.ph3095.preheader:               ; preds = %vec.epilog.vector.body3100, %vector.memcheck3061, %iter.check3094, %vec.epilog.iter.check3096
  %indvars.iv2739.ph = phi i64 [ %i.ihk, %iter.check3094 ], [ %i.ihk, %vector.memcheck3061 ], [ %i.iim, %vec.epilog.iter.check3096 ], [ %i.ijf, %vec.epilog.vector.body3100 ]
  %indvars.iv2737.ph = phi i64 [ %i.ihh, %iter.check3094 ], [ %i.ihh, %vector.memcheck3061 ], [ %i.iin, %vec.epilog.iter.check3096 ], [ %i.ijg, %vec.epilog.vector.body3100 ]
  br label %vec.epilog.scalar.ph3095

vec.epilog.ph3098:                                ; preds = %vector.main.loop.iter.check3077, %vec.epilog.iter.check3096
  %vec.epilog.resume.val3091 = phi i64 [ %n.vec3080, %vec.epilog.iter.check3096 ], [ 0, %vector.main.loop.iter.check3077 ]
  %i.ijb = and i64 %i.iht, 7                      ; 2 uses
  %i.ijc = icmp eq i64 %i.ijb, 0
  %i.ijd = select i1 %i.ijc, i64 8, i64 %i.ijb
  %n.vec3099 = sub nsw i64 %i.iht, %i.ijd         ; 3 uses
  %i.ije = shl i64 %n.vec3099, 1
  %i.ijf = add i64 %i.ije, %i.ihk
  %i.ijg = add i64 %n.vec3099, %i.ihh
  %invariant.gep4511 = getelementptr [4 x i8], ptr %invariant.gep3001, i64 %i.ihk
  %invariant.gep4513 = getelementptr [4 x i8], ptr %i.ds, i64 %i.ihh
  br label %vec.epilog.vector.body3100

vec.epilog.vector.body3100:                       ; preds = %vec.epilog.vector.body3100, %vec.epilog.ph3098
  %index3101 = phi i64 [ %vec.epilog.resume.val3091, %vec.epilog.ph3098 ], [ %index.next3104, %vec.epilog.vector.body3100 ] ; 3 uses
  %.idx4056 = shl nuw i64 %index3101, 3
end_hunk_2
