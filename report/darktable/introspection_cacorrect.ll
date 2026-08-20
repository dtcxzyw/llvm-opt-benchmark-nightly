inline.NumInlined: 74
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a
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
  %.017062027 = phi i32 [ %i.ecf, %scalar.ph3878 ], [ %.017062027.ph, %scalar.ph3878.preheader ]
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
  %i.ecf = add nuw nsw i32 %.017062027, 2         ; 2 uses
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
  %indvars.iv2461.ph = phi i64 [ %i.bwp, %iter.check3850 ], [ %i.dwl, %vec.epilog.iter.check3852 ], [ %i.dwm, %vec.epilog.middle.block3860 ]
  %indvars.iv2456.ph = phi i64 [ %i.dws, %iter.check3850 ], [ %i.ecj, %vec.epilog.iter.check3852 ], [ %i.ecr, %vec.epilog.middle.block3860 ]
  br label %vec.epilog.scalar.ph3851

vec.epilog.scalar.ph3851:                         ; preds = %vec.epilog.scalar.ph3851.preheader, %vec.epilog.scalar.ph3851
  %indvars.iv2461 = phi i64 [ %indvars.iv.next2462, %vec.epilog.scalar.ph3851 ], [ %indvars.iv2461.ph, %vec.epilog.scalar.ph3851.preheader ] ; 2 uses
  %indvars.iv2456 = phi i64 [ %indvars.iv.next2457, %vec.epilog.scalar.ph3851 ], [ %indvars.iv2456.ph, %vec.epilog.scalar.ph3851.preheader ] ; 2 uses
  %i.ect = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %indvars.iv2456
  %i.ecu = load float, ptr %i.ect, align 4, !tbaa !58
  %gep2980 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv2461
  store float %i.ecu, ptr %gep2980, align 4, !tbaa !58
  %indvars.iv.next2462 = add nuw nsw i64 %indvars.iv2461, 1 ; 2 uses
  %indvars.iv.next2457 = add nsw i64 %indvars.iv2456, 1
  %i.ecv = icmp samesign ult i64 %indvars.iv.next2462, %i.dwh
  br i1 %i.ecv, label %vec.epilog.scalar.ph3851, label %.loopexit1910, !llvm.loop !85

.loopexit1910:                                    ; preds = %vec.epilog.scalar.ph3851, %middle.block3845, %vec.epilog.middle.block3860, %._crit_edge2031
  %indvars.iv.next2467 = add nuw nsw i64 %indvars.iv2466, 1 ; 2 uses
  %i.ecw = icmp slt i64 %indvars.iv.next2467, %i.bvy
  %indvars.iv.next2443 = add i32 %indvars.iv2442, 128
  %indvars.iv.next2455 = add i32 %indvars.iv2454, 128
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
  %.016942044 = phi i32 [ 4, %.lr.ph2045 ], [ %i.edn, %._crit_edge2043 ] ; 2 uses
  %i.ecx = shl nuw i32 %.016942044, 1
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
  %i.edn = add nuw nsw i32 %.016942044, 1         ; 2 uses
  %i.edo = icmp slt i32 %i.edn, %i.bvq
  %indvars.iv.next2470 = add i32 %indvars.iv2469, 128
  br i1 %i.edo, label %bb.ad, label %.preheader1942

bb.ae:                                            ; preds = %.lr.ph2042, %bb.ae
  %indvars.iv2471 = phi i64 [ %i.edm, %.lr.ph2042 ], [ %indvars.iv.next2472, %bb.ae ] ; 11 uses
  %.016932039 = phi i32 [ %i.edc, %.lr.ph2042 ], [ %i.eic, %bb.ae ]
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
  %i.efd = add nsw i64 %indvars.iv2471, -4        ; 2 uses
  %i.efe = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.efd
  %i.eff = load float, ptr %i.efe, align 4, !tbaa !58
  %i.efg = getelementptr inbounds [4 x i8], ptr %i.edk, i64 %i.efd
  %i.efh = load float, ptr %i.efg, align 4, !tbaa !58
  %i.efi = fsub reassoc nsz arcp contract afn float %i.eff, %i.efh ; 2 uses
  %i.efj = fsub reassoc nsz arcp contract afn float %i.efi, %i.eeu
  %i.efk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.efj)
  %i.efl = fadd reassoc nsz arcp contract afn float %i.efk, %i.efc
  %i.efm = fsub reassoc nsz arcp contract afn float %i.efi, %i.efa
  %i.efn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.efm)
  %i.efo = fsub reassoc nsz arcp contract afn float %i.efl, %i.efn
  %i.efp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.efo)
  %i.efq = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.eeq
  store float %i.efp, ptr %i.efq, align 4, !tbaa !58
  %i.efr = load float, ptr %i.edp, align 4, !tbaa !58
  %i.efs = fmul reassoc nsz arcp contract afn float %i.efr, 2.000000e+00 ; 2 uses
  %i.eft = add nuw nsw i64 %indvars.iv2471, 256   ; 2 uses
  %i.efu = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.eft
  %i.efv = load float, ptr %i.efu, align 4, !tbaa !58
  %i.efw = fadd reassoc nsz arcp contract afn float %i.efs, %i.efv
  %i.efx = add nsw i64 %indvars.iv2471, -256      ; 2 uses
  %i.efy = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.efx
  %i.efz = load float, ptr %i.efy, align 4, !tbaa !58
  %i.ega = fadd reassoc nsz arcp contract afn float %i.efw, %i.efz
  %i.egb = fmul reassoc nsz arcp contract afn float %i.ega, 2.500000e-01 ; 2 uses
  %indvars.iv.next2472 = add nuw nsw i64 %indvars.iv2471, 2 ; 3 uses
  %i.egc = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %indvars.iv.next2472
  %i.egd = load float, ptr %i.egc, align 4, !tbaa !58
  %i.ege = fadd reassoc nsz arcp contract afn float %i.egd, %i.efs
  %i.egf = add nsw i64 %indvars.iv2471, -2        ; 2 uses
  %i.egg = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.egf
  %i.egh = load float, ptr %i.egg, align 4, !tbaa !58
  %i.egi = fadd reassoc nsz arcp contract afn float %i.ege, %i.egh
  %i.egj = fmul reassoc nsz arcp contract afn float %i.egi, 2.500000e-01 ; 2 uses
  %i.egk = load float, ptr %i.edr, align 4, !tbaa !58
  %i.egl = fmul reassoc nsz arcp contract afn float %i.egk, 2.000000e+00
  %i.egm = getelementptr inbounds nuw [4 x i8], ptr %i.edk, i64 %i.eft ; 2 uses
  %i.egn = load float, ptr %i.egm, align 4, !tbaa !58
  %i.ego = fadd reassoc nsz arcp contract afn float %i.egl, %i.egn
  %i.egp = getelementptr inbounds [4 x i8], ptr %i.edk, i64 %i.efx ; 2 uses
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
  %i.eic = add nuw nsw i32 %.016932039, 2         ; 2 uses
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
  %.016882065 = phi i32 [ 8, %.lr.ph2066 ], [ %i.ent, %bb.ag ] ; 2 uses
  %i.eij = shl nuw i32 %.016882065, 1
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
  %vec.phi3776 = phi <8 x float> [ %i.ejw, %vector.ph3772 ], [ %i.enl, %vector.body3774 ]
  %vec.phi3777 = phi <8 x float> [ %i.ejx, %vector.ph3772 ], [ %i.enj, %vector.body3774 ]
  %vec.phi3778 = phi <8 x float> [ %i.ejy, %vector.ph3772 ], [ %i.eng, %vector.body3774 ]
  %vec.phi3779 = phi <8 x float> [ %i.ejz, %vector.ph3772 ], [ %i.emd, %vector.body3774 ]
  %vec.phi3780 = phi <8 x float> [ %i.eka, %vector.ph3772 ], [ %i.emb, %vector.body3774 ]
  %vec.phi3781 = phi <8 x float> [ %i.ekb, %vector.ph3772 ], [ %i.ely, %vector.body3774 ]
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
  %6 = or disjoint i32 %i.eku, 1
  %i.eky = zext nneg i32 %6 to i64                ; 3 uses
  %i.ekz = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.eky
  %wide.load3798 = load <8 x float>, ptr %i.ekz, align 4, !tbaa !58
  %i.ela = add nsw i32 %i.eku, -1
  %i.elb = sext i32 %i.ela to i64                 ; 3 uses
  %i.elc = getelementptr inbounds [4 x i8], ptr %i.btv, i64 %i.elb
  %wide.load3799 = load <8 x float>, ptr %i.elc, align 4, !tbaa !58
  %i.eld = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3799, %wide.load3798
  %i.ele = fmul reassoc nsz arcp contract afn <8 x float> %i.eld, splat (float 1.250000e-01)
  %i.elf = fadd reassoc nsz arcp contract afn <8 x float> %i.ele, %i.ekx
  %i.elg = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.elf)
  %i.elh = add nsw i32 %i.eku, -128
  %i.eli = sext i32 %i.elh to i64                 ; 3 uses
  %i.elj = getelementptr inbounds [4 x i8], ptr %i.btz, i64 %i.eli
  %wide.load3800 = load <8 x float>, ptr %i.elj, align 4, !tbaa !58
  %i.elk = add nuw nsw i32 %i.eku, 128
  %i.ell = zext nneg i32 %i.elk to i64            ; 3 uses
  %i.elm = getelementptr inbounds nuw [4 x i8], ptr %i.btz, i64 %i.ell
  %wide.load3801 = load <8 x float>, ptr %i.elm, align 4, !tbaa !58
  %i.eln = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3801, %wide.load3800 ; 2 uses
  %i.elo = fmul reassoc nsz arcp contract afn <8 x float> %i.elg, %i.eln
  %i.elp = fmul reassoc nsz arcp contract afn <8 x float> %i.eln, splat (float 1.000000e-01)
  %i.elq = getelementptr inbounds [4 x i8], ptr %i.btx, i64 %i.eli
  %wide.load3802 = load <8 x float>, ptr %i.elq, align 4, !tbaa !58
  %i.elr = getelementptr inbounds nuw [4 x i8], ptr %i.btx, i64 %i.ell
  %wide.load3803 = load <8 x float>, ptr %i.elr, align 4, !tbaa !58
  %i.els = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3802, splat (float f0x3727C5AC)
  %i.elt = fadd reassoc nsz arcp contract afn <8 x float> %i.els, %i.elp
  %i.elu = fadd reassoc nsz arcp contract afn <8 x float> %i.elt, %wide.load3803
  %i.elv = fdiv reassoc nsz arcp contract afn <8 x float> %i.elo, %i.elu ; 2 uses
  %i.elw = fmul reassoc nsz arcp contract afn <8 x float> %i.eks, %i.eks ; 2 uses
  %i.elx = fmul reassoc nsz arcp contract afn <8 x float> %i.elv, %i.elw
  %i.ely = fadd reassoc nsz arcp contract afn <8 x float> %i.elx, %vec.phi3781 ; 2 uses
  %i.elz = fmul reassoc nsz arcp contract afn <8 x float> %i.elv, %i.ekp ; 2 uses
  %i.ema = fmul reassoc nsz arcp contract afn <8 x float> %i.elz, %i.eks
  %i.emb = fadd reassoc nsz arcp contract afn <8 x float> %i.ema, %vec.phi3780 ; 2 uses
  %i.emc = fmul reassoc nsz arcp contract afn <8 x float> %i.elz, %i.ekp
  %i.emd = fadd reassoc nsz arcp contract afn <8 x float> %i.emc, %vec.phi3779 ; 2 uses
  %i.eme = getelementptr inbounds nuw i8, ptr %i.eke, i64 4
  %wide.vec3804 = load <16 x float>, ptr %i.eme, align 4, !tbaa !58
  %strided.vec3805 = shufflevector <16 x float> %wide.vec3804, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.emf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3805, %strided.vec3795
  %i.emg = fmul reassoc nsz arcp contract afn <8 x float> %i.emf, splat (float 3.125000e-01)
  %i.emh = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3791, %strided.vec3789
  %i.emi = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3783, %strided.vec3786
  %i.emj = fsub reassoc nsz arcp contract afn <8 x float> %i.emh, %i.emi
  %i.emk = fmul reassoc nsz arcp contract afn <8 x float> %i.emj, splat (float 9.375000e-02)
  %i.eml = fadd reassoc nsz arcp contract afn <8 x float> %i.emg, %i.emk ; 2 uses
  %i.emm = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.ekv
  %wide.load3806 = load <8 x float>, ptr %i.emm, align 4, !tbaa !58
  %i.emn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3806, splat (float 2.500000e-01)
  %i.emo = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.ell
  %wide.load3807 = load <8 x float>, ptr %i.emo, align 4, !tbaa !58
  %i.emp = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.eli
  %wide.load3808 = load <8 x float>, ptr %i.emp, align 4, !tbaa !58
  %i.emq = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3808, %wide.load3807
  %i.emr = fmul reassoc nsz arcp contract afn <8 x float> %i.emq, splat (float 1.250000e-01)
  %i.ems = fadd reassoc nsz arcp contract afn <8 x float> %i.emr, %i.emn
  %i.emt = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ems)
  %i.emu = getelementptr inbounds [4 x i8], ptr %i.bty, i64 %i.elb
  %wide.load3809 = load <8 x float>, ptr %i.emu, align 4, !tbaa !58
  %i.emv = getelementptr inbounds nuw [4 x i8], ptr %i.bty, i64 %i.eky
  %wide.load3810 = load <8 x float>, ptr %i.emv, align 4, !tbaa !58
  %i.emw = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3810, %wide.load3809 ; 2 uses
  %i.emx = fmul reassoc nsz arcp contract afn <8 x float> %i.emt, %i.emw
  %i.emy = fmul reassoc nsz arcp contract afn <8 x float> %i.emw, splat (float 1.000000e-01)
  %i.emz = getelementptr inbounds [4 x i8], ptr %i.btw, i64 %i.elb
  %wide.load3811 = load <8 x float>, ptr %i.emz, align 4, !tbaa !58
  %i.ena = getelementptr inbounds nuw [4 x i8], ptr %i.btw, i64 %i.eky
  %wide.load3812 = load <8 x float>, ptr %i.ena, align 4, !tbaa !58
  %i.enb = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3811, splat (float f0x3727C5AC)
  %i.enc = fadd reassoc nsz arcp contract afn <8 x float> %i.enb, %i.emy
  %i.end = fadd reassoc nsz arcp contract afn <8 x float> %i.enc, %wide.load3812
  %i.ene = fdiv reassoc nsz arcp contract afn <8 x float> %i.emx, %i.end ; 2 uses
  %i.enf = fmul reassoc nsz arcp contract afn <8 x float> %i.ene, %i.elw
  %i.eng = fadd reassoc nsz arcp contract afn <8 x float> %i.enf, %vec.phi3778 ; 2 uses
  %i.enh = fmul reassoc nsz arcp contract afn <8 x float> %i.ene, %i.eml ; 2 uses
  %i.eni = fmul reassoc nsz arcp contract afn <8 x float> %i.enh, %i.eks
  %i.enj = fadd reassoc nsz arcp contract afn <8 x float> %i.eni, %vec.phi3777 ; 2 uses
  %i.enk = fmul reassoc nsz arcp contract afn <8 x float> %i.enh, %i.eml
  %i.enl = fadd reassoc nsz arcp contract afn <8 x float> %i.enk, %vec.phi3776 ; 2 uses
  %index.next3813 = add nuw i64 %index3775, 8     ; 2 uses
  %i.enm = icmp eq i64 %index.next3813, %n.vec3773
  br i1 %i.enm, label %middle.block3814, label %vector.body3774, !llvm.loop !86

middle.block3814:                                 ; preds = %vector.body3774
  %i.enn = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.enl)
  %i.eno = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.enj)
  %i.enp = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.eng)
  %i.enq = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.emd)
  %i.enr = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.emb)
  %i.ens = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ely)
  br label %scalar.ph3770.preheader

scalar.ph3770.preheader:                          ; preds = %vector.scevcheck, %.lr.ph2052, %middle.block3814
  %indvars.iv2484.ph = phi i64 [ %i.ejg, %vector.scevcheck ], [ %i.ejg, %.lr.ph2052 ], [ %i.ejs, %middle.block3814 ]
  %.ph = phi float [ %.promoted2063, %vector.scevcheck ], [ %.promoted2063, %.lr.ph2052 ], [ %i.enn, %middle.block3814 ]
  %.ph4184 = phi float [ %.promoted2061, %vector.scevcheck ], [ %.promoted2061, %.lr.ph2052 ], [ %i.eno, %middle.block3814 ]
  %.ph4185 = phi float [ %.promoted2059, %vector.scevcheck ], [ %.promoted2059, %.lr.ph2052 ], [ %i.enp, %middle.block3814 ]
  %.ph4186 = phi float [ %.promoted2057, %vector.scevcheck ], [ %.promoted2057, %.lr.ph2052 ], [ %i.enq, %middle.block3814 ]
  %.ph4187 = phi float [ %.promoted2055, %vector.scevcheck ], [ %.promoted2055, %.lr.ph2052 ], [ %i.enr, %middle.block3814 ]
  %.ph4188 = phi float [ %.promoted, %vector.scevcheck ], [ %.promoted, %.lr.ph2052 ], [ %i.ens, %middle.block3814 ]
  %.016872049.ph = phi i32 [ %i.eio, %vector.scevcheck ], [ %i.eio, %.lr.ph2052 ], [ %i.ejv, %middle.block3814 ]
  br label %scalar.ph3770

._crit_edge2053:                                  ; preds = %scalar.ph3770
  store float %i.eqm, ptr %i.eiz, align 4, !tbaa !58
  store float %i.eqp, ptr %i.eja, align 4, !tbaa !58
  store float %i.eqr, ptr %i.ejb, align 4, !tbaa !58
  store float %i.esd, ptr %i.ejc, align 4, !tbaa !58
  store float %i.esg, ptr %i.ejd, align 4, !tbaa !58
  store float %i.esi, ptr %i.eje, align 4, !tbaa !58
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge2053, %bb.af
  %i.ent = add nuw nsw i32 %.016882065, 1         ; 2 uses
  %i.enu = icmp slt i32 %i.ent, %i.bvs
  %indvars.iv.next2483 = add i32 %indvars.iv2482, 128
  br i1 %i.enu, label %bb.af, label %.preheader1940

scalar.ph3770:                                    ; preds = %scalar.ph3770.preheader, %scalar.ph3770
  %indvars.iv2484 = phi i64 [ %indvars.iv.next2485, %scalar.ph3770 ], [ %indvars.iv2484.ph, %scalar.ph3770.preheader ] ; 4 uses
  %i.env = phi float [ %i.esi, %scalar.ph3770 ], [ %.ph, %scalar.ph3770.preheader ]
  %i.enw = phi float [ %i.esg, %scalar.ph3770 ], [ %.ph4184, %scalar.ph3770.preheader ]
  %i.enx = phi float [ %i.esd, %scalar.ph3770 ], [ %.ph4185, %scalar.ph3770.preheader ]
  %i.eny = phi float [ %i.eqr, %scalar.ph3770 ], [ %.ph4186, %scalar.ph3770.preheader ]
  %i.enz = phi float [ %i.eqp, %scalar.ph3770 ], [ %.ph4187, %scalar.ph3770.preheader ]
  %i.eoa = phi float [ %i.eqm, %scalar.ph3770 ], [ %.ph4188, %scalar.ph3770.preheader ]
  %.016872049 = phi i32 [ %i.esj, %scalar.ph3770 ], [ %.016872049.ph, %scalar.ph3770.preheader ]
  %i.eob = getelementptr [4 x i8], ptr %i.bts, i64 %indvars.iv2484 ; 9 uses
  %i.eoc = getelementptr inbounds nuw i8, ptr %i.eob, i64 512
  %i.eod = load float, ptr %i.eoc, align 4, !tbaa !58
  %i.eoe = getelementptr i8, ptr %i.eob, i64 -512
  %i.eof = load float, ptr %i.eoe, align 4, !tbaa !58
  %i.eog = fsub reassoc nsz arcp contract afn float %i.eod, %i.eof
  %i.eoh = fmul reassoc nsz arcp contract afn float %i.eog, 3.125000e-01
  %i.eoi = getelementptr inbounds nuw i8, ptr %i.eob, i64 516
  %i.eoj = load float, ptr %i.eoi, align 4, !tbaa !58 ; 2 uses
  %i.eok = getelementptr i8, ptr %i.eob, i64 -508
  %i.eol = load float, ptr %i.eok, align 4, !tbaa !58 ; 2 uses
  %i.eom = getelementptr inbounds nuw i8, ptr %i.eob, i64 508
  %i.eon = load float, ptr %i.eom, align 4, !tbaa !58 ; 2 uses
  %i.eoo = getelementptr i8, ptr %i.eob, i64 -516
  %i.eop = load float, ptr %i.eoo, align 4, !tbaa !58 ; 2 uses
  %i.eoq = fadd reassoc nsz arcp contract afn float %i.eoj, %i.eon
  %i.eor = fadd reassoc nsz arcp contract afn float %i.eol, %i.eop
  %i.eos = fsub reassoc nsz arcp contract afn float %i.eoq, %i.eor
  %i.eot = fmul reassoc nsz arcp contract afn float %i.eos, 9.375000e-02
  %i.eou = fadd reassoc nsz arcp contract afn float %i.eot, %i.eoh ; 2 uses
  %i.eov = getelementptr inbounds nuw [4 x i8], ptr %i.eiw, i64 %indvars.iv2484
  %i.eow = load float, ptr %i.eov, align 4, !tbaa !58
  %i.eox = load float, ptr %i.eob, align 4, !tbaa !58
  %i.eoy = fsub reassoc nsz arcp contract afn float %i.eow, %i.eox ; 4 uses
  %i.eoz = trunc nsw i64 %indvars.iv2484 to i32
  %i.epa = lshr i32 %i.eoz, 1                     ; 5 uses
  %i.epb = zext nneg i32 %i.epa to i64            ; 2 uses
  %i.epc = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.epb
  %i.epd = load float, ptr %i.epc, align 4, !tbaa !58
  %i.epe = fmul reassoc nsz arcp contract afn float %i.epd, 2.500000e-01
  %i.epf = add nuw nsw i32 %i.epa, 1
  %i.epg = zext nneg i32 %i.epf to i64            ; 3 uses
  %i.eph = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.epg
  %i.epi = load float, ptr %i.eph, align 4, !tbaa !58
  %i.epj = add nsw i32 %i.epa, -1
  %i.epk = sext i32 %i.epj to i64                 ; 3 uses
  %i.epl = getelementptr inbounds [4 x i8], ptr %i.btv, i64 %i.epk
  %i.epm = load float, ptr %i.epl, align 4, !tbaa !58
  %i.epn = fadd reassoc nsz arcp contract afn float %i.epm, %i.epi
  %i.epo = fmul reassoc nsz arcp contract afn float %i.epn, 1.250000e-01
  %i.epp = fadd reassoc nsz arcp contract afn float %i.epo, %i.epe
  %i.epq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.epp)
  %i.epr = add nsw i32 %i.epa, -128
  %i.eps = sext i32 %i.epr to i64                 ; 3 uses
  %i.ept = getelementptr inbounds [4 x i8], ptr %i.btz, i64 %i.eps
  %i.epu = load float, ptr %i.ept, align 4, !tbaa !58
  %i.epv = add nuw nsw i32 %i.epa, 128
  %i.epw = zext nneg i32 %i.epv to i64            ; 3 uses
  %i.epx = getelementptr inbounds nuw [4 x i8], ptr %i.btz, i64 %i.epw
  %i.epy = load float, ptr %i.epx, align 4, !tbaa !58
  %i.epz = fadd reassoc nsz arcp contract afn float %i.epy, %i.epu ; 2 uses
  %i.eqa = fmul reassoc nsz arcp contract afn float %i.epq, %i.epz
  %i.eqb = fmul reassoc nsz arcp contract afn float %i.epz, 1.000000e-01
  %i.eqc = getelementptr inbounds [4 x i8], ptr %i.btx, i64 %i.eps
  %i.eqd = load float, ptr %i.eqc, align 4, !tbaa !58
  %i.eqe = getelementptr inbounds nuw [4 x i8], ptr %i.btx, i64 %i.epw
  %i.eqf = load float, ptr %i.eqe, align 4, !tbaa !58
  %i.eqg = fadd reassoc nsz arcp contract afn float %i.eqd, f0x3727C5AC
  %i.eqh = fadd reassoc nsz arcp contract afn float %i.eqg, %i.eqb
  %i.eqi = fadd reassoc nsz arcp contract afn float %i.eqh, %i.eqf
  %i.eqj = fdiv reassoc nsz arcp contract afn float %i.eqa, %i.eqi ; 2 uses
  %i.eqk = fmul reassoc nsz arcp contract afn float %i.eoy, %i.eoy ; 2 uses
  %i.eql = fmul reassoc nsz arcp contract afn float %i.eqj, %i.eqk
  %i.eqm = fadd reassoc nsz arcp contract afn float %i.eql, %i.eoa ; 2 uses
  %i.eqn = fmul reassoc nsz arcp contract afn float %i.eqj, %i.eou ; 2 uses
  %i.eqo = fmul reassoc nsz arcp contract afn float %i.eqn, %i.eoy
  %i.eqp = fadd reassoc nsz arcp contract afn float %i.eqo, %i.enz ; 2 uses
  %i.eqq = fmul reassoc nsz arcp contract afn float %i.eqn, %i.eou
  %i.eqr = fadd reassoc nsz arcp contract afn float %i.eqq, %i.eny ; 2 uses
  %i.eqs = getelementptr inbounds nuw i8, ptr %i.eob, i64 4
  %i.eqt = load float, ptr %i.eqs, align 4, !tbaa !58
  %i.equ = getelementptr i8, ptr %i.eob, i64 -4
  %i.eqv = load float, ptr %i.equ, align 4, !tbaa !58
  %i.eqw = fsub reassoc nsz arcp contract afn float %i.eqt, %i.eqv
  %i.eqx = fmul reassoc nsz arcp contract afn float %i.eqw, 3.125000e-01
  %.neg1886 = fadd reassoc nsz arcp contract afn float %i.eol, %i.eoj
  %i.eqy = fadd reassoc nsz arcp contract afn float %i.eon, %i.eop
  %i.eqz = fsub reassoc nsz arcp contract afn float %.neg1886, %i.eqy
  %i.era = fmul reassoc nsz arcp contract afn float %i.eqz, 9.375000e-02
  %i.erb = fadd reassoc nsz arcp contract afn float %i.eqx, %i.era ; 2 uses
  %i.erc = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.epb
  %i.erd = load float, ptr %i.erc, align 4, !tbaa !58
  %i.ere = fmul reassoc nsz arcp contract afn float %i.erd, 2.500000e-01
  %i.erf = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.epw
  %i.erg = load float, ptr %i.erf, align 4, !tbaa !58
  %i.erh = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.eps
  %i.eri = load float, ptr %i.erh, align 4, !tbaa !58
  %i.erj = fadd reassoc nsz arcp contract afn float %i.eri, %i.erg
  %i.erk = fmul reassoc nsz arcp contract afn float %i.erj, 1.250000e-01
  %i.erl = fadd reassoc nsz arcp contract afn float %i.erk, %i.ere
  %i.erm = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.erl)
  %i.ern = getelementptr inbounds [4 x i8], ptr %i.bty, i64 %i.epk
  %i.ero = load float, ptr %i.ern, align 4, !tbaa !58
  %i.erp = getelementptr inbounds nuw [4 x i8], ptr %i.bty, i64 %i.epg
  %i.erq = load float, ptr %i.erp, align 4, !tbaa !58
  %i.err = fadd reassoc nsz arcp contract afn float %i.erq, %i.ero ; 2 uses
  %i.ers = fmul reassoc nsz arcp contract afn float %i.erm, %i.err
  %i.ert = fmul reassoc nsz arcp contract afn float %i.err, 1.000000e-01
  %i.eru = getelementptr inbounds [4 x i8], ptr %i.btw, i64 %i.epk
  %i.erv = load float, ptr %i.eru, align 4, !tbaa !58
  %i.erw = getelementptr inbounds nuw [4 x i8], ptr %i.btw, i64 %i.epg
  %i.erx = load float, ptr %i.erw, align 4, !tbaa !58
  %i.ery = fadd reassoc nsz arcp contract afn float %i.erv, f0x3727C5AC
  %i.erz = fadd reassoc nsz arcp contract afn float %i.ery, %i.ert
  %i.esa = fadd reassoc nsz arcp contract afn float %i.erz, %i.erx
  %i.esb = fdiv reassoc nsz arcp contract afn float %i.ers, %i.esa ; 2 uses
  %i.esc = fmul reassoc nsz arcp contract afn float %i.esb, %i.eqk
  %i.esd = fadd reassoc nsz arcp contract afn float %i.esc, %i.enx ; 2 uses
  %i.ese = fmul reassoc nsz arcp contract afn float %i.esb, %i.erb ; 2 uses
  %i.esf = fmul reassoc nsz arcp contract afn float %i.ese, %i.eoy
  %i.esg = fadd reassoc nsz arcp contract afn float %i.esf, %i.enw ; 2 uses
  %i.esh = fmul reassoc nsz arcp contract afn float %i.ese, %i.erb
  %i.esi = fadd reassoc nsz arcp contract afn float %i.esh, %i.env ; 2 uses
  %i.esj = add nuw nsw i32 %.016872049, 2         ; 2 uses
  %indvars.iv.next2485 = add nuw nsw i64 %indvars.iv2484, 2
  %i.esk = icmp slt i32 %i.esj, %i.eie
  br i1 %i.esk, label %scalar.ph3770, label %._crit_edge2053, !llvm.loop !87

bb.ah:                                            ; preds = %.preheader1940
  %i.esl = load float, ptr %i.ex, align 8, !tbaa !58
  %i.esm = fdiv reassoc nsz arcp contract afn float %i.esl, %.pre
  br label %.preheader1908.1

.preheader1908.1:                                 ; preds = %.preheader1942.thread, %.preheader1942, %.preheader1940, %bb.ah
  %.sroa.02813.0 = phi nsz float [ %i.esm, %bb.ah ], [ 1.700000e+01, %.preheader1940 ], [ 1.700000e+01, %.preheader1942 ], [ 1.700000e+01, %.preheader1942.thread ] ; 5 uses
  %.pn.reass = add i64 %i.bwr, %invariant.op4504  ; 2 uses
  %i.esn = getelementptr inbounds [16 x i8], ptr %i.en, i64 %.pn.reass ; 4 uses
  %i.eso = getelementptr inbounds [4 x i8], ptr %i.el, i64 %.pn.reass
  %i.esp = fadd reassoc nsz arcp contract afn float %.sroa.02805.2, %.sroa.02813.0
  %i.esq = fmul reassoc nnan nsz arcp contract afn float %.sroa.02813.0, %.sroa.02813.0
  %i.esr = fadd reassoc nsz arcp contract afn float %.sroa.02791.2, 1.000000e+00
  store float %.sroa.02813.0, ptr %i.esn, align 4, !tbaa !58
  %i.ess = fadd reassoc nsz arcp contract afn float %.sroa.9.2, 1.000000e+00
  %i.est = getelementptr inbounds nuw i8, ptr %i.esn, i64 4
  %i.esu = getelementptr inbounds nuw i8, ptr %i.esn, i64 8
  %i.esv = load <8 x float>, ptr %i.gr, align 4   ; 2 uses
  %i.esw = shufflevector <8 x float> %i.esv, <8 x float> poison, <2 x i32> <i32 2, i32 7> ; 2 uses
  %i.esx = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.esw, splat (float 1.000000e-10)
  %i.esy = shufflevector <8 x float> %i.esv, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.esz = fdiv reassoc nsz arcp contract afn <2 x float> %i.esy, %i.esw
  %i.eta = select <2 x i1> %i.esx, <2 x float> %i.esz, <2 x float> splat (float 1.700000e+01) ; 5 uses
  %i.etb = extractelement <2 x float> %i.eta, i64 1 ; 3 uses
  %i.etc = fmul reassoc nnan nsz arcp contract afn float %i.etb, %i.etb
  %i.etd = fadd reassoc nsz arcp contract afn float %.sroa.92801.2, %i.etc
  store float %i.etb, ptr %i.est, align 4, !tbaa !58
  %i.ete = extractelement <2 x float> %i.eta, i64 0
  %foldExtExtBinop = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.eta, %i.eta
  %i.etf = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.etg = insertelement <4 x float> poison, float %.sroa.02813.0, i64 0
  %i.eth = shufflevector <2 x float> %i.eta, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison> ; 2 uses
  %i.eti = shufflevector <4 x float> %i.eth, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.etj = shufflevector <4 x float> %i.etg, <4 x float> %i.eth, <4 x i32> <i32 0, i32 4, i32 4, i32 6>
  %i.etk = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.etj)
  %i.etl = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.etk, splat (float 2.000000e+00) ; 4 uses
  %i.etm = extractelement <4 x i1> %i.etl, i64 0  ; 2 uses
  %.sroa.02805.3 = select nsz i1 %i.etm, float %i.esp, float %.sroa.02805.2 ; 3 uses
  %i.etn = insertelement <4 x float> %i.eti, float %i.esq, i64 0
  %i.eto = shufflevector <4 x float> %i.etn, <4 x float> %i.etf, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.etp = fadd reassoc nsz arcp contract afn <4 x float> %i.bwa, %i.eto
  %.sroa.02791.3 = select nsz i1 %i.etm, float %i.esr, float %.sroa.02791.2 ; 3 uses
  %i.etq = extractelement <4 x i1> %i.etl, i64 3  ; 2 uses
  %.sroa.92801.3 = select nsz i1 %i.etq, float %i.etd, float %.sroa.92801.2 ; 3 uses
  %.sroa.9.3 = select nsz i1 %i.etq, float %i.ess, float %.sroa.9.2 ; 3 uses
  %i.etr = fadd reassoc nsz arcp contract afn float %.sroa.62793.2, 1.000000e+00
  %i.ets = select <4 x i1> %i.etl, <4 x float> %i.etp, <4 x float> %i.bwa ; 3 uses
  %i.ett = extractelement <4 x i1> %i.etl, i64 1
  %.sroa.62793.3 = select nsz i1 %i.ett, float %i.etr, float %.sroa.62793.2 ; 3 uses
  store float %i.ete, ptr %i.esu, align 4, !tbaa !58
  %i.etu = load float, ptr %i.gs, align 4, !tbaa !58 ; 3 uses
  %i.etv = fcmp reassoc nsz arcp contract afn ogt float %i.etu, 1.000000e-10
  br i1 %i.etv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.preheader1908.1
  %i.etw = load float, ptr %i.gt, align 4, !tbaa !58
  %i.etx = fdiv reassoc nsz arcp contract afn float %i.etw, %i.etu
  %i.ety = load float, ptr %i.gu, align 4, !tbaa !58
  %i.etz = fadd reassoc nsz arcp contract afn float %i.ety, f0x3727C5AC
  %i.eua = fdiv reassoc nsz arcp contract afn float %i.etu, %i.etz
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader1908.1, %bb.ai
  %storemerge2944 = phi float [ %i.eua, %bb.ai ], [ 0.000000e+00, %.preheader1908.1 ]
  %.sroa.11.0 = phi nsz float [ %i.etx, %bb.ai ], [ 1.700000e+01, %.preheader1908.1 ] ; 5 uses
  store float %storemerge2944, ptr %i.eso, align 4, !tbaa !58
  %i.eub = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.sroa.11.0)
  %i.euc = fcmp reassoc nsz arcp contract afn olt float %i.eub, 2.000000e+00 ; 3 uses
  %i.eud = fadd reassoc nsz arcp contract afn float %.sroa.122811.2, %.sroa.11.0
  %i.eue = fmul reassoc nnan nsz arcp contract afn float %.sroa.11.0, %.sroa.11.0
  %i.euf = fadd reassoc nsz arcp contract afn float %.sroa.122803.2, %i.eue
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.hxw = add nsw i32 %i.fyu, -4                 ; 2 uses
  %i.hxx = zext nneg i32 %i.hxw to i64
  br label %bb.dy

bb.dr:                                            ; preds = %._crit_edge2193
  store i32 %i.huw, ptr %i.e, align 4, !tbaa !16
  store i32 %i.huu, ptr %i.g, align 4, !tbaa !16
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %._crit_edge2193
  %i.hxy = phi i32 [ %i.huw, %bb.dr ], [ %i.huu, %._crit_edge2193 ]
  %i.hxz = sitofp reassoc nsz arcp contract afn i32 %i.hxy to float
  %i.hya = fsub reassoc nsz arcp contract afn float %i.hus, %i.hxz
  %i.hyb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hya) ; 2 uses
  store float %i.hyb, ptr %i.j, align 4, !tbaa !58
  %i.hyc = extractelement <2 x float> %i.hun, i64 1 ; 4 uses
  %i.hyd = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hyc)
  %i.hye = fptosi float %i.hyd to i32             ; 3 uses
  store i32 %i.hye, ptr %i.d, align 4, !tbaa !16
  %i.hyf = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hyc)
  %i.hyg = fptosi float %i.hyf to i32             ; 3 uses
  store i32 %i.hyg, ptr %i.f, align 4, !tbaa !16
  %i.hyh = fcmp reassoc nsz arcp contract afn olt float %i.hyc, 0.000000e+00
  br i1 %i.hyh, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 %i.hyg, ptr %i.d, align 4, !tbaa !16
  store i32 %i.hye, ptr %i.f, align 4, !tbaa !16
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.hyi = phi i32 [ %i.hyg, %bb.dt ], [ %i.hye, %bb.ds ]
  %i.hyj = sitofp reassoc nsz arcp contract afn i32 %i.hyi to float
  %i.hyk = fsub reassoc nsz arcp contract afn float %i.hyc, %i.hyj
  %i.hyl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hyk) ; 2 uses
  store float %i.hyl, ptr %i.i, align 4, !tbaa !58
  %i.hym = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hun, zeroinitializer
  %i.hyn = select <2 x i1> %i.hym, <2 x i32> splat (i32 2), <2 x i32> splat (i32 -2)
  %i.hyo = shufflevector <2 x i32> %i.hyn, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.hyo, ptr align 16 %i.c, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !16
  %i.hyp = extractelement <2 x float> %i.hur, i64 0 ; 4 uses
  %i.hyq = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hyp)
  %i.hyr = fptosi float %i.hyq to i32             ; 3 uses
  store i32 %i.hyr, ptr %i.hn, align 4, !tbaa !16
  %i.hys = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hyp)
  %i.hyt = fptosi float %i.hys to i32             ; 3 uses
  store i32 %i.hyt, ptr %i.ho, align 4, !tbaa !16
  %i.hyu = fcmp reassoc nsz arcp contract afn olt float %i.hyp, 0.000000e+00
  br i1 %i.hyu, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 %i.hyt, ptr %i.hn, align 4, !tbaa !16
  store i32 %i.hyr, ptr %i.ho, align 4, !tbaa !16
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.hyv = phi i32 [ %i.hyt, %bb.dv ], [ %i.hyr, %bb.du ]
  %i.hyw = sitofp reassoc nsz arcp contract afn i32 %i.hyv to float
  %i.hyx = fsub reassoc nsz arcp contract afn float %i.hyp, %i.hyw
  %i.hyy = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hyx) ; 2 uses
  store float %i.hyy, ptr %i.fv, align 4, !tbaa !58
  %i.hyz = extractelement <2 x float> %i.hur, i64 1 ; 4 uses
  %i.hza = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hyz)
  %i.hzb = fptosi float %i.hza to i32             ; 3 uses
  store i32 %i.hzb, ptr %i.hp, align 4, !tbaa !16
  %i.hzc = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hyz)
  %i.hzd = fptosi float %i.hzc to i32             ; 3 uses
  store i32 %i.hzd, ptr %i.hq, align 4, !tbaa !16
  %i.hze = fcmp reassoc nsz arcp contract afn olt float %i.hyz, 0.000000e+00
  br i1 %i.hze, label %bb.dx, label %.preheader1920

bb.dx:                                            ; preds = %bb.dw
  store i32 %i.hzd, ptr %i.hp, align 4, !tbaa !16
  store i32 %i.hzb, ptr %i.hq, align 4, !tbaa !16
  br label %.preheader1920

.preheader1920:                                   ; preds = %bb.dx, %bb.dw
  %i.hzf = phi i32 [ %i.hzd, %bb.dx ], [ %i.hzb, %bb.dw ]
  %i.hzg = sitofp reassoc nsz arcp contract afn i32 %i.hzf to float
  %i.hzh = fsub reassoc nsz arcp contract afn float %i.hyz, %i.hzg
  %i.hzi = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hzh) ; 2 uses
  store float %i.hzi, ptr %i.fu, align 4, !tbaa !58
  %i.hzj = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hur, zeroinitializer
  %i.hzk = select <2 x i1> %i.hzj, <2 x i32> splat (i32 2), <2 x i32> splat (i32 -2)
  %i.hzl = shufflevector <2 x i32> %i.hzk, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.hzl, ptr align 8 %i.hr, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !16
  br i1 %i.fxz, label %.lr.ph2208, label %._crit_edge2209

._crit_edge2209:                                  ; preds = %._crit_edge2206, %.preheader1920
  %i.hzm = fmul reassoc nsz arcp contract afn float %i.hyl, 5.000000e-01
  store float %i.hzm, ptr %i.i, align 4, !tbaa !58
  %i.hzn = fmul reassoc nsz arcp contract afn float %i.hzi, 5.000000e-01
  store float %i.hzn, ptr %i.fu, align 4, !tbaa !58
  %i.hzo = fmul reassoc nsz arcp contract afn float %i.hyb, 5.000000e-01
  store float %i.hzo, ptr %i.j, align 4, !tbaa !58
  %i.hzp = fmul reassoc nsz arcp contract afn float %i.hyy, 5.000000e-01
  store float %i.hzp, ptr %i.fv, align 4, !tbaa !58
  br i1 %i.fyb, label %.lr.ph2217, label %._crit_edge2226

.lr.ph2217:                                       ; preds = %._crit_edge2209
  %i.hzq = add nsw i32 %i.fyu, -8                 ; 2 uses
  br label %bb.ea

bb.dy:                                            ; preds = %.lr.ph2208, %._crit_edge2206
  %indvars.iv2729 = phi i64 [ 4, %.lr.ph2208 ], [ %indvars.iv.next2730, %._crit_edge2206 ] ; 4 uses
  %indvars.iv2729.tr = trunc i64 %indvars.iv2729 to i32
  %i.hzr = shl i32 %indvars.iv2729.tr, 1
  %i.hzs = and i32 %i.hzr, 14                     ; 2 uses
  %i.hzt = shl nuw nsw i32 %i.hzs, 1
  %i.hzu = lshr i32 %i.q, %i.hzt                  ; 2 uses
  %i.hzv = and i32 %i.hzu, 1                      ; 2 uses
  %i.hzw = or disjoint i32 %i.hzv, 4
  %i.hzx = icmp slt i32 %i.hzw, %i.hxw
  br i1 %i.hzx, label %.lr.ph2205, label %._crit_edge2206

.lr.ph2205:                                       ; preds = %bb.dy
  %i.hzy = or disjoint i32 %i.hzv, %i.hzs
  %i.hzz = shl nuw nsw i32 %i.hzy, 1
  %i.iaa = lshr i32 %i.q, %i.hzz
  %i.iab = and i32 %i.iaa, 3
  %i.iac = zext nneg i32 %i.iab to i64            ; 7 uses
  %i.iad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.iac
  %i.iae = load float, ptr %i.iad, align 4, !tbaa !58 ; 2 uses
  %i.iaf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.iac
  %i.iag = load i32, ptr %i.iaf, align 4, !tbaa !16
  %i.iah = trunc nuw nsw i64 %indvars.iv2729 to i32 ; 2 uses
  %i.iai = add nsw i32 %i.iag, %i.iah
  %i.iaj = shl nsw i32 %i.iai, 7
  %i.iak = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.iac
  %i.ial = load i32, ptr %i.iak, align 4, !tbaa !16
  %i.iam = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.iac
  %i.ian = load i32, ptr %i.iam, align 4, !tbaa !16
  %i.iao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.iac
  %i.iap = load i32, ptr %i.iao, align 4, !tbaa !16
  %i.iaq = add nsw i32 %i.iap, %i.iah
  %i.iar = shl nsw i32 %i.iaq, 7
  %i.ias = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.iac
  %i.iat = load float, ptr %i.ias, align 4, !tbaa !58
  %i.iau = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.iac
  %i.iav = load ptr, ptr %i.iau, align 8, !tbaa !59
  %i.iaw = shl nuw nsw i64 %indvars.iv2729, 7
  %i.iax = and i32 %i.hzu, 1
  %i.iay = or disjoint i32 %i.iax, 4
  %i.iaz = zext nneg i32 %i.iay to i64
  %i.iba = sext i32 %i.iaj to i64
  %i.ibb = sext i32 %i.ial to i64                 ; 2 uses
  %i.ibc = sext i32 %i.ian to i64                 ; 2 uses
  %i.ibd = sext i32 %i.iar to i64
  %invariant.gep2993 = getelementptr [4 x i8], ptr %i.bts, i64 %i.ibb
  %invariant.gep2995 = getelementptr [4 x i8], ptr %i.bts, i64 %i.ibc
  %invariant.gep2997 = getelementptr [4 x i8], ptr %i.bts, i64 %i.ibb
  %invariant.gep2999 = getelementptr [4 x i8], ptr %i.bts, i64 %i.ibc
  br label %bb.dz

._crit_edge2206:                                  ; preds = %bb.dz, %bb.dy
  %indvars.iv.next2730 = add nuw nsw i64 %indvars.iv2729, 1 ; 2 uses
  %i.ibe = icmp slt i64 %indvars.iv.next2730, %i.fyf
  br i1 %i.ibe, label %bb.dy, label %._crit_edge2209

bb.dz:                                            ; preds = %.lr.ph2205, %bb.dz
  %indvars.iv2726 = phi i64 [ %i.iaz, %.lr.ph2205 ], [ %indvars.iv.next2727, %bb.dz ] ; 4 uses
  %i.ibf = add nsw i64 %indvars.iv2726, %i.iba    ; 2 uses
  %gep2994 = getelementptr [4 x i8], ptr %invariant.gep2993, i64 %i.ibf
  %i.ibg = load float, ptr %gep2994, align 4, !tbaa !58
  %gep2996 = getelementptr [4 x i8], ptr %invariant.gep2995, i64 %i.ibf
  %i.ibh = load float, ptr %gep2996, align 4, !tbaa !58 ; 2 uses
  %i.ibi = fsub reassoc nsz arcp contract afn float %i.ibg, %i.ibh
  %i.ibj = fmul reassoc nsz arcp contract afn float %i.ibi, %i.iae
  %i.ibk = fadd reassoc nsz arcp contract afn float %i.ibj, %i.ibh ; 2 uses
  %i.ibl = add nsw i64 %indvars.iv2726, %i.ibd    ; 2 uses
  %gep2998 = getelementptr [4 x i8], ptr %invariant.gep2997, i64 %i.ibl
  %i.ibm = load float, ptr %gep2998, align 4, !tbaa !58
  %gep3000 = getelementptr [4 x i8], ptr %invariant.gep2999, i64 %i.ibl
  %i.ibn = load float, ptr %gep3000, align 4, !tbaa !58 ; 2 uses
  %i.ibo = fsub reassoc nsz arcp contract afn float %i.ibm, %i.ibn
  %i.ibp = fmul reassoc nsz arcp contract afn float %i.ibo, %i.iae
  %i.ibq = fsub reassoc nsz arcp contract afn float %i.ibn, %i.ibk
  %i.ibr = fadd reassoc nsz arcp contract afn float %i.ibq, %i.ibp
  %i.ibs = fmul reassoc nsz arcp contract afn float %i.ibr, %i.iat
  %i.ibt = fadd reassoc nsz arcp contract afn float %i.ibs, %i.ibk ; 2 uses
  %i.ibu = add nuw nsw i64 %indvars.iv2726, %i.iaw ; 2 uses
  %i.ibv = getelementptr inbounds nuw [4 x i8], ptr %i.iav, i64 %i.ibu
  %i.ibw = load float, ptr %i.ibv, align 4, !tbaa !58
  %i.ibx = fsub reassoc nsz arcp contract afn float %i.ibt, %i.ibw
  %i.iby = lshr i64 %i.ibu, 1
  %i.ibz = and i64 %i.iby, 2147483647             ; 2 uses
  %i.ica = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.ibz
  store float %i.ibx, ptr %i.ica, align 4, !tbaa !58
  %i.icb = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.ibz
  store float %i.ibt, ptr %i.icb, align 4, !tbaa !58
  %indvars.iv.next2727 = add nuw nsw i64 %indvars.iv2726, 2 ; 2 uses
  %i.icc = icmp samesign ult i64 %indvars.iv.next2727, %i.hxx
  br i1 %i.icc, label %bb.dz, label %._crit_edge2206

.lr.ph2225:                                       ; preds = %._crit_edge2214
  %i.icd = add nsw i32 %i.fyu, -8                 ; 2 uses
  %i.ice = zext nneg i32 %i.icd to i64
  br label %bb.ei

bb.ea:                                            ; preds = %.lr.ph2217, %._crit_edge2214
  %indvars.iv2732 = phi i32 [ 1032, %.lr.ph2217 ], [ %indvars.iv.next2733, %._crit_edge2214 ] ; 2 uses
  %.016192215 = phi i32 [ 8, %.lr.ph2217 ], [ %i.idf, %._crit_edge2214 ] ; 3 uses
  %i.icf = shl nuw i32 %.016192215, 1
  %i.icg = and i32 %i.icf, 14                     ; 2 uses
  %i.ich = shl nuw nsw i32 %i.icg, 1
  %i.ici = lshr i32 %i.q, %i.ich
  %i.icj = and i32 %i.ici, 1                      ; 3 uses
  %i.ick = or disjoint i32 %i.icj, 8              ; 2 uses
  %i.icl = icmp slt i32 %i.ick, %i.hzq
  br i1 %i.icl, label %.lr.ph2213, label %._crit_edge2214

.lr.ph2213:                                       ; preds = %bb.ea
  %i.icm = or disjoint i32 %i.icj, %i.icg
  %i.icn = shl nuw nsw i32 %i.icm, 1
  %i.ico = lshr i32 %i.q, %i.icn
  %i.icp = and i32 %i.ico, 3
  %i.icq = zext nneg i32 %i.icp to i64            ; 5 uses
  %i.icr = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.icq
  %i.ics = load ptr, ptr %i.icr, align 8, !tbaa !59
  %i.ict = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.icq
  %i.icu = load float, ptr %i.ict, align 4, !tbaa !58 ; 2 uses
  %i.icv = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.icq
  %i.icw = load i32, ptr %i.icv, align 4, !tbaa !16 ; 2 uses
  %i.icx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.icq
  %i.icy = load i32, ptr %i.icx, align 4, !tbaa !16
  %i.icz = sub nsw i32 %.016192215, %i.icy
  %i.ida = shl nsw i32 %i.icz, 7
  %i.idb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.icq
  %i.idc = load float, ptr %i.idb, align 4, !tbaa !58
  %i.idd = or disjoint i32 %indvars.iv2732, %i.icj
  %i.ide = zext i32 %i.idd to i64
  br label %bb.eb

._crit_edge2214:                                  ; preds = %bb.eh, %bb.ea
  %i.idf = add nuw nsw i32 %.016192215, 1         ; 2 uses
  %i.idg = icmp slt i32 %i.idf, %i.fya
  %indvars.iv.next2733 = add i32 %indvars.iv2732, 128
  br i1 %i.idg, label %bb.ea, label %.lr.ph2225

bb.eb:                                            ; preds = %.lr.ph2213, %bb.eh
  %indvars.iv2734 = phi i64 [ %i.ide, %.lr.ph2213 ], [ %indvars.iv.next2735, %bb.eh ] ; 5 uses
  %.016182210 = phi i32 [ %i.ick, %.lr.ph2213 ], [ %i.igh, %bb.eh ] ; 2 uses
  %i.idh = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %indvars.iv2734 ; 2 uses
  %i.idi = load float, ptr %i.idh, align 4, !tbaa !58 ; 4 uses
  %i.idj = getelementptr inbounds nuw [4 x i8], ptr %i.ics, i64 %indvars.iv2734 ; 3 uses
  %i.idk = load float, ptr %i.idj, align 4, !tbaa !58 ; 3 uses
  %i.idl = fsub reassoc nsz arcp contract afn float %i.idi, %i.idk ; 4 uses
  %i.idm = trunc nuw i64 %indvars.iv2734 to i32
  %i.idn = sub nsw i32 %i.idm, %i.icw
  %i.ido = ashr i32 %i.idn, 1
  %i.idp = sext i32 %i.ido to i64                 ; 2 uses
  %i.idq = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.idp
  %i.idr = load float, ptr %i.idq, align 4, !tbaa !58 ; 2 uses
  %i.ids = lshr i64 %indvars.iv2734, 1            ; 2 uses
  %i.idt = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.ids
  %i.idu = load float, ptr %i.idt, align 4, !tbaa !58 ; 3 uses
  %i.idv = fsub reassoc nsz arcp contract afn float %i.idr, %i.idu
  %i.idw = fmul reassoc nsz arcp contract afn float %i.idv, %i.icu
  %i.idx = fadd reassoc nsz arcp contract afn float %i.idw, %i.idu ; 2 uses
  %i.idy = add nsw i32 %i.ida, %.016182210        ; 2 uses
  %i.idz = sub nsw i32 %i.idy, %i.icw
  %i.iea = ashr i32 %i.idz, 1
  %i.ieb = sext i32 %i.iea to i64                 ; 2 uses
  %i.iec = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.ieb
  %i.ied = load float, ptr %i.iec, align 4, !tbaa !58 ; 2 uses
  %i.iee = ashr i32 %i.idy, 1
  %i.ief = sext i32 %i.iee to i64                 ; 2 uses
  %i.ieg = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.ief
  %i.ieh = load float, ptr %i.ieg, align 4, !tbaa !58 ; 3 uses
  %i.iei = fsub reassoc nsz arcp contract afn float %i.ied, %i.ieh
  %i.iej = fmul reassoc nsz arcp contract afn float %i.iei, %i.icu
  %i.iek = fsub reassoc nsz arcp contract afn float %i.ieh, %i.idx
  %i.iel = fadd reassoc nsz arcp contract afn float %i.iek, %i.iej
  %i.iem = fmul reassoc nsz arcp contract afn float %i.iel, %i.idc
  %i.ien = fadd reassoc nsz arcp contract afn float %i.iem, %i.idx ; 4 uses
  %i.ieo = fsub reassoc nsz arcp contract afn float %i.idi, %i.ien ; 3 uses
  %i.iep = fsub reassoc nsz arcp contract afn float %i.ieo, %i.idk
  %i.ieq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.iep)
  %i.ier = fadd reassoc nsz arcp contract afn float %i.ieo, %i.idk
  %i.ies = fmul reassoc nsz arcp contract afn float %i.ier, 2.500000e-01
  %i.iet = fcmp reassoc nsz arcp contract afn olt float %i.ieq, %i.ies
  br i1 %i.iet, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ieu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.idl)
  %i.iev = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ien)
  %i.iew = fcmp reassoc nsz arcp contract afn ogt float %i.ieu, %i.iev
  br i1 %i.iew, label %.sink.split, label %bb.ef

bb.ed:                                            ; preds = %bb.eb
  %i.iex = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.ids
  %i.iey = load float, ptr %i.iex, align 4, !tbaa !58
  %i.iez = getelementptr inbounds [4 x i8], ptr %i.btv, i64 %i.idp
  %i.ifa = load float, ptr %i.iez, align 4, !tbaa !58
  %i.ifb = getelementptr inbounds [4 x i8], ptr %i.btv, i64 %i.ief
  %i.ifc = load float, ptr %i.ifb, align 4, !tbaa !58
  %i.ifd = getelementptr inbounds [4 x i8], ptr %i.btv, i64 %i.ieb
  %i.ife = load float, ptr %i.ifd, align 4, !tbaa !58
  %i.iff = insertelement <4 x float> poison, float %i.idi, i64 0
  %i.ifg = shufflevector <4 x float> %i.iff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ifh = insertelement <4 x float> poison, float %i.ifa, i64 0
  %i.ifi = insertelement <4 x float> %i.ifh, float %i.iey, i64 1
  %i.ifj = insertelement <4 x float> %i.ifi, float %i.ifc, i64 2
  %i.ifk = insertelement <4 x float> %i.ifj, float %i.ife, i64 3
  %i.ifl = fsub reassoc nsz arcp contract afn <4 x float> %i.ifg, %i.ifk
  %i.ifm = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ifl)
  %i.ifn = fadd reassoc nsz arcp contract afn <4 x float> %i.ifm, splat (float f0x3727C5AC)
  %i.ifo = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ifn ; 2 uses
  %i.ifp = insertelement <4 x float> poison, float %i.idr, i64 0
  %i.ifq = insertelement <4 x float> %i.ifp, float %i.idu, i64 1
  %i.ifr = insertelement <4 x float> %i.ifq, float %i.ieh, i64 2
  %i.ifs = insertelement <4 x float> %i.ifr, float %i.ied, i64 3
  %i.ift = fmul reassoc nsz arcp contract afn <4 x float> %i.ifo, %i.ifs
  %i.ifu = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ift)
  %i.ifv = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ifo)
  %i.ifw = fdiv reassoc nsz arcp contract afn float %i.ifu, %i.ifv ; 4 uses
  %i.ifx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.idl)
  %i.ify = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ifw)
  %i.ifz = fcmp reassoc nsz arcp contract afn ogt float %i.ifx, %i.ify
  br i1 %i.ifz, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.iga = fsub reassoc nsz arcp contract afn float %i.idi, %i.ifw
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ec, %bb.ee
  %.sink = phi float [ %i.iga, %bb.ee ], [ %i.ieo, %bb.ec ]
  %.01616.ph = phi float [ %i.ifw, %bb.ee ], [ %i.ien, %bb.ec ]
  store float %.sink, ptr %i.idj, align 4, !tbaa !58
  br label %bb.ef

bb.ef:                                            ; preds = %.sink.split, %bb.ed, %bb.ec
  %.01616 = phi nsz float [ %i.ifw, %bb.ed ], [ %i.ien, %bb.ec ], [ %.01616.ph, %.sink.split ] ; 2 uses
  %i.igb = fmul reassoc nsz arcp contract afn float %.01616, %i.idl
  %i.igc = fcmp reassoc nsz arcp contract afn olt float %i.igb, 0.000000e+00
  br i1 %i.igc, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.igd = load float, ptr %i.idh, align 4, !tbaa !58
  %i.ige = fadd reassoc nsz arcp contract afn float %.01616, %i.idl
  %i.igf = fmul reassoc nsz arcp contract afn float %i.ige, 5.000000e-01
  %i.igg = fsub reassoc nsz arcp contract afn float %i.igd, %i.igf
  store float %i.igg, ptr %i.idj, align 4, !tbaa !58
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.igh = add nuw nsw i32 %.016182210, 2         ; 2 uses
  %indvars.iv.next2735 = add nuw nsw i64 %indvars.iv2734, 2
  %i.igi = icmp slt i32 %i.igh, %i.hzq
  br i1 %i.igi, label %bb.eb, label %._crit_edge2214

._crit_edge2226:                                  ; preds = %._crit_edge2223, %._crit_edge2209
  %indvars.iv.next2748 = add nsw i64 %indvars.iv2747, 112 ; 2 uses
  %i.igj = icmp slt i64 %indvars.iv.next2748, %i.af
  %indvars.iv.next2671 = add nuw i32 %indvars.iv2670, 112
  %indvars.iv.next2674 = add nsw i32 %indvars.iv2673, -112
  %indvar.next = add i32 %indvar, 1
  br i1 %i.igj, label %bb.be, label %._crit_edge2229

bb.ei:                                            ; preds = %.lr.ph2225, %._crit_edge2223
  %indvar3066 = phi i25 [ 0, %.lr.ph2225 ], [ %indvar.next3067, %._crit_edge2223 ] ; 2 uses
  %indvars.iv2744 = phi i64 [ 8, %.lr.ph2225 ], [ %indvars.iv.next2745, %._crit_edge2223 ] ; 5 uses
  %i.igk = add i25 %indvar3066, 8
  %i.igl = zext i25 %i.igk to i64
  %i.igm = shl nuw nsw i64 %i.igl, 9              ; 2 uses
  %i.ign = trunc nuw nsw i64 %indvars.iv2744 to i32
  %i.igo = shl i32 %i.ign, 2
  %i.igp = and i32 %i.igo, 28
  %i.igq = lshr i32 %i.q, %i.igp                  ; 4 uses
  %i.igr = and i32 %i.igq, 1
  %i.igs = or disjoint i32 %i.igr, 8              ; 2 uses
  %i.igt = icmp slt i32 %i.igs, %i.icd
  br i1 %i.igt, label %iter.check3094, label %._crit_edge2223

iter.check3094:                                   ; preds = %bb.ei
  %i.igu = add nsw i64 %indvars.iv2744, %indvars.iv2751
  %i.igv = trunc i64 %i.igu to i32
  %i.igw = mul i32 %i.ae, %i.igv
  %i.igx = add i32 %i.igw, %i.fyt
  %i.igy = add i32 %i.igx, %i.igs
  %i.igz = ashr i32 %i.igy, 1
  %.tr = trunc i64 %indvars.iv2744 to i32
  %i.iha = shl i32 %.tr, 1
  %.tr.i1847 = and i32 %i.iha, 14                 ; 2 uses
  %i.ihb = shl nuw nsw i32 %.tr.i1847, 1
  %i.ihc = lshr i32 %i.q, %i.ihb
  %i.ihd = and i32 %i.ihc, 1
  %.tr.i1848 = or disjoint i32 %i.ihd, %.tr.i1847
  %i.ihe = shl nuw nsw i32 %.tr.i1848, 1
  %i.ihf = lshr i32 %i.q, %i.ihe
  %i.ihg = and i32 %i.ihf, 3
  %i.ihh = zext nneg i32 %i.ihg to i64
  %i.ihi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ihh
  %i.ihj = load ptr, ptr %i.ihi, align 8, !tbaa !59 ; 3 uses
  %i.ihk = sext i32 %i.igz to i64                 ; 8 uses
  %i.ihl = and i32 %i.igq, 1
  %i.ihm = or disjoint i32 %i.ihl, 8
  %i.ihn = zext nneg i32 %i.ihm to i64            ; 6 uses
  %i.iho = shl i64 %indvars.iv2744, 7
  %i.ihp = and i64 %i.iho, 4294967168
  %invariant.gep3001 = getelementptr inbounds nuw [4 x i8], ptr %i.ihj, i64 %i.ihp ; 6 uses
  %i.ihq = and i32 %i.igq, 1
  %i.ihr = zext nneg i32 %i.ihq to i64            ; 2 uses
  %i.ihs = or disjoint i64 %i.ihr, 10
  %umax3075 = call i64 @llvm.umax.i64(i64 %i.ihs, i64 %i.fyk)
  %i.iht = add nsw i64 %umax3075, -9
  %i.ihu = sub nsw i64 %i.iht, %i.ihr             ; 3 uses
  %i.ihv = lshr i64 %i.ihu, 1
  %i.ihw = add nuw nsw i64 %i.ihv, 1              ; 4 uses
  %min.iters.check3076 = icmp ult i64 %i.ihu, 16
  br i1 %min.iters.check3076, label %vec.epilog.scalar.ph3095.preheader, label %vector.memcheck3061

vector.memcheck3061:                              ; preds = %iter.check3094
  %i.ihx = shl nsw i64 %i.ihk, 2
  %scevgep3062 = getelementptr i8, ptr %i.ds, i64 %i.ihx
  %i.ihy = and i32 %i.igq, 1
  %i.ihz = zext nneg i32 %i.ihy to i64            ; 3 uses
  %i.iia = or disjoint i64 %i.ihz, 10
  %umax = call i64 @llvm.umax.i64(i64 %i.iia, i64 %i.fyn)
  %i.iib = add nsw i64 %umax, -9
  %i.iic = sub nsw i64 %i.iib, %i.ihz
  %i.iid = lshr i64 %i.iic, 1                     ; 2 uses
  %i.iie = add i64 %i.iid, %i.ihk
  %i.iif = shl i64 %i.iie, 2
  %scevgep3064 = getelementptr i8, ptr %scevgep3063, i64 %i.iif
  %scevgep3065 = getelementptr nuw i8, ptr %i.ihj, i64 32
  %i.iig = shl nuw nsw i64 %i.ihz, 2              ; 2 uses
  %i.iih = getelementptr nuw i8, ptr %scevgep3065, i64 %i.igm
  %scevgep3068 = getelementptr nuw i8, ptr %i.iih, i64 %i.iig
  %scevgep3069 = getelementptr i8, ptr %i.ihj, i64 36
end_hunk_1
