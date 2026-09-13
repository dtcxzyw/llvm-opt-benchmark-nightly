Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/detection_output_layer?download=true
inline.NumInlined: 2314
inline.NumDeleted: 910
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2cv3dnn24DetectionOutputLayerImpl18processDetections_ERKSt3mapIiSt6vectorINS0_4util14NormalizedBBoxESaIS5_EESt4lessIiESaISt4pairIKiS7_EEERNS_3MatERS3_IS2_IiS3_IiSaIiEES9_SaISA_ISB_SK_EEESaISN_EE:bb.a
  %i.ip = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -4
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !51
  %i.ir = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -4
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !197
  %i.is = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.iu = load float, ptr %i.is, align 4, !tbaa !89
  store float %i.iu, ptr %i.it, align 4, !tbaa !195
  %i.iv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -20
  %i.iw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -20
  %i.ix = load i32, ptr %i.iv, align 4, !tbaa !51
  store i32 %i.ix, ptr %i.iw, align 4, !tbaa !196
  %i.iy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -16
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !51
  %i.ja = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -16
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !197
  %i.jb = add nsw i64 %.010.i.i.i.i.i.i.i, -2
  %i.jc = icmp sgt i64 %.010.i.i.i.i.i.i.i, 2
  br i1 %i.jc, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i, !llvm.loop !291

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  store float %i.hr, ptr %.sroa.0257.1.lcssa, align 4, !tbaa !195
  store <2 x i32> %i.hu, ptr %i.hq, align 4, !tbaa !51
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %.sroa.6290.0..sroa.010.023.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i.ptr.i, i64 4
  %i.jd = load <2 x i32>, ptr %.sroa.6290.0..sroa.010.023.i.ptr.i.sroa_idx, align 4
  %i.je = load float, ptr %.pn22.i.i, align 4, !tbaa !195 ; 2 uses
  %i.jf = fcmp ogt float %i.hr, %i.je
  br i1 %i.jf, label %.lr.ph.i.i.i180, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i180:                                  ; preds = %bb.bo, %.lr.ph.i.i.i180
  %i.jg = phi float [ %i.jk, %.lr.ph.i.i.i180 ], [ %i.je, %bb.bo ]
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i180 ], [ %.pn22.i.i, %bb.bo ] ; 3 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i180 ], [ %.sroa.010.023.i.ptr.i, %bb.bo ] ; 3 uses
  store float %i.jg, ptr %.sroa.04.08.i.i.i, align 4, !tbaa !195
  %i.jh = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.i, i64 -8
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 4
  %i.jj = load <2 x i32>, ptr %i.jh, align 4, !tbaa !51
  store <2 x i32> %i.jj, ptr %i.ji, align 4, !tbaa !51
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -12 ; 2 uses
  %i.jk = load float, ptr %.sroa.0.0.i.i.i, align 4, !tbaa !195 ; 2 uses
  %i.jl = fcmp ogt float %i.hr, %i.jk
  br i1 %i.jl, label %.lr.ph.i.i.i180, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, !llvm.loop !292

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i180, %bb.bo
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.010.023.i.ptr.i, %bb.bo ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i180 ] ; 2 uses
  store float %i.hr, ptr %.sroa.04.0.lcssa.i.i.i, align 4, !tbaa !195
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 4
  store <2 x i32> %i.jd, ptr %i.jm, align 4, !tbaa !51
  br label %bb.bp

bb.bp:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i
  %.sroa.010.023.i.add.i = add nuw nsw i64 %.sroa.010.023.i.idx.i, 12 ; 2 uses
  %.not.i.i179 = icmp eq i64 %.sroa.010.023.i.add.i, 192
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i179, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, label %bb.bn, !llvm.loop !293

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i: ; preds = %bb.bp
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0257.1.lcssa, i64 192 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.jn, %.sroa.18.1.lcssa
  br i1 %.not7.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i
  %.sroa.0.08.i.i = phi ptr [ %i.jy, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i ], [ %i.jn, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i ] ; 6 uses
  %.sroa.0292.0.copyload = load float, ptr %.sroa.0.08.i.i, align 4 ; 3 uses
  %.sroa.6295.0..sroa.0.08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 4
  %i.jo = load <2 x i32>, ptr %.sroa.6295.0..sroa.0.08.i.i.sroa_idx, align 4
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i, i64 -12 ; 2 uses
  %i.jp = load float, ptr %.sroa.0.07.i.i.i, align 4, !tbaa !195 ; 2 uses
  %i.jq = fcmp ogt float %.sroa.0292.0.copyload, %i.jp
  br i1 %i.jq, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i10.i, %.lr.ph.i.i14.i
  %i.jr = phi float [ %i.jv, %.lr.ph.i.i14.i ], [ %i.jp, %.lr.ph.i10.i ]
  %.sroa.0.09.i.i15.i = phi ptr [ %.sroa.0.0.i.i17.i, %.lr.ph.i.i14.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i10.i ] ; 3 uses
  %.sroa.04.08.i.i16.i = phi ptr [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ], [ %.sroa.0.08.i.i, %.lr.ph.i10.i ] ; 3 uses
  store float %i.jr, ptr %.sroa.04.08.i.i16.i, align 4, !tbaa !195
  %i.js = getelementptr inbounds i8, ptr %.sroa.04.08.i.i16.i, i64 -8
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i16.i, i64 4
  %i.ju = load <2 x i32>, ptr %i.js, align 4, !tbaa !51
  store <2 x i32> %i.ju, ptr %i.jt, align 4, !tbaa !51
  %.sroa.0.0.i.i17.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15.i, i64 -12 ; 2 uses
  %i.jv = load float, ptr %.sroa.0.0.i.i17.i, align 4, !tbaa !195 ; 2 uses
  %i.jw = fcmp ogt float %.sroa.0292.0.copyload, %i.jv
  br i1 %i.jw, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, !llvm.loop !292

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i10.i
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i10.i ], [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ] ; 2 uses
  store float %.sroa.0292.0.copyload, ptr %.sroa.04.0.lcssa.i.i12.i, align 4, !tbaa !195
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i12.i, i64 4
  store <2 x i32> %i.jo, ptr %i.jx, align 4, !tbaa !51
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 12 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.jy, %.sroa.18.1.lcssa
  br i1 %.not.i13.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !294

.preheader.i18.i:                                 ; preds = %.noexc135
  %.sroa.010.020.i19.i = getelementptr inbounds nuw i8, ptr %.sroa.0257.1.lcssa, i64 12 ; 2 uses
  %.not21.i20.i = icmp eq ptr %.sroa.010.020.i19.i, %.sroa.18.1.lcssa
  br i1 %.not21.i20.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.preheader.i18.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0257.1.lcssa, i64 4
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %.lr.ph.i21.i
  %.sroa.010.023.i22.i = phi ptr [ %.sroa.010.020.i19.i, %.lr.ph.i21.i ], [ %.sroa.010.0.i26.i, %bb.bt ] ; 8 uses
  %.pn22.i23.i = phi ptr [ %.sroa.0257.1.lcssa, %.lr.ph.i21.i ], [ %.sroa.010.023.i22.i, %bb.bt ] ; 4 uses
  %i.ka = load float, ptr %.sroa.010.023.i22.i, align 4, !tbaa !195 ; 5 uses
  %i.kb = load float, ptr %.sroa.0257.1.lcssa, align 4, !tbaa !195
  %i.kc = fcmp ogt float %i.ka, %i.kb
  br i1 %i.kc, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.sroa.4.0..sroa_idx.i33.i = getelementptr inbounds nuw i8, ptr %.pn22.i23.i, i64 16
  %i.kd = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i33.i, align 4
  %i.ke = ptrtoint ptr %.sroa.010.023.i22.i to i64
  %i.kf = sub i64 %i.ke, %i.ek                    ; 2 uses
  %i.kg = icmp sgt i64 %i.kf, 0
  br i1 %i.kg, label %.lr.ph.preheader.i.i.i.i.i.i38.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37.i

.lr.ph.preheader.i.i.i.i.i.i38.i:                 ; preds = %bb.br
  %i.kh = getelementptr inbounds nuw i8, ptr %.pn22.i23.i, i64 24
  %i.ki = udiv exact i64 %i.kf, 12
  br label %.lr.ph.i.i.i.i.i.i39.i

.lr.ph.i.i.i.i.i.i39.i:                           ; preds = %.lr.ph.i.i.i.i.i.i39.i, %.lr.ph.preheader.i.i.i.i.i.i38.i
  %.010.i.i.i.i.i.i40.i = phi i64 [ %i.ks, %.lr.ph.i.i.i.i.i.i39.i ], [ %i.ki, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 2 uses
  %.069.i.i.i.i.i.i41.i = phi ptr [ %i.kk, %.lr.ph.i.i.i.i.i.i39.i ], [ %i.kh, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 3 uses
  %.078.i.i.i.i.i.i42.i = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i.i39.i ], [ %.sroa.010.023.i22.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 3 uses
  %i.kj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.i, i64 -12 ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.i, i64 -12 ; 2 uses
  %i.kl = load float, ptr %i.kj, align 4, !tbaa !89
  store float %i.kl, ptr %i.kk, align 4, !tbaa !195
  %i.km = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.i, i64 -8
  %i.kn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.i, i64 -8
  %i.ko = load i32, ptr %i.km, align 4, !tbaa !51
  store i32 %i.ko, ptr %i.kn, align 4, !tbaa !196
  %i.kp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.i, i64 -4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !51
  %i.kr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.i, i64 -4
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !197
  %i.ks = add nsw i64 %.010.i.i.i.i.i.i40.i, -1
  %i.kt = icmp samesign ugt i64 %.010.i.i.i.i.i.i40.i, 1
  br i1 %i.kt, label %.lr.ph.i.i.i.i.i.i39.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37.i, !llvm.loop !291

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37.i: ; preds = %.lr.ph.i.i.i.i.i.i39.i, %bb.br
  store float %i.ka, ptr %.sroa.0257.1.lcssa, align 4, !tbaa !195
  store <2 x i32> %i.kd, ptr %i.jz, align 4, !tbaa !51
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %.sroa.6300.0..sroa.010.023.i22.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i22.i, i64 4
  %i.ku = load <2 x i32>, ptr %.sroa.6300.0..sroa.010.023.i22.i.sroa_idx, align 4
  %i.kv = load float, ptr %.pn22.i23.i, align 4, !tbaa !195 ; 2 uses
  %i.kw = fcmp ogt float %i.ka, %i.kv
  br i1 %i.kw, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i

.lr.ph.i.i28.i:                                   ; preds = %bb.bs, %.lr.ph.i.i28.i
  %i.kx = phi float [ %i.lb, %.lr.ph.i.i28.i ], [ %i.kv, %bb.bs ]
  %.sroa.0.09.i.i29.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i28.i ], [ %.pn22.i23.i, %bb.bs ] ; 3 uses
  %.sroa.04.08.i.i30.i = phi ptr [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ], [ %.sroa.010.023.i22.i, %bb.bs ] ; 3 uses
  store float %i.kx, ptr %.sroa.04.08.i.i30.i, align 4, !tbaa !195
  %i.ky = getelementptr inbounds i8, ptr %.sroa.04.08.i.i30.i, i64 -8
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i30.i, i64 4
  %i.la = load <2 x i32>, ptr %i.ky, align 4, !tbaa !51
  store <2 x i32> %i.la, ptr %i.kz, align 4, !tbaa !51
  %.sroa.0.0.i.i31.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i29.i, i64 -12 ; 2 uses
  %i.lb = load float, ptr %.sroa.0.0.i.i31.i, align 4, !tbaa !195 ; 2 uses
  %i.lc = fcmp ogt float %i.ka, %i.lb
  br i1 %i.lc, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i, !llvm.loop !292

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i: ; preds = %.lr.ph.i.i28.i, %bb.bs
  %.sroa.04.0.lcssa.i.i25.i = phi ptr [ %.sroa.010.023.i22.i, %bb.bs ], [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ] ; 2 uses
  store float %i.ka, ptr %.sroa.04.0.lcssa.i.i25.i, align 4, !tbaa !195
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i25.i, i64 4
  store <2 x i32> %i.ku, ptr %i.ld, align 4, !tbaa !51
  br label %bb.bt

bb.bt:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37.i
  %.sroa.010.0.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i22.i, i64 12 ; 2 uses
  %.not.i27.i = icmp eq ptr %.sroa.010.0.i26.i, %.sroa.18.1.lcssa
  br i1 %.not.i27.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %bb.bq, !llvm.loop !293

bb.bu:                                            ; preds = %_ZNKSt6vectorISt4pairIfS0_IiiEESaIS2_EE12_M_check_lenEmPKc.exit.i, %bb.cm, %bb.bm
  %.sroa.31.0.lcssa571 = phi ptr [ %.sroa.31.0.lcssa572, %_ZNKSt6vectorISt4pairIfS0_IiiEESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.31.0.lcssa572, %bb.cm ], [ %.sroa.31.1.lcssa, %bb.bm ]
  %.sroa.0257.0.lcssa564 = phi ptr [ %.sroa.0257.0.lcssa565, %_ZNKSt6vectorISt4pairIfS0_IiiEESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0257.0.lcssa565, %bb.cm ], [ %.sroa.0257.1.lcssa, %bb.bm ]
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.bv:                                            ; preds = %._crit_edge432.thread, %._crit_edge432
  %i.lf = phi i64 [ 0, %._crit_edge432.thread ], [ %i.em, %._crit_edge432 ] ; 2 uses
  %i.lg = phi i64 [ 0, %._crit_edge432.thread ], [ %i.el, %._crit_edge432 ] ; 2 uses
  %i.lh = phi i64 [ 0, %._crit_edge432.thread ], [ %i.ek, %._crit_edge432 ] ; 3 uses
  %i.li = phi i64 [ 0, %._crit_edge432.thread ], [ %i.ej, %._crit_edge432 ] ; 2 uses
  %.sroa.31.0.lcssa573 = phi ptr [ null, %._crit_edge432.thread ], [ %.sroa.31.1.lcssa, %._crit_edge432 ] ; 2 uses
  %.sroa.18.0.lcssa569 = phi ptr [ null, %._crit_edge432.thread ], [ %.sroa.18.1.lcssa, %._crit_edge432 ] ; 4 uses
  %.sroa.0257.0.lcssa566 = phi ptr [ null, %._crit_edge432.thread ], [ %.sroa.0257.1.lcssa, %._crit_edge432 ] ; 37 uses
  %i.lj = phi i32 [ %i.z, %._crit_edge432.thread ], [ %.pre486, %._crit_edge432 ] ; 7 uses
  %i.lk = sext i32 %i.lj to i64                   ; 4 uses
  %i.ll = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %i.lk ; 3 uses
  %i.lm = icmp slt i32 %i.lj, 2
  br i1 %i.lm, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ln = add nsw i64 %i.lk, -2                   ; 3 uses
  %i.lo = lshr i64 %i.ln, 1
  %.lhs.trunc = add nsw i32 %i.lj, -1
  %31 = lshr i32 %.lhs.trunc, 1
  %.zext = zext nneg i32 %31 to i64               ; 2 uses
  %i.lp = and i32 %i.lj, 1
  %i.lq = icmp eq i32 %i.lp, 0
  %i.lr = lshr exact i64 %i.ln, 1                 ; 2 uses
  %i.ls = or disjoint i64 %i.ln, 1                ; 2 uses
  %i.lt = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %i.ls ; 3 uses
  %i.lu = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %i.lr ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc184, %bb.bw
  %.012.i.i.i181 = phi i64 [ %i.lo, %bb.bw ], [ %i.nm, %.noexc184 ] ; 8 uses
  %i.lz = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %.012.i.i.i181 ; 4 uses
  %.sroa.05.0.copyload.i.i.i314335 = load float, ptr %i.lz, align 4 ; 3 uses
  %.sroa_idx315 = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %.sroa.05.0.copyload.i.i.i316 = load i32, ptr %.sroa_idx315, align 4 ; 2 uses
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.lz, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  %i.ma = icmp slt i64 %.012.i.i.i181, %.zext
  br i1 %i.ma, label %.lr.ph.i229, label %._crit_edge.i214

.lr.ph.i229:                                      ; preds = %bb.bx, %.lr.ph.i229
  %.043.i230 = phi i64 [ %spec.select.i231, %.lr.ph.i229 ], [ %.012.i.i.i181, %bb.bx ] ; 2 uses
  %i.mb = shl i64 %.043.i230, 1                   ; 2 uses
  %i.mc = add i64 %i.mb, 2                        ; 2 uses
  %i.md = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %i.mc
  %i.me = or disjoint i64 %i.mb, 1                ; 2 uses
  %i.mf = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %i.me
  %i.mg = load float, ptr %i.md, align 4, !tbaa !195
  %i.mh = load float, ptr %i.mf, align 4, !tbaa !195
  %i.mi = fcmp ogt float %i.mg, %i.mh
  %spec.select.i231 = select i1 %i.mi, i64 %i.me, i64 %i.mc ; 4 uses
  %i.mj = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %spec.select.i231 ; 2 uses
  %i.mk = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %.043.i230 ; 2 uses
  %i.ml = load float, ptr %i.mj, align 4, !tbaa !89
  store float %i.ml, ptr %i.mk, align 4, !tbaa !195
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  %i.mo = load <2 x i32>, ptr %i.mm, align 4, !tbaa !51
  store <2 x i32> %i.mo, ptr %i.mn, align 4, !tbaa !51
  %i.mp = icmp slt i64 %spec.select.i231, %.zext
  br i1 %i.mp, label %.lr.ph.i229, label %._crit_edge.i214, !llvm.loop !9

._crit_edge.i214:                                 ; preds = %.lr.ph.i229, %bb.bx
  %.0.lcssa.i215 = phi i64 [ %.012.i.i.i181, %bb.bx ], [ %spec.select.i231, %.lr.ph.i229 ] ; 2 uses
  %i.mq = icmp eq i64 %.0.lcssa.i215, %i.lr
  %or.cond333 = select i1 %i.lq, i1 %i.mq, i1 false
  br i1 %or.cond333, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %._crit_edge.i214
  %i.mr = load float, ptr %i.lt, align 4, !tbaa !89
  store float %i.mr, ptr %i.lu, align 4, !tbaa !195
  %i.ms = load i32, ptr %i.lv, align 4, !tbaa !51
  store i32 %i.ms, ptr %i.lw, align 4, !tbaa !196
  %i.mt = load i32, ptr %i.lx, align 4, !tbaa !51
  store i32 %i.mt, ptr %i.ly, align 4, !tbaa !197
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge.i214
  %.1.i216 = phi i64 [ %i.ls, %bb.by ], [ %.0.lcssa.i215, %._crit_edge.i214 ] ; 3 uses
  %i.mu = icmp sgt i64 %.1.i216, %.012.i.i.i181
  %i.mv = trunc i64 %.sroa.05.0.copyload.i.i.i to i32
  %i.mw = bitcast i32 %i.mv to float
  %i.mx = lshr i64 %.sroa.05.0.copyload.i.i.i, 32
  %i.my = trunc nuw i64 %i.mx to i32
  br i1 %i.mu, label %.lr.ph.i.i219, label %.noexc184

.lr.ph.i.i219:                                    ; preds = %bb.bz, %bb.ca
  %.019.i.i220 = phi i64 [ %.01020.i.i222, %bb.ca ], [ %.1.i216, %bb.bz ] ; 3 uses
  %.01020.in.i.i221 = add nsw i64 %.019.i.i220, -1
  %.01020.i.i222 = sdiv i64 %.01020.in.i.i221, 2  ; 4 uses
  %i.mz = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %.01020.i.i222 ; 2 uses
  %i.na = load float, ptr %i.mz, align 4, !tbaa !195 ; 2 uses
  %i.nb = fcmp ogt float %i.na, %.sroa.05.0.copyload.i.i.i314335
  br i1 %i.nb, label %bb.ca, label %.noexc184

bb.ca:                                            ; preds = %.lr.ph.i.i219
  %i.nc = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %.019.i.i220 ; 2 uses
  store float %i.na, ptr %i.nc, align 4, !tbaa !195
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.nf = load <2 x i32>, ptr %i.nd, align 4, !tbaa !51
  store <2 x i32> %i.nf, ptr %i.ne, align 4, !tbaa !51
  %i.ng = icmp sgt i64 %.01020.i.i222, %.012.i.i.i181
  br i1 %i.ng, label %.lr.ph.i.i219, label %.noexc184, !llvm.loop !10

.noexc184:                                        ; preds = %bb.ca, %.lr.ph.i.i219, %bb.bz
  %i.nh = phi i32 [ %i.my, %bb.bz ], [ %.sroa.05.0.copyload.i.i.i316, %.lr.ph.i.i219 ], [ %.sroa.05.0.copyload.i.i.i316, %bb.ca ]
  %i.ni = phi float [ %i.mw, %bb.bz ], [ %.sroa.05.0.copyload.i.i.i314335, %.lr.ph.i.i219 ], [ %.sroa.05.0.copyload.i.i.i314335, %bb.ca ]
  %.0.lcssa.i.i218 = phi i64 [ %.1.i216, %bb.bz ], [ %.01020.i.i222, %bb.ca ], [ %.019.i.i220, %.lr.ph.i.i219 ]
  %i.nj = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %.0.lcssa.i.i218 ; 3 uses
  store float %i.ni, ptr %i.nj, align 4, !tbaa !195
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  store i32 %i.nh, ptr %i.nk, align 4, !tbaa !196
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  store i32 %.sroa.4.0.copyload.i.i.i, ptr %i.nl, align 4, !tbaa !197
  %.not.i.i.i182 = icmp eq i64 %.012.i.i.i181, 0
  %i.nm = add nsw i64 %.012.i.i.i181, -1
  br i1 %.not.i.i.i182, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i, label %bb.bx, !llvm.loop !11

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i: ; preds = %.noexc184, %bb.bv
  %i.nn = icmp ult ptr %i.ll, %.sroa.18.0.lcssa569
  br i1 %i.nn, label %.lr.ph.i.i183, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i

.lr.ph.i.i183:                                    ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.0257.0.lcssa566, i64 4
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0257.0.lcssa566, i64 8
  %i.nq = add nsw i64 %i.lk, -1
  %i.nr = sdiv i64 %i.nq, 2
  %i.ns = icmp sgt i32 %i.lj, 2
  %i.nt = and i32 %i.lj, 1
  %i.nu = icmp eq i32 %i.nt, 0
  %i.nv = add nsw i64 %i.lk, -2                   ; 2 uses
  %i.nw = ashr exact i64 %i.nv, 1                 ; 2 uses
  %i.nx = or disjoint i64 %i.nv, 1                ; 2 uses
  %i.ny = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %i.nx ; 3 uses
  %i.nz = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %i.nw ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cf, %.lr.ph.i.i183
  %.sroa.0.016.i.i = phi ptr [ %i.ll, %.lr.ph.i.i183 ], [ %i.ps, %bb.cf ] ; 6 uses
  %i.oe = load float, ptr %.sroa.0.016.i.i, align 4, !tbaa !195 ; 4 uses
  %i.of = load float, ptr %.sroa.0257.0.lcssa566, align 4, !tbaa !195 ; 2 uses
  %i.og = fcmp ogt float %i.oe, %i.of
  br i1 %i.og, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %.sroa.0.016.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4 ; 2 uses
  %.sroa.05.0.copyload.i9.i.i309 = load i32, ptr %.sroa.0.016.i.i.sroa_idx, align 4 ; 2 uses
  %.sroa.05.0.copyload.i9.i.i = load i64, ptr %.sroa.0.016.i.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i10.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i11.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i10.i.i, align 4
  store float %i.of, ptr %.sroa.0.016.i.i, align 4, !tbaa !195
  %i.oh = load i32, ptr %i.no, align 4, !tbaa !51
  store i32 %i.oh, ptr %.sroa.0.016.i.i.sroa_idx, align 4, !tbaa !196
  %i.oi = load i32, ptr %i.np, align 4, !tbaa !51
  store i32 %i.oi, ptr %.sroa.4.0..sroa_idx.i10.i.i, align 4, !tbaa !197
  br i1 %i.ns, label %.lr.ph.i210, label %._crit_edge.i195

.lr.ph.i210:                                      ; preds = %bb.cc, %.lr.ph.i210
  %.043.i211 = phi i64 [ %spec.select.i212, %.lr.ph.i210 ], [ 0, %bb.cc ] ; 2 uses
  %i.oj = shl i64 %.043.i211, 1                   ; 2 uses
  %i.ok = add i64 %i.oj, 2                        ; 2 uses
  %i.ol = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %i.ok
  %i.om = or disjoint i64 %i.oj, 1                ; 2 uses
  %i.on = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %i.om
  %i.oo = load float, ptr %i.ol, align 4, !tbaa !195
  %i.op = load float, ptr %i.on, align 4, !tbaa !195
  %i.oq = fcmp ogt float %i.oo, %i.op
  %spec.select.i212 = select i1 %i.oq, i64 %i.om, i64 %i.ok ; 4 uses
  %i.or = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %spec.select.i212 ; 2 uses
  %i.os = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %.043.i211 ; 2 uses
  %i.ot = load float, ptr %i.or, align 4, !tbaa !89
  store float %i.ot, ptr %i.os, align 4, !tbaa !195
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.ow = load <2 x i32>, ptr %i.ou, align 4, !tbaa !51
  store <2 x i32> %i.ow, ptr %i.ov, align 4, !tbaa !51
  %i.ox = icmp slt i64 %spec.select.i212, %i.nr
  br i1 %i.ox, label %.lr.ph.i210, label %._crit_edge.i195, !llvm.loop !9

._crit_edge.i195:                                 ; preds = %.lr.ph.i210, %bb.cc
  %.0.lcssa.i196 = phi i64 [ 0, %bb.cc ], [ %spec.select.i212, %.lr.ph.i210 ] ; 3 uses
  %i.oy = icmp eq i64 %.0.lcssa.i196, %i.nw
  %or.cond440 = select i1 %i.nu, i1 %i.oy, i1 false
  br i1 %or.cond440, label %.thread580, label %bb.cd

.thread580:                                       ; preds = %._crit_edge.i195
  %i.oz = load float, ptr %i.ny, align 4, !tbaa !89
  store float %i.oz, ptr %i.nz, align 4, !tbaa !195
  %i.pa = load i32, ptr %i.oa, align 4, !tbaa !51
  store i32 %i.pa, ptr %i.ob, align 4, !tbaa !196
  %i.pb = load i32, ptr %i.oc, align 4, !tbaa !51
  store i32 %i.pb, ptr %i.od, align 4, !tbaa !197
  br label %.lr.ph.i.i200.preheader

bb.cd:                                            ; preds = %._crit_edge.i195
  %.not337 = icmp eq i64 %.0.lcssa.i196, 0
  %i.pc = trunc i64 %.sroa.05.0.copyload.i9.i.i to i32
  %i.pd = bitcast i32 %i.pc to float
  %i.pe = lshr i64 %.sroa.05.0.copyload.i9.i.i, 32
  %i.pf = trunc nuw i64 %i.pe to i32
  br i1 %.not337, label %.noexc185, label %.lr.ph.i.i200.preheader

.lr.ph.i.i200.preheader:                          ; preds = %.thread580, %bb.cd
  %.019.i.i201.ph = phi i64 [ %.0.lcssa.i196, %bb.cd ], [ %i.nx, %.thread580 ]
  br label %.lr.ph.i.i200

.lr.ph.i.i200:                                    ; preds = %.lr.ph.i.i200.preheader, %bb.ce
  %.019.i.i201 = phi i64 [ %.01020.i.i203330338, %bb.ce ], [ %.019.i.i201.ph, %.lr.ph.i.i200.preheader ] ; 3 uses
  %.01020.in.i.i202 = add nsw i64 %.019.i.i201, -1
  %.01020.i.i203330338 = lshr i64 %.01020.in.i.i202, 1 ; 3 uses
  %i.pg = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %.01020.i.i203330338 ; 2 uses
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !195 ; 2 uses
  %i.pi = fcmp ogt float %i.ph, %i.oe
  br i1 %i.pi, label %bb.ce, label %.noexc185

bb.ce:                                            ; preds = %.lr.ph.i.i200
  %i.pj = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %.019.i.i201 ; 2 uses
  store float %i.ph, ptr %i.pj, align 4, !tbaa !195
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  %i.pm = load <2 x i32>, ptr %i.pk, align 4, !tbaa !51
  store <2 x i32> %i.pm, ptr %i.pl, align 4, !tbaa !51
  %.not339 = icmp eq i64 %.01020.i.i203330338, 0
  br i1 %.not339, label %.noexc185, label %.lr.ph.i.i200, !llvm.loop !10

.noexc185:                                        ; preds = %bb.ce, %.lr.ph.i.i200, %bb.cd
  %i.pn = phi i32 [ %i.pf, %bb.cd ], [ %.sroa.05.0.copyload.i9.i.i309, %.lr.ph.i.i200 ], [ %.sroa.05.0.copyload.i9.i.i309, %bb.ce ]
  %i.po = phi float [ %i.pd, %bb.cd ], [ %i.oe, %.lr.ph.i.i200 ], [ %i.oe, %bb.ce ]
  %.0.lcssa.i.i199 = phi i64 [ 0, %bb.cd ], [ 0, %bb.ce ], [ %.019.i.i201, %.lr.ph.i.i200 ]
  %i.pp = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa566, i64 %.0.lcssa.i.i199 ; 3 uses
  store float %i.po, ptr %i.pp, align 4, !tbaa !195
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  store i32 %i.pn, ptr %i.pq, align 4, !tbaa !196
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  store i32 %.sroa.4.0.copyload.i11.i.i, ptr %i.pr, align 4, !tbaa !197
  br label %bb.cf

bb.cf:                                            ; preds = %.noexc185, %bb.cb
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 12 ; 2 uses
  %i.pt = icmp ult ptr %i.ps, %.sroa.18.0.lcssa569
  br i1 %i.pt, label %bb.cb, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i, !llvm.loop !295

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i: ; preds = %bb.cf, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i
  %i.pu = icmp sgt i32 %i.lj, 1
  br i1 %i.pu, label %.lr.ph.i9.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit

.lr.ph.i9.i:                                      ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0257.0.lcssa566, i64 4
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.0257.0.lcssa566, i64 8
  br label %bb.cg

bb.cg:                                            ; preds = %.noexc186, %.lr.ph.i9.i
  %.sroa.0.05.i.i = phi ptr [ %i.ll, %.lr.ph.i9.i ], [ %i.px, %.noexc186 ] ; 3 uses
  %i.px = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -12 ; 5 uses
  %.sroa.05.0.copyload.i.i10.i302340 = load float, ptr %i.px, align 4 ; 3 uses
end_hunk_0
