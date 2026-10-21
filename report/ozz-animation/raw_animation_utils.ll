Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/raw_animation_utils?download=true
inline.NumInlined: 692
inline.NumDeleted: 361
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3ozz9animation7offline12_GLOBAL__N_122SampleTrack_NoValidateERKNS1_12RawAnimation10JointTrackEfPNS_4math9TransformE:bb.a
  %i.m = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.030.0.copyload31.i, 0
  %i.n = insertvalue { <2 x float>, float } %i.m, float %.sroa.5.0.copyload33.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

bb.f:                                             ; preds = %bb.d
  %i.o = ptrtoint ptr %.val18 to i64
  %i.p = sub i64 %i.o, %i.b
  %i.q = ashr exact i64 %i.p, 4                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.f, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.q, %bb.f ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val, %bb.f ] ; 2 uses
  %i.s = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !57
  %i.v = fcmp olt float %i.u, %1                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = xor i64 %i.s, -1
  %i.y = add nsw i64 %.017.i.i.i, %i.x
  %.112.i.i.i = select i1 %i.v, ptr %i.w, ptr %.01116.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.v, i64 %i.y, i64 %i.s  ; 2 uses
  %i.z = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.z, label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, !llvm.loop !50

_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation14TranslationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.pre.i = load float, ptr %.112.i.i.i, align 4, !tbaa !57
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, %bb.f
  %i.aa = phi float [ %i.d, %bb.f ], [ %.pre.i, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i = phi ptr [ %.val, %bb.f ], [ %.112.i.i.i, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ] ; 5 uses
  %i.ab = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -16
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !57 ; 2 uses
  %i.ad = fsub float %1, %i.ac
  %i.ae = fsub float %i.aa, %i.ac
  %i.af = fdiv float %i.ad, %i.ae                 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -12
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 4
  %i.ai = load <2 x float>, ptr %i.ah, align 4, !tbaa !12
  %i.aj = load <2 x float>, ptr %i.ag, align 4, !tbaa !12 ; 2 uses
  %i.ak = fsub <2 x float> %i.ai, %i.aj
  %i.al = insertelement <2 x float> poison, float %i.af, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.am, <2 x float> %i.aj)
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 12
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !14
  %i.aq = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !14 ; 2 uses
  %i.as = fsub float %i.ap, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.af, float %i.ar)
  %.fca.0.insert.i.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.an, 0
  %.fca.1.insert.i.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i, float %i.at, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit: ; preds = %bb.a, %bb.c, %bb.e, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i
  %.fca.1.insert.merged.i = phi { <2 x float>, float } [ %.fca.1.insert.i.i.i, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation14TranslationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i ], [ %i.h, %bb.c ], [ %i.n, %bb.e ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.fca.0.extract4 = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i, 0
  %.fca.1.extract5 = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i, 1
  store <2 x float> %.fca.0.extract4, ptr %2, align 4, !tbaa !12
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.fca.1.extract5, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val19 = load ptr, ptr %i.au, align 8, !tbaa !59 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val20 = load ptr, ptr %i.av, align 8, !tbaa !60 ; 5 uses
  %i.aw = ptrtoint ptr %.val19 to i64
  %i.ax = icmp eq ptr %.val20, %.val19
  br i1 %i.ax, label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit
  %i.ay = load float, ptr %.val19, align 4, !tbaa !63 ; 2 uses
  %i.az = fcmp ugt float %1, %i.ay
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.val19, i64 4
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ba, align 4, !tbaa !12
  %.sroa.5.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %.val19, i64 12
  %.sroa.5.0.copyload.i24 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i23, align 4, !tbaa !12
  %i.bb = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i, 0
  %i.bc = insertvalue { <2 x float>, <2 x float> } %i.bb, <2 x float> %.sroa.5.0.copyload.i24, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

bb.i:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds i8, ptr %.val20, i64 -20
  %i.be = load float, ptr %i.bd, align 4, !tbaa !63
  %i.bf = fcmp ult float %1, %i.be
  br i1 %i.bf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds i8, ptr %.val20, i64 -16
  %.sroa.0.0.copyload20.i = load <2 x float>, ptr %i.bg, align 4, !tbaa !12
  %.sroa.5.0..sroa_idx21.i = getelementptr inbounds i8, ptr %.val20, i64 -8
  %.sroa.5.0.copyload22.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx21.i, align 4, !tbaa !12
  %i.bh = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload20.i, 0
  %i.bi = insertvalue { <2 x float>, <2 x float> } %i.bh, <2 x float> %.sroa.5.0.copyload22.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

bb.k:                                             ; preds = %bb.i
  %i.bj = ptrtoint ptr %.val20 to i64
  %i.bk = sub i64 %i.bj, %i.aw                    ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %bb.k
  %i.bm = udiv exact i64 %i.bk, 20
  br label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.017.i.i.i29 = phi i64 [ %.1.i.i.i34, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.bm, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.01116.i.i.i30 = phi ptr [ %.112.i.i.i33, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val19, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %i.bn = lshr i64 %.017.i.i.i29, 1               ; 3 uses
  %i.bo = getelementptr inbounds nuw [20 x i8], ptr %.01116.i.i.i30, i64 %i.bn ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !63
  %i.bq = fcmp olt float %i.bp, %1                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bs = xor i64 %i.bn, -1
  %i.bt = add nsw i64 %.017.i.i.i29, %i.bs
  %.112.i.i.i33 = select i1 %i.bq, ptr %i.br, ptr %.01116.i.i.i30 ; 3 uses
  %.1.i.i.i34 = select i1 %i.bq, i64 %i.bt, i64 %i.bn ; 2 uses
  %i.bu = icmp sgt i64 %.1.i.i.i34, 0
  br i1 %i.bu, label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, !llvm.loop !51

_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation11RotationKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.pre.i35 = load float, ptr %.112.i.i.i33, align 4, !tbaa !63
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, %bb.k
  %i.bv = phi float [ %i.ay, %bb.k ], [ %.pre.i35, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i26 = phi ptr [ %.val19, %bb.k ], [ %.112.i.i.i33, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ] ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i26, i64 -20
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !63 ; 2 uses
  %i.by = fsub float %1, %i.bx
  %i.bz = fsub float %i.bv, %i.bx
  %i.ca = fdiv float %i.by, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i26, i64 -16
  %i.cc = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i26, i64 4 ; 2 uses
  %i.cd = load <2 x float>, ptr %i.cc, align 4, !tbaa !12 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i26, i64 12 ; 2 uses
  %i.cf = load <4 x float>, ptr %i.cb, align 4, !tbaa !12 ; 6 uses
  %i.cg = extractelement <4 x float> %i.cf, i64 1
  %i.ch = extractelement <2 x float> %i.cd, i64 1
  %i.ci = fmul float %i.cg, %i.ch
  %i.cj = extractelement <4 x float> %i.cf, i64 0
  %i.ck = extractelement <2 x float> %i.cd, i64 0
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.ck, float %i.ci)
  %i.cm = extractelement <4 x float> %i.cf, i64 2
  %i.cn = load <2 x float>, ptr %i.ce, align 4, !tbaa !12 ; 3 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.co, float %i.cl)
  %i.cq = extractelement <4 x float> %i.cf, i64 3
  %i.cr = extractelement <2 x float> %i.cn, i64 1
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cr, float %i.cp)
  %i.ct = fcmp olt float %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i
  %i.cu = fneg <2 x float> %i.cd
  %i.cv = fneg <2 x float> %i.cn
  br label %_ZN3ozz9animation7offline12LerpRotationERKNS_4math10QuaternionES5_f.exit.i

bb.m:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation11RotationKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.cc, align 4, !tbaa !12
  %.sroa.6.0.copyload.i.i = load <2 x float>, ptr %i.ce, align 4, !tbaa !12
  br label %_ZN3ozz9animation7offline12LerpRotationERKNS_4math10QuaternionES5_f.exit.i

_ZN3ozz9animation7offline12LerpRotationERKNS_4math10QuaternionES5_f.exit.i: ; preds = %bb.m, %bb.l
  %.sroa.6.0.i.i = phi <2 x float> [ %i.cv, %bb.l ], [ %.sroa.6.0.copyload.i.i, %bb.m ]
  %.sroa.0.0.i.i = phi <2 x float> [ %i.cu, %bb.l ], [ %.sroa.0.0.copyload.i.i, %bb.m ]
  %i.cw = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> %.sroa.6.0.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cx = fsub <4 x float> %i.cw, %i.cf
  %i.cy = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.cz, <4 x float> %i.cf) ; 6 uses
  %foldExtExtBinop = fmul <4 x float> %i.da, %i.da
  %i.db = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.dc = extractelement <4 x float> %i.da, i64 0 ; 2 uses
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.dc, float %i.db)
  %i.de = extractelement <4 x float> %i.da, i64 2 ; 2 uses
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.dd)
  %i.dg = extractelement <4 x float> %i.da, i64 3 ; 2 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.df)
  %i.di = tail call noundef float @sqrtf(float noundef %i.dh) #19
  %i.dj = fdiv float 1.000000e+00, %i.di
  %i.dk = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dm = fmul <4 x float> %i.dl, %i.da           ; 2 uses
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.do = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i.i27 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.dn, 0
  %.fca.1.insert.i.i.i28 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i.i27, <2 x float> %i.do, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit: ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit, %bb.h, %bb.j, %_ZN3ozz9animation7offline12LerpRotationERKNS_4math10QuaternionES5_f.exit.i
  %.fca.1.insert.merged.i25 = phi { <2 x float>, <2 x float> } [ %.fca.1.insert.i.i.i28, %_ZN3ozz9animation7offline12LerpRotationERKNS_4math10QuaternionES5_f.exit.i ], [ %i.bc, %bb.h ], [ %i.bi, %bb.j ], [ { <2 x float> zeroinitializer, <2 x float> <float 0.000000e+00, float 1.000000e+00> }, %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit ] ; 2 uses
  %i.dp = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i25, 0
  %i.dq = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i25, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 12
  store <2 x float> %i.dp, ptr %i.dr, align 4, !tbaa !12
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  store <2 x float> %i.dq, ptr %.sroa.43.0..sroa_idx, align 4, !tbaa !12
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val21 = load ptr, ptr %i.ds, align 8, !tbaa !65 ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val22 = load ptr, ptr %i.dt, align 8, !tbaa !66 ; 5 uses
  %i.du = ptrtoint ptr %.val21 to i64
  %i.dv = icmp eq ptr %.val22, %.val21
  br i1 %i.dv, label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit, label %bb.n

bb.n:                                             ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit
  %i.dw = load float, ptr %.val21, align 4, !tbaa !68 ; 2 uses
  %i.dx = fcmp ugt float %1, %i.dw
  br i1 %i.dx, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dy = getelementptr inbounds nuw i8, ptr %.val21, i64 4
  %.sroa.030.0.copyload.i36 = load <2 x float>, ptr %i.dy, align 4, !tbaa !12
  %.sroa.5.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %.val21, i64 12
  %.sroa.5.0.copyload.i38 = load float, ptr %.sroa.5.0..sroa_idx.i37, align 4, !tbaa !12
  %i.dz = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.030.0.copyload.i36, 0
  %i.ea = insertvalue { <2 x float>, float } %i.dz, float %.sroa.5.0.copyload.i38, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

bb.p:                                             ; preds = %bb.n
  %i.eb = getelementptr inbounds i8, ptr %.val22, i64 -16
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !68
  %i.ed = fcmp ult float %1, %i.ec
  br i1 %i.ed, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = getelementptr inbounds i8, ptr %.val22, i64 -12
  %.sroa.030.0.copyload31.i40 = load <2 x float>, ptr %i.ee, align 4, !tbaa !12
  %.sroa.5.0..sroa_idx32.i41 = getelementptr inbounds i8, ptr %.val22, i64 -4
  %.sroa.5.0.copyload33.i42 = load float, ptr %.sroa.5.0..sroa_idx32.i41, align 4, !tbaa !12
  %i.ef = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.030.0.copyload31.i40, 0
  %i.eg = insertvalue { <2 x float>, float } %i.ef, float %.sroa.5.0.copyload33.i42, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

bb.r:                                             ; preds = %bb.p
  %i.eh = ptrtoint ptr %.val22 to i64
  %i.ei = sub i64 %i.eh, %i.du
  %i.ej = ashr exact i64 %i.ei, 4                 ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 0
  br i1 %i.ek, label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.r, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.017.i.i.i48 = phi i64 [ %.1.i.i.i53, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.ej, %bb.r ] ; 2 uses
  %.01116.i.i.i49 = phi ptr [ %.112.i.i.i52, %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val21, %bb.r ] ; 2 uses
  %i.el = lshr i64 %.017.i.i.i48, 1               ; 3 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i49, i64 %i.el ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !68
  %i.eo = fcmp olt float %i.en, %1                ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eq = xor i64 %i.el, -1
  %i.er = add nsw i64 %.017.i.i.i48, %i.eq
  %.112.i.i.i52 = select i1 %i.eo, ptr %i.ep, ptr %.01116.i.i.i49 ; 3 uses
  %.1.i.i.i53 = select i1 %i.eo, i64 %i.er, i64 %i.el ; 2 uses
  %i.es = icmp sgt i64 %.1.i.i.i53, 0
  br i1 %i.es, label %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, !llvm.loop !52

_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline12RawAnimation8ScaleKeyElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.pre.i54 = load float, ptr %.112.i.i.i52, align 4, !tbaa !68
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, %bb.r
  %i.et = phi float [ %i.dw, %bb.r ], [ %.pre.i54, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i43 = phi ptr [ %.val21, %bb.r ], [ %.112.i.i.i52, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ] ; 5 uses
  %i.eu = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i43, i64 -16
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !68 ; 2 uses
  %i.ew = fsub float %1, %i.ev
  %i.ex = fsub float %i.et, %i.ev
  %i.ey = fdiv float %i.ew, %i.ex                 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i43, i64 -12
  %i.fa = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i43, i64 4
  %i.fb = load <2 x float>, ptr %i.fa, align 4, !tbaa !12
  %i.fc = load <2 x float>, ptr %i.ez, align 4, !tbaa !12 ; 2 uses
  %i.fd = fsub <2 x float> %i.fb, %i.fc
  %i.fe = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.ff, <2 x float> %i.fc)
  %i.fh = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i43, i64 12
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !14
  %i.fj = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i43, i64 -4
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !14 ; 2 uses
  %i.fl = fsub float %i.fi, %i.fk
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.ey, float %i.fk)
  %.fca.0.insert.i.i.i46 = insertvalue { <2 x float>, float } poison, <2 x float> %i.fg, 0
  %.fca.1.insert.i.i.i47 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i46, float %i.fm, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit: ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit, %bb.o, %bb.q, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i
  %.fca.1.insert.merged.i39 = phi { <2 x float>, float } [ %.fca.1.insert.i.i.i47, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i ], [ %i.ea, %bb.o ], [ %i.eg, %bb.q ], [ { <2 x float> splat (float 1.000000e+00), float 1.000000e+00 }, %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit ] ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i39, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i39, 1
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 28
  store <2 x float> %.fca.0.extract, ptr %i.fn, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3ozz9animation7offline15SampleAnimationERKNS1_12RawAnimationEfRKNS_4spanINS_4math9TransformEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, float noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 72
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !74   ; 2 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %.loopexit, label %.preheader37

.preheader37:                                     ; preds = %bb.b
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = load i64, ptr %i.i, align 8, !tbaa !74
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader37
  %i.l = phi i64 [ %i.j, %.preheader37 ], [ %.pre, %.preheader.loopexit ] ; 4 uses
  %.lcssa = phi i64 [ 0, %.preheader37 ], [ %i.ad, %.preheader.loopexit ] ; 5 uses
  %i.m = icmp ult i64 %.lcssa, %i.l
  br i1 %i.m, label %.lr.ph40, label %.loopexit

.lr.ph40:                                         ; preds = %.preheader
  %i.n = load ptr, ptr %2, align 8, !tbaa !75     ; 5 uses
  %i.o = sub nuw i64 %i.l, %.lcssa
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph40, %.prol.preheader
  %.039.prol = phi i64 [ %i.q, %.prol.preheader ], [ %.lcssa, %.lr.ph40 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph40 ]
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.039.prol ; 4 uses
  %.sroa.6.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.6.0..sroa_idx.prol, align 4, !tbaa !12
  %.sroa.7.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.7.0..sroa_idx.prol, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store float 1.000000e+00, ptr %.sroa.8.0..sroa_idx.prol, align 4, !tbaa !12
  %i.q = add nuw i64 %.039.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !69

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph40
  %.039.unr = phi i64 [ %.lcssa, %.lr.ph40 ], [ %i.q, %.prol.preheader ]
  %i.r = sub i64 %.lcssa, %i.l
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.loopexit, label %.lr.ph40.new

.lr.ph:                                           ; preds = %.preheader37, %.lr.ph
  %i.t = phi ptr [ %i.z, %.lr.ph ], [ %i.d, %.preheader37 ]
  %.01738 = phi i64 [ %i.x, %.lr.ph ], [ 0, %.preheader37 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %.01738
  %i.v = load ptr, ptr %2, align 8, !tbaa !75
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.01738
  tail call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_122SampleTrack_NoValidateERKNS1_12RawAnimation10JointTrackEfPNS_4math9TransformE(ptr noundef nonnull align 8 dereferenceable(72) %i.u, float noundef %1, ptr noundef %i.w)
  %i.x = add nuw i64 %.01738, 1                   ; 2 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.z = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 72                ; 2 uses
  %i.ae = icmp ult i64 %i.x, %i.ad
  br i1 %i.ae, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !70

.lr.ph40.new:                                     ; preds = %.prol.loopexit, %.lr.ph40.new
  %.039 = phi i64 [ %i.am, %.lr.ph40.new ], [ %.039.unr, %.prol.loopexit ] ; 5 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.039 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.af, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  store float 1.000000e+00, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.039 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ah, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.6.0..sroa_idx.1, align 4, !tbaa !12
  %.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.7.0..sroa_idx.1, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ag, i64 76
  store float 1.000000e+00, ptr %.sroa.8.0..sroa_idx.1, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.039 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.sroa.6.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ai, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aj, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.6.0..sroa_idx.2, align 4, !tbaa !12
  %.sroa.7.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ai, i64 108
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.7.0..sroa_idx.2, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ai, i64 116
  store float 1.000000e+00, ptr %.sroa.8.0..sroa_idx.2, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.039 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %.sroa.6.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.al, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.6.0..sroa_idx.3, align 4, !tbaa !12
  %.sroa.7.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 148
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.7.0..sroa_idx.3, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 156
  store float 1.000000e+00, ptr %.sroa.8.0..sroa_idx.3, align 4, !tbaa !12
  %i.am = add nuw i64 %.039, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, %i.l
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph40.new, !llvm.loop !71

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph40.new, %.preheader, %bb.b, %bb.a
  %.018 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.preheader ], [ true, %.lr.ph40.new ], [ true, %.prol.loopexit ]
  ret i1 %.018
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation7offline21SampleTrackModelSpaceERKNS1_12RawAnimationERKNS0_8SkeletonEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, i32 noundef %3) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.21", align 8    ; 13 uses
  %i.a = alloca i16, align 2                      ; 8 uses
  %5 = alloca %"struct.std::pair.26", align 8     ; 8 uses
  %6 = alloca %"struct.ozz::span.25", align 8     ; 6 uses
  %7 = alloca %"class.std::vector.14", align 8    ; 11 uses
  %8 = alloca %"struct.ozz::math::Transform", align 16 ; 12 uses
  %9 = alloca %"struct.std::pair.33", align 16    ; 10 uses
  %i.b = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = load ptr, ptr %1, align 8, !tbaa !23
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 72
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !87
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp eq i32 %i.j, %i.m
  %i.o = icmp sgt i32 %3, -1
  %or.cond.not116 = and i1 %i.o, %i.n
  %.not = icmp slt i32 %3, %i.m
  %or.cond113 = and i1 %.not, %or.cond.not116
  br i1 %or.cond113, label %bb.c, label %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit

_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit: ; preds = %bb.b, %bb.a
  store i8 0, ptr %0, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br label %bb.af

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.q = trunc i32 %3 to i16                      ; 3 uses
  store i16 %i.q, ptr %i.a, align 2, !tbaa !30
  %.not30123 = icmp eq i16 %i.q, -1
  br i1 %.not30123, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.loopexit119

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.d

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %4, align 8, !tbaa !93    ; 15 uses
  %.pre192 = ptrtoaddr ptr %.pre to i64           ; 6 uses
  %.pre152 = load ptr, ptr %i.s, align 8, !tbaa !93 ; 9 uses
  %.pre152193 = ptrtoaddr ptr %.pre152 to i64     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.w = icmp ne ptr %.pre, %.pre152
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.pre152, i64 -2 ; 7 uses
  %i.x = icmp ult ptr %.pre, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.i.i, label %iter.check, label %.loopexit119

iter.check:                                       ; preds = %._crit_edge
  %i.y = add i64 %.pre152193, -4
  %i.z = add i64 %.pre192, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.y, i64 %i.z)
  %i.aa = add i64 %umax, -2                       ; 2 uses
  %i.ab = icmp ne i64 %i.aa, %.pre192
  %umin = zext i1 %i.ab to i64                    ; 2 uses
  %i.ac = add i64 %.pre192, %umin
  %i.ad = sub i64 %i.aa, %i.ac
  %i.ae = lshr i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, %umin            ; 3 uses
  %i.ag = add nuw i64 %i.af, 1                    ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ah = add i64 %.pre152193, -4
  %i.ai = add i64 %.pre192, 2
  %i.aj = call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ai)
  %i.ak = add i64 %i.aj, -2                       ; 2 uses
  %i.al = icmp ne i64 %i.ak, %.pre192
  %i.am = zext i1 %i.al to i64                    ; 2 uses
  %i.an = add i64 %.pre192, %i.am
  %i.ao = sub i64 %i.ak, %i.an
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = shl nuw i64 %i.aq, 1                    ; 2 uses
  %i.as = getelementptr i8, ptr %.pre, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 2
  %i.au = sub nuw nsw i64 -2, %i.ar
  %i.av = getelementptr i8, ptr %.pre152, i64 %i.au
  %bound0 = icmp ult ptr %.pre, %.pre152
  %bound1 = icmp ult ptr %i.av, %i.at
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check194 = icmp samesign ult i64 %i.af, 31
  br i1 %min.iters.check194, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %i.ag, 24
  %n.vec = and i64 %i.ag, -32                     ; 5 uses
  %i.ax = mul i64 %n.vec, -2
  %i.ay = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.ax
  %i.az = shl i64 %n.vec, 1
  %i.ba = getelementptr i8, ptr %.pre, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.bb ; 2 uses
  %i.bc = shl i64 %index, 1
  %next.gep195 = getelementptr i8, ptr %.pre, i64 %i.bc ; 3 uses
  %i.bd = getelementptr i8, ptr %next.gep195, i64 32 ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep195, align 2, !tbaa !30, !alias.scope !94, !noalias !95
  %wide.load196 = load <16 x i16>, ptr %i.bd, align 2, !tbaa !30, !alias.scope !94, !noalias !95
  %i.be = getelementptr i8, ptr %next.gep, i64 -30 ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep, i64 -62 ; 2 uses
  %wide.load197 = load <16 x i16>, ptr %i.be, align 2, !tbaa !30, !alias.scope !95
  %wide.load198 = load <16 x i16>, ptr %i.bf, align 2, !tbaa !30, !alias.scope !95
  %reverse = shufflevector <16 x i16> %wide.load197, <16 x i16> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse199 = shufflevector <16 x i16> %wide.load198, <16 x i16> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i16> %reverse, ptr %next.gep195, align 2, !tbaa !30, !alias.scope !94, !noalias !95
  store <16 x i16> %reverse199, ptr %i.bd, align 2, !tbaa !30, !alias.scope !94, !noalias !95
  %reverse200 = shufflevector <16 x i16> %wide.load, <16 x i16> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse201 = shufflevector <16 x i16> %wide.load196, <16 x i16> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i16> %reverse200, ptr %i.be, align 2, !tbaa !30, !alias.scope !95
  store <16 x i16> %reverse201, ptr %i.bf, align 2, !tbaa !30, !alias.scope !95
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %.loopexit119, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec203 = and i64 %i.ag, -8                   ; 4 uses
  %i.bh = mul i64 %n.vec203, -2
  %i.bi = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.bh
  %i.bj = shl i64 %n.vec203, 1
  %i.bk = getelementptr i8, ptr %.pre, i64 %i.bj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index204 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next211, %vec.epilog.vector.body ] ; 3 uses
  %i.bl = mul i64 %index204, -2
  %next.gep205 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.bl
  %i.bm = shl i64 %index204, 1
  %next.gep206 = getelementptr i8, ptr %.pre, i64 %i.bm ; 2 uses
  %wide.load207 = load <8 x i16>, ptr %next.gep206, align 2, !tbaa !30, !alias.scope !94, !noalias !95
  %i.bn = getelementptr i8, ptr %next.gep205, i64 -14 ; 2 uses
  %wide.load208 = load <8 x i16>, ptr %i.bn, align 2, !tbaa !30, !alias.scope !95
  %reverse209 = shufflevector <8 x i16> %wide.load208, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse209, ptr %next.gep206, align 2, !tbaa !30, !alias.scope !94, !noalias !95
  %reverse210 = shufflevector <8 x i16> %wide.load207, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse210, ptr %i.bn, align 2, !tbaa !30, !alias.scope !95
  %index.next211 = add nuw i64 %index204, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next211, %n.vec203
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !81

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n212 = icmp eq i64 %i.ag, %n.vec203
  br i1 %cmp.n212, label %.loopexit119, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %iter.check ], [ %.sroa.0.08.i.i, %vector.memcheck ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.sroa.05.09.i.i.ph = phi ptr [ %.pre, %iter.check ], [ %.pre, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bp = load i16, ptr %.sroa.05.09.i.i, align 2, !tbaa !30
  %i.bq = load i16, ptr %.sroa.0.010.i.i, align 2, !tbaa !30
  store i16 %i.bq, ptr %.sroa.05.09.i.i, align 2, !tbaa !30
  store i16 %i.bp, ptr %.sroa.0.010.i.i, align 2, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 2 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -2 ; 2 uses
  %i.bs = icmp ult ptr %i.br, %.sroa.0.0.i.i
  br i1 %i.bs, label %.lr.ph.i.i, label %.loopexit119, !llvm.loop !82

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %storemerge124 = phi i16 [ %i.q, %.lr.ph ], [ %i.ca, %bb.g ]
  %i.bt = load ptr, ptr %i.s, align 8, !tbaa !35  ; 4 uses
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 %storemerge124, ptr %i.bt, align 2, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store ptr %i.bv, ptr %i.s, align 8, !tbaa !35
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIsN3ozz12StdAllocatorIsEEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.bt, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bw = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.bx = load i16, ptr %i.a, align 2, !tbaa !30
  %i.by = sext i16 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !30 ; 3 uses
  store i16 %i.ca, ptr %i.a, align 2, !tbaa !30
  %.not30 = icmp eq i16 %i.ca, -1
  br i1 %.not30, label %._crit_edge, label %bb.d, !llvm.loop !83

bb.h:                                             ; preds = %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.ae

.loopexit119:                                     ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.thread, %._crit_edge
  %i.cc = phi ptr [ %i.r, %._crit_edge.thread ], [ %i.v, %._crit_edge ], [ %i.v, %middle.block ], [ %i.v, %vec.epilog.middle.block ], [ %i.v, %.lr.ph.i.i ]
  %i.cd = phi ptr [ null, %._crit_edge.thread ], [ %.pre, %._crit_edge ], [ %.pre, %middle.block ], [ %.pre, %vec.epilog.middle.block ], [ %.pre, %.lr.ph.i.i ] ; 2 uses
  %i.ce = phi ptr [ null, %._crit_edge.thread ], [ %.pre152, %._crit_edge ], [ %.pre152, %middle.block ], [ %.pre152, %vec.epilog.middle.block ], [ %.pre152, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 1
  store ptr %i.cd, ptr %6, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ci, ptr %i.cj, align 8
  invoke void @_ZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.26") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.loopexit119
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cl = load i8, ptr %5, align 8, !tbaa !97, !range !98, !noundef !99
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.k, label %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit58

_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit58: ; preds = %bb.i
  store i8 0, ptr %0, align 8, !tbaa !92
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  br label %bb.w

bb.j:                                             ; preds = %.loopexit119
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ad

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !38 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !38 ; 2 uses
  %.not117136 = icmp eq ptr %i.cp, %i.cr
  br i1 %.not117136, label %._crit_edge140.thread, label %.lr.ph139

._crit_edge140.thread:                            ; preds = %bb.k
  store i8 1, ptr %0, align 8, !tbaa !92
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.cs, align 8
  br label %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60.thread

.lr.ph139:                                        ; preds = %bb.k
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 20
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %.sroa.2.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.1090.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.15.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.o

._crit_edge140:                                   ; preds = %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE9push_backEOS4_.exit
  %.pre154 = load ptr, ptr %i.cy, align 8, !tbaa !39 ; 2 uses
  %.pre155 = load ptr, ptr %7, align 8, !tbaa !40 ; 3 uses
  store i8 1, ptr %0, align 8, !tbaa !92
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dc = ptrtoint ptr %.pre154 to i64
  %i.dd = ptrtoint ptr %.pre155 to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i59 = icmp eq ptr %.pre154, %.pre155
  br i1 %.not.i.i.i.i.i59, label %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge140
  %i.df = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.m unwind label %bb.n       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = invoke noundef ptr %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.df, i64 noundef %i.de, i64 noundef 16)
          to label %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60 unwind label %bb.n ; 5 uses

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #20
  unreachable

_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60.thread: ; preds = %._crit_edge140, %._crit_edge140.thread
  %.ph177 = phi ptr [ %i.cs, %._crit_edge140.thread ], [ %i.da, %._crit_edge140 ]
  %.ph179 = phi ptr [ null, %._crit_edge140.thread ], [ %.pre155, %._crit_edge140 ]
  store ptr null, ptr %.ph177, align 8, !tbaa !40
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !39
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.dn, align 8, !tbaa !43
  br label %.loopexit

_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60: ; preds = %bb.m
  %.pre156 = load ptr, ptr %7, align 8, !tbaa !100 ; 4 uses
  %.pre157 = load ptr, ptr %i.db, align 8, !tbaa !100 ; 2 uses
  store ptr %i.dj, ptr %i.da, align 8, !tbaa !40
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.do, align 8, !tbaa !39
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.de
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !43
  %.not13.i.i.i61 = icmp eq ptr %.pre156, %.pre157
  br i1 %.not13.i.i.i61, label %.loopexit, label %.lr.ph.i.i.i62

.lr.ph.i.i.i62:                                   ; preds = %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60, %.lr.ph.i.i.i62
  %.015.i.i.i63 = phi ptr [ %i.ds, %.lr.ph.i.i.i62 ], [ %i.dj, %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60 ] ; 2 uses
  %.sroa.010.014.i.i.i64 = phi ptr [ %i.dr, %.lr.ph.i.i.i62 ], [ %.pre156, %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.015.i.i.i63, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.010.014.i.i.i64, i64 80, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i64, i64 80 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.015.i.i.i63, i64 80 ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.dr, %.pre157
  br i1 %.not.i.i.i65, label %.loopexit, label %.lr.ph.i.i.i62, !llvm.loop !84

bb.o:                                             ; preds = %.lr.ph139, %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE9push_backEOS4_.exit
  %.sroa.0105.0137 = phi ptr [ %i.cp, %.lr.ph139 ], [ %i.hn, %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE9push_backEOS4_.exit ] ; 2 uses
  %i.dt = load float, ptr %.sroa.0105.0137, align 4, !tbaa !12 ; 2 uses
  %i.du = load ptr, ptr %i.cc, align 8, !tbaa !35 ; 2 uses
  %i.dv = load ptr, ptr %4, align 8, !tbaa !44    ; 3 uses
  %.not141 = icmp eq ptr %i.du, %i.dv
  br i1 %.not141, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %bb.o
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 1
  %i.ea = load ptr, ptr %1, align 8, !tbaa !23
  br label %bb.r

._crit_edge132:                                   ; preds = %bb.r, %bb.o
  %.sroa.20.0.lcssa = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.o ], [ %i.hl, %bb.r ]
  %.sroa.15.0.lcssa = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %bb.o ], [ %i.hc, %bb.r ]
  %.sroa.1090.0.lcssa = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.o ], [ %i.gr, %bb.r ]
  %.sroa.085.0.lcssa = phi <4 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.o ], [ %i.gg, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store float %i.dt, ptr %9, align 16, !tbaa !103
  store <4 x float> %.sroa.085.0.lcssa, ptr %i.cx, align 16
  store <4 x float> %.sroa.1090.0.lcssa, ptr %.sroa.1090.0..sroa_idx, align 16
  store <4 x float> %.sroa.15.0.lcssa, ptr %.sroa.15.0..sroa_idx.a, align 16
  store <4 x float> %.sroa.20.0.lcssa, ptr %.sroa.20.0..sroa_idx, align 16, !tbaa !104
  %i.eb = load ptr, ptr %i.cy, align 8, !tbaa !39 ; 4 uses
  %i.ec = load ptr, ptr %i.cz, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.eb, %i.ec
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.eb, ptr noundef nonnull align 16 dereferenceable(80) %9, i64 80, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  store ptr %i.ed, ptr %i.cy, align 8, !tbaa !39
  br label %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE9push_backEOS4_.exit

bb.q:                                             ; preds = %._crit_edge132
  invoke void @_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.eb, ptr noundef nonnull align 16 dereferenceable(80) %9)
          to label %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE9push_backEOS4_.exit unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph131, %bb.r
  %.0129 = phi i64 [ 0, %.lr.ph131 ], [ %i.hm, %bb.r ] ; 2 uses
  %.sroa.085.0128 = phi <4 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph131 ], [ %i.gg, %bb.r ] ; 4 uses
  %.sroa.1090.0127 = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph131 ], [ %i.gr, %bb.r ] ; 4 uses
  %.sroa.15.0126 = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.lr.ph131 ], [ %i.hc, %bb.r ] ; 4 uses
  %.sroa.20.0125 = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %.lr.ph131 ], [ %i.hl, %bb.r ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %8, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %10, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %11, align 4
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i.a, align 4
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %.0129
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !30
  %i.eg = sext i16 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [72 x i8], ptr %i.ea, i64 %i.eg
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_122SampleTrack_NoValidateERKNS1_12RawAnimation10JointTrackEfPNS_4math9TransformE(ptr noundef nonnull align 8 dereferenceable(72) %i.eh, float noundef %i.dt, ptr noundef nonnull %8)
  %i.ei = load <1 x float>, ptr %8, align 16
  %i.ej = load <1 x float>, ptr %i.ct, align 4
  %i.ek = load <1 x float>, ptr %i.cu, align 8
  %i.el = load <4 x float>, ptr %i.cv, align 4, !tbaa !104 ; 5 uses
  %i.em = load float, ptr %11, align 4, !tbaa !104
  %i.en = insertelement <4 x float> poison, float %i.em, i64 0
  %i.eo = load float, ptr %i.cw, align 16, !tbaa !104
  %i.ep = load float, ptr %.sroa.2.0..sroa_idx.i.a, align 4, !tbaa !104
  %i.eq = fadd <4 x float> %i.el, %i.el           ; 3 uses
  %i.er = fmul <4 x float> %i.el, %i.eq
  %i.es = bitcast <4 x float> %i.er to <4 x i32>  ; 2 uses
  %i.et = and <4 x i32> %i.es, <i32 -1, i32 -1, i32 poison, i32 0>
  %i.eu = bitcast <4 x i32> %i.et to <4 x float>
  %i.ev = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 0.000000e+00>, %i.eu
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 3>
  %i.ex = and <4 x i32> %i.es, <i32 poison, i32 -1, i32 -1, i32 0>
  %i.ey = bitcast <4 x i32> %i.ex to <4 x float>
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 1, i32 3>
  %i.fa = fsub <4 x float> %i.ew, %i.ez           ; 3 uses
  %i.fb = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 3>
  %i.fc = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 3>
  %i.fd = fmul <4 x float> %i.fb, %i.fc           ; 2 uses
  %i.fe = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ff = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.fg = fmul <4 x float> %i.fe, %i.ff           ; 2 uses
  %i.fh = fadd <4 x float> %i.fd, %i.fg           ; 2 uses
  %i.fi = fsub <4 x float> %i.fd, %i.fg           ; 2 uses
  %i.fj = shufflevector <4 x float> %i.fh, <4 x float> %i.fi, <4 x i32> <i32 1, i32 4, i32 5, i32 2> ; 2 uses
  %i.fk = shufflevector <4 x float> %i.fh, <4 x float> %i.fi, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fa, <4 x float> %i.fj, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fm = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = fmul <4 x float> %i.fm, %i.fl           ; 4 uses
  %i.fo = shufflevector <4 x float> %i.fj, <4 x float> %i.fa, <4 x i32> <i32 2, i32 5, i32 3, i32 7>
  %i.fp = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fr = fmul <4 x float> %i.fq, %i.fo           ; 4 uses
  %i.fs = shufflevector <4 x float> %i.fk, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ft = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fv = fmul <4 x float> %i.fu, %i.fs           ; 4 uses
  %i.fw = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = fmul <4 x float> %.sroa.085.0128, %i.fw
  %i.fy = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fz = fmul <4 x float> %.sroa.15.0126, %i.fy
  %i.ga = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gb = fmul <4 x float> %.sroa.1090.0127, %i.ga
  %i.gc = fadd <4 x float> %i.gb, %i.fx
  %i.gd = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ge = fmul <4 x float> %.sroa.20.0125, %i.gd
  %i.gf = fadd <4 x float> %i.ge, %i.fz
  %i.gg = fadd <4 x float> %i.gc, %i.gf           ; 2 uses
  %i.gh = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = fmul <4 x float> %.sroa.085.0128, %i.gh
  %i.gj = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gk = fmul <4 x float> %.sroa.15.0126, %i.gj
  %i.gl = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gm = fmul <4 x float> %.sroa.1090.0127, %i.gl
  %i.gn = fadd <4 x float> %i.gm, %i.gi
  %i.go = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gp = fmul <4 x float> %.sroa.20.0125, %i.go
  %i.gq = fadd <4 x float> %i.gp, %i.gk
  %i.gr = fadd <4 x float> %i.gn, %i.gq           ; 2 uses
  %i.gs = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gt = fmul <4 x float> %.sroa.085.0128, %i.gs
  %i.gu = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gv = fmul <4 x float> %.sroa.15.0126, %i.gu
  %i.gw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gx = fmul <4 x float> %.sroa.1090.0127, %i.gw
  %i.gy = fadd <4 x float> %i.gx, %i.gt
  %i.gz = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ha = fmul <4 x float> %.sroa.20.0125, %i.gz
  %i.hb = fadd <4 x float> %i.ha, %i.gv
  %i.hc = fadd <4 x float> %i.gy, %i.hb           ; 2 uses
  %i.hd = shufflevector <1 x float> %i.ei, <1 x float> poison, <4 x i32> zeroinitializer
  %i.he = fmul <4 x float> %.sroa.085.0128, %i.hd
  %i.hf = shufflevector <1 x float> %i.ek, <1 x float> poison, <4 x i32> zeroinitializer
  %i.hg = fmul <4 x float> %.sroa.15.0126, %i.hf
  %i.hh = shufflevector <1 x float> %i.ej, <1 x float> poison, <4 x i32> zeroinitializer
  %i.hi = fmul <4 x float> %.sroa.1090.0127, %i.hh
  %i.hj = fadd <4 x float> %i.he, %i.hi
  %i.hk = fadd <4 x float> %.sroa.20.0125, %i.hg
  %i.hl = fadd <4 x float> %i.hj, %i.hk           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.hm = add nuw i64 %.0129, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.hm, %i.dz
  br i1 %exitcond.not, label %._crit_edge132, label %bb.r, !llvm.loop !85

_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE9push_backEOS4_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0105.0137, i64 4 ; 2 uses
  %.not117 = icmp eq ptr %i.hn, %i.cr
  br i1 %.not117, label %._crit_edge140, label %bb.o

bb.s:                                             ; preds = %bb.q
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZNSt4pairIbSt6vectorIfN3ozz12StdAllocatorIfEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #19
  br label %bb.ad

.loopexit:                                        ; preds = %.lr.ph.i.i.i62, %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60.thread, %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60
  %i.hp = phi ptr [ %i.do, %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60 ], [ %i.dm, %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60.thread ], [ %i.do, %.lr.ph.i.i.i62 ]
  %i.hq = phi ptr [ %.pre156, %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60 ], [ %.ph179, %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60.thread ], [ %.pre156, %.lr.ph.i.i.i62 ] ; 2 uses
  %.0.lcssa.i.i.i66 = phi ptr [ %i.dj, %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60 ], [ null, %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60.thread ], [ %i.ds, %.lr.ph.i.i.i62 ]
  store ptr %.0.lcssa.i.i.i66, ptr %i.hp, align 8, !tbaa !39
  %.not.i.i.i68 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit69, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.hr = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.u unwind label %bb.v       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !42
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8
  invoke void %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef nonnull %i.hq)
          to label %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit69 unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #20
  unreachable

_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit69: ; preds = %.loopexit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit69, %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit58
  %i.hx = load ptr, ptr %i.ck, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIbSt6vectorIfN3ozz12StdAllocatorIfEEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hy = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.y unwind label %bb.z       ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !42
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  invoke void %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef nonnull %i.hx)
          to label %_ZNSt4pairIbSt6vectorIfN3ozz12StdAllocatorIfEEEED2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #20
  unreachable

_ZNSt4pairIbSt6vectorIfN3ozz12StdAllocatorIfEEEED2Ev.exit: ; preds = %bb.w, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ie = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %.not.i.i.i70 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt4pairIbSt6vectorIfN3ozz12StdAllocatorIfEEEED2Ev.exit
  %i.if = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ab unwind label %bb.ac     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !42
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  invoke void %i.ii(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef nonnull %i.ie)
          to label %_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #20
  unreachable

_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev.exit:  ; preds = %_ZNSt4pairIbSt6vectorIfN3ozz12StdAllocatorIfEEEED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.af

bb.ad:                                            ; preds = %bb.s, %bb.j
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ho, %bb.s ], [ %i.co, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.h
  %.pn36.pn = phi { ptr, i32 } [ %i.cb, %bb.h ], [ %.pn.pn.pn.pn.pn, %bb.ad ]
  call void @_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn36.pn

bb.af:                                            ; preds = %_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev.exit, %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
end_hunk_0
