Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/animation_builder?download=true
inline.NumInlined: 2405
inline.NumDeleted: 1007
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK3ozz9animation7offline16AnimationBuilderclERKNS1_12RawAnimationE:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %39, i64 12
  %.sroa.2.0..sroa_idx.i41.i232 = getelementptr inbounds nuw i8, ptr %39, i64 20
  %i.em = getelementptr inbounds nuw i8, ptr %43, i64 4
  %i.en = getelementptr inbounds nuw i8, ptr %43, i64 12
  %i.eo = getelementptr inbounds nuw i8, ptr %44, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %44, i64 12
  %wide.trip.count1290 = and i64 %i.w, 65535
  %i.er = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.o, i64 1 ; 3 uses
  br label %bb.r

.preheader.loopexit:                              ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit
  %i.es = trunc i64 %i.w to i16
  br label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit, %.preheader.loopexit
  %i.et = phi ptr [ %i.cr, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit ], [ %i.ae, %.preheader.loopexit ] ; 3 uses
  %i.eu = phi ptr [ %i.cs, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit ], [ %i.bu, %.preheader.loopexit ] ; 3 uses
  %i.ev = phi ptr [ %i.ct, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit ], [ %i.cg, %.preheader.loopexit ] ; 3 uses
  %.098.lcssa = phi i16 [ 0, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit ], [ %i.es, %.preheader.loopexit ] ; 2 uses
  %i.ew = icmp ult i16 %.098.lcssa, %i.ac
  br i1 %i.ew, label %.lr.ph1161, label %._crit_edge1162

.lr.ph1161:                                       ; preds = %.preheader
  %i.ex = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %38, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %37, i64 12
  %.sroa.2.0..sroa_idx.i256 = getelementptr inbounds nuw i8, ptr %37, i64 20
  %i.fd = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %36, i64 4
  %i.ff = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %36, i64 12
  %i.fh = getelementptr inbounds nuw i8, ptr %36, i64 20
  %i.fi = getelementptr inbounds nuw i8, ptr %35, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %35, i64 12
  %i.fl = getelementptr inbounds nuw i8, ptr %35, i64 20
  %i.fm = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %34, i64 12
  %.sroa.2.0..sroa_idx.i271 = getelementptr inbounds nuw i8, ptr %34, i64 20
  %i.fq = getelementptr inbounds nuw i8, ptr %33, i64 4
  %i.fr = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %33, i64 12
  %.sroa.2.0..sroa_idx.i276 = getelementptr inbounds nuw i8, ptr %33, i64 20
  br label %bb.bw

bb.r:                                             ; preds = %.lr.ph1158, %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit
  %indvars.iv1287 = phi i64 [ 0, %.lr.ph1158 ], [ %indvars.iv.next1288, %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit ] ; 26 uses
  %i.ft = load ptr, ptr %2, align 8, !tbaa !199
  %i.fu = getelementptr inbounds nuw [72 x i8], ptr %i.ft, i64 %indvars.iv1287 ; 8 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !203 ; 2 uses
  %i.fx = load ptr, ptr %i.fu, align 8, !tbaa !204 ; 5 uses
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 4
  switch i64 %i.gb, label %bb.y [
    i64 0, label %bb.s
    i64 1, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %.val.i.i = load ptr, ptr %58, align 8, !tbaa !213
  %.val7.i.i = load ptr, ptr %i.cy, align 8, !tbaa !213 ; 3 uses
  %i.gc = icmp eq ptr %.val.i.i, %.val7.i.i
  br i1 %i.gc, label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation14TranslationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gd = getelementptr inbounds i8, ptr %.val7.i.i, i64 -24
  %i.ge = load i16, ptr %i.gd, align 4, !tbaa !74
  %i.gf = zext i16 %i.ge to i64
  %i.gg = icmp eq i64 %indvars.iv1287, %i.gf
  br i1 %i.gg, label %bb.u, label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation14TranslationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i

bb.u:                                             ; preds = %bb.t
  %i.gh = getelementptr inbounds i8, ptr %.val7.i.i, i64 -16
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !214
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation14TranslationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i

_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation14TranslationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i: ; preds = %bb.u, %bb.t, %bb.s
  %.0.i.i = phi float [ -1.000000e+00, %bb.s ], [ %i.gi, %bb.u ], [ -1.000000e+00, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #20
  %i.gj = trunc nuw i64 %indvars.iv1287 to i16    ; 2 uses
  store i16 %i.gj, ptr %52, align 4, !tbaa !74
  store float %.0.i.i, ptr %i.cz, align 4, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 4 dereferenceable(24) %52)
          to label %.noexc199 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc199:                                        ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation14TranslationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #20
  %.val.i38.i = load ptr, ptr %58, align 8, !tbaa !213
  %.val7.i39.i = load ptr, ptr %i.cy, align 8, !tbaa !213 ; 3 uses
  %i.gk = icmp eq ptr %.val.i38.i, %.val7.i39.i
  br i1 %i.gk, label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation14TranslationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit42.i, label %bb.v

bb.v:                                             ; preds = %.noexc199
  %i.gl = getelementptr inbounds i8, ptr %.val7.i39.i, i64 -24
  %i.gm = load i16, ptr %i.gl, align 4, !tbaa !74
  %i.gn = zext i16 %i.gm to i64
  %i.go = icmp eq i64 %indvars.iv1287, %i.gn
  br i1 %i.go, label %bb.w, label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation14TranslationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit42.i

bb.w:                                             ; preds = %bb.v
  %i.gp = getelementptr inbounds i8, ptr %.val7.i39.i, i64 -16
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !214
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation14TranslationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit42.i

_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation14TranslationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit42.i: ; preds = %bb.w, %bb.v, %.noexc199
  %.0.i40.i = phi float [ -1.000000e+00, %.noexc199 ], [ %i.gq, %bb.w ], [ -1.000000e+00, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #20
  store i16 %i.gj, ptr %51, align 4, !tbaa !74
  store float %.0.i40.i, ptr %i.db, align 4, !tbaa !75
  store float %i.o, ptr %i.dc, align 4, !tbaa !215
  store <2 x float> zeroinitializer, ptr %i.dd, align 4
  store float 0.000000e+00, ptr %.sroa.2.0..sroa_idx.i41.i, align 4
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 4 dereferenceable(24) %51)
          to label %.noexc200 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc200:                                        ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation14TranslationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #20
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #20
  %i.gr = trunc nuw i64 %indvars.iv1287 to i16    ; 2 uses
  store i16 %i.gr, ptr %53, align 4, !tbaa !74
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.cu, align 4, !tbaa !76
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cv, ptr noundef nonnull align 4 dereferenceable(12) %i.gs, i64 12, i1 false), !tbaa.struct !216
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 4 dereferenceable(24) %53)
          to label %.noexc201 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc201:                                        ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #20
  store i16 %i.gr, ptr %54, align 4, !tbaa !74
  store <2 x float> %i.er, ptr %i.cw, align 4, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cx, ptr noundef nonnull align 4 dereferenceable(12) %i.gs, i64 12, i1 false), !tbaa.struct !216
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 4 dereferenceable(24) %54)
          to label %.noexc202 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc202:                                        ; preds = %.noexc201
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #20
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit

bb.y:                                             ; preds = %bb.r
  %i.gt = load float, ptr %i.fx, align 4, !tbaa !215
  %i.gu = fcmp une float %i.gt, 0.000000e+00
  br i1 %i.gu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #20
  %i.gv = trunc nuw i64 %indvars.iv1287 to i16
  store i16 %i.gv, ptr %55, align 4, !tbaa !74
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.de, align 4, !tbaa !76
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.df, ptr noundef nonnull align 4 dereferenceable(12) %i.gw, i64 12, i1 false), !tbaa.struct !216
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 4 dereferenceable(24) %55)
          to label %.noexc203 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc203:                                        ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #20
  %.pre.i = load ptr, ptr %i.fv, align 8, !tbaa !203
  %.pre48.i = load ptr, ptr %i.fu, align 8, !tbaa !204
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc203, %bb.y
  %i.gx = phi ptr [ %.pre48.i, %.noexc203 ], [ %i.fx, %bb.y ] ; 2 uses
  %i.gy = phi ptr [ %.pre.i, %.noexc203 ], [ %i.fw, %bb.y ] ; 2 uses
  %.0.i = phi float [ 0.000000e+00, %.noexc203 ], [ -1.000000e+00, %bb.y ] ; 2 uses
  %.not.i = icmp eq ptr %i.gy, %i.gx
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.aa
  %.promoted = load ptr, ptr %i.cy, align 8, !tbaa !57
  %.promoted1147 = load ptr, ptr %i.ae, align 8, !tbaa !58
  %.promoted1148 = load ptr, ptr %58, align 8
  %i.gz = trunc nuw i64 %indvars.iv1287 to i16
  %i.ha = trunc nuw i64 %indvars.iv1287 to i16
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc204, %bb.aa
  %.1.lcssa.i = phi float [ %.0.i, %bb.aa ], [ %i.it, %.noexc204 ]
  %.lcssa.i = phi ptr [ %i.gy, %bb.aa ], [ %i.iv, %.noexc204 ] ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %.lcssa.i, i64 -16
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !215
  %i.hd = fsub float %i.hc, %i.o
  %i.he = fcmp une float %i.hd, 0.000000e+00
  br i1 %i.he, label %bb.aj, label %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc204
  %i.hf = phi ptr [ %i.iq, %.noexc204 ], [ %.promoted1148, %.lr.ph.i.preheader ] ; 6 uses
  %i.hg = phi ptr [ %i.ir, %.noexc204 ], [ %.promoted1147, %.lr.ph.i.preheader ] ; 4 uses
  %i.hh = phi ptr [ %i.is, %.noexc204 ], [ %.promoted, %.lr.ph.i.preheader ] ; 7 uses
  %i.hi = phi ptr [ %i.iw, %.noexc204 ], [ %i.gx, %.lr.ph.i.preheader ]
  %.144.i = phi float [ %i.it, %.noexc204 ], [ %.0.i, %.lr.ph.i.preheader ] ; 2 uses
  %.03743.i = phi i64 [ %i.iu, %.noexc204 ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %.03743.i ; 3 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !215 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %.sroa.7.sroa.0.0.copyload2060 = load <3 x float>, ptr %i.hl, align 4, !tbaa !76 ; 2 uses
  %.not.i790 = icmp eq ptr %i.hh, %i.hg
  br i1 %.not.i790, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i
  store i16 %i.gz, ptr %i.hh, align 4, !tbaa !77
  %.sroa.5870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store float %.144.i, ptr %.sroa.5870.0..sroa_idx, align 4, !tbaa !76
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store float %i.hk, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !76
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store <3 x float> %.sroa.7.sroa.0.0.copyload2060, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !76
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 24 ; 2 uses
  store ptr %i.hm, ptr %i.cy, align 8, !tbaa !57
  br label %.noexc204

bb.ac:                                            ; preds = %.lr.ph.i
  %i.hn = ptrtoint ptr %i.hh to i64
  %i.ho = ptrtoint ptr %i.hf to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 3 uses
  %i.hq = icmp eq i64 %i.hp, 9223372036854775800
  br i1 %i.hq, label %.invoke, label %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.hr = sdiv exact i64 %i.hp, 24                ; 3 uses
  %i.hs = icmp eq ptr %i.hg, %i.hf                ; 2 uses
  %.sroa.speculated.i.i.i792 = select i1 %i.hs, i64 1, i64 %i.hr
  %i.ht = add nsw i64 %.sroa.speculated.i.i.i792, %i.hr ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.hr
  %i.hv = tail call i64 @llvm.umin.i64(i64 %i.ht, i64 384307168202282325)
  %i.hw = select i1 %i.hu, i64 384307168202282325, i64 %i.hv ; 3 uses
  %.not.i.i.i793 = icmp ne i64 %i.hw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i793)
  %i.hx = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ad unwind label %bb.ae     ; 2 uses

bb.ad:                                            ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i
  %i.hy = mul nuw nsw i64 %i.hw, 24
  %i.hz = load ptr, ptr %i.hx, align 8, !tbaa !48
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = invoke noundef ptr %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hx, i64 noundef %i.hy, i64 noundef 4)
          to label %bb.af unwind label %bb.ae     ; 6 uses

bb.ae:                                            ; preds = %bb.ad, %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  tail call void @__clang_call_terminate(ptr %i.ie) #22
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hp ; 4 uses
  store i16 %i.ha, ptr %i.if, align 4, !tbaa !77
  %.sroa.5870.0..sroa_idx871 = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store float %.144.i, ptr %.sroa.5870.0..sroa_idx871, align 4, !tbaa !76
  %.sroa.6.0..sroa_idx873 = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store float %i.hk, ptr %.sroa.6.0..sroa_idx873, align 4, !tbaa !76
  %.sroa.7.0..sroa_idx875 = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  store <3 x float> %.sroa.7.sroa.0.0.copyload2060, ptr %.sroa.7.0..sroa_idx875, align 4, !tbaa !76
  br i1 %i.hs, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.af, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %i.ih, %.lr.ph.i.i.i.i ], [ %i.ic, %bb.af ] ; 2 uses
  %.sroa.01.03.i.i.i.i = phi ptr [ %i.ig, %.lr.ph.i.i.i.i ], [ %i.hf, %bb.af ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.04.i.i.i.i, ptr noundef nonnull readonly align 4 dereferenceable(24) %.sroa.01.03.i.i.i.i, i64 24, i1 false), !tbaa.struct !78
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i.i, i64 24 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i794 = icmp eq ptr %i.ig, %i.hg
  br i1 %.not.i.i.i.i794, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.af
  %.0.lcssa.i.i.i.i795 = phi ptr [ %i.ic, %bb.af ], [ %i.ih, %.lr.ph.i.i.i.i ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i795, i64 24 ; 2 uses
  %.not.i39.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i39.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i
  %i.ij = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ah unwind label %bb.ai     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !48
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8
  invoke void %i.im(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef nonnull %i.hf)
          to label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  tail call void @__clang_call_terminate(ptr %i.io) #22
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i: ; preds = %bb.ah, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i
  store ptr %i.ic, ptr %58, align 8, !tbaa !56
  store ptr %i.ii, ptr %i.cy, align 8, !tbaa !57
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %i.ic, i64 %i.hw ; 2 uses
  store ptr %i.ip, ptr %i.ae, align 8, !tbaa !58
  br label %.noexc204

.noexc204:                                        ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i, %bb.ab
  %i.iq = phi ptr [ %i.ic, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i ], [ %i.hf, %bb.ab ]
  %i.ir = phi ptr [ %i.ip, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i ], [ %i.hg, %bb.ab ]
  %i.is = phi ptr [ %i.ii, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i ], [ %i.hm, %bb.ab ]
  %i.it = load float, ptr %i.hj, align 4, !tbaa !215 ; 2 uses
  %i.iu = add nuw i64 %.03743.i, 1                ; 2 uses
  %i.iv = load ptr, ptr %i.fv, align 8, !tbaa !203 ; 2 uses
  %i.iw = load ptr, ptr %i.fu, align 8, !tbaa !204 ; 2 uses
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = ashr exact i64 %i.iz, 4
  %i.jb = icmp ult i64 %i.iu, %i.ja
  br i1 %i.jb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !116

bb.aj:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #20
  %i.jc = trunc nuw i64 %indvars.iv1287 to i16
  store i16 %i.jc, ptr %56, align 4, !tbaa !74
  store float %.1.lcssa.i, ptr %i.dg, align 4, !tbaa !75
  store float %i.o, ptr %i.dh, align 4, !tbaa !215
  %i.jd = getelementptr inbounds i8, ptr %.lcssa.i, i64 -12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.di, ptr noundef nonnull align 4 dereferenceable(12) %i.jd, i64 12, i1 false), !tbaa.struct !216
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 4 dereferenceable(24) %56)
          to label %.noexc205 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc205:                                        ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit

_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit: ; preds = %.noexc205, %._crit_edge.i, %.noexc202, %.noexc200
  %i.je = getelementptr inbounds nuw i8, ptr %i.fu, i64 24 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 3 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !207 ; 2 uses
  %i.jh = load ptr, ptr %i.je, align 8, !tbaa !208 ; 5 uses
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj
  %i.jl = sdiv exact i64 %i.jk, 20
  switch i64 %i.jl, label %bb.aq [
    i64 0, label %bb.ak
    i64 1, label %bb.ap
  ]

bb.ak:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit
  %.val.i.i206 = load ptr, ptr %59, align 8, !tbaa !217
  %.val7.i.i207 = load ptr, ptr %i.dn, align 8, !tbaa !217 ; 3 uses
  %i.jm = icmp eq ptr %.val.i.i206, %.val7.i.i207
  br i1 %i.jm, label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation11RotationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jn = getelementptr inbounds i8, ptr %.val7.i.i207, i64 -28
  %i.jo = load i16, ptr %i.jn, align 4, !tbaa !82
  %i.jp = zext i16 %i.jo to i64
  %i.jq = icmp eq i64 %indvars.iv1287, %i.jp
  br i1 %i.jq, label %bb.am, label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation11RotationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i

bb.am:                                            ; preds = %bb.al
  %i.jr = getelementptr inbounds i8, ptr %.val7.i.i207, i64 -20
  %i.js = load float, ptr %i.jr, align 4, !tbaa !218
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation11RotationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i

_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation11RotationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i: ; preds = %bb.am, %bb.al, %bb.ak
  %.0.i.i208 = phi float [ -1.000000e+00, %bb.ak ], [ %i.js, %bb.am ], [ -1.000000e+00, %bb.al ]
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #20
  %i.jt = trunc nuw i64 %indvars.iv1287 to i16    ; 2 uses
  store i16 %i.jt, ptr %46, align 4, !tbaa !82
  store float %.0.i.i208, ptr %i.do, align 4, !tbaa !83
  store float 0.000000e+00, ptr %i.dp, align 4, !tbaa !219
  store <2 x float> zeroinitializer, ptr %i.dq, align 4
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.dr, align 4
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 4 dereferenceable(28) %46)
          to label %.noexc219 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc219:                                        ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation11RotationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #20
  %.val.i38.i209 = load ptr, ptr %59, align 8, !tbaa !217
  %.val7.i39.i210 = load ptr, ptr %i.dn, align 8, !tbaa !217 ; 3 uses
  %i.ju = icmp eq ptr %.val.i38.i209, %.val7.i39.i210
  br i1 %i.ju, label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation11RotationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit41.i, label %bb.an

bb.an:                                            ; preds = %.noexc219
  %i.jv = getelementptr inbounds i8, ptr %.val7.i39.i210, i64 -28
  %i.jw = load i16, ptr %i.jv, align 4, !tbaa !82
  %i.jx = zext i16 %i.jw to i64
  %i.jy = icmp eq i64 %indvars.iv1287, %i.jx
  br i1 %i.jy, label %bb.ao, label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation11RotationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit41.i

bb.ao:                                            ; preds = %bb.an
  %i.jz = getelementptr inbounds i8, ptr %.val7.i39.i210, i64 -20
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !218
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation11RotationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit41.i

_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation11RotationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit41.i: ; preds = %bb.ao, %bb.an, %.noexc219
  %.0.i40.i211 = phi float [ -1.000000e+00, %.noexc219 ], [ %i.ka, %bb.ao ], [ -1.000000e+00, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  store i16 %i.jt, ptr %45, align 4, !tbaa !82
  store float %.0.i40.i211, ptr %i.ds, align 4, !tbaa !83
  store float %i.o, ptr %i.dt, align 4, !tbaa !219
  store <2 x float> zeroinitializer, ptr %i.du, align 4
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.dv, align 4
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 4 dereferenceable(28) %45)
          to label %.noexc220 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc220:                                        ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation11RotationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit

bb.ap:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #20
  %i.kb = trunc nuw i64 %indvars.iv1287 to i16    ; 2 uses
  store i16 %i.kb, ptr %47, align 4, !tbaa !82
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.dj, align 4, !tbaa !76
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jh, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dk, ptr noundef nonnull align 4 dereferenceable(16) %i.kc, i64 16, i1 false), !tbaa.struct !220
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 4 dereferenceable(28) %47)
          to label %.noexc221 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc221:                                        ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  store i16 %i.kb, ptr %48, align 4, !tbaa !82
  store <2 x float> %i.er, ptr %i.dl, align 4, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dm, ptr noundef nonnull align 4 dereferenceable(16) %i.kc, i64 16, i1 false), !tbaa.struct !220
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 4 dereferenceable(28) %48)
          to label %.noexc222 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc222:                                        ; preds = %.noexc221
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit

bb.aq:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit
  %i.kd = load float, ptr %i.jh, align 4, !tbaa !219
  %i.ke = fcmp une float %i.kd, 0.000000e+00
  br i1 %i.ke, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #20
  %i.kf = trunc nuw i64 %indvars.iv1287 to i16
  store i16 %i.kf, ptr %49, align 4, !tbaa !82
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.dw, align 4, !tbaa !76
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dx, ptr noundef nonnull align 4 dereferenceable(16) %i.kg, i64 16, i1 false), !tbaa.struct !220
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 4 dereferenceable(28) %49)
          to label %.noexc223 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc223:                                        ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  %.pre.i218 = load ptr, ptr %i.jf, align 8, !tbaa !207
  %.pre47.i = load ptr, ptr %i.je, align 8, !tbaa !208
  br label %bb.as

bb.as:                                            ; preds = %.noexc223, %bb.aq
  %i.kh = phi ptr [ %.pre47.i, %.noexc223 ], [ %i.jh, %bb.aq ] ; 2 uses
  %i.ki = phi ptr [ %.pre.i218, %.noexc223 ], [ %i.jg, %bb.aq ] ; 2 uses
  %.0.i212 = phi float [ 0.000000e+00, %.noexc223 ], [ -1.000000e+00, %bb.aq ] ; 2 uses
  %.not.i213 = icmp eq ptr %i.ki, %i.kh
  br i1 %.not.i213, label %._crit_edge.i215, label %.lr.ph.i214.preheader

.lr.ph.i214.preheader:                            ; preds = %bb.as
  %.promoted1149 = load ptr, ptr %i.dn, align 8, !tbaa !63
  %.promoted1150 = load ptr, ptr %i.bu, align 8, !tbaa !64
  %.promoted1151 = load ptr, ptr %59, align 8
  %i.kj = trunc nuw i64 %indvars.iv1287 to i16
  %i.kk = trunc nuw i64 %indvars.iv1287 to i16
  br label %.lr.ph.i214

._crit_edge.i215:                                 ; preds = %.noexc224, %bb.as
  %.1.lcssa.i216 = phi float [ %.0.i212, %bb.as ], [ %i.md, %.noexc224 ]
  %.lcssa.i217 = phi ptr [ %i.ki, %bb.as ], [ %i.mf, %.noexc224 ] ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %.lcssa.i217, i64 -20
  %i.km = load float, ptr %i.kl, align 4, !tbaa !219
  %i.kn = fsub float %i.km, %i.o
  %i.ko = fcmp une float %i.kn, 0.000000e+00
  br i1 %i.ko, label %bb.bb, label %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit

.lr.ph.i214:                                      ; preds = %.lr.ph.i214.preheader, %.noexc224
  %i.kp = phi ptr [ %i.ma, %.noexc224 ], [ %.promoted1151, %.lr.ph.i214.preheader ] ; 6 uses
  %i.kq = phi ptr [ %i.mb, %.noexc224 ], [ %.promoted1150, %.lr.ph.i214.preheader ] ; 4 uses
  %i.kr = phi ptr [ %i.mc, %.noexc224 ], [ %.promoted1149, %.lr.ph.i214.preheader ] ; 7 uses
  %i.ks = phi ptr [ %i.mg, %.noexc224 ], [ %i.kh, %.lr.ph.i214.preheader ]
  %.143.i = phi float [ %i.md, %.noexc224 ], [ %.0.i212, %.lr.ph.i214.preheader ] ; 2 uses
  %.03742.i = phi i64 [ %i.me, %.noexc224 ], [ 0, %.lr.ph.i214.preheader ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [20 x i8], ptr %i.ks, i64 %.03742.i ; 3 uses
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !219 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %.sroa.7887.sroa.0.0.copyload2062 = load <4 x float>, ptr %i.kv, align 4, !tbaa !76 ; 2 uses
  %.not.i797 = icmp eq ptr %i.kr, %i.kq
  br i1 %.not.i797, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i214
  store i16 %i.kj, ptr %i.kr, align 4, !tbaa !77
  %.sroa.5881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store float %.143.i, ptr %.sroa.5881.0..sroa_idx, align 4, !tbaa !76
  %.sroa.6884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store float %i.ku, ptr %.sroa.6884.0..sroa_idx, align 4, !tbaa !76
  %.sroa.7887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kr, i64 12
  store <4 x float> %.sroa.7887.sroa.0.0.copyload2062, ptr %.sroa.7887.0..sroa_idx, align 4, !tbaa !76
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 28 ; 2 uses
  store ptr %i.kw, ptr %i.dn, align 8, !tbaa !63
  br label %.noexc224

bb.au:                                            ; preds = %.lr.ph.i214
  %i.kx = ptrtoint ptr %i.kr to i64
  %i.ky = ptrtoint ptr %i.kp to i64
  %i.kz = sub i64 %i.kx, %i.ky                    ; 3 uses
  %i.la = icmp eq i64 %i.kz, 9223372036854775800
  br i1 %i.la, label %.invoke, label %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.au
  %i.lb = sdiv exact i64 %i.kz, 28                ; 3 uses
  %i.lc = icmp eq ptr %i.kq, %i.kp                ; 2 uses
  %.sroa.speculated.i.i.i799 = select i1 %i.lc, i64 1, i64 %i.lb
  %i.ld = add nsw i64 %.sroa.speculated.i.i.i799, %i.lb ; 2 uses
  %i.le = icmp ult i64 %i.ld, %i.lb
  %i.lf = tail call i64 @llvm.umin.i64(i64 %i.ld, i64 329406144173384850)
  %i.lg = select i1 %i.le, i64 329406144173384850, i64 %i.lf ; 3 uses
  %.not.i.i.i800 = icmp ne i64 %i.lg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i800)
  %i.lh = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.av unwind label %bb.aw     ; 2 uses

bb.av:                                            ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i
  %i.li = mul nuw nsw i64 %i.lg, 28
  %i.lj = load ptr, ptr %i.lh, align 8, !tbaa !48
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = invoke noundef ptr %i.ll(ptr noundef nonnull align 8 dereferenceable(8) %i.lh, i64 noundef %i.li, i64 noundef 4)
          to label %bb.ax unwind label %bb.aw     ; 6 uses

bb.aw:                                            ; preds = %bb.av, %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  tail call void @__clang_call_terminate(ptr %i.lo) #22
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.kz ; 4 uses
  store i16 %i.kk, ptr %i.lp, align 4, !tbaa !77
  %.sroa.5881.0..sroa_idx882 = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  store float %.143.i, ptr %.sroa.5881.0..sroa_idx882, align 4, !tbaa !76
  %.sroa.6884.0..sroa_idx885 = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store float %i.ku, ptr %.sroa.6884.0..sroa_idx885, align 4, !tbaa !76
  %.sroa.7887.0..sroa_idx888 = getelementptr inbounds nuw i8, ptr %i.lp, i64 12
  store <4 x float> %.sroa.7887.sroa.0.0.copyload2062, ptr %.sroa.7887.0..sroa_idx888, align 4, !tbaa !76
  br i1 %i.lc, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i, label %.lr.ph.i.i.i.i801

.lr.ph.i.i.i.i801:                                ; preds = %bb.ax, %.lr.ph.i.i.i.i801
  %.04.i.i.i.i802 = phi ptr [ %i.lr, %.lr.ph.i.i.i.i801 ], [ %i.lm, %bb.ax ] ; 2 uses
  %.sroa.01.03.i.i.i.i803 = phi ptr [ %i.lq, %.lr.ph.i.i.i.i801 ], [ %i.kp, %bb.ax ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.04.i.i.i.i802, ptr noundef nonnull readonly align 4 dereferenceable(28) %.sroa.01.03.i.i.i.i803, i64 28, i1 false), !tbaa.struct !84
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i.i803, i64 28 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i802, i64 28 ; 2 uses
  %.not.i.i.i.i804 = icmp eq ptr %i.lq, %i.kq
  br i1 %.not.i.i.i.i804, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i, label %.lr.ph.i.i.i.i801, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i: ; preds = %.lr.ph.i.i.i.i801, %bb.ax
  %.0.lcssa.i.i.i.i805 = phi ptr [ %i.lm, %bb.ax ], [ %i.lr, %.lr.ph.i.i.i.i801 ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i805, i64 28 ; 2 uses
  %.not.i39.i.i806 = icmp eq ptr %i.kp, null
  br i1 %.not.i39.i.i806, label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i
  %i.lt = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.az unwind label %bb.ba     ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !48
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8
  invoke void %i.lw(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, ptr noundef nonnull %i.kp)
          to label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.lx = landingpad { ptr, i32 }
          catch ptr null
  %i.ly = extractvalue { ptr, i32 } %i.lx, 0
  tail call void @__clang_call_terminate(ptr %i.ly) #22
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i: ; preds = %bb.az, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i
  store ptr %i.lm, ptr %59, align 8, !tbaa !62
  store ptr %i.ls, ptr %i.dn, align 8, !tbaa !63
  %i.lz = getelementptr inbounds nuw [28 x i8], ptr %i.lm, i64 %i.lg ; 2 uses
  store ptr %i.lz, ptr %i.bu, align 8, !tbaa !64
  br label %.noexc224

.noexc224:                                        ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i, %bb.at
  %i.ma = phi ptr [ %i.lm, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i ], [ %i.kp, %bb.at ]
  %i.mb = phi ptr [ %i.lz, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i ], [ %i.kq, %bb.at ]
  %i.mc = phi ptr [ %i.ls, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i ], [ %i.kw, %bb.at ]
  %i.md = load float, ptr %i.kt, align 4, !tbaa !219 ; 2 uses
  %i.me = add nuw i64 %.03742.i, 1                ; 2 uses
  %i.mf = load ptr, ptr %i.jf, align 8, !tbaa !207 ; 2 uses
  %i.mg = load ptr, ptr %i.je, align 8, !tbaa !208 ; 2 uses
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = sub i64 %i.mh, %i.mi
  %i.mk = sdiv exact i64 %i.mj, 20
  %i.ml = icmp ult i64 %i.me, %i.mk
  br i1 %i.ml, label %.lr.ph.i214, label %._crit_edge.i215, !llvm.loop !117

bb.bb:                                            ; preds = %._crit_edge.i215
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #20
  %i.mm = trunc nuw i64 %indvars.iv1287 to i16
  store i16 %i.mm, ptr %50, align 4, !tbaa !82
  store float %.1.lcssa.i216, ptr %i.dy, align 4, !tbaa !83
  store float %i.o, ptr %i.dz, align 4, !tbaa !219
  %i.mn = getelementptr inbounds i8, ptr %.lcssa.i217, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ea, ptr noundef nonnull align 4 dereferenceable(16) %i.mn, i64 16, i1 false), !tbaa.struct !220
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 4 dereferenceable(28) %50)
          to label %.noexc225 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc225:                                        ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit

_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit: ; preds = %.noexc225, %._crit_edge.i215, %.noexc222, %.noexc220
  %i.mo = getelementptr inbounds nuw i8, ptr %i.fu, i64 48 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.fu, i64 56 ; 3 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !211 ; 2 uses
  %i.mr = load ptr, ptr %i.mo, align 8, !tbaa !212 ; 5 uses
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = sub i64 %i.ms, %i.mt
  %i.mv = ashr exact i64 %i.mu, 4
  switch i64 %i.mv, label %bb.bi [
    i64 0, label %bb.bc
    i64 1, label %bb.bh
  ]

bb.bc:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit
  %.val.i.i226 = load ptr, ptr %60, align 8, !tbaa !221
  %.val7.i.i227 = load ptr, ptr %i.ef, align 8, !tbaa !221 ; 3 uses
  %i.mw = icmp eq ptr %.val.i.i226, %.val7.i.i227
  br i1 %i.mw, label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation8ScaleKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mx = getelementptr inbounds i8, ptr %.val7.i.i227, i64 -24
  %i.my = load i16, ptr %i.mx, align 4, !tbaa !87
  %i.mz = zext i16 %i.my to i64
  %i.na = icmp eq i64 %indvars.iv1287, %i.mz
  br i1 %i.na, label %bb.be, label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation8ScaleKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.nb = getelementptr inbounds i8, ptr %.val7.i.i227, i64 -16
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !222
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation8ScaleKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i

_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation8ScaleKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i: ; preds = %bb.be, %bb.bd, %bb.bc
  %.0.i.i228 = phi float [ -1.000000e+00, %bb.bc ], [ %i.nc, %bb.be ], [ -1.000000e+00, %bb.bd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  %i.nd = trunc nuw i64 %indvars.iv1287 to i16    ; 2 uses
  store i16 %i.nd, ptr %40, align 4, !tbaa !87
  store float %.0.i.i228, ptr %i.eg, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.eh, align 4, !tbaa !223
  store <2 x float> splat (float 1.000000e+00), ptr %i.ei, align 4
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i.i, align 4
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 4 dereferenceable(24) %40)
          to label %.noexc243 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc243:                                        ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation8ScaleKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %.val.i38.i229 = load ptr, ptr %60, align 8, !tbaa !221
  %.val7.i39.i230 = load ptr, ptr %i.ef, align 8, !tbaa !221 ; 3 uses
  %i.ne = icmp eq ptr %.val.i38.i229, %.val7.i39.i230
  br i1 %i.ne, label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation8ScaleKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit42.i, label %bb.bf

bb.bf:                                            ; preds = %.noexc243
  %i.nf = getelementptr inbounds i8, ptr %.val7.i39.i230, i64 -24
  %i.ng = load i16, ptr %i.nf, align 4, !tbaa !87
  %i.nh = zext i16 %i.ng to i64
  %i.ni = icmp eq i64 %indvars.iv1287, %i.nh
  br i1 %i.ni, label %bb.bg, label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation8ScaleKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit42.i

bb.bg:                                            ; preds = %bb.bf
  %i.nj = getelementptr inbounds i8, ptr %.val7.i39.i230, i64 -16
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !222
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation8ScaleKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit42.i

_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation8ScaleKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit42.i: ; preds = %bb.bg, %bb.bf, %.noexc243
  %.0.i40.i231 = phi float [ -1.000000e+00, %.noexc243 ], [ %i.nk, %bb.bg ], [ -1.000000e+00, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  store i16 %i.nd, ptr %39, align 4, !tbaa !87
  store float %.0.i40.i231, ptr %i.ej, align 4, !tbaa !88
  store float %i.o, ptr %i.ek, align 4, !tbaa !223
  store <2 x float> splat (float 1.000000e+00), ptr %i.el, align 4
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i41.i232, align 4
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 4 dereferenceable(24) %39)
          to label %.noexc244 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc244:                                        ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation8ScaleKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit

bb.bh:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  %i.nl = trunc nuw i64 %indvars.iv1287 to i16    ; 2 uses
  store i16 %i.nl, ptr %41, align 4, !tbaa !87
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.eb, align 4, !tbaa !76
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mr, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ec, ptr noundef nonnull align 4 dereferenceable(12) %i.nm, i64 12, i1 false), !tbaa.struct !216
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 4 dereferenceable(24) %41)
          to label %.noexc245 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc245:                                        ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  store i16 %i.nl, ptr %42, align 4, !tbaa !87
  store <2 x float> %i.er, ptr %i.ed, align 4, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ee, ptr noundef nonnull align 4 dereferenceable(12) %i.nm, i64 12, i1 false), !tbaa.struct !216
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 4 dereferenceable(24) %42)
          to label %.noexc246 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc246:                                        ; preds = %.noexc245
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit

bb.bi:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit
  %i.nn = load float, ptr %i.mr, align 4, !tbaa !223
  %i.no = fcmp une float %i.nn, 0.000000e+00
  br i1 %i.no, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20
  %i.np = trunc nuw i64 %indvars.iv1287 to i16
  store i16 %i.np, ptr %43, align 4, !tbaa !87
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.em, align 4, !tbaa !76
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.en, ptr noundef nonnull align 4 dereferenceable(12) %i.nq, i64 12, i1 false), !tbaa.struct !216
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 4 dereferenceable(24) %43)
          to label %.noexc247 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc247:                                        ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  %.pre.i241 = load ptr, ptr %i.mp, align 8, !tbaa !211
  %.pre48.i242 = load ptr, ptr %i.mo, align 8, !tbaa !212
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc247, %bb.bi
  %i.nr = phi ptr [ %.pre48.i242, %.noexc247 ], [ %i.mr, %bb.bi ] ; 2 uses
  %i.ns = phi ptr [ %.pre.i241, %.noexc247 ], [ %i.mq, %bb.bi ] ; 2 uses
  %.0.i233 = phi float [ 0.000000e+00, %.noexc247 ], [ -1.000000e+00, %bb.bi ] ; 2 uses
  %.not.i234 = icmp eq ptr %i.ns, %i.nr
  br i1 %.not.i234, label %._crit_edge.i238, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %bb.bk
  %.promoted1152 = load ptr, ptr %i.ef, align 8, !tbaa !68
  %.promoted1153 = load ptr, ptr %i.cg, align 8, !tbaa !69
  %.promoted1154 = load ptr, ptr %60, align 8
  %i.nt = trunc nuw i64 %indvars.iv1287 to i16
  %i.nu = trunc nuw i64 %indvars.iv1287 to i16
  br label %.lr.ph.i235

._crit_edge.i238:                                 ; preds = %.noexc248, %bb.bk
  %.1.lcssa.i239 = phi float [ %.0.i233, %bb.bk ], [ %i.po, %.noexc248 ]
  %.lcssa.i240 = phi ptr [ %i.ns, %bb.bk ], [ %i.pq, %.noexc248 ] ; 2 uses
  %i.nv = getelementptr inbounds i8, ptr %.lcssa.i240, i64 -16
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !223
  %i.nx = fsub float %i.nw, %i.o
  %i.ny = fcmp une float %i.nx, 0.000000e+00
  br i1 %i.ny, label %bb.bt, label %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit

.lr.ph.i235:                                      ; preds = %.lr.ph.i235.preheader, %.noexc248
  %i.nz = phi ptr [ %i.pl, %.noexc248 ], [ %.promoted1154, %.lr.ph.i235.preheader ] ; 6 uses
  %i.oa = phi ptr [ %i.pm, %.noexc248 ], [ %.promoted1153, %.lr.ph.i235.preheader ] ; 4 uses
  %i.ob = phi ptr [ %i.pn, %.noexc248 ], [ %.promoted1152, %.lr.ph.i235.preheader ] ; 7 uses
  %i.oc = phi ptr [ %i.pr, %.noexc248 ], [ %i.nr, %.lr.ph.i235.preheader ]
  %.144.i236 = phi float [ %i.po, %.noexc248 ], [ %.0.i233, %.lr.ph.i235.preheader ] ; 2 uses
  %.03743.i237 = phi i64 [ %i.pp, %.noexc248 ], [ 0, %.lr.ph.i235.preheader ] ; 2 uses
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %i.oc, i64 %.03743.i237 ; 3 uses
  %i.oe = load float, ptr %i.od, align 4, !tbaa !223 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %.sroa.7900.sroa.0.0.copyload2064 = load <3 x float>, ptr %i.of, align 4, !tbaa !76 ; 2 uses
  %.not.i808 = icmp eq ptr %i.ob, %i.oa
  br i1 %.not.i808, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i235
  store i16 %i.nt, ptr %i.ob, align 4, !tbaa !77
  %.sroa.5894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  store float %.144.i236, ptr %.sroa.5894.0..sroa_idx, align 4, !tbaa !76
  %.sroa.6897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store float %i.oe, ptr %.sroa.6897.0..sroa_idx, align 4, !tbaa !76
  %.sroa.7900.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  store <3 x float> %.sroa.7900.sroa.0.0.copyload2064, ptr %.sroa.7900.0..sroa_idx, align 4, !tbaa !76
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 24 ; 2 uses
  store ptr %i.og, ptr %i.ef, align 8, !tbaa !68
  br label %.noexc248

bb.bm:                                            ; preds = %.lr.ph.i235
  %i.oh = ptrtoint ptr %i.ob to i64
  %i.oi = ptrtoint ptr %i.nz to i64
  %i.oj = sub i64 %i.oh, %i.oi                    ; 3 uses
  %i.ok = icmp eq i64 %i.oj, 9223372036854775800
  br i1 %i.ok, label %.invoke, label %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ac, %bb.au, %bb.bm, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit
  %i.ol = phi ptr [ @.str.1, %bb.au ], [ @.str.1, %bb.bm ], [ @.str.2, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE7reserveEm.exit ], [ @.str.1, %bb.ac ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ol) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bm
  %i.om = sdiv exact i64 %i.oj, 24                ; 3 uses
  %i.on = icmp eq ptr %i.oa, %i.nz                ; 2 uses
  %.sroa.speculated.i.i.i810 = select i1 %i.on, i64 1, i64 %i.om
  %i.oo = add nsw i64 %.sroa.speculated.i.i.i810, %i.om ; 2 uses
  %i.op = icmp ult i64 %i.oo, %i.om
  %i.oq = tail call i64 @llvm.umin.i64(i64 %i.oo, i64 384307168202282325)
  %i.or = select i1 %i.op, i64 384307168202282325, i64 %i.oq ; 3 uses
  %.not.i.i.i811 = icmp ne i64 %i.or, 0
  tail call void @llvm.assume(i1 %.not.i.i.i811)
  %i.os = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.bn unwind label %bb.bo     ; 2 uses

bb.bn:                                            ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i
  %i.ot = mul nuw nsw i64 %i.or, 24
  %i.ou = load ptr, ptr %i.os, align 8, !tbaa !48
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = invoke noundef ptr %i.ow(ptr noundef nonnull align 8 dereferenceable(8) %i.os, i64 noundef %i.ot, i64 noundef 4)
          to label %bb.bp unwind label %bb.bo     ; 6 uses

bb.bo:                                            ; preds = %bb.bn, %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i
  %i.oy = landingpad { ptr, i32 }
          catch ptr null
  %i.oz = extractvalue { ptr, i32 } %i.oy, 0
  tail call void @__clang_call_terminate(ptr %i.oz) #22
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.oj ; 4 uses
  store i16 %i.nu, ptr %i.pa, align 4, !tbaa !77
  %.sroa.5894.0..sroa_idx895 = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  store float %.144.i236, ptr %.sroa.5894.0..sroa_idx895, align 4, !tbaa !76
  %.sroa.6897.0..sroa_idx898 = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  store float %i.oe, ptr %.sroa.6897.0..sroa_idx898, align 4, !tbaa !76
  %.sroa.7900.0..sroa_idx901 = getelementptr inbounds nuw i8, ptr %i.pa, i64 12
  store <3 x float> %.sroa.7900.sroa.0.0.copyload2064, ptr %.sroa.7900.0..sroa_idx901, align 4, !tbaa !76
  br i1 %i.on, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i, label %.lr.ph.i.i.i.i812

.lr.ph.i.i.i.i812:                                ; preds = %bb.bp, %.lr.ph.i.i.i.i812
  %.04.i.i.i.i813 = phi ptr [ %i.pc, %.lr.ph.i.i.i.i812 ], [ %i.ox, %bb.bp ] ; 2 uses
  %.sroa.01.03.i.i.i.i814 = phi ptr [ %i.pb, %.lr.ph.i.i.i.i812 ], [ %i.nz, %bb.bp ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.04.i.i.i.i813, ptr noundef nonnull readonly align 4 dereferenceable(24) %.sroa.01.03.i.i.i.i814, i64 24, i1 false), !tbaa.struct !78
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i.i814, i64 24 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i813, i64 24 ; 2 uses
  %.not.i.i.i.i815 = icmp eq ptr %i.pb, %i.oa
  br i1 %.not.i.i.i.i815, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i, label %.lr.ph.i.i.i.i812, !llvm.loop !2

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i: ; preds = %.lr.ph.i.i.i.i812, %bb.bp
  %.0.lcssa.i.i.i.i816 = phi ptr [ %i.ox, %bb.bp ], [ %i.pc, %.lr.ph.i.i.i.i812 ]
  %i.pd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i816, i64 24 ; 2 uses
  %.not.i39.i.i817 = icmp eq ptr %i.nz, null
  br i1 %.not.i39.i.i817, label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i
  %i.pe = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.br unwind label %bb.bs     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !48
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.ph = load ptr, ptr %i.pg, align 8
  invoke void %i.ph(ptr noundef nonnull align 8 dereferenceable(8) %i.pe, ptr noundef nonnull %i.nz)
          to label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.pi = landingpad { ptr, i32 }
          catch ptr null
  %i.pj = extractvalue { ptr, i32 } %i.pi, 0
  tail call void @__clang_call_terminate(ptr %i.pj) #22
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i: ; preds = %bb.br, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i
  store ptr %i.ox, ptr %60, align 8, !tbaa !67
  store ptr %i.pd, ptr %i.ef, align 8, !tbaa !68
  %i.pk = getelementptr inbounds nuw [24 x i8], ptr %i.ox, i64 %i.or ; 2 uses
  store ptr %i.pk, ptr %i.cg, align 8, !tbaa !69
  br label %.noexc248

.noexc248:                                        ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i, %bb.bl
  %i.pl = phi ptr [ %i.ox, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i ], [ %i.nz, %bb.bl ]
  %i.pm = phi ptr [ %i.pk, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i ], [ %i.oa, %bb.bl ]
  %i.pn = phi ptr [ %i.pd, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i ], [ %i.og, %bb.bl ]
  %i.po = load float, ptr %i.od, align 4, !tbaa !223 ; 2 uses
  %i.pp = add nuw i64 %.03743.i237, 1             ; 2 uses
  %i.pq = load ptr, ptr %i.mp, align 8, !tbaa !211 ; 2 uses
  %i.pr = load ptr, ptr %i.mo, align 8, !tbaa !212 ; 2 uses
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = ashr exact i64 %i.pu, 4
  %i.pw = icmp ult i64 %i.pp, %i.pv
  br i1 %i.pw, label %.lr.ph.i235, label %._crit_edge.i238, !llvm.loop !118

bb.bt:                                            ; preds = %._crit_edge.i238
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #20
  %i.px = trunc nuw i64 %indvars.iv1287 to i16
  store i16 %i.px, ptr %44, align 4, !tbaa !87
  store float %.1.lcssa.i239, ptr %i.eo, align 4, !tbaa !88
  store float %i.o, ptr %i.ep, align 4, !tbaa !223
  %i.py = getelementptr inbounds i8, ptr %.lcssa.i240, i64 -12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eq, ptr noundef nonnull align 4 dereferenceable(12) %i.py, i64 12, i1 false), !tbaa.struct !216
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 4 dereferenceable(24) %44)
          to label %.noexc249 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc249:                                        ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit

_ZN3ozz9animation7offline12_GLOBAL__N_17CopyRawISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEES4_INS2_10SortingKeyIS6_EENS7_ISB_EEEEEvRKT_tfPT0_.exit: ; preds = %.noexc249, %._crit_edge.i238, %.noexc246, %.noexc244
  %indvars.iv.next1288 = add nuw nsw i64 %indvars.iv1287, 1 ; 2 uses
  %exitcond1291.not = icmp eq i64 %indvars.iv.next1288, %wide.trip.count1290
  br i1 %exitcond1291.not, label %.preheader.loopexit, label %bb.r, !llvm.loop !119

bb.bu:                                            ; preds = %bb.d
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.uk

bb.bv:                                            ; preds = %bb.i
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.uj

bb.bw:                                            ; preds = %.lr.ph1161, %bb.cu
  %.1991160 = phi i16 [ %.098.lcssa, %.lr.ph1161 ], [ %i.rl, %bb.cu ] ; 13 uses
  %.val.i250 = load ptr, ptr %58, align 8, !tbaa !213
  %.val7.i = load ptr, ptr %i.ex, align 8, !tbaa !213 ; 3 uses
  %i.qb = icmp eq ptr %.val.i250, %.val7.i
  br i1 %i.qb, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qc = getelementptr inbounds i8, ptr %.val7.i, i64 -24
  %i.qd = load i16, ptr %i.qc, align 4, !tbaa !74
  %i.qe = icmp eq i16 %i.qd, %.1991160
  br i1 %i.qe, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.qf = getelementptr inbounds i8, ptr %.val7.i, i64 -16
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !214
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %.0.i251 = phi float [ -1.000000e+00, %bb.bw ], [ %i.qg, %bb.by ], [ -1.000000e+00, %bb.bx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  store i16 %.1991160, ptr %38, align 4, !tbaa !74
  store float %.0.i251, ptr %i.ey, align 4, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ez, i8 0, i64 16, i1 false)
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 4 dereferenceable(24) %38)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  %.val.i253 = load ptr, ptr %58, align 8, !tbaa !213
  %.val7.i254 = load ptr, ptr %i.ex, align 8, !tbaa !213 ; 3 uses
  %i.qh = icmp eq ptr %.val.i253, %.val7.i254
  br i1 %i.qh, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qi = getelementptr inbounds i8, ptr %.val7.i254, i64 -24
  %i.qj = load i16, ptr %i.qi, align 4, !tbaa !74
  %i.qk = icmp eq i16 %i.qj, %.1991160
  br i1 %i.qk, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ql = getelementptr inbounds i8, ptr %.val7.i254, i64 -16
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !214
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca
  %.0.i255 = phi float [ -1.000000e+00, %bb.ca ], [ %i.qm, %bb.cc ], [ -1.000000e+00, %bb.cb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  store i16 %.1991160, ptr %37, align 4, !tbaa !74
  store float %.0.i255, ptr %i.fa, align 4, !tbaa !75
  store float %i.o, ptr %i.fb, align 4, !tbaa !215
  store <2 x float> zeroinitializer, ptr %i.fc, align 4
  store float 0.000000e+00, ptr %.sroa.2.0..sroa_idx.i256, align 4
  invoke fastcc void @_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 4 dereferenceable(24) %37)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  %.val.i259 = load ptr, ptr %59, align 8, !tbaa !217
  %.val7.i260 = load ptr, ptr %i.fd, align 8, !tbaa !217 ; 3 uses
  %i.qn = icmp eq ptr %.val.i259, %.val7.i260
  br i1 %i.qn, label %bb.ch, label %bb.cf

end_hunk_0
begin_hunk_1_@_ZNK3ozz9animation7offline16AnimationBuilderclERKNS1_12RawAnimationE:bb.a

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.xf = landingpad { ptr, i32 }
          catch ptr null
  %i.xg = extractvalue { ptr, i32 } %i.xf, 0
  call void @__clang_call_terminate(ptr %i.xg) #22
  unreachable

bb.dz:                                            ; preds = %.loopexit30.i, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i
  %.pre1299 = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i ], [ %.pre, %.loopexit30.i ] ; 3 uses
  %i.xh = phi ptr [ %.pre102.i, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i ], [ %i.ady, %.loopexit30.i ] ; 5 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.xh, %.pre1299
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i, label %.lr.ph.i.i.i.i71.preheader.i

.lr.ph.i.i.i.i71.preheader.i:                     ; preds = %bb.dz
  %i.xi = ptrtoaddr ptr %.pre1299 to i64
  %i.xj = ptrtoaddr ptr %i.xh to i64
  %reass.sub = sub i64 %i.xi, %i.xj
  %i.xk = and i64 %reass.sub, -8
  call void @llvm.memset.p0.i64(ptr align 4 %i.xh, i8 -1, i64 %i.xk, i1 false), !tbaa !93
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i71.preheader.i, %bb.dz
  %.val.i284 = load ptr, ptr %58, align 8, !tbaa !56 ; 9 uses
  %.val55.i = load ptr, ptr %i.th, align 8, !tbaa !57 ; 10 uses
  %.not67.i = icmp eq ptr %.val55.i, %.val.i284
  br i1 %.not67.i, label %.loopexit130.i, label %.lr.ph.i285

.lr.ph.i285:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i
  %i.xl = ptrtoint ptr %.val55.i to i64           ; 2 uses
  %i.xm = ptrtoint ptr %.val.i284 to i64          ; 2 uses
  %i.xn = sub i64 %i.xl, %i.xm
  %i.xo = sdiv exact i64 %i.xn, 24
  br label %bb.ea

bb.ea:                                            ; preds = %bb.fx, %.lr.ph.i285
  %.04966.i = phi i64 [ 0, %.lr.ph.i285 ], [ %i.adx, %bb.fx ] ; 4 uses
  %i.xp = getelementptr inbounds nuw [24 x i8], ptr %.val.i284, i64 %.04966.i
  %i.xq = load i16, ptr %i.xp, align 4, !tbaa !74 ; 3 uses
  %i.xr = zext i16 %i.xq to i64
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %i.xr ; 6 uses
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !231 ; 3 uses
  %.not.i286 = icmp ne i32 %i.xt, -1
  %i.xu = sext i32 %i.xt to i64
  %i.xv = sub i64 %.04966.i, %i.xu
  %i.xw = icmp ugt i64 %i.xv, 65535
  %or.cond.i = and i1 %.not.i286, %i.xw
  br i1 %or.cond.i, label %bb.eb, label %bb.fx

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %i.xx = load i32, ptr %i.xs, align 4, !tbaa !231
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [24 x i8], ptr %.val.i284, i64 %i.xy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %31, ptr noundef nonnull align 4 dereferenceable(24) %i.xz, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xs, i64 4 ; 2 uses
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !232
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds nuw [24 x i8], ptr %.val.i284, i64 %i.yc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %32, ptr noundef nonnull align 4 dereferenceable(24) %i.yd, i64 24, i1 false), !tbaa.struct !78
  %i.ye = load float, ptr %i.wv, align 4, !tbaa !214 ; 3 uses
  %i.yf = load float, ptr %i.ww, align 4, !tbaa !214
  %i.yg = fadd float %i.ye, %i.yf
  %i.yh = fmul float %i.yg, 5.000000e-01          ; 3 uses
  %i.yi = invoke { <2 x float>, float } @_ZN3ozz9animation7offline15LerpTranslationERKNS_4math6Float3ES5_f(ptr noundef nonnull align 4 dereferenceable(12) %i.wx, ptr noundef nonnull align 4 dereferenceable(12) %i.wy, float noundef 5.000000e-01)
          to label %bb.ec unwind label %.loopexit.split-lp32.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ec:                                            ; preds = %bb.eb
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.yi, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.yi, 1 ; 2 uses
  %i.yj = load i32, ptr %i.xs, align 4, !tbaa !231
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds [24 x i8], ptr %.val.i284, i64 %i.yk ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 24 ; 4 uses
  %.not.i.i73.i = icmp eq ptr %i.ym, %.val55.i
  br i1 %.not.i.i73.i, label %bb.eh, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.yn = ptrtoint ptr %i.ym to i64
  %i.yo = sub i64 %i.xl, %i.yn                    ; 3 uses
  %i.yp = icmp sgt i64 %i.yo, 24
  br i1 %i.yp, label %bb.ee, label %bb.ef, !prof !89

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.yl, ptr nonnull align 4 %i.ym, i64 %i.yo, i1 false)
  br label %bb.eh

bb.ef:                                            ; preds = %bb.ed
  %i.yq = icmp eq i64 %i.yo, 24
  br i1 %i.yq, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.yl, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.ym, i64 24, i1 false), !tbaa.struct !78
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ec
  %i.yr = getelementptr inbounds i8, ptr %.val55.i, i64 -24 ; 6 uses
  store ptr %i.yr, ptr %i.th, align 8, !tbaa !57
  %i.ys = load ptr, ptr %i.et, align 8, !tbaa !58 ; 2 uses
  %.not.i.i288 = icmp eq ptr %i.yr, %i.ys
  br i1 %.not.i.i288, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i16 %i.xq, ptr %i.yr, align 4, !tbaa !77
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds i8, ptr %.val55.i, i64 -20
  store float %i.ye, ptr %.sroa.611.0..sroa_idx.i, align 4, !tbaa !76
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %.val55.i, i64 -16
  store float %i.yh, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !76
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %.val55.i, i64 -12
  store <2 x float> %.fca.0.extract.i, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !76
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %.val55.i, i64 -4
  store float %.fca.1.extract.i, ptr %.sroa.10.0..sroa_idx.i, align 4, !tbaa !76
  store ptr %.val55.i, ptr %i.th, align 8, !tbaa !57
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i

bb.ej:                                            ; preds = %bb.eh
  %i.yt = ptrtoint ptr %i.yr to i64
  %i.yu = sub i64 %i.yt, %i.xm                    ; 3 uses
  %i.yv = icmp eq i64 %i.yu, 9223372036854775800
  br i1 %i.yv, label %.invoke.i, label %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ej
  %i.yw = sdiv exact i64 %i.yu, 24                ; 3 uses
  %i.yx = icmp eq ptr %i.yr, %.val.i284           ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.yx, i64 1, i64 %i.yw
  %i.yy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.yw ; 2 uses
  %i.yz = icmp ult i64 %i.yy, %i.yw
  %i.za = call i64 @llvm.umin.i64(i64 %i.yy, i64 384307168202282325)
  %i.zb = select i1 %i.yz, i64 384307168202282325, i64 %i.za ; 3 uses
  %.not.i.i.i74.i = icmp ne i64 %i.zb, 0
  call void @llvm.assume(i1 %.not.i.i.i74.i)
  %i.zc = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ek unwind label %bb.el     ; 2 uses

bb.ek:                                            ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i
  %i.zd = mul nuw nsw i64 %i.zb, 24
  %i.ze = load ptr, ptr %i.zc, align 8, !tbaa !48
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zg = load ptr, ptr %i.zf, align 8
  %i.zh = invoke noundef ptr %i.zg(ptr noundef nonnull align 8 dereferenceable(8) %i.zc, i64 noundef %i.zd, i64 noundef 4)
          to label %bb.em unwind label %bb.el     ; 5 uses

bb.el:                                            ; preds = %bb.ek, %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i
  %i.zi = landingpad { ptr, i32 }
          catch ptr null
  %i.zj = extractvalue { ptr, i32 } %i.zi, 0
  call void @__clang_call_terminate(ptr %i.zj) #22
  unreachable

bb.em:                                            ; preds = %bb.ek
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zh, i64 %i.yu ; 5 uses
  store i16 %i.xq, ptr %i.zk, align 4, !tbaa !77
  %.sroa.611.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.zk, i64 4
  store float %i.ye, ptr %.sroa.611.0..sroa_idx12.i, align 4, !tbaa !76
  %.sroa.7.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  store float %i.yh, ptr %.sroa.7.0..sroa_idx14.i, align 4, !tbaa !76
  %.sroa.9.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.zk, i64 12
  store <2 x float> %.fca.0.extract.i, ptr %.sroa.9.0..sroa_idx16.i, align 4, !tbaa !76
  %.sroa.10.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.zk, i64 20
  store float %.fca.1.extract.i, ptr %.sroa.10.0..sroa_idx18.i, align 4, !tbaa !76
  br i1 %i.yx, label %.loopexit1032, label %.lr.ph.i.i.i.i75.i

.lr.ph.i.i.i.i75.i:                               ; preds = %bb.em, %.lr.ph.i.i.i.i75.i
  %.04.i.i.i.i.i = phi ptr [ %i.zm, %.lr.ph.i.i.i.i75.i ], [ %i.zh, %bb.em ] ; 2 uses
  %.sroa.01.03.i.i.i.i.i = phi ptr [ %i.zl, %.lr.ph.i.i.i.i75.i ], [ %.val.i284, %bb.em ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.04.i.i.i.i.i, ptr noundef nonnull readonly align 4 dereferenceable(24) %.sroa.01.03.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !78
  %i.zl = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i.i.i, i64 24 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i76.i = icmp eq ptr %i.zl, %i.yr
  br i1 %.not.i.i.i.i76.i, label %.loopexit1032, label %.lr.ph.i.i.i.i75.i, !llvm.loop !0

.loopexit1032:                                    ; preds = %.lr.ph.i.i.i.i75.i, %bb.em
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.zh, %bb.em ], [ %i.zm, %.lr.ph.i.i.i.i75.i ]
  %i.zn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %i.zo = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.en unwind label %bb.eo     ; 2 uses

bb.en:                                            ; preds = %.loopexit1032
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !48
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 24
  %i.zr = load ptr, ptr %i.zq, align 8
  invoke void %i.zr(ptr noundef nonnull align 8 dereferenceable(8) %i.zo, ptr noundef nonnull %.val.i284)
          to label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.loopexit1032
  %i.zs = landingpad { ptr, i32 }
          catch ptr null
  %i.zt = extractvalue { ptr, i32 } %i.zs, 0
  call void @__clang_call_terminate(ptr %i.zt) #22
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i: ; preds = %bb.en
  store ptr %i.zh, ptr %58, align 8, !tbaa !56
  store ptr %i.zn, ptr %i.th, align 8, !tbaa !57
  %i.zu = getelementptr inbounds nuw [24 x i8], ptr %i.zh, i64 %i.zb ; 2 uses
  store ptr %i.zu, ptr %i.et, align 8, !tbaa !58
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i, %bb.ei
  %i.zv = phi ptr [ %i.zu, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i ], [ %i.ys, %bb.ei ] ; 3 uses
  %i.zw = phi ptr [ %i.zn, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i ], [ %.val55.i, %bb.ei ] ; 4 uses
  store float %i.yh, ptr %i.wz, align 4, !tbaa !75
  %.not.i77.i = icmp eq ptr %i.zw, %i.zv
  br i1 %.not.i77.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.zw, ptr noundef nonnull readonly align 4 dereferenceable(24) %31, i64 24, i1 false), !tbaa.struct !78
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 24 ; 2 uses
  store ptr %i.zx, ptr %i.th, align 8, !tbaa !57
  %.val60.pre.i = load ptr, ptr %58, align 8, !tbaa !213
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i

bb.eq:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i
  %.val.i.i78.i = load ptr, ptr %58, align 8, !tbaa !56 ; 5 uses
  %i.zy = ptrtoint ptr %i.zw to i64
  %i.zz = ptrtoint ptr %.val.i.i78.i to i64
  %i.aaa = sub i64 %i.zy, %i.zz                   ; 3 uses
  %i.aab = icmp eq i64 %i.aaa, 9223372036854775800
  br i1 %i.aab, label %.invoke.i, label %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i79.i

.invoke.i:                                        ; preds = %bb.eq, %bb.ej
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.cont.i unwind label %.loopexit.split-lp32.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i79.i: ; preds = %bb.eq
  %i.aac = sdiv exact i64 %i.aaa, 24              ; 3 uses
  %i.aad = icmp eq ptr %i.zv, %.val.i.i78.i       ; 2 uses
  %.sroa.speculated.i.i.i80.i = select i1 %i.aad, i64 1, i64 %i.aac
  %i.aae = add nsw i64 %.sroa.speculated.i.i.i80.i, %i.aac ; 2 uses
  %i.aaf = icmp ult i64 %i.aae, %i.aac
  %i.aag = call i64 @llvm.umin.i64(i64 %i.aae, i64 384307168202282325)
  %i.aah = select i1 %i.aaf, i64 384307168202282325, i64 %i.aag ; 3 uses
  %.not.i.i.i81.i = icmp ne i64 %i.aah, 0
  call void @llvm.assume(i1 %.not.i.i.i81.i)
  %i.aai = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.er unwind label %bb.es     ; 2 uses

bb.er:                                            ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i79.i
  %i.aaj = mul nuw nsw i64 %i.aah, 24
  %i.aak = load ptr, ptr %i.aai, align 8, !tbaa !48
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aam = load ptr, ptr %i.aal, align 8
  %i.aan = invoke noundef ptr %i.aam(ptr noundef nonnull align 8 dereferenceable(8) %i.aai, i64 noundef %i.aaj, i64 noundef 4)
          to label %bb.et unwind label %bb.es     ; 6 uses

bb.es:                                            ; preds = %bb.er, %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i79.i
  %i.aao = landingpad { ptr, i32 }
          catch ptr null
  %i.aap = extractvalue { ptr, i32 } %i.aao, 0
  call void @__clang_call_terminate(ptr %i.aap) #22
  unreachable

bb.et:                                            ; preds = %bb.er
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.aaa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.aaq, ptr noundef nonnull readonly align 4 dereferenceable(24) %31, i64 24, i1 false), !tbaa.struct !78
  br i1 %i.aad, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i86.i, label %.lr.ph.i.i.i.i82.i

.lr.ph.i.i.i.i82.i:                               ; preds = %bb.et, %.lr.ph.i.i.i.i82.i
  %.04.i.i.i.i83.i = phi ptr [ %i.aas, %.lr.ph.i.i.i.i82.i ], [ %i.aan, %bb.et ] ; 2 uses
  %.sroa.01.03.i.i.i.i84.i = phi ptr [ %i.aar, %.lr.ph.i.i.i.i82.i ], [ %.val.i.i78.i, %bb.et ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.04.i.i.i.i83.i, ptr noundef nonnull readonly align 4 dereferenceable(24) %.sroa.01.03.i.i.i.i84.i, i64 24, i1 false), !tbaa.struct !78
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i.i84.i, i64 24 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i83.i, i64 24 ; 2 uses
  %.not.i.i.i.i85.i = icmp eq ptr %i.aar, %i.zv
  br i1 %.not.i.i.i.i85.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i86.i, label %.lr.ph.i.i.i.i82.i, !llvm.loop !0

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i86.i: ; preds = %.lr.ph.i.i.i.i82.i, %bb.et
  %.0.lcssa.i.i.i.i87.i = phi ptr [ %i.aan, %bb.et ], [ %i.aas, %.lr.ph.i.i.i.i82.i ]
  %i.aat = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i87.i, i64 24 ; 2 uses
  %.not.i39.i.i88.i = icmp eq ptr %.val.i.i78.i, null
  br i1 %.not.i39.i.i88.i, label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i89.i, label %bb.eu

bb.eu:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i86.i
  %i.aau = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ev unwind label %bb.ew     ; 2 uses

bb.ev:                                            ; preds = %bb.eu
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !48
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 24
  %i.aax = load ptr, ptr %i.aaw, align 8
  invoke void %i.aax(ptr noundef nonnull align 8 dereferenceable(8) %i.aau, ptr noundef nonnull %.val.i.i78.i)
          to label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i89.i unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.aay = landingpad { ptr, i32 }
          catch ptr null
  %i.aaz = extractvalue { ptr, i32 } %i.aay, 0
  call void @__clang_call_terminate(ptr %i.aaz) #22
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i89.i: ; preds = %bb.ev, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i86.i
  store ptr %i.aan, ptr %58, align 8, !tbaa !56
  store ptr %i.aat, ptr %i.th, align 8, !tbaa !57
  %i.aba = getelementptr inbounds nuw [24 x i8], ptr %i.aan, i64 %i.aah
  store ptr %i.aba, ptr %i.et, align 8, !tbaa !58
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i89.i, %bb.ep
  %.val57.i = phi ptr [ %i.aat, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i89.i ], [ %i.zx, %bb.ep ] ; 6 uses
  %.val60.i = phi ptr [ %i.aan, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i89.i ], [ %.val60.pre.i, %bb.ep ]
  %i.abb = load i32, ptr %i.ya, align 4, !tbaa !232
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr inbounds [24 x i8], ptr %.val60.i, i64 %i.abc ; 10 uses
  %i.abe = getelementptr inbounds i8, ptr %.val57.i, i64 -48 ; 6 uses
  %i.abf = icmp eq ptr %i.abd, %i.abe
  br i1 %i.abf, label %.loopexit30.i, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i
  %i.abg = ptrtoint ptr %i.abe to i64
  %i.abh = ptrtoint ptr %i.abd to i64
  %i.abi = sub i64 %i.abg, %i.abh                 ; 7 uses
  %i.abj = sdiv exact i64 %i.abi, 24              ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.smin.i64(i64 %i.abj, i64 2) ; 2 uses
  %i.abk = icmp sgt i64 %i.abi, 0
  br i1 %i.abk, label %.lr.ph.i.i.i.i92.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i

.lr.ph.i.i.i.i92.i:                               ; preds = %bb.ex, %select.unfold.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.abp, %select.unfold.i.i.i.i.i ], [ %.sroa.speculated.i.i.i, %bb.ex ] ; 5 uses
  %i.abl = mul nuw nsw i64 %.011.i.i.i.i.i, 24    ; 2 uses
  %i.abm = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.abl, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #23 ; 7 uses
  %.not.i.i.i.i93.i = icmp eq ptr %i.abm, null
  br i1 %.not.i.i.i.i93.i, label %select.unfold.i.i.i.i.i, label %bb.ey

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i92.i
  %i.abn = icmp eq i64 %.011.i.i.i.i.i, 1
  %i.abo = add nuw nsw i64 %.011.i.i.i.i.i, 1
  %i.abp = lshr i64 %i.abo, 1
  br i1 %i.abn, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i, label %.lr.ph.i.i.i.i92.i, !llvm.loop !125

bb.ey:                                            ; preds = %.lr.ph.i.i.i.i92.i
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.abl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.abm, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.abd, i64 24, i1 false), !tbaa.struct !78
  %.not18.i.i.i.i.i.i = icmp eq i64 %.011.i.i.i.i.i, 1
  br i1 %.not18.i.i.i.i.i.i, label %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i, label %.lr.ph.i.i.preheader.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %bb.ey
  %.01317.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abm, i64 24
  br label %.lr.ph.i.i.i.i.i94.i

.lr.ph.i.i.i.i.i94.i:                             ; preds = %.lr.ph.i.i.i.i.i94.i, %.lr.ph.i.i.preheader.i.i.i.i
  %.01320.i.i.i.i.i.i = phi ptr [ %.013.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i94.i ], [ %.01317.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i.i = phi ptr [ %i.abr, %.lr.ph.i.i.i.i.i94.i ], [ %i.abm, %.lr.ph.i.i.preheader.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.01320.i.i.i.i.i.i, ptr noundef nonnull readonly align 4 dereferenceable(24) %.019.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !78
  %i.abr = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.i, i64 24 ; 2 uses
  %.013.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.013.i.i.i.i.i.i, %i.abq
  br i1 %.not.i.i.i.i.i.i, label %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i94.i, !llvm.loop !126

_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i94.i, %bb.ey
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.abm, %bb.ey ], [ %i.abr, %.lr.ph.i.i.i.i.i94.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.abd, ptr noundef nonnull align 4 dereferenceable(24) %.0.lcssa.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !78
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i: ; preds = %select.unfold.i.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i, %bb.ex
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.ex ], [ %.011.i.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i ], [ 0, %select.unfold.i.i.i.i.i ] ; 4 uses
  %.sroa.11.0.i.i.i = phi ptr [ null, %bb.ex ], [ %i.abm, %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation14TranslationKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i ], [ null, %select.unfold.i.i.i.i.i ] ; 14 uses
  %i.abs = icmp eq i64 %.sroa.5.0.i.i.i, %.sroa.speculated.i.i.i
  br i1 %i.abs, label %bb.ez, label %bb.fu, !prof !89

bb.ez:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i
  %.not.i95.i = icmp sgt i64 %i.abi, 48
  br i1 %.not.i95.i, label %bb.fk, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.abt = icmp sgt i64 %i.abi, 24
  br i1 %i.abt, label %bb.fb, label %bb.fc, !prof !89

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.11.0.i.i.i, ptr align 4 %i.abd, i64 %i.abi, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i

bb.fc:                                            ; preds = %bb.fa
  %i.abu = icmp eq i64 %i.abi, 24
  br i1 %i.abu, label %bb.fd, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.11.0.i.i.i, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.abd, i64 24, i1 false), !tbaa.struct !78
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i: ; preds = %bb.fd, %bb.fc, %bb.fb
  %i.abv = getelementptr inbounds i8, ptr %.sroa.11.0.i.i.i, i64 %i.abi ; 2 uses
  br label %.lr.ph.i.i.i290

.lr.ph.i.i.i290:                                  ; preds = %bb.fg, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i
  %.027.i.i.i = phi ptr [ %.1.i.i.i, %bb.fg ], [ %.sroa.11.0.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i ] ; 8 uses
  %.sroa.020.026.i.i.i = phi ptr [ %.sroa.020.1.i.i.i, %bb.fg ], [ %i.abe, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i ] ; 6 uses
  %.sroa.018.025.i.i.i = phi ptr [ %i.aci, %bb.fg ], [ %i.abd, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation14TranslationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i ] ; 5 uses
  %.not21.i.i.i = icmp eq ptr %.sroa.020.026.i.i.i, %.val57.i
  br i1 %.not21.i.i.i, label %.critedge.i.i.i, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph.i.i.i290
  %i.abw = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i.i.i, i64 4
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !75
  %i.aby = getelementptr inbounds nuw i8, ptr %.027.i.i.i, i64 4
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !75
  %i.aca = fsub float %i.abx, %i.abz              ; 2 uses
  %i.acb = fcmp olt float %i.aca, 0.000000e+00
  br i1 %i.acb, label %.noexc97.i.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.acc = fcmp oeq float %i.aca, 0.000000e+00
  br i1 %i.acc, label %.noexc97.i, label %.noexc97.i.thread989

.noexc97.i:                                       ; preds = %bb.ff
  %i.acd = load i16, ptr %.sroa.020.026.i.i.i, align 4, !tbaa !74
  %i.ace = load i16, ptr %.027.i.i.i, align 4, !tbaa !74
  %i.acf = icmp ult i16 %i.acd, %i.ace
  br i1 %i.acf, label %.noexc97.i.thread, label %.noexc97.i.thread989

.noexc97.i.thread:                                ; preds = %bb.fe, %.noexc97.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.018.025.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.020.026.i.i.i, i64 24, i1 false), !tbaa.struct !78
  %i.acg = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i.i.i, i64 24
end_hunk_1
begin_hunk_2_@_ZNK3ozz9animation7offline16AnimationBuilderclERKNS1_12RawAnimationE:bb.a
  %i.ahv = landingpad { ptr, i32 }
          catch ptr null
  %i.ahw = extractvalue { ptr, i32 } %i.ahv, 0
  call void @__clang_call_terminate(ptr %i.ahw) #22
  unreachable

bb.gw:                                            ; preds = %.loopexit30.i337, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i304
  %.pre1301.pre1328 = phi ptr [ %.0.lcssa.i.i.i.i306, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i304 ], [ %.pre1301.pre1329, %.loopexit30.i337 ] ; 10 uses
  %.pre13011305 = phi ptr [ %.0.lcssa.i.i.i.i306, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i304 ], [ %.pre1301, %.loopexit30.i337 ] ; 3 uses
  %i.ahx = phi ptr [ %.pre102.i305, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i304 ], [ %.pre.i3361303, %.loopexit30.i337 ] ; 12 uses
  %i.ahy = phi ptr [ %.pre102.i305, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i304 ], [ %i.aor, %.loopexit30.i337 ] ; 5 uses
  %.not5.i.i.i.i.i307 = icmp eq ptr %i.ahy, %.pre13011305
  br i1 %.not5.i.i.i.i.i307, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i308, label %.lr.ph.i.i.i.i70.preheader.i

.lr.ph.i.i.i.i70.preheader.i:                     ; preds = %bb.gw
  %i.ahz = ptrtoaddr ptr %.pre13011305 to i64
  %i.aia = ptrtoaddr ptr %i.ahy to i64
  %reass.sub1165 = sub i64 %i.ahz, %i.aia
  %i.aib = and i64 %reass.sub1165, -8
  call void @llvm.memset.p0.i64(ptr align 4 %i.ahy, i8 -1, i64 %i.aib, i1 false), !tbaa !93
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i308

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i308: ; preds = %.lr.ph.i.i.i.i70.preheader.i, %bb.gw
  %.val.i309 = load ptr, ptr %59, align 8, !tbaa !62 ; 9 uses
  %.val54.i = load ptr, ptr %i.rm, align 8, !tbaa !63 ; 10 uses
  %.not67.i310 = icmp eq ptr %.val54.i, %.val.i309
  br i1 %.not67.i310, label %.loopexit130.i315, label %.lr.ph.i311

.lr.ph.i311:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i308
  %i.aic = ptrtoint ptr %.val54.i to i64          ; 2 uses
  %i.aid = ptrtoint ptr %.val.i309 to i64         ; 2 uses
  %i.aie = sub i64 %i.aic, %i.aid
  %i.aif = sdiv exact i64 %i.aie, 28
  br label %bb.gx

bb.gx:                                            ; preds = %bb.iu, %.lr.ph.i311
  %.04866.i = phi i64 [ 0, %.lr.ph.i311 ], [ %i.aoq, %bb.iu ] ; 4 uses
  %i.aig = getelementptr inbounds nuw [28 x i8], ptr %.val.i309, i64 %.04866.i
  %i.aih = load i16, ptr %i.aig, align 4, !tbaa !82 ; 3 uses
  %i.aii = zext i16 %i.aih to i64
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr %i.ahy, i64 %i.aii ; 6 uses
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !231 ; 3 uses
  %.not.i312 = icmp ne i32 %i.aik, -1
  %i.ail = sext i32 %i.aik to i64
  %i.aim = sub i64 %.04866.i, %i.ail
  %i.ain = icmp ugt i64 %i.aim, 65535
  %or.cond.i313 = and i1 %.not.i312, %i.ain
  br i1 %or.cond.i313, label %bb.gy, label %bb.iu

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.aio = load i32, ptr %i.aij, align 4, !tbaa !231
  %i.aip = sext i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw [28 x i8], ptr %.val.i309, i64 %i.aip
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %26, ptr noundef nonnull align 4 dereferenceable(28) %i.aiq, i64 28, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.air = getelementptr inbounds nuw i8, ptr %i.aij, i64 4 ; 2 uses
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !232
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds nuw [28 x i8], ptr %.val.i309, i64 %i.ait
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %27, ptr noundef nonnull align 4 dereferenceable(28) %i.aiu, i64 28, i1 false), !tbaa.struct !84
  %i.aiv = load float, ptr %i.ahm, align 4, !tbaa !218 ; 3 uses
  %i.aiw = load float, ptr %i.ahn, align 4, !tbaa !218
  %i.aix = fadd float %i.aiv, %i.aiw
  %i.aiy = fmul float %i.aix, 5.000000e-01        ; 3 uses
  %i.aiz = invoke { <2 x float>, <2 x float> } @_ZN3ozz9animation7offline12LerpRotationERKNS_4math10QuaternionES5_f(ptr noundef nonnull align 4 dereferenceable(16) %i.aho, ptr noundef nonnull align 4 dereferenceable(16) %i.ahp, float noundef 5.000000e-01)
          to label %bb.gz unwind label %.loopexit.split-lp32.loopexit.split-lp.i317.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.gz:                                            ; preds = %bb.gy
  %i.aja = extractvalue { <2 x float>, <2 x float> } %i.aiz, 0 ; 2 uses
  %i.ajb = extractvalue { <2 x float>, <2 x float> } %i.aiz, 1 ; 2 uses
  %i.ajc = load i32, ptr %i.aij, align 4, !tbaa !231
  %i.ajd = sext i32 %i.ajc to i64
  %i.aje = getelementptr inbounds [28 x i8], ptr %.val.i309, i64 %i.ajd ; 3 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 28 ; 4 uses
  %.not.i.i72.i = icmp eq ptr %i.ajf, %.val54.i
  br i1 %.not.i.i72.i, label %bb.he, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ajg = ptrtoint ptr %i.ajf to i64
  %i.ajh = sub i64 %i.aic, %i.ajg                 ; 3 uses
  %i.aji = icmp sgt i64 %i.ajh, 28
  br i1 %i.aji, label %bb.hb, label %bb.hc, !prof !89

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aje, ptr nonnull align 4 %i.ajf, i64 %i.ajh, i1 false)
  br label %bb.he

bb.hc:                                            ; preds = %bb.ha
  %i.ajj = icmp eq i64 %i.ajh, 28
  br i1 %i.ajj, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aje, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.ajf, i64 28, i1 false), !tbaa.struct !84
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc, %bb.hb, %bb.gz
  %i.ajk = getelementptr inbounds i8, ptr %.val54.i, i64 -28 ; 6 uses
  store ptr %i.ajk, ptr %i.rm, align 8, !tbaa !63
  %i.ajl = load ptr, ptr %i.eu, align 8, !tbaa !64 ; 2 uses
  %.not.i.i323 = icmp eq ptr %i.ajk, %i.ajl
  br i1 %.not.i.i323, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  store i16 %i.aih, ptr %i.ajk, align 4, !tbaa !77
  %.sroa.611.0..sroa_idx.i324 = getelementptr inbounds i8, ptr %.val54.i, i64 -24
  store float %i.aiv, ptr %.sroa.611.0..sroa_idx.i324, align 4, !tbaa !76
  %.sroa.7.0..sroa_idx.i325 = getelementptr inbounds i8, ptr %.val54.i, i64 -20
  store float %i.aiy, ptr %.sroa.7.0..sroa_idx.i325, align 4, !tbaa !76
  %.sroa.9.0..sroa_idx.i326 = getelementptr inbounds i8, ptr %.val54.i, i64 -16
  store <2 x float> %i.aja, ptr %.sroa.9.0..sroa_idx.i326, align 4, !tbaa !76
  %.sroa.10.0..sroa_idx.i327 = getelementptr inbounds i8, ptr %.val54.i, i64 -8
  store <2 x float> %i.ajb, ptr %.sroa.10.0..sroa_idx.i327, align 4, !tbaa !76
  store ptr %.val54.i, ptr %i.rm, align 8, !tbaa !63
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i

bb.hg:                                            ; preds = %bb.he
  %i.ajm = ptrtoint ptr %i.ajk to i64
  %i.ajn = sub i64 %i.ajm, %i.aid                 ; 3 uses
  %i.ajo = icmp eq i64 %i.ajn, 9223372036854775800
  br i1 %i.ajo, label %.invoke.i368, label %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.hg
  %i.ajp = sdiv exact i64 %i.ajn, 28              ; 3 uses
  %i.ajq = icmp eq ptr %i.ajk, %.val.i309         ; 2 uses
  %.sroa.speculated.i.i.i.i371 = select i1 %i.ajq, i64 1, i64 %i.ajp
  %i.ajr = add nsw i64 %.sroa.speculated.i.i.i.i371, %i.ajp ; 2 uses
  %i.ajs = icmp ult i64 %i.ajr, %i.ajp
  %i.ajt = call i64 @llvm.umin.i64(i64 %i.ajr, i64 329406144173384850)
  %i.aju = select i1 %i.ajs, i64 329406144173384850, i64 %i.ajt ; 3 uses
  %.not.i.i.i73.i = icmp ne i64 %i.aju, 0
  call void @llvm.assume(i1 %.not.i.i.i73.i)
  %i.ajv = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.hh unwind label %bb.hi     ; 2 uses

bb.hh:                                            ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ajw = mul nuw nsw i64 %i.aju, 28
  %i.ajx = load ptr, ptr %i.ajv, align 8, !tbaa !48
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 16
  %i.ajz = load ptr, ptr %i.ajy, align 8
  %i.aka = invoke noundef ptr %i.ajz(ptr noundef nonnull align 8 dereferenceable(8) %i.ajv, i64 noundef %i.ajw, i64 noundef 4)
          to label %bb.hj unwind label %bb.hi     ; 5 uses

bb.hi:                                            ; preds = %bb.hh, %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i
  %i.akb = landingpad { ptr, i32 }
          catch ptr null
  %i.akc = extractvalue { ptr, i32 } %i.akb, 0
  call void @__clang_call_terminate(ptr %i.akc) #22
  unreachable

bb.hj:                                            ; preds = %bb.hh
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.ajn ; 5 uses
  store i16 %i.aih, ptr %i.akd, align 4, !tbaa !77
  %.sroa.611.0..sroa_idx12.i372 = getelementptr inbounds nuw i8, ptr %i.akd, i64 4
  store float %i.aiv, ptr %.sroa.611.0..sroa_idx12.i372, align 4, !tbaa !76
  %.sroa.7.0..sroa_idx14.i373 = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  store float %i.aiy, ptr %.sroa.7.0..sroa_idx14.i373, align 4, !tbaa !76
  %.sroa.9.0..sroa_idx16.i374 = getelementptr inbounds nuw i8, ptr %i.akd, i64 12
  store <2 x float> %i.aja, ptr %.sroa.9.0..sroa_idx16.i374, align 4, !tbaa !76
  %.sroa.10.0..sroa_idx18.i375 = getelementptr inbounds nuw i8, ptr %i.akd, i64 20
  store <2 x float> %i.ajb, ptr %.sroa.10.0..sroa_idx18.i375, align 4, !tbaa !76
  br i1 %i.ajq, label %.loopexit1025, label %.lr.ph.i.i.i.i74.i

.lr.ph.i.i.i.i74.i:                               ; preds = %bb.hj, %.lr.ph.i.i.i.i74.i
  %.04.i.i.i.i.i376 = phi ptr [ %i.akf, %.lr.ph.i.i.i.i74.i ], [ %i.aka, %bb.hj ] ; 2 uses
  %.sroa.01.03.i.i.i.i.i377 = phi ptr [ %i.ake, %.lr.ph.i.i.i.i74.i ], [ %.val.i309, %bb.hj ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.04.i.i.i.i.i376, ptr noundef nonnull readonly align 4 dereferenceable(28) %.sroa.01.03.i.i.i.i.i377, i64 28, i1 false), !tbaa.struct !84
  %i.ake = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i.i.i377, i64 28 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i376, i64 28 ; 2 uses
  %.not.i.i.i.i75.i = icmp eq ptr %i.ake, %i.ajk
  br i1 %.not.i.i.i.i75.i, label %.loopexit1025, label %.lr.ph.i.i.i.i74.i, !llvm.loop !1

.loopexit1025:                                    ; preds = %.lr.ph.i.i.i.i74.i, %bb.hj
  %.0.lcssa.i.i.i.i.i378 = phi ptr [ %i.aka, %bb.hj ], [ %i.akf, %.lr.ph.i.i.i.i74.i ]
  %i.akg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i378, i64 28 ; 2 uses
  %i.akh = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.hk unwind label %bb.hl     ; 2 uses

bb.hk:                                            ; preds = %.loopexit1025
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !48
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 24
  %i.akk = load ptr, ptr %i.akj, align 8
  invoke void %i.akk(ptr noundef nonnull align 8 dereferenceable(8) %i.akh, ptr noundef nonnull %.val.i309)
          to label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i unwind label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %.loopexit1025
  %i.akl = landingpad { ptr, i32 }
          catch ptr null
  %i.akm = extractvalue { ptr, i32 } %i.akl, 0
  call void @__clang_call_terminate(ptr %i.akm) #22
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i: ; preds = %bb.hk
  store ptr %i.aka, ptr %59, align 8, !tbaa !62
  store ptr %i.akg, ptr %i.rm, align 8, !tbaa !63
  %i.akn = getelementptr inbounds nuw [28 x i8], ptr %i.aka, i64 %i.aju ; 2 uses
  store ptr %i.akn, ptr %i.eu, align 8, !tbaa !64
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i, %bb.hf
  %i.ako = phi ptr [ %i.akn, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i ], [ %i.ajl, %bb.hf ] ; 3 uses
  %i.akp = phi ptr [ %i.akg, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i ], [ %.val54.i, %bb.hf ] ; 4 uses
  store float %i.aiy, ptr %i.ahq, align 4, !tbaa !83
  %.not.i76.i = icmp eq ptr %i.akp, %i.ako
  br i1 %.not.i76.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.akp, ptr noundef nonnull readonly align 4 dereferenceable(28) %26, i64 28, i1 false), !tbaa.struct !84
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 28 ; 2 uses
  store ptr %i.akq, ptr %i.rm, align 8, !tbaa !63
  %.val59.pre.i = load ptr, ptr %59, align 8, !tbaa !217
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit90.i

bb.hn:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i
  %.val.i.i77.i = load ptr, ptr %59, align 8, !tbaa !62 ; 5 uses
  %i.akr = ptrtoint ptr %i.akp to i64
  %i.aks = ptrtoint ptr %.val.i.i77.i to i64
  %i.akt = sub i64 %i.akr, %i.aks                 ; 3 uses
  %i.aku = icmp eq i64 %i.akt, 9223372036854775800
  br i1 %i.aku, label %.invoke.i368, label %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i78.i

.invoke.i368:                                     ; preds = %bb.hn, %bb.hg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.cont.i369 unwind label %.loopexit.split-lp32.loopexit.split-lp.i317.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i369:                                       ; preds = %.invoke.i368
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i78.i: ; preds = %bb.hn
  %i.akv = sdiv exact i64 %i.akt, 28              ; 3 uses
  %i.akw = icmp eq ptr %i.ako, %.val.i.i77.i      ; 2 uses
  %.sroa.speculated.i.i.i79.i = select i1 %i.akw, i64 1, i64 %i.akv
  %i.akx = add nsw i64 %.sroa.speculated.i.i.i79.i, %i.akv ; 2 uses
  %i.aky = icmp ult i64 %i.akx, %i.akv
  %i.akz = call i64 @llvm.umin.i64(i64 %i.akx, i64 329406144173384850)
  %i.ala = select i1 %i.aky, i64 329406144173384850, i64 %i.akz ; 3 uses
  %.not.i.i.i80.i = icmp ne i64 %i.ala, 0
  call void @llvm.assume(i1 %.not.i.i.i80.i)
  %i.alb = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ho unwind label %bb.hp     ; 2 uses

bb.ho:                                            ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i78.i
  %i.alc = mul nuw nsw i64 %i.ala, 28
  %i.ald = load ptr, ptr %i.alb, align 8, !tbaa !48
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 16
  %i.alf = load ptr, ptr %i.ale, align 8
  %i.alg = invoke noundef ptr %i.alf(ptr noundef nonnull align 8 dereferenceable(8) %i.alb, i64 noundef %i.alc, i64 noundef 4)
          to label %bb.hq unwind label %bb.hp     ; 6 uses

bb.hp:                                            ; preds = %bb.ho, %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i78.i
  %i.alh = landingpad { ptr, i32 }
          catch ptr null
  %i.ali = extractvalue { ptr, i32 } %i.alh, 0
  call void @__clang_call_terminate(ptr %i.ali) #22
  unreachable

bb.hq:                                            ; preds = %bb.ho
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alg, i64 %i.akt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.alj, ptr noundef nonnull readonly align 4 dereferenceable(28) %26, i64 28, i1 false), !tbaa.struct !84
  br i1 %i.akw, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i85.i, label %.lr.ph.i.i.i.i81.i

.lr.ph.i.i.i.i81.i:                               ; preds = %bb.hq, %.lr.ph.i.i.i.i81.i
  %.04.i.i.i.i82.i = phi ptr [ %i.all, %.lr.ph.i.i.i.i81.i ], [ %i.alg, %bb.hq ] ; 2 uses
  %.sroa.01.03.i.i.i.i83.i = phi ptr [ %i.alk, %.lr.ph.i.i.i.i81.i ], [ %.val.i.i77.i, %bb.hq ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.04.i.i.i.i82.i, ptr noundef nonnull readonly align 4 dereferenceable(28) %.sroa.01.03.i.i.i.i83.i, i64 28, i1 false), !tbaa.struct !84
  %i.alk = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i.i83.i, i64 28 ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i82.i, i64 28 ; 2 uses
  %.not.i.i.i.i84.i = icmp eq ptr %i.alk, %i.ako
  br i1 %.not.i.i.i.i84.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i85.i, label %.lr.ph.i.i.i.i81.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i85.i: ; preds = %.lr.ph.i.i.i.i81.i, %bb.hq
  %.0.lcssa.i.i.i.i86.i = phi ptr [ %i.alg, %bb.hq ], [ %i.all, %.lr.ph.i.i.i.i81.i ]
  %i.alm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i86.i, i64 28 ; 2 uses
  %.not.i39.i.i87.i = icmp eq ptr %.val.i.i77.i, null
  br i1 %.not.i39.i.i87.i, label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i88.i, label %bb.hr

bb.hr:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i85.i
  %i.aln = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.hs unwind label %bb.ht     ; 2 uses

bb.hs:                                            ; preds = %bb.hr
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !48
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 24
  %i.alq = load ptr, ptr %i.alp, align 8
  invoke void %i.alq(ptr noundef nonnull align 8 dereferenceable(8) %i.aln, ptr noundef nonnull %.val.i.i77.i)
          to label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i88.i unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.alr = landingpad { ptr, i32 }
          catch ptr null
  %i.als = extractvalue { ptr, i32 } %i.alr, 0
  call void @__clang_call_terminate(ptr %i.als) #22
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i88.i: ; preds = %bb.hs, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i85.i
  store ptr %i.alg, ptr %59, align 8, !tbaa !62
  store ptr %i.alm, ptr %i.rm, align 8, !tbaa !63
  %i.alt = getelementptr inbounds nuw [28 x i8], ptr %i.alg, i64 %i.ala
  store ptr %i.alt, ptr %i.eu, align 8, !tbaa !64
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit90.i

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit90.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i88.i, %bb.hm
  %.val56.i = phi ptr [ %i.alm, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i88.i ], [ %i.akq, %bb.hm ] ; 6 uses
  %.val59.i = phi ptr [ %i.alg, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i88.i ], [ %.val59.pre.i, %bb.hm ]
  %i.alu = load i32, ptr %i.air, align 4, !tbaa !232
  %i.alv = sext i32 %i.alu to i64
  %i.alw = getelementptr inbounds [28 x i8], ptr %.val59.i, i64 %i.alv ; 10 uses
  %i.alx = getelementptr inbounds i8, ptr %.val56.i, i64 -56 ; 6 uses
  %i.aly = icmp eq ptr %i.alw, %i.alx
  br i1 %i.aly, label %.loopexit30.i337, label %bb.hu

bb.hu:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit90.i
  %i.alz = ptrtoint ptr %i.alx to i64
  %i.ama = ptrtoint ptr %i.alw to i64
  %i.amb = sub i64 %i.alz, %i.ama                 ; 7 uses
  %i.amc = sdiv exact i64 %i.amb, 28              ; 3 uses
  %.sroa.speculated.i.i.i328 = call i64 @llvm.smin.i64(i64 %i.amc, i64 2) ; 2 uses
  %i.amd = icmp sgt i64 %i.amb, 0
  br i1 %i.amd, label %.lr.ph.i.i.i.i91.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i

.lr.ph.i.i.i.i91.i:                               ; preds = %bb.hu, %select.unfold.i.i.i.i.i367
  %.011.i.i.i.i.i358 = phi i64 [ %i.ami, %select.unfold.i.i.i.i.i367 ], [ %.sroa.speculated.i.i.i328, %bb.hu ] ; 5 uses
  %i.ame = mul nuw nsw i64 %.011.i.i.i.i.i358, 28 ; 2 uses
  %i.amf = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ame, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #23 ; 7 uses
  %.not.i.i.i.i92.i = icmp eq ptr %i.amf, null
  br i1 %.not.i.i.i.i92.i, label %select.unfold.i.i.i.i.i367, label %bb.hv

select.unfold.i.i.i.i.i367:                       ; preds = %.lr.ph.i.i.i.i91.i
  %i.amg = icmp eq i64 %.011.i.i.i.i.i358, 1
  %i.amh = add nuw nsw i64 %.011.i.i.i.i.i358, 1
  %i.ami = lshr i64 %i.amh, 1
  br i1 %i.amg, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i, label %.lr.ph.i.i.i.i91.i, !llvm.loop !132

bb.hv:                                            ; preds = %.lr.ph.i.i.i.i91.i
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amf, i64 %i.ame
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.amf, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.alw, i64 28, i1 false), !tbaa.struct !84
  %.not18.i.i.i.i.i.i359 = icmp eq i64 %.011.i.i.i.i.i358, 1
  br i1 %.not18.i.i.i.i.i.i359, label %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i, label %.lr.ph.i.i.preheader.i.i.i.i360

.lr.ph.i.i.preheader.i.i.i.i360:                  ; preds = %bb.hv
  %.01317.i.i.i.i.i.i361 = getelementptr inbounds nuw i8, ptr %i.amf, i64 28
  br label %.lr.ph.i.i.i.i.i93.i

.lr.ph.i.i.i.i.i93.i:                             ; preds = %.lr.ph.i.i.i.i.i93.i, %.lr.ph.i.i.preheader.i.i.i.i360
  %.01320.i.i.i.i.i.i362 = phi ptr [ %.013.i.i.i.i.i.i364, %.lr.ph.i.i.i.i.i93.i ], [ %.01317.i.i.i.i.i.i361, %.lr.ph.i.i.preheader.i.i.i.i360 ] ; 2 uses
  %.019.i.i.i.i.i.i363 = phi ptr [ %i.amk, %.lr.ph.i.i.i.i.i93.i ], [ %i.amf, %.lr.ph.i.i.preheader.i.i.i.i360 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.01320.i.i.i.i.i.i362, ptr noundef nonnull readonly align 4 dereferenceable(28) %.019.i.i.i.i.i.i363, i64 28, i1 false), !tbaa.struct !84
  %i.amk = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.i363, i64 28 ; 2 uses
  %.013.i.i.i.i.i.i364 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.i362, i64 28 ; 2 uses
  %.not.i.i.i.i.i.i365 = icmp eq ptr %.013.i.i.i.i.i.i364, %i.amj
  br i1 %.not.i.i.i.i.i.i365, label %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i93.i, !llvm.loop !133

_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i93.i, %bb.hv
  %.0.lcssa.i.i.i.i.i.i366 = phi ptr [ %i.amf, %bb.hv ], [ %i.amk, %.lr.ph.i.i.i.i.i93.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.alw, ptr noundef nonnull align 4 dereferenceable(28) %.0.lcssa.i.i.i.i.i.i366, i64 28, i1 false), !tbaa.struct !84
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i: ; preds = %select.unfold.i.i.i.i.i367, %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i, %bb.hu
  %.sroa.5.0.i.i.i329 = phi i64 [ 0, %bb.hu ], [ %.011.i.i.i.i.i358, %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i ], [ 0, %select.unfold.i.i.i.i.i367 ] ; 4 uses
  %.sroa.11.0.i.i.i330 = phi ptr [ null, %bb.hu ], [ %i.amf, %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation11RotationKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i ], [ null, %select.unfold.i.i.i.i.i367 ] ; 14 uses
  %i.aml = icmp eq i64 %.sroa.5.0.i.i.i329, %.sroa.speculated.i.i.i328
  br i1 %i.aml, label %bb.hw, label %bb.ir, !prof !89

bb.hw:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i
  %.not.i94.i = icmp sgt i64 %i.amb, 56
  br i1 %.not.i94.i, label %bb.ih, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.amm = icmp sgt i64 %i.amb, 28
  br i1 %i.amm, label %bb.hy, label %bb.hz, !prof !89

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.11.0.i.i.i330, ptr align 4 %i.alw, i64 %i.amb, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i

bb.hz:                                            ; preds = %bb.hx
  %i.amn = icmp eq i64 %i.amb, 28
  br i1 %i.amn, label %bb.ia, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.11.0.i.i.i330, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.alw, i64 28, i1 false), !tbaa.struct !84
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i: ; preds = %bb.ia, %bb.hz, %bb.hy
  %i.amo = getelementptr inbounds i8, ptr %.sroa.11.0.i.i.i330, i64 %i.amb ; 2 uses
  br label %.lr.ph.i.i.i338

.lr.ph.i.i.i338:                                  ; preds = %bb.id, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i
  %.027.i.i.i339 = phi ptr [ %.1.i.i.i346, %bb.id ], [ %.sroa.11.0.i.i.i330, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i ] ; 8 uses
  %.sroa.020.026.i.i.i340 = phi ptr [ %.sroa.020.1.i.i.i345, %bb.id ], [ %i.alx, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i ] ; 6 uses
  %.sroa.018.025.i.i.i341 = phi ptr [ %i.anb, %bb.id ], [ %i.alw, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation11RotationKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i ] ; 5 uses
  %.not21.i.i.i342 = icmp eq ptr %.sroa.020.026.i.i.i340, %.val56.i
  br i1 %.not21.i.i.i342, label %.critedge.i.i.i347, label %bb.ib

bb.ib:                                            ; preds = %.lr.ph.i.i.i338
  %i.amp = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i.i.i340, i64 4
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !83
  %i.amr = getelementptr inbounds nuw i8, ptr %.027.i.i.i339, i64 4
  %i.ams = load float, ptr %i.amr, align 4, !tbaa !83
  %i.amt = fsub float %i.amq, %i.ams              ; 2 uses
  %i.amu = fcmp olt float %i.amt, 0.000000e+00
  br i1 %i.amu, label %.noexc96.i.thread, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.amv = fcmp oeq float %i.amt, 0.000000e+00
  br i1 %i.amv, label %.noexc96.i, label %.noexc96.i.thread999

.noexc96.i:                                       ; preds = %bb.ic
  %i.amw = load i16, ptr %.sroa.020.026.i.i.i340, align 4, !tbaa !82
  %i.amx = load i16, ptr %.027.i.i.i339, align 4, !tbaa !82
  %i.amy = icmp ult i16 %i.amw, %i.amx
  br i1 %i.amy, label %.noexc96.i.thread, label %.noexc96.i.thread999

.noexc96.i.thread:                                ; preds = %bb.ib, %.noexc96.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.018.025.i.i.i341, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.020.026.i.i.i340, i64 28, i1 false), !tbaa.struct !84
  %i.amz = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i.i.i340, i64 28
end_hunk_2
begin_hunk_3_@_ZNK3ozz9animation7offline16AnimationBuilderclERKNS1_12RawAnimationE:bb.a
  %i.aqk = load float, ptr %i.aqj, align 4, !tbaa !88
  %i.aql = fsub float %.sroa.6969.0.copyload, %i.aqk ; 2 uses
  %i.aqm = fcmp olt float %i.aql, 0.000000e+00
  br i1 %i.aqm, label %.lr.ph.i.i17.i.i.i.i549.backedge, label %bb.je

bb.je:                                            ; preds = %.lr.ph.i.i17.i.i.i.i549
  %i.aqn = fcmp oeq float %i.aql, 0.000000e+00
  br i1 %i.aqn, label %.split1005, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.split1005:                                       ; preds = %bb.je
  %i.aqo = load i16, ptr %.sroa.0.0.i.i20.i.i.i.i552, align 4, !tbaa !87
  %i.aqp = icmp ult i16 %.sroa.0964.0.copyload, %i.aqo
  br i1 %i.aqp, label %.lr.ph.i.i17.i.i.i.i549.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i

.lr.ph.i.i17.i.i.i.i549.backedge:                 ; preds = %.split1005, %.lr.ph.i.i17.i.i.i.i549
  br label %.lr.ph.i.i17.i.i.i.i549, !llvm.loop !136

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i: ; preds = %bb.je, %.split1005, %bb.jd, %.split1004
  %.sroa.07.0.lcssa.i.i15.i.i.i.i547 = phi ptr [ %.sroa.0.08.i.i.i.i.i545, %.split1004 ], [ %.sroa.0.08.i.i.i.i.i545, %bb.jd ], [ %.sroa.0.010.i.i18.i.i.i.i550, %.split1005 ], [ %.sroa.0.010.i.i18.i.i.i.i550, %bb.je ] ; 3 uses
  store <2 x i16> %i.aqb, ptr %.sroa.07.0.lcssa.i.i15.i.i.i.i547, align 4
  %.sroa.6969.0..sroa.07.0.lcssa.i.i15.i.i.i.i547.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i15.i.i.i.i547, i64 4
  store float %.sroa.6969.0.copyload, ptr %.sroa.6969.0..sroa.07.0.lcssa.i.i15.i.i.i.i547.sroa_idx, align 4, !tbaa !76
  %.sroa.8972.0..sroa.07.0.lcssa.i.i15.i.i.i.i547.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i15.i.i.i.i547, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8972.0..sroa.07.0.lcssa.i.i15.i.i.i.i547.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8972, i64 16, i1 false), !tbaa.struct !220
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8972)
  %i.aqq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i545, i64 24 ; 2 uses
  %.not.i16.i.i.i.i548 = icmp eq ptr %i.aqq, %.val58.i412
  br i1 %.not.i16.i.i.i.i548, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i13.i.i.i.i544, !llvm.loop !138

bb.jf:                                            ; preds = %.noexc557
  %.not21.i23.i.i.i.i415 = icmp eq ptr %scevgep.i.i.i.i414, %.val58.i412
  br i1 %.not21.i23.i.i.i.i415, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i24.i.i.i.i416.preheader

.lr.ph.i24.i.i.i.i416.preheader:                  ; preds = %bb.jf
  %i.aqr = getelementptr inbounds nuw i8, ptr %.val62.i411, i64 4
  br label %.lr.ph.i24.i.i.i.i416

.lr.ph.i24.i.i.i.i416:                            ; preds = %.lr.ph.i24.i.i.i.i416.preheader, %bb.jm
  %.sroa.0.023.i25.i.i.i.i417 = phi ptr [ %.sroa.0.0.i29.i.i.i.i420, %bb.jm ], [ %scevgep.i.i.i.i414, %.lr.ph.i24.i.i.i.i416.preheader ] ; 11 uses
  %.pn22.i26.i.i.i.i418 = phi ptr [ %.sroa.0.023.i25.i.i.i.i417, %bb.jm ], [ %.val62.i411, %.lr.ph.i24.i.i.i.i416.preheader ] ; 5 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i417, i64 4
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !88 ; 4 uses
  %i.aqu = load float, ptr %i.aqr, align 4, !tbaa !88
  %i.aqv = fsub float %i.aqt, %i.aqu              ; 2 uses
  %i.aqw = fcmp olt float %i.aqv, 0.000000e+00
  br i1 %i.aqw, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840.thread, label %bb.jg

bb.jg:                                            ; preds = %.lr.ph.i24.i.i.i.i416
  %i.aqx = fcmp oeq float %i.aqv, 0.000000e+00
  %.sroa.0973.0.copyload.pre = load i16, ptr %.sroa.0.023.i25.i.i.i.i417, align 4, !tbaa !77 ; 4 uses
  br i1 %i.aqx, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840.thread1006

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840: ; preds = %bb.jg
  %i.aqy = load i16, ptr %.val62.i411, align 4, !tbaa !87
  %i.aqz = icmp ult i16 %.sroa.0973.0.copyload.pre, %i.aqy
  br i1 %i.aqz, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840.thread, label %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840.thread1006

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840.thread: ; preds = %.lr.ph.i24.i.i.i.i416, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %18, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.023.i25.i.i.i.i417, i64 24, i1 false), !tbaa.struct !78
  %i.ara = ptrtoint ptr %.sroa.0.023.i25.i.i.i.i417 to i64
  %i.arb = sub i64 %i.ara, %i.aou                 ; 4 uses
  %i.arc = icmp sgt i64 %i.arb, 24
  br i1 %i.arc, label %bb.jh, label %bb.ji, !prof !89

bb.jh:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840.thread
  %i.ard = getelementptr inbounds nuw i8, ptr %.pn22.i26.i.i.i.i418, i64 48
  %.neg27.i36.i.i.i.i534 = udiv exact i64 %i.arb, 24
  %.neg27.neg.i37.i.i.i.i535 = sub nsw i64 0, %.neg27.i36.i.i.i.i534
  %i.are = getelementptr inbounds [24 x i8], ptr %i.ard, i64 %.neg27.neg.i37.i.i.i.i535
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.are, ptr noundef nonnull align 4 dereferenceable(1) %.val62.i411, i64 %i.arb, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i

bb.ji:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840.thread
  %i.arf = icmp eq i64 %i.arb, 24
  br i1 %i.arf, label %bb.jj, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i

bb.jj:                                            ; preds = %bb.ji
  %i.arg = getelementptr inbounds nuw i8, ptr %.pn22.i26.i.i.i.i418, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.arg, ptr noundef nonnull readonly align 4 dereferenceable(24) %.val62.i411, i64 24, i1 false), !tbaa.struct !78
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i: ; preds = %bb.jj, %bb.ji, %bb.jh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.val62.i411, ptr noundef nonnull align 4 dereferenceable(24) %18, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %bb.jm

_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840.thread1006: ; preds = %bb.jg, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8981)
  %.sroa.6976.0..sroa.0.023.i25.i.i.i.i417.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i417, i64 2
  %.sroa.6976.0.copyload = load i16, ptr %.sroa.6976.0..sroa.0.023.i25.i.i.i.i417.sroa_idx, align 2
  %.sroa.8981.0..sroa.0.023.i25.i.i.i.i417.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i417, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8981, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8981.0..sroa.0.023.i25.i.i.i.i417.sroa_idx, i64 16, i1 false), !tbaa.struct !220
  %i.arh = getelementptr inbounds nuw i8, ptr %.pn22.i26.i.i.i.i418, i64 4
  %i.ari = load float, ptr %i.arh, align 4, !tbaa !88
  %i.arj = fsub float %i.aqt, %i.ari              ; 2 uses
  %i.ark = fcmp olt float %i.arj, 0.000000e+00
  br i1 %i.ark, label %.lr.ph.i.i31.i.i.i.i530.preheader, label %bb.jk

bb.jk:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840.thread1006
  %i.arl = fcmp oeq float %i.arj, 0.000000e+00
  br i1 %i.arl, label %.split1007, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.split1007:                                       ; preds = %bb.jk
  %i.arm = load i16, ptr %.pn22.i26.i.i.i.i418, align 4, !tbaa !87
  %i.arn = icmp ult i16 %.sroa.0973.0.copyload.pre, %i.arm
  br i1 %i.arn, label %.lr.ph.i.i31.i.i.i.i530.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.lr.ph.i.i31.i.i.i.i530.preheader:                ; preds = %.split1007, %_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_.exit840.thread1006
  br label %.lr.ph.i.i31.i.i.i.i530

.lr.ph.i.i31.i.i.i.i530:                          ; preds = %.lr.ph.i.i31.i.i.i.i530.backedge, %.lr.ph.i.i31.i.i.i.i530.preheader
  %.sroa.0.010.i.i32.i.i.i.i531 = phi ptr [ %.pn22.i26.i.i.i.i418, %.lr.ph.i.i31.i.i.i.i530.preheader ], [ %.sroa.0.0.i.i34.i.i.i.i533, %.lr.ph.i.i31.i.i.i.i530.backedge ] ; 6 uses
  %.sroa.07.09.i.i33.i.i.i.i532 = phi ptr [ %.sroa.0.023.i25.i.i.i.i417, %.lr.ph.i.i31.i.i.i.i530.preheader ], [ %.sroa.0.010.i.i32.i.i.i.i531, %.lr.ph.i.i31.i.i.i.i530.backedge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.07.09.i.i33.i.i.i.i532, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.010.i.i32.i.i.i.i531, i64 24, i1 false), !tbaa.struct !78
  %.sroa.0.0.i.i34.i.i.i.i533 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32.i.i.i.i531, i64 -24 ; 2 uses
  %i.aro = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32.i.i.i.i531, i64 -20
  %i.arp = load float, ptr %i.aro, align 4, !tbaa !88
  %i.arq = fsub float %i.aqt, %i.arp              ; 2 uses
  %i.arr = fcmp olt float %i.arq, 0.000000e+00
  br i1 %i.arr, label %.lr.ph.i.i31.i.i.i.i530.backedge, label %bb.jl

bb.jl:                                            ; preds = %.lr.ph.i.i31.i.i.i.i530
  %i.ars = fcmp oeq float %i.arq, 0.000000e+00
  br i1 %i.ars, label %.split1008, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.split1008:                                       ; preds = %bb.jl
  %i.art = load i16, ptr %.sroa.0.0.i.i34.i.i.i.i533, align 4, !tbaa !87
  %i.aru = icmp ult i16 %.sroa.0973.0.copyload.pre, %i.art
  br i1 %i.aru, label %.lr.ph.i.i31.i.i.i.i530.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i

.lr.ph.i.i31.i.i.i.i530.backedge:                 ; preds = %.split1008, %.lr.ph.i.i31.i.i.i.i530
  br label %.lr.ph.i.i31.i.i.i.i530, !llvm.loop !136

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i: ; preds = %bb.jl, %.split1008, %bb.jk, %.split1007
  %.sroa.07.0.lcssa.i.i28.i.i.i.i419 = phi ptr [ %.sroa.0.023.i25.i.i.i.i417, %.split1007 ], [ %.sroa.0.023.i25.i.i.i.i417, %bb.jk ], [ %.sroa.0.010.i.i32.i.i.i.i531, %.split1008 ], [ %.sroa.0.010.i.i32.i.i.i.i531, %bb.jl ] ; 4 uses
  store i16 %.sroa.0973.0.copyload.pre, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i419, align 4, !tbaa !77
  %.sroa.6976.0..sroa.07.0.lcssa.i.i28.i.i.i.i419.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i419, i64 2
  store i16 %.sroa.6976.0.copyload, ptr %.sroa.6976.0..sroa.07.0.lcssa.i.i28.i.i.i.i419.sroa_idx, align 2
  %.sroa.6978.0..sroa.07.0.lcssa.i.i28.i.i.i.i419.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i419, i64 4
  store float %i.aqt, ptr %.sroa.6978.0..sroa.07.0.lcssa.i.i28.i.i.i.i419.sroa_idx, align 4, !tbaa !76
  %.sroa.8981.0..sroa.07.0.lcssa.i.i28.i.i.i.i419.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28.i.i.i.i419, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8981.0..sroa.07.0.lcssa.i.i28.i.i.i.i419.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8981, i64 16, i1 false), !tbaa.struct !220
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8981)
  br label %bb.jm

bb.jm:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i27.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESF_ET0_T_SH_SG_.exit.i35.i.i.i.i
  %.sroa.0.0.i29.i.i.i.i420 = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i25.i.i.i.i417, i64 24 ; 2 uses
  %.not.i30.i.i.i.i421 = icmp eq ptr %.sroa.0.0.i29.i.i.i.i420, %.val58.i412
  br i1 %.not.i30.i.i.i.i421, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i, label %.lr.ph.i24.i.i.i.i416, !llvm.loop !137

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i: ; preds = %bb.jm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SJ_EEEEvT_T0_.exit.i14.i.i.i.i, %bb.jf, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_T0_.exit.i.i.i.i, %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  br i1 %.not.i.i.i.i69.i, label %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i529, label %bb.jn

_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i529: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i425

bb.jn:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEEPFbRKS9_SH_EEvT_SK_T0_.exit.i
  %i.arv = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.jo unwind label %bb.jp     ; 2 uses

bb.jo:                                            ; preds = %bb.jn
  %i.arw = shl nuw nsw i64 %i.tg, 3               ; 3 uses
  %i.arx = load ptr, ptr %i.arv, align 8, !tbaa !48
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 16
  %i.arz = load ptr, ptr %i.ary, align 8
  %i.asa = invoke noundef ptr %i.arz(ptr noundef nonnull align 8 dereferenceable(8) %i.arv, i64 noundef %i.arw, i64 noundef 4)
          to label %.lr.ph.preheader.i.i.i.i423 unwind label %bb.jp ; 5 uses

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %i.asb = landingpad { ptr, i32 }
          catch ptr null
  %i.asc = extractvalue { ptr, i32 } %i.asb, 0
  call void @__clang_call_terminate(ptr %i.asc) #22
  unreachable

.lr.ph.preheader.i.i.i.i423:                      ; preds = %bb.jo
  store ptr %i.asa, ptr %20, align 8, !tbaa !92
  %i.asd = getelementptr inbounds nuw [8 x i8], ptr %i.asa, i64 %i.tg
  %i.ase = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.asd, ptr %i.ase, align 8, !tbaa !228
  call void @llvm.memset.p0.i64(ptr align 4 %i.asa, i8 0, i64 %i.arw, i1 false), !tbaa !93
  %scevgep.i.i.i70.i424 = getelementptr i8, ptr %i.asa, i64 %i.arw
  br label %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i425

_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i425: ; preds = %.lr.ph.preheader.i.i.i.i423, %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i529
  %.pre102.i426 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i529 ], [ %i.asa, %.lr.ph.preheader.i.i.i.i423 ]
  %.0.lcssa.i.i.i.i427 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.thread.i.i529 ], [ %scevgep.i.i.i70.i424, %.lr.ph.preheader.i.i.i.i423 ] ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i427, ptr %i.asf, align 8, !tbaa !229
  %i.asg = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ash = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.asi = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.asj = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.ask = getelementptr inbounds nuw i8, ptr %21, i64 4
  br label %bb.jt

.loopexit130.i439:                                ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i430, %bb.lr
  %i.asl = load ptr, ptr %20, align 8, !tbaa !92  ; 2 uses
  %.not.i.i.i.i440 = icmp eq ptr %i.asl, null
  br i1 %.not.i.i.i.i440, label %bb.ls, label %bb.jq

bb.jq:                                            ; preds = %.loopexit130.i439
  %i.asm = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.jr unwind label %bb.js     ; 2 uses

bb.jr:                                            ; preds = %bb.jq
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !48
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 24
  %i.asp = load ptr, ptr %i.aso, align 8
  invoke void %i.asp(ptr noundef nonnull align 8 dereferenceable(8) %i.asm, ptr noundef nonnull %i.asl)
          to label %bb.ls unwind label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.asq = landingpad { ptr, i32 }
          catch ptr null
  %i.asr = extractvalue { ptr, i32 } %i.asq, 0
  call void @__clang_call_terminate(ptr %i.asr) #22
  unreachable

bb.jt:                                            ; preds = %.loopexit30.i468, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i425
  %.pre13071308 = phi ptr [ %.0.lcssa.i.i.i.i427, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i425 ], [ %.pre1307, %.loopexit30.i468 ] ; 3 uses
  %i.ass = phi ptr [ %.pre102.i426, %_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEEC2EmRKS4_.exit.i425 ], [ %i.azj, %.loopexit30.i468 ] ; 5 uses
  %.not5.i.i.i.i.i428 = icmp eq ptr %i.ass, %.pre13071308
  br i1 %.not5.i.i.i.i.i428, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i430, label %.lr.ph.i.i.i.i71.preheader.i429

.lr.ph.i.i.i.i71.preheader.i429:                  ; preds = %bb.jt
  %i.ast = ptrtoaddr ptr %.pre13071308 to i64
  %i.asu = ptrtoaddr ptr %i.ass to i64
  %reass.sub1166 = sub i64 %i.ast, %i.asu
  %i.asv = and i64 %reass.sub1166, -8
  call void @llvm.memset.p0.i64(ptr align 4 %i.ass, i8 -1, i64 %i.asv, i1 false), !tbaa !93
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i430

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i430: ; preds = %.lr.ph.i.i.i.i71.preheader.i429, %bb.jt
  %.val.i431 = load ptr, ptr %60, align 8, !tbaa !67 ; 11 uses
  %.val55.i432 = load ptr, ptr %i.aos, align 8, !tbaa !68 ; 12 uses
  %.not67.i433 = icmp eq ptr %.val55.i432, %.val.i431 ; 2 uses
  br i1 %.not67.i433, label %.loopexit130.i439, label %.lr.ph.i434

.lr.ph.i434:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_N3ozz12StdAllocatorIS3_EEEEES3_EvT_SB_RKT0_.exit.i430
  %i.asw = ptrtoint ptr %.val55.i432 to i64       ; 2 uses
  %i.asx = ptrtoint ptr %.val.i431 to i64         ; 2 uses
  %i.asy = sub i64 %i.asw, %i.asx
  %i.asz = sdiv exact i64 %i.asy, 24
  br label %bb.ju

bb.ju:                                            ; preds = %bb.lr, %.lr.ph.i434
  %.04966.i435 = phi i64 [ 0, %.lr.ph.i434 ], [ %i.azi, %bb.lr ] ; 4 uses
  %i.ata = getelementptr inbounds nuw [24 x i8], ptr %.val.i431, i64 %.04966.i435
  %i.atb = load i16, ptr %i.ata, align 4, !tbaa !87 ; 3 uses
  %i.atc = zext i16 %i.atb to i64
  %i.atd = getelementptr inbounds nuw [8 x i8], ptr %i.ass, i64 %i.atc ; 6 uses
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !231 ; 3 uses
  %.not.i436 = icmp ne i32 %i.ate, -1
  %i.atf = sext i32 %i.ate to i64
  %i.atg = sub i64 %.04966.i435, %i.atf
  %i.ath = icmp ugt i64 %i.atg, 65535
  %or.cond.i437 = and i1 %.not.i436, %i.ath
  br i1 %or.cond.i437, label %bb.jv, label %bb.lr

bb.jv:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.ati = load i32, ptr %i.atd, align 4, !tbaa !231
  %i.atj = sext i32 %i.ati to i64
  %i.atk = getelementptr inbounds nuw [24 x i8], ptr %.val.i431, i64 %i.atj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %21, ptr noundef nonnull align 4 dereferenceable(24) %i.atk, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atd, i64 4 ; 2 uses
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !232
  %i.atn = sext i32 %i.atm to i64
  %i.ato = getelementptr inbounds nuw [24 x i8], ptr %.val.i431, i64 %i.atn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %22, ptr noundef nonnull align 4 dereferenceable(24) %i.ato, i64 24, i1 false), !tbaa.struct !78
  %i.atp = load float, ptr %i.asg, align 4, !tbaa !222 ; 3 uses
  %i.atq = load float, ptr %i.ash, align 4, !tbaa !222
  %i.atr = fadd float %i.atp, %i.atq
  %i.ats = fmul float %i.atr, 5.000000e-01        ; 3 uses
  %i.att = invoke { <2 x float>, float } @_ZN3ozz9animation7offline9LerpScaleERKNS_4math6Float3ES5_f(ptr noundef nonnull align 4 dereferenceable(12) %i.asi, ptr noundef nonnull align 4 dereferenceable(12) %i.asj, float noundef 5.000000e-01)
          to label %bb.jw unwind label %.loopexit.split-lp32.loopexit.split-lp.i441.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.jw:                                            ; preds = %bb.jv
  %.fca.0.extract.i445 = extractvalue { <2 x float>, float } %i.att, 0 ; 2 uses
  %.fca.1.extract.i446 = extractvalue { <2 x float>, float } %i.att, 1 ; 2 uses
  %i.atu = load i32, ptr %i.atd, align 4, !tbaa !231
  %i.atv = sext i32 %i.atu to i64
  %i.atw = getelementptr inbounds [24 x i8], ptr %.val.i431, i64 %i.atv ; 3 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 24 ; 4 uses
  %.not.i.i73.i449 = icmp eq ptr %i.atx, %.val55.i432
  br i1 %.not.i.i73.i449, label %bb.kb, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.aty = ptrtoint ptr %i.atx to i64
  %i.atz = sub i64 %i.asw, %i.aty                 ; 3 uses
  %i.aua = icmp sgt i64 %i.atz, 24
  br i1 %i.aua, label %bb.jy, label %bb.jz, !prof !89

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.atw, ptr nonnull align 4 %i.atx, i64 %i.atz, i1 false)
  br label %bb.kb

bb.jz:                                            ; preds = %bb.jx
  %i.aub = icmp eq i64 %i.atz, 24
  br i1 %i.aub, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.atw, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.atx, i64 24, i1 false), !tbaa.struct !78
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jz, %bb.jy, %bb.jw
  %i.auc = getelementptr inbounds i8, ptr %.val55.i432, i64 -24 ; 6 uses
  store ptr %i.auc, ptr %i.aos, align 8, !tbaa !68
  %i.aud = load ptr, ptr %i.ev, align 8, !tbaa !69 ; 2 uses
  %.not.i.i450 = icmp eq ptr %i.auc, %i.aud
  br i1 %.not.i.i450, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  store i16 %i.atb, ptr %i.auc, align 4, !tbaa !77
  %.sroa.611.0..sroa_idx.i451 = getelementptr inbounds i8, ptr %.val55.i432, i64 -20
  store float %i.atp, ptr %.sroa.611.0..sroa_idx.i451, align 4, !tbaa !76
  %.sroa.7.0..sroa_idx.i452 = getelementptr inbounds i8, ptr %.val55.i432, i64 -16
  store float %i.ats, ptr %.sroa.7.0..sroa_idx.i452, align 4, !tbaa !76
  %.sroa.9.0..sroa_idx.i453 = getelementptr inbounds i8, ptr %.val55.i432, i64 -12
  store <2 x float> %.fca.0.extract.i445, ptr %.sroa.9.0..sroa_idx.i453, align 4, !tbaa !76
  %.sroa.10.0..sroa_idx.i454 = getelementptr inbounds i8, ptr %.val55.i432, i64 -4
  store float %.fca.1.extract.i446, ptr %.sroa.10.0..sroa_idx.i454, align 4, !tbaa !76
  store ptr %.val55.i432, ptr %i.aos, align 8, !tbaa !68
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i

bb.kd:                                            ; preds = %bb.kb
  %i.aue = ptrtoint ptr %i.auc to i64
  %i.auf = sub i64 %i.aue, %i.asx                 ; 3 uses
  %i.aug = icmp eq i64 %i.auf, 9223372036854775800
  br i1 %i.aug, label %.invoke.i514, label %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.kd
  %i.auh = sdiv exact i64 %i.auf, 24              ; 3 uses
  %i.aui = icmp eq ptr %i.auc, %.val.i431         ; 2 uses
  %.sroa.speculated.i.i.i.i517 = select i1 %i.aui, i64 1, i64 %i.auh
  %i.auj = add nsw i64 %.sroa.speculated.i.i.i.i517, %i.auh ; 2 uses
  %i.auk = icmp ult i64 %i.auj, %i.auh
  %i.aul = call i64 @llvm.umin.i64(i64 %i.auj, i64 384307168202282325)
  %i.aum = select i1 %i.auk, i64 384307168202282325, i64 %i.aul ; 3 uses
  %.not.i.i.i74.i518 = icmp ne i64 %i.aum, 0
  call void @llvm.assume(i1 %.not.i.i.i74.i518)
  %i.aun = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ke unwind label %bb.kf     ; 2 uses

bb.ke:                                            ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i
  %i.auo = mul nuw nsw i64 %i.aum, 24
  %i.aup = load ptr, ptr %i.aun, align 8, !tbaa !48
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 16
  %i.aur = load ptr, ptr %i.auq, align 8
  %i.aus = invoke noundef ptr %i.aur(ptr noundef nonnull align 8 dereferenceable(8) %i.aun, i64 noundef %i.auo, i64 noundef 4)
          to label %bb.kg unwind label %bb.kf     ; 5 uses

bb.kf:                                            ; preds = %bb.ke, %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aut = landingpad { ptr, i32 }
          catch ptr null
  %i.auu = extractvalue { ptr, i32 } %i.aut, 0
  call void @__clang_call_terminate(ptr %i.auu) #22
  unreachable

bb.kg:                                            ; preds = %bb.ke
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aus, i64 %i.auf ; 5 uses
  store i16 %i.atb, ptr %i.auv, align 4, !tbaa !77
  %.sroa.611.0..sroa_idx12.i519 = getelementptr inbounds nuw i8, ptr %i.auv, i64 4
  store float %i.atp, ptr %.sroa.611.0..sroa_idx12.i519, align 4, !tbaa !76
  %.sroa.7.0..sroa_idx14.i520 = getelementptr inbounds nuw i8, ptr %i.auv, i64 8
  store float %i.ats, ptr %.sroa.7.0..sroa_idx14.i520, align 4, !tbaa !76
  %.sroa.9.0..sroa_idx16.i521 = getelementptr inbounds nuw i8, ptr %i.auv, i64 12
  store <2 x float> %.fca.0.extract.i445, ptr %.sroa.9.0..sroa_idx16.i521, align 4, !tbaa !76
  %.sroa.10.0..sroa_idx18.i522 = getelementptr inbounds nuw i8, ptr %i.auv, i64 20
  store float %.fca.1.extract.i446, ptr %.sroa.10.0..sroa_idx18.i522, align 4, !tbaa !76
  br i1 %i.aui, label %.loopexit, label %.lr.ph.i.i.i.i75.i523

.lr.ph.i.i.i.i75.i523:                            ; preds = %bb.kg, %.lr.ph.i.i.i.i75.i523
  %.04.i.i.i.i.i524 = phi ptr [ %i.aux, %.lr.ph.i.i.i.i75.i523 ], [ %i.aus, %bb.kg ] ; 2 uses
  %.sroa.01.03.i.i.i.i.i525 = phi ptr [ %i.auw, %.lr.ph.i.i.i.i75.i523 ], [ %.val.i431, %bb.kg ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.04.i.i.i.i.i524, ptr noundef nonnull readonly align 4 dereferenceable(24) %.sroa.01.03.i.i.i.i.i525, i64 24, i1 false), !tbaa.struct !78
  %i.auw = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i.i.i525, i64 24 ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i524, i64 24 ; 2 uses
  %.not.i.i.i.i76.i526 = icmp eq ptr %i.auw, %i.auc
  br i1 %.not.i.i.i.i76.i526, label %.loopexit, label %.lr.ph.i.i.i.i75.i523, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i75.i523, %bb.kg
  %.0.lcssa.i.i.i.i.i527 = phi ptr [ %i.aus, %bb.kg ], [ %i.aux, %.lr.ph.i.i.i.i75.i523 ]
  %i.auy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i527, i64 24 ; 2 uses
  %i.auz = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.kh unwind label %bb.ki     ; 2 uses

bb.kh:                                            ; preds = %.loopexit
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !48
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ava, i64 24
  %i.avc = load ptr, ptr %i.avb, align 8
  invoke void %i.avc(ptr noundef nonnull align 8 dereferenceable(8) %i.auz, ptr noundef nonnull %.val.i431)
          to label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i unwind label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %.loopexit
  %i.avd = landingpad { ptr, i32 }
          catch ptr null
  %i.ave = extractvalue { ptr, i32 } %i.avd, 0
  call void @__clang_call_terminate(ptr %i.ave) #22
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i: ; preds = %bb.kh
  store ptr %i.aus, ptr %60, align 8, !tbaa !67
  store ptr %i.auy, ptr %i.aos, align 8, !tbaa !68
  %i.avf = getelementptr inbounds nuw [24 x i8], ptr %i.aus, i64 %i.aum ; 2 uses
  store ptr %i.avf, ptr %i.ev, align 8, !tbaa !69
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i, %bb.kc
  %i.avg = phi ptr [ %i.avf, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i ], [ %i.aud, %bb.kc ] ; 3 uses
  %i.avh = phi ptr [ %i.auy, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i.i ], [ %.val55.i432, %bb.kc ] ; 4 uses
  store float %i.ats, ptr %i.ask, align 4, !tbaa !88
  %.not.i77.i455 = icmp eq ptr %i.avh, %i.avg
  br i1 %.not.i77.i455, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.avh, ptr noundef nonnull readonly align 4 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !78
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 24 ; 2 uses
  store ptr %i.avi, ptr %i.aos, align 8, !tbaa !68
  %.val60.pre.i456 = load ptr, ptr %60, align 8, !tbaa !221
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i

bb.kk:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit.i
  %.val.i.i78.i505 = load ptr, ptr %60, align 8, !tbaa !67 ; 5 uses
  %i.avj = ptrtoint ptr %i.avh to i64
  %i.avk = ptrtoint ptr %.val.i.i78.i505 to i64
  %i.avl = sub i64 %i.avj, %i.avk                 ; 3 uses
  %i.avm = icmp eq i64 %i.avl, 9223372036854775800
  br i1 %i.avm, label %.invoke.i514, label %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i79.i

.invoke.i514:                                     ; preds = %bb.kk, %bb.kd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.cont.i515 unwind label %.loopexit.split-lp32.loopexit.split-lp.i441.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i515:                                       ; preds = %.invoke.i514
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i79.i: ; preds = %bb.kk
  %i.avn = sdiv exact i64 %i.avl, 24              ; 3 uses
  %i.avo = icmp eq ptr %i.avg, %.val.i.i78.i505   ; 2 uses
  %.sroa.speculated.i.i.i80.i506 = select i1 %i.avo, i64 1, i64 %i.avn
  %i.avp = add nsw i64 %.sroa.speculated.i.i.i80.i506, %i.avn ; 2 uses
  %i.avq = icmp ult i64 %i.avp, %i.avn
  %i.avr = call i64 @llvm.umin.i64(i64 %i.avp, i64 384307168202282325)
  %i.avs = select i1 %i.avq, i64 384307168202282325, i64 %i.avr ; 3 uses
  %.not.i.i.i81.i507 = icmp ne i64 %i.avs, 0
  call void @llvm.assume(i1 %.not.i.i.i81.i507)
  %i.avt = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.kl unwind label %bb.km     ; 2 uses

bb.kl:                                            ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i79.i
  %i.avu = mul nuw nsw i64 %i.avs, 24
  %i.avv = load ptr, ptr %i.avt, align 8, !tbaa !48
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 16
  %i.avx = load ptr, ptr %i.avw, align 8
  %i.avy = invoke noundef ptr %i.avx(ptr noundef nonnull align 8 dereferenceable(8) %i.avt, i64 noundef %i.avu, i64 noundef 4)
          to label %bb.kn unwind label %bb.km     ; 6 uses

bb.km:                                            ; preds = %bb.kl, %_ZNKSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE12_M_check_lenEmPKc.exit.i.i79.i
  %i.avz = landingpad { ptr, i32 }
          catch ptr null
  %i.awa = extractvalue { ptr, i32 } %i.avz, 0
  call void @__clang_call_terminate(ptr %i.awa) #22
  unreachable

bb.kn:                                            ; preds = %bb.kl
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avy, i64 %i.avl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.awb, ptr noundef nonnull readonly align 4 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !78
  br i1 %i.avo, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i86.i, label %.lr.ph.i.i.i.i82.i508

.lr.ph.i.i.i.i82.i508:                            ; preds = %bb.kn, %.lr.ph.i.i.i.i82.i508
  %.04.i.i.i.i83.i509 = phi ptr [ %i.awd, %.lr.ph.i.i.i.i82.i508 ], [ %i.avy, %bb.kn ] ; 2 uses
  %.sroa.01.03.i.i.i.i84.i510 = phi ptr [ %i.awc, %.lr.ph.i.i.i.i82.i508 ], [ %.val.i.i78.i505, %bb.kn ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.04.i.i.i.i83.i509, ptr noundef nonnull readonly align 4 dereferenceable(24) %.sroa.01.03.i.i.i.i84.i510, i64 24, i1 false), !tbaa.struct !78
  %i.awc = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i.i84.i510, i64 24 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i83.i509, i64 24 ; 2 uses
  %.not.i.i.i.i85.i511 = icmp eq ptr %i.awc, %i.avg
  br i1 %.not.i.i.i.i85.i511, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i86.i, label %.lr.ph.i.i.i.i82.i508, !llvm.loop !2

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i86.i: ; preds = %.lr.ph.i.i.i.i82.i508, %bb.kn
  %.0.lcssa.i.i.i.i87.i512 = phi ptr [ %i.avy, %bb.kn ], [ %i.awd, %.lr.ph.i.i.i.i82.i508 ]
  %i.awe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i87.i512, i64 24 ; 2 uses
  %.not.i39.i.i88.i513 = icmp eq ptr %.val.i.i78.i505, null
  br i1 %.not.i39.i.i88.i513, label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i89.i, label %bb.ko

bb.ko:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i86.i
  %i.awf = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.kp unwind label %bb.kq     ; 2 uses

bb.kp:                                            ; preds = %bb.ko
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !48
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 24
  %i.awi = load ptr, ptr %i.awh, align 8
  invoke void %i.awi(ptr noundef nonnull align 8 dereferenceable(8) %i.awf, ptr noundef nonnull %.val.i.i78.i505)
          to label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i89.i unwind label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.awj = landingpad { ptr, i32 }
          catch ptr null
  %i.awk = extractvalue { ptr, i32 } %i.awj, 0
  call void @__clang_call_terminate(ptr %i.awk) #22
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i89.i: ; preds = %bb.kp, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEES8_NS0_12StdAllocatorIS7_EEET0_T_SC_SB_RT1_.exit38.i.i86.i
  store ptr %i.avy, ptr %60, align 8, !tbaa !67
  store ptr %i.awe, ptr %i.aos, align 8, !tbaa !68
  %i.awl = getelementptr inbounds nuw [24 x i8], ptr %i.avy, i64 %i.avs
  store ptr %i.awl, ptr %i.ev, align 8, !tbaa !69
  br label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i89.i, %bb.kj
  %.val57.i457 = phi ptr [ %i.awe, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i89.i ], [ %i.avi, %bb.kj ] ; 6 uses
  %.val60.i458 = phi ptr [ %i.avy, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_SA_EEDpOT_.exit.i89.i ], [ %.val60.pre.i456, %bb.kj ]
  %i.awm = load i32, ptr %i.atl, align 4, !tbaa !232
  %i.awn = sext i32 %i.awm to i64
  %i.awo = getelementptr inbounds [24 x i8], ptr %.val60.i458, i64 %i.awn ; 10 uses
  %i.awp = getelementptr inbounds i8, ptr %.val57.i457, i64 -48 ; 6 uses
  %i.awq = icmp eq ptr %i.awo, %i.awp
  br i1 %i.awq, label %.loopexit30.i468, label %bb.kr

bb.kr:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i
  %i.awr = ptrtoint ptr %i.awp to i64
  %i.aws = ptrtoint ptr %i.awo to i64
  %i.awt = sub i64 %i.awr, %i.aws                 ; 7 uses
  %i.awu = sdiv exact i64 %i.awt, 24              ; 3 uses
  %.sroa.speculated.i.i.i459 = call i64 @llvm.smin.i64(i64 %i.awu, i64 2) ; 2 uses
  %i.awv = icmp sgt i64 %i.awt, 0
  br i1 %i.awv, label %.lr.ph.i.i.i.i92.i492, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i

.lr.ph.i.i.i.i92.i492:                            ; preds = %bb.kr, %select.unfold.i.i.i.i.i504
  %.011.i.i.i.i.i493 = phi i64 [ %i.axa, %select.unfold.i.i.i.i.i504 ], [ %.sroa.speculated.i.i.i459, %bb.kr ] ; 5 uses
  %i.aww = mul nuw nsw i64 %.011.i.i.i.i.i493, 24 ; 2 uses
  %i.awx = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.aww, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #23 ; 7 uses
  %.not.i.i.i.i93.i494 = icmp eq ptr %i.awx, null
  br i1 %.not.i.i.i.i93.i494, label %select.unfold.i.i.i.i.i504, label %bb.ks

select.unfold.i.i.i.i.i504:                       ; preds = %.lr.ph.i.i.i.i92.i492
  %i.awy = icmp eq i64 %.011.i.i.i.i.i493, 1
  %i.awz = add nuw nsw i64 %.011.i.i.i.i.i493, 1
  %i.axa = lshr i64 %i.awz, 1
  br i1 %i.awy, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i, label %.lr.ph.i.i.i.i92.i492, !llvm.loop !139

bb.ks:                                            ; preds = %.lr.ph.i.i.i.i92.i492
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awx, i64 %i.aww
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.awx, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.awo, i64 24, i1 false), !tbaa.struct !78
  %.not18.i.i.i.i.i.i495 = icmp eq i64 %.011.i.i.i.i.i493, 1
  br i1 %.not18.i.i.i.i.i.i495, label %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i, label %.lr.ph.i.i.preheader.i.i.i.i496

.lr.ph.i.i.preheader.i.i.i.i496:                  ; preds = %bb.ks
  %.01317.i.i.i.i.i.i497 = getelementptr inbounds nuw i8, ptr %i.awx, i64 24
  br label %.lr.ph.i.i.i.i.i94.i498

.lr.ph.i.i.i.i.i94.i498:                          ; preds = %.lr.ph.i.i.i.i.i94.i498, %.lr.ph.i.i.preheader.i.i.i.i496
  %.01320.i.i.i.i.i.i499 = phi ptr [ %.013.i.i.i.i.i.i501, %.lr.ph.i.i.i.i.i94.i498 ], [ %.01317.i.i.i.i.i.i497, %.lr.ph.i.i.preheader.i.i.i.i496 ] ; 2 uses
  %.019.i.i.i.i.i.i500 = phi ptr [ %i.axc, %.lr.ph.i.i.i.i.i94.i498 ], [ %i.awx, %.lr.ph.i.i.preheader.i.i.i.i496 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.01320.i.i.i.i.i.i499, ptr noundef nonnull readonly align 4 dereferenceable(24) %.019.i.i.i.i.i.i500, i64 24, i1 false), !tbaa.struct !78
  %i.axc = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.i500, i64 24 ; 2 uses
  %.013.i.i.i.i.i.i501 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.i499, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i502 = icmp eq ptr %.013.i.i.i.i.i.i501, %i.axb
  br i1 %.not.i.i.i.i.i.i502, label %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i94.i498, !llvm.loop !140

_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i94.i498, %bb.ks
  %.0.lcssa.i.i.i.i.i.i503 = phi ptr [ %i.awx, %bb.ks ], [ %i.axc, %.lr.ph.i.i.i.i.i94.i498 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.awo, ptr noundef nonnull align 4 dereferenceable(24) %.0.lcssa.i.i.i.i.i.i503, i64 24, i1 false), !tbaa.struct !78
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i: ; preds = %select.unfold.i.i.i.i.i504, %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i, %bb.kr
  %.sroa.5.0.i.i.i460 = phi i64 [ 0, %bb.kr ], [ %.011.i.i.i.i.i493, %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i ], [ 0, %select.unfold.i.i.i.i.i504 ] ; 4 uses
  %.sroa.11.0.i.i.i461 = phi ptr [ null, %bb.kr ], [ %i.awx, %_ZSt29__uninitialized_construct_bufIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_NS0_12StdAllocatorIS7_EEEEEEvT_SG_T0_.exit.i.i.i.i ], [ null, %select.unfold.i.i.i.i.i504 ] ; 14 uses
  %i.axd = icmp eq i64 %.sroa.5.0.i.i.i460, %.sroa.speculated.i.i.i459
  br i1 %i.axd, label %bb.kt, label %bb.lo, !prof !89

bb.kt:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i
  %.not.i95.i469 = icmp sgt i64 %i.awt, 48
  br i1 %.not.i95.i469, label %bb.le, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.axe = icmp sgt i64 %i.awt, 24
  br i1 %i.axe, label %bb.kv, label %bb.kw, !prof !89

bb.kv:                                            ; preds = %bb.ku
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.11.0.i.i.i461, ptr align 4 %i.awo, i64 %i.awt, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i

bb.kw:                                            ; preds = %bb.ku
  %i.axf = icmp eq i64 %i.awt, 24
  br i1 %i.axf, label %bb.kx, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.11.0.i.i.i461, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.awo, i64 24, i1 false), !tbaa.struct !78
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i: ; preds = %bb.kx, %bb.kw, %bb.kv
  %i.axg = getelementptr inbounds i8, ptr %.sroa.11.0.i.i.i461, i64 %i.awt ; 2 uses
  br label %.lr.ph.i.i.i470

.lr.ph.i.i.i470:                                  ; preds = %bb.la, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i
  %.027.i.i.i471 = phi ptr [ %.1.i.i.i479, %bb.la ], [ %.sroa.11.0.i.i.i461, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i ] ; 8 uses
  %.sroa.020.026.i.i.i472 = phi ptr [ %.sroa.020.1.i.i.i478, %bb.la ], [ %i.awp, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i ] ; 6 uses
  %.sroa.018.025.i.i.i473 = phi ptr [ %i.axt, %bb.la ], [ %i.awo, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEESA_ET0_T_SH_SG_.exit.i.i ] ; 5 uses
  %.not21.i.i.i474 = icmp eq ptr %.sroa.020.026.i.i.i472, %.val57.i457
  br i1 %.not21.i.i.i474, label %.critedge.i.i.i481, label %bb.ky

bb.ky:                                            ; preds = %.lr.ph.i.i.i470
  %i.axh = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i.i.i472, i64 4
  %i.axi = load float, ptr %i.axh, align 4, !tbaa !88
  %i.axj = getelementptr inbounds nuw i8, ptr %.027.i.i.i471, i64 4
  %i.axk = load float, ptr %i.axj, align 4, !tbaa !88
  %i.axl = fsub float %i.axi, %i.axk              ; 2 uses
  %i.axm = fcmp olt float %i.axl, 0.000000e+00
  br i1 %i.axm, label %.noexc97.i477.thread, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.axn = fcmp oeq float %i.axl, 0.000000e+00
  br i1 %i.axn, label %.noexc97.i477, label %.noexc97.i477.thread1009

.noexc97.i477:                                    ; preds = %bb.kz
  %i.axo = load i16, ptr %.sroa.020.026.i.i.i472, align 4, !tbaa !87
  %i.axp = load i16, ptr %.027.i.i.i471, align 4, !tbaa !87
  %i.axq = icmp ult i16 %i.axo, %i.axp
  br i1 %i.axq, label %.noexc97.i477.thread, label %.noexc97.i477.thread1009

.noexc97.i477.thread:                             ; preds = %bb.ky, %.noexc97.i477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.018.025.i.i.i473, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.020.026.i.i.i472, i64 24, i1 false), !tbaa.struct !78
  %i.axr = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i.i.i472, i64 24
end_hunk_3
begin_hunk_4_@_ZNK3ozz9animation7offline16AnimationBuilderclERKNS1_12RawAnimationE:bb.a
  br label %.loopexit1918

bb.lg:                                            ; preds = %bb.lf
  %i.ayi = fcmp oeq float %i.ayf, 0.000000e+00
  br i1 %i.ayi, label %.noexc98.i487, label %.noexc98.i487.thread1010

.noexc98.i487.thread1010:                         ; preds = %bb.lg
  %i.ayj = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i482, i64 -24
  br label %bb.lm

.noexc98.i487:                                    ; preds = %bb.lg
  %i.ayk = load i16, ptr %.0.i.i.i484, align 4, !tbaa !87
  %i.ayl = load i16, ptr %.sroa.028.0.i.i.i483.ph, align 4, !tbaa !87
  %i.aym = icmp ult i16 %i.ayk, %i.ayl
  %i.ayn = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i482, i64 -24 ; 2 uses
  br i1 %i.aym, label %.loopexit1918, label %bb.lm

.loopexit1918:                                    ; preds = %.noexc98.i487, %.noexc98.i487.thread
  %i.ayo = phi ptr [ %i.ayh, %.noexc98.i487.thread ], [ %i.ayn, %.noexc98.i487 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ayo, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.028.0.i.i.i483.ph, i64 24, i1 false), !tbaa.struct !78
  %i.ayp = icmp eq ptr %i.awo, %.sroa.028.0.i.i.i483.ph
  br i1 %i.ayp, label %bb.lh, label %bb.ll

bb.lh:                                            ; preds = %.loopexit1918
  %i.ayq = getelementptr inbounds nuw i8, ptr %.0.i.i.i484, i64 24
  %i.ayr = ptrtoint ptr %i.ayq to i64
  %i.ays = ptrtoint ptr %.sroa.11.0.i.i.i461 to i64
  %i.ayt = sub i64 %i.ayr, %i.ays                 ; 4 uses
  %i.ayu = icmp sgt i64 %i.ayt, 24
  br i1 %i.ayu, label %bb.li, label %bb.lj, !prof !89

bb.li:                                            ; preds = %bb.lh
  %i.ayv = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i482, i64 -24
  %.neg46.i.i.i490 = udiv exact i64 %i.ayt, 24
  %.neg46.neg.i.i.i491 = sub nsw i64 0, %.neg46.i.i.i490
  %i.ayw = getelementptr inbounds [24 x i8], ptr %i.ayv, i64 %.neg46.neg.i.i.i491
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ayw, ptr nonnull align 4 %.sroa.11.0.i.i.i461, i64 %i.ayt, i1 false)
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.lj:                                            ; preds = %bb.lh
  %i.ayx = icmp eq i64 %i.ayt, 24
  br i1 %i.ayx, label %bb.lk, label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.lk:                                            ; preds = %bb.lj
  %i.ayy = getelementptr inbounds i8, ptr %.sroa.026.0.i.i.i482, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ayy, ptr noundef nonnull readonly align 4 dereferenceable(24) %.sroa.11.0.i.i.i461, i64 24, i1 false), !tbaa.struct !78
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i

bb.ll:                                            ; preds = %.loopexit1918
  %i.ayz = getelementptr inbounds i8, ptr %.sroa.028.0.i.i.i483.ph, i64 -24
  br label %.outer, !llvm.loop !8

bb.lm:                                            ; preds = %.noexc98.i487.thread1010, %.noexc98.i487
  %i.aza = phi ptr [ %i.ayj, %.noexc98.i487.thread1010 ], [ %i.ayn, %.noexc98.i487 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.aza, ptr noundef nonnull align 4 dereferenceable(24) %.0.i.i.i484, i64 24, i1 false), !tbaa.struct !78
  %i.azb = icmp eq ptr %.sroa.11.0.i.i.i461, %.0.i.i.i484
  br i1 %i.azb, label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.azc = getelementptr inbounds i8, ptr %.0.i.i.i484, i64 -24
  br label %bb.lf, !llvm.loop !8

.loopexit.split-lp.loopexit.split-lp.i462:        ; preds = %bb.lq, %bb.lp
  %lpad.loopexit.split-lp27.i463 = landingpad { ptr, i32 }
          cleanup
  %i.azd = mul nuw nsw i64 %.sroa.5.0.i.i.i460, 24
  call void @_ZdlPvm(ptr noundef %.sroa.11.0.i.i.i461, i64 noundef %i.azd) #20
  br label %.body.i443

bb.lo:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEES9_EC2ESF_l.exit.i.i.i
  %i.aze = icmp eq ptr %.sroa.11.0.i.i.i461, null
  br i1 %i.aze, label %bb.lp, label %bb.lq, !prof !233

bb.lp:                                            ; preds = %bb.lo
  invoke fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElNS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_(ptr %i.awo, ptr nonnull %i.awp, ptr nonnull %.val57.i457, i64 noundef %i.awu, i64 noundef 2, ptr nonnull @_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_)
          to label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i462

bb.lq:                                            ; preds = %bb.lo
  invoke fastcc void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_SO_T2_(ptr %i.awo, ptr nonnull %i.awp, ptr nonnull %.val57.i457, i64 noundef %i.awu, i64 noundef 2, ptr noundef nonnull %.sroa.11.0.i.i.i461, i64 noundef %.sroa.5.0.i.i.i460, i64 ptrtoint (ptr @_ZN3ozz9animation7offline12_GLOBAL__N_114SortingKeyLessINS2_10SortingKeyINS1_12RawAnimation8ScaleKeyEEEEEbRKT_SA_ to i64))
          to label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i462

_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i: ; preds = %bb.la, %bb.lm, %bb.lq, %bb.lp, %bb.lk, %bb.lj, %bb.li, %bb.ld, %bb.lc, %bb.lb
  %i.azf = mul nuw nsw i64 %.sroa.5.0.i.i.i460, 24
  call void @_ZdlPvm(ptr noundef %.sroa.11.0.i.i.i461, i64 noundef %i.azf) #20
  %.pre.i467 = load ptr, ptr %20, align 8, !tbaa !234
  %.pre1307.pre = load ptr, ptr %i.asf, align 8, !tbaa !234
  br label %.loopexit30.i468

.loopexit.split-lp32.loopexit.split-lp.i441.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.jv, %.invoke.i514
  %lpad.loopexit.split-lp1922 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i443

.body.i443:                                       ; preds = %.loopexit.split-lp32.loopexit.split-lp.i441.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i462
  %.pn.i444 = phi { ptr, i32 } [ %lpad.loopexit.split-lp27.i463, %.loopexit.split-lp.loopexit.split-lp.i462 ], [ %lpad.loopexit.split-lp1922, %.loopexit.split-lp32.loopexit.split-lp.i441.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @_ZNSt6vectorISt4pairIiiEN3ozz12StdAllocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.body

bb.lr:                                            ; preds = %bb.ju
  %i.azg = getelementptr inbounds nuw i8, ptr %i.atd, i64 4
  store i32 %i.ate, ptr %i.azg, align 4, !tbaa !232
  %i.azh = trunc i64 %.04966.i435 to i32
  store i32 %i.azh, ptr %i.atd, align 4, !tbaa !231
  %i.azi = add nuw i64 %.04966.i435, 1            ; 2 uses
  %exitcond.not.i438 = icmp eq i64 %i.azi, %i.asz
  br i1 %exitcond.not.i438, label %.loopexit130.i439, label %bb.ju, !llvm.loop !141

.loopexit30.i468:                                 ; preds = %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i
  %.pre1307 = phi ptr [ %.pre13071308, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i ], [ %.pre1307.pre, %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i ]
  %i.azj = phi ptr [ %i.ass, %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS2_12RawAnimation8ScaleKeyEEENS0_12StdAllocatorIS7_EEE9push_backERKS7_.exit91.i ], [ %.pre.i467, %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12_GLOBAL__N_110SortingKeyINS4_12RawAnimation8ScaleKeyEEESt6vectorIS9_NS2_12StdAllocatorIS9_EEEEElSA_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SJ_EEEEvT_SN_SN_T0_SO_T1_T2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.jt, !llvm.loop !142

bb.ls:                                            ; preds = %bb.jr, %.loopexit130.i439
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #20
  %.val141 = load ptr, ptr %58, align 8, !tbaa !213 ; 4 uses
  %.val142 = load ptr, ptr %i.th, align 8, !tbaa !213 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false), !alias.scope !236
  %.not20.i = icmp eq ptr %.val141, %.val142      ; 2 uses
  br i1 %.not20.i, label %._crit_edge.i563, label %.lr.ph.i560

.lr.ph.i560:                                      ; preds = %bb.ls
  %i.azk = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %61, i64 16
  br label %bb.lt

._crit_edge.i563:                                 ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit.i, %bb.ls
  %.val27.i = load ptr, ptr %59, align 8, !tbaa !217, !noalias !236 ; 5 uses
  %.val25.i = load ptr, ptr %i.rm, align 8, !tbaa !217, !noalias !236 ; 4 uses
  %.not1222.i = icmp eq ptr %.val27.i, %.val25.i  ; 2 uses
  br i1 %.not1222.i, label %._crit_edge26.i, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %._crit_edge.i563
  %i.azm = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %61, i64 16
  br label %bb.lw

bb.lt:                                            ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit.i, %.lr.ph.i560
  %.sroa.09.021.i = phi ptr [ %.val141, %.lr.ph.i560 ], [ %i.azt, %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit.i ] ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i, i64 8 ; 2 uses
  %i.azp = load ptr, ptr %i.azk, align 8, !tbaa !95, !alias.scope !236 ; 4 uses
  %i.azq = load ptr, ptr %i.azl, align 8, !tbaa !96, !alias.scope !236
  %.not.i.i561 = icmp eq ptr %i.azp, %i.azq
  br i1 %.not.i.i561, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.azr = load float, ptr %i.azo, align 4, !tbaa !76, !noalias !236
  store float %i.azr, ptr %i.azp, align 4, !tbaa !76
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azp, i64 4
  store ptr %i.azs, ptr %i.azk, align 8, !tbaa !95, !alias.scope !236
  br label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit.i

bb.lv:                                            ; preds = %bb.lt
  invoke void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr %i.azp, ptr noundef nonnull align 4 dereferenceable(4) %i.azo)
          to label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit.i: ; preds = %bb.lv, %bb.lu
  %i.azt = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i, i64 24 ; 2 uses
  %.not.i562 = icmp eq ptr %i.azt, %.val142
  br i1 %.not.i562, label %._crit_edge.i563, label %bb.lt

._crit_edge26.i:                                  ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit39.i, %._crit_edge.i563
  br i1 %.not67.i433, label %._crit_edge31.i, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %._crit_edge26.i
  %i.azu = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %61, i64 16
  br label %bb.ma

bb.lw:                                            ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit39.i, %.lr.ph25.i
  %.sroa.07.023.i = phi ptr [ %.val27.i, %.lr.ph25.i ], [ %i.bab, %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit39.i ] ; 2 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i, i64 8 ; 2 uses
  %i.azx = load ptr, ptr %i.azm, align 8, !tbaa !95, !alias.scope !236 ; 4 uses
  %i.azy = load ptr, ptr %i.azn, align 8, !tbaa !96, !alias.scope !236
  %.not.i37.i = icmp eq ptr %i.azx, %i.azy
  br i1 %.not.i37.i, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.azz = load float, ptr %i.azw, align 4, !tbaa !76
  store float %i.azz, ptr %i.azx, align 4, !tbaa !76
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azx, i64 4
  store ptr %i.baa, ptr %i.azm, align 8, !tbaa !95, !alias.scope !236
  br label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit39.i

bb.ly:                                            ; preds = %bb.lw
  invoke void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr %i.azx, ptr noundef nonnull align 4 dereferenceable(4) %i.azw)
          to label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit39.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit39.i: ; preds = %bb.ly, %bb.lx
  %i.bab = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i, i64 28 ; 2 uses
  %.not12.i = icmp eq ptr %i.bab, %.val25.i
  br i1 %.not12.i, label %._crit_edge26.i, label %bb.lw

._crit_edge31.i:                                  ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit44.i, %._crit_edge26.i
  %i.bac = load ptr, ptr %61, align 8, !tbaa !237, !alias.scope !236 ; 4 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 11 uses
  %i.bae = load ptr, ptr %i.bad, align 8, !tbaa !237, !alias.scope !236 ; 5 uses
  %.not.i.i.i564 = icmp eq ptr %i.bac, %i.bae
  br i1 %.not.i.i.i564, label %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit, label %bb.lz

bb.lz:                                            ; preds = %._crit_edge31.i
  %i.baf = ptrtoint ptr %i.bae to i64
  %i.bag = ptrtoint ptr %i.bac to i64
  %i.bah = sub i64 %i.baf, %i.bag
  %i.bai = ashr exact i64 %i.bah, 2
  %i.baj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bai, i1 true)
  %i.bak = shl nuw nsw i64 %i.baj, 1
  %i.bal = xor i64 %i.bak, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.bac, ptr %i.bae, i64 noundef %i.bal)
          to label %.noexc40.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40.i:                                       ; preds = %bb.lz
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.bac, ptr %i.bae)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ma:                                            ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit44.i, %.lr.ph30.i
  %.sroa.05.028.i = phi ptr [ %.val.i431, %.lr.ph30.i ], [ %i.bar, %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit44.i ] ; 2 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %.sroa.05.028.i, i64 8 ; 2 uses
  %i.ban = load ptr, ptr %i.azu, align 8, !tbaa !95, !alias.scope !236 ; 4 uses
  %i.bao = load ptr, ptr %i.azv, align 8, !tbaa !96, !alias.scope !236
  %.not.i42.i = icmp eq ptr %i.ban, %i.bao
  br i1 %.not.i42.i, label %bb.mc, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.bap = load float, ptr %i.bam, align 4, !tbaa !76
  store float %i.bap, ptr %i.ban, align 4, !tbaa !76
  %i.baq = getelementptr inbounds nuw i8, ptr %i.ban, i64 4
  store ptr %i.baq, ptr %i.azu, align 8, !tbaa !95, !alias.scope !236
  br label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit44.i

bb.mc:                                            ; preds = %bb.ma
  invoke void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr %i.ban, ptr noundef nonnull align 4 dereferenceable(4) %i.bam)
          to label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit44.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE9push_backERKf.exit44.i: ; preds = %bb.mc, %bb.mb
  %i.bar = getelementptr inbounds nuw i8, ptr %.sroa.05.028.i, i64 24 ; 2 uses
  %.not13.i = icmp eq ptr %i.bar, %.val55.i432
  br i1 %.not13.i, label %._crit_edge31.i, label %bb.ma

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit.i: ; preds = %.noexc40.i
  %.pre.i565 = load ptr, ptr %61, align 8, !tbaa !237, !alias.scope !236 ; 4 uses
  %.pre39.i = load ptr, ptr %i.bad, align 8, !tbaa !237, !alias.scope !236 ; 7 uses
  %i.bas = icmp eq ptr %.pre.i565, %.pre39.i
  br i1 %i.bas, label %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit.i, %bb.md
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.bat, %bb.md ], [ %.pre.i565, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit.i ] ; 5 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i.i566 = icmp eq ptr %i.bat, %.pre39.i
  br i1 %.not.i.i.i.i566, label %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit, label %bb.md

bb.md:                                            ; preds = %.preheader.i.i.i.i
  %i.bau = load float, ptr %.sroa.09.0.i.i.i.i, align 4, !tbaa !76 ; 2 uses
  %i.bav = load float, ptr %i.bat, align 4, !tbaa !76
  %i.baw = fcmp oeq float %i.bau, %i.bav
  br i1 %i.baw, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !145

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i: ; preds = %bb.md
  %i.bax = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 8 ; 2 uses
  %.not18.i.i.i = icmp eq ptr %i.bax, %.pre39.i
  br i1 %.not18.i.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i, label %.lr.ph.i.i.i567

.lr.ph.i.i.i567:                                  ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i, %bb.mf
  %i.bay = phi float [ %i.bbd, %bb.mf ], [ %i.bau, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ] ; 2 uses
  %i.baz = phi ptr [ %i.bbe, %bb.mf ], [ %i.bax, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ] ; 2 uses
  %.sroa.0.019.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.mf ], [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ] ; 2 uses
  %i.bba = load float, ptr %i.baz, align 4, !tbaa !76 ; 3 uses
  %i.bbb = fcmp oeq float %i.bay, %i.bba
  br i1 %i.bbb, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %.lr.ph.i.i.i567
  %i.bbc = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i, i64 4 ; 2 uses
  store float %i.bba, ptr %i.bbc, align 4, !tbaa !76
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %.lr.ph.i.i.i567
  %i.bbd = phi float [ %i.bay, %.lr.ph.i.i.i567 ], [ %i.bba, %bb.me ]
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.019.i.i.i, %.lr.ph.i.i.i567 ], [ %i.bbc, %bb.me ] ; 2 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.baz, i64 4 ; 2 uses
  %.not.i.i45.i = icmp eq ptr %i.bbe, %.pre39.i
  br i1 %.not.i.i45.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i, label %.lr.ph.i.i.i567, !llvm.loop !146

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i: ; preds = %bb.mf, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.mf ]
  %i.bbf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 4 ; 2 uses
  %.not.i.i46.i = icmp eq ptr %i.bbf, %.pre39.i
  br i1 %.not.i.i46.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i._ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit_crit_edge, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i.i

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i._ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit_crit_edge: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i
  %.pre1310 = load ptr, ptr %i.bad, align 8, !tbaa !95
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i
  %i.bbg = ptrtoint ptr %i.bbf to i64
  %i.bbh = ptrtoint ptr %.pre.i565 to i64
  %i.bbi = sub i64 %i.bbg, %i.bbh
  %i.bbj = getelementptr inbounds i8, ptr %.pre.i565, i64 %i.bbi ; 2 uses
  store ptr %i.bbj, ptr %i.bad, align 8, !tbaa !95, !alias.scope !236
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ly, %bb.mc, %bb.lv, %.noexc40.i, %bb.lz
  %lpad.loopexit.split-lp1916 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %61) #20
  br label %.body

_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit: ; preds = %.preheader.i.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i._ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit_crit_edge, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit.i, %._crit_edge31.i
  %i.bbk = phi ptr [ %.pre1310, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit.i._ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit_crit_edge ], [ %i.bae, %._crit_edge31.i ], [ %i.bbj, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i.i ], [ %.pre39.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit.i ], [ %.pre39.i, %.preheader.i.i.i.i ]
  %i.bbl = load ptr, ptr %61, align 8, !tbaa !97  ; 3 uses
  %i.bbm = ptrtoint ptr %i.bbk to i64
  %i.bbn = ptrtoint ptr %i.bbl to i64
  %i.bbo = sub i64 %i.bbm, %i.bbn
  %i.bbp = icmp ugt i64 %i.bbo, 262140
  br i1 %i.bbp, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit
  store ptr null, ptr %0, align 8, !tbaa !174
  br label %bb.tu

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ct, %bb.cp, %bb.cl, %bb.ch, %bb.cd, %bb.bz, %bb.bt, %bb.bj, %.noexc245, %bb.bh, %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation8ScaleKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit42.i, %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation8ScaleKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i, %bb.bb, %bb.ar, %.noexc221, %bb.ap, %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation11RotationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit41.i, %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation11RotationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i, %bb.aj, %bb.z, %.noexc201, %bb.x, %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation14TranslationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit42.i, %_ZN3ozz9animation7offline12_GLOBAL__N_119PushBackIdentityKeyINS1_12RawAnimation14TranslationKeyESt6vectorINS2_10SortingKeyIS5_EENS_12StdAllocatorIS8_EEEEEvtfPT0_.exit.i, %.invoke, %bb.iw, %bb.fz, %bb.dc, %bb.cz
  %lpad.loopexit.split-lp2045 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.mh:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115BuildTimePointsERSt6vectorINS2_10SortingKeyINS1_12RawAnimation14TranslationKeyEEENS_12StdAllocatorIS7_EEERS3_INS4_INS5_11RotationKeyEEENS8_ISD_EEERS3_INS4_INS5_8ScaleKeyEEENS8_ISI_EEE.exit
  %i.bbq = ptrtoint ptr %.val142 to i64
  %i.bbr = ptrtoint ptr %.val141 to i64
  %i.bbs = sub i64 %i.bbq, %i.bbr
  %i.bbt = sdiv exact i64 %i.bbs, 24              ; 2 uses
  %i.bbu = icmp ugt i64 %i.bbt, 4294967295
  br i1 %i.bbu, label %bb.mi, label %bb.ml

bb.mi:                                            ; preds = %bb.mh
  %i.bbv = ptrtoint ptr %.val25.i to i64
  %i.bbw = ptrtoint ptr %.val27.i to i64
  %i.bbx = sub i64 %i.bbv, %i.bbw
  %i.bby = sdiv exact i64 %i.bbx, 28
  %i.bbz = icmp ugt i64 %i.bby, 4294967295
  br i1 %i.bbz, label %bb.mj, label %bb.ml

bb.mj:                                            ; preds = %bb.mi
  %i.bca = ptrtoint ptr %.val55.i432 to i64
  %i.bcb = ptrtoint ptr %.val.i431 to i64
  %i.bcc = sub i64 %i.bca, %i.bcb
  %i.bcd = sdiv exact i64 %i.bcc, 24
  %i.bce = icmp ugt i64 %i.bcd, 4294967295
  br i1 %i.bce, label %bb.mk, label %bb.ml

bb.mk:                                            ; preds = %bb.mj
  store ptr null, ptr %0, align 8, !tbaa !174
  br label %bb.tu

bb.ml:                                            ; preds = %bb.mh, %bb.mi, %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #20
  %i.bcf = load float, ptr %1, align 4, !tbaa !239 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.bcg = getelementptr inbounds nuw i8, ptr %62, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %62, i8 0, i64 48, i1 false), !alias.scope !240
  store float 1.000000e+00, ptr %i.bcg, align 8, !tbaa !248, !alias.scope !240
  %i.bch = fcmp ole float %i.bcf, 0.000000e+00
  %or.cond.i570 = or i1 %.not.i.i.i.i69.i, %i.bch
  br i1 %or.cond.i570, label %bb.nx, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.bci = fdiv float %i.o, %i.bcf                ; 2 uses
  %i.bcj = fcmp olt float %i.bci, 1.000000e+00
  %i.bck = select i1 %i.bcj, float 1.000000e+00, float %i.bci
  %i.bcl = fptoui float %i.bck to i64             ; 3 uses
  %.not3.i = icmp eq i64 %i.bcl, 0
  br i1 %.not3.i, label %._crit_edge.thread.i, label %.lr.ph.i571

.lr.ph.i571:                                      ; preds = %bb.mm
  %i.bcm = uitofp i64 %i.bcl to float
  %i.bcn = shl nuw nsw i64 %i.tg, 2               ; 3 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bcp = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bcq = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  %i.bcr = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bcs = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bcu = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bcv = shl nuw nsw i64 %i.tg, 1
  %i.bcw = add nsw i64 %i.bcv, -1
  %i.bcx = getelementptr inbounds nuw i8, ptr %62, i64 24 ; 4 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %62, i64 32 ; 5 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 3 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %62, i64 40 ; 2 uses
  br label %bb.mo

._crit_edge.i578:                                 ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i
  %.pre6.i = load ptr, ptr %i.bcy, align 8, !tbaa !100, !alias.scope !240
  %.pre8.i = load ptr, ptr %i.bcx, align 8, !tbaa !101, !alias.scope !240
  %.pre9.i = load ptr, ptr %62, align 8, !tbaa !249, !alias.scope !240
  %.pre11.i = load ptr, ptr %i.bcz, align 8, !tbaa !249, !alias.scope !240
  %i.bdb = ptrtoint ptr %.pre6.i to i64
  %i.bdc = ptrtoint ptr %.pre8.i to i64
  %i.bdd = sub i64 %i.bdb, %i.bdc
  %i.bde = ashr exact i64 %i.bdd, 2
  %i.bdf = lshr i64 %i.bde, 1
  %i.bdg = icmp eq ptr %.pre9.i, %.pre11.i
  %i.bdh = uitofp nneg i64 %i.bdf to float
  %i.bdi = fdiv float 1.000000e+00, %i.bdh
  %cond.fr.i = freeze i1 %i.bdg
  br i1 %cond.fr.i, label %._crit_edge.thread.i, label %bb.mn

._crit_edge.thread.i:                             ; preds = %._crit_edge.i578, %bb.mm
  br label %bb.mn

bb.mn:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i578
  %i.bdj = phi float [ 1.000000e+00, %._crit_edge.thread.i ], [ %i.bdi, %._crit_edge.i578 ]
  store float %i.bdj, ptr %i.bcg, align 8, !tbaa !248, !alias.scope !240
  %.pre1311 = load float, ptr %1, align 4, !tbaa !239
  br label %bb.nx

bb.mo:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i, %.lr.ph.i571
  %.0262.i = phi i64 [ 0, %.lr.ph.i571 ], [ %i.bdk, %_ZN3ozz9animation7offline12_GLOBAL__N_113BuilderIFrameD2Ev.exit.i ]
  %i.bdk = add nuw i64 %.0262.i, 1                ; 3 uses
  %i.bdl = uitofp i64 %i.bdk to float
  %i.bdm = fmul float %i.o, %i.bdl
  %i.bdn = fdiv float %i.bdm, %i.bcm
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !240
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 24, i1 false), !alias.scope !250, !noalias !240
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20, !noalias !251
  %i.bdo = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.mp unwind label %bb.mq, !noalias !250 ; 2 uses

bb.mp:                                            ; preds = %bb.mo
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !48, !noalias !250
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 16
  %i.bdr = load ptr, ptr %i.bdq, align 8, !noalias !250
  %i.bds = invoke noundef ptr %i.bdr(ptr noundef nonnull align 8 dereferenceable(8) %i.bdo, i64 noundef %i.bcn, i64 noundef 4)
          to label %bb.mr unwind label %bb.mq, !noalias !250 ; 8 uses

bb.mq:                                            ; preds = %bb.mp, %bb.mo
  %i.bdt = landingpad { ptr, i32 }
          catch ptr null
  %i.bdu = extractvalue { ptr, i32 } %i.bdt, 0
  call void @__clang_call_terminate(ptr %i.bdu) #22, !noalias !250
  unreachable

bb.mr:                                            ; preds = %bb.mp
  store ptr %i.bds, ptr %13, align 8, !tbaa !101, !noalias !251
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.bds, i64 %i.tg
  store ptr %i.bdv, ptr %i.bco, align 8, !tbaa !102, !noalias !251
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bds, i8 0, i64 %i.bcn, i1 false), !tbaa !93, !noalias !250
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bds, i64 %i.bcn
  store ptr %scevgep.i.i.i.i.i, ptr %i.bcp, align 8, !tbaa !100, !noalias !251
  br i1 %.not20.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.mr, %bb.ms
  %.044.i.i = phi i64 [ %i.bee, %bb.ms ], [ 0, %bb.mr ] ; 4 uses
  %i.bdw = getelementptr inbounds nuw [24 x i8], ptr %.val141, i64 %.044.i.i ; 2 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 4
  %i.bdy = load float, ptr %i.bdx, align 4, !tbaa !75, !noalias !251
  %i.bdz = fcmp ugt float %i.bdy, %i.bdn
  br i1 %i.bdz, label %._crit_edge.i.i, label %bb.ms

bb.ms:                                            ; preds = %.lr.ph.i.i
  %i.bea = trunc i64 %.044.i.i to i32
  %i.beb = load i16, ptr %i.bdw, align 4, !tbaa !74, !noalias !251
  %i.bec = zext i16 %i.beb to i64
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr %i.bds, i64 %i.bec
  store i32 %i.bea, ptr %i.bed, align 4, !tbaa !93, !noalias !250
  store i64 %.044.i.i, ptr %i.bcq, align 8, !tbaa !253, !alias.scope !250, !noalias !240
  %i.bee = add nuw i64 %.044.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bee, %i.bbt
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !151

._crit_edge.i.i:                                  ; preds = %bb.ms, %.lr.ph.i.i, %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20, !noalias !251
  store ptr %i.bds, ptr %14, align 8, !noalias !251
  store i64 %i.tg, ptr %i.bcr, align 8, !noalias !251
  %i.bef = invoke noundef i64 @_ZN3ozz25ComputeGV4WorstBufferSizeERKNS_4spanIKjEE(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.mt unwind label %bb.nd, !noalias !250 ; 2 uses

bb.mt:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20, !noalias !251
  %.not55.i.i = icmp eq i64 %i.bef, 0
  br i1 %.not55.i.i, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %i.bef)
          to label %._crit_edge48.i.i unwind label %bb.nf

._crit_edge48.i.i:                                ; preds = %bb.mu
  %.pre.i.i = load ptr, ptr %17, align 8, !tbaa !103, !alias.scope !250, !noalias !240
  %.pre49.i.i = load ptr, ptr %i.bcs, align 8, !tbaa !104, !alias.scope !250, !noalias !240
  %i.beg = ptrtoint ptr %.pre49.i.i to i64
  br label %bb.mv

bb.mv:                                            ; preds = %._crit_edge48.i.i, %bb.mt
  %i.beh = phi i64 [ %i.beg, %._crit_edge48.i.i ], [ 0, %bb.mt ]
  %i.bei = phi ptr [ %.pre.i.i, %._crit_edge48.i.i ], [ null, %bb.mt ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20, !noalias !251
  store ptr %i.bds, ptr %15, align 8, !noalias !251
  store i64 %i.tg, ptr %i.bct, align 8, !noalias !251
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20, !noalias !251
  %i.bej = ptrtoint ptr %i.bei to i64
  %i.bek = sub i64 %i.beh, %i.bej
  store ptr %i.bei, ptr %16, align 8, !noalias !251
  store i64 %i.bek, ptr %i.bcu, align 8, !noalias !251
  %i.bel = invoke { ptr, i64 } @_ZN3ozz15EncodeGV4StreamERKNS_4spanIKjEERKNS0_IhEE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.mw unwind label %bb.ne

bb.mw:                                            ; preds = %bb.mv
  %i.bem = extractvalue { ptr, i64 } %i.bel, 1    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20, !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20, !noalias !251
  %i.ben = load ptr, ptr %i.bcs, align 8, !tbaa !104, !alias.scope !250, !noalias !240 ; 2 uses
  %i.beo = load ptr, ptr %17, align 8, !tbaa !103, !alias.scope !250, !noalias !240 ; 2 uses
  %i.bep = ptrtoint ptr %i.ben to i64
  %i.beq = ptrtoint ptr %i.beo to i64
  %i.ber = sub i64 %i.bep, %i.beq                 ; 2 uses
  %i.bes = sub nuw i64 %i.ber, %i.bem
  %i.bet = icmp ugt i64 %i.bem, %i.ber
  br i1 %i.bet, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %bb.mw
  %i.beu = sub i64 0, %i.bem
  invoke void @_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %i.beu)
          to label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i unwind label %bb.nf

bb.my:                                            ; preds = %bb.mw
  %.not46.i.i = icmp eq i64 %i.bem, 0
  br i1 %.not46.i.i, label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.bes ; 2 uses
  %.not.i.i37.i.i = icmp eq ptr %i.ben, %i.bev
  br i1 %.not.i.i37.i.i, label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i, label %bb.na

bb.na:                                            ; preds = %bb.mz
  store ptr %i.bev, ptr %i.bcs, align 8, !tbaa !104, !alias.scope !250, !noalias !240
  br label %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i

_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i: ; preds = %bb.na, %bb.mz, %bb.my, %bb.mx
  %i.bew = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.nb unwind label %bb.nc     ; 2 uses

bb.nb:                                            ; preds = %_ZNSt6vectorIhN3ozz12StdAllocatorIhEEE6resizeEm.exit39.i.i
  %i.bex = load ptr, ptr %i.bew, align 8, !tbaa !48
end_hunk_4
