Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/lambdarank_obj?download=true
inline.NumInlined: 8766
inline.NumDeleted: 2252
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS3_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !804
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS6_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.253") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.253") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !800

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !800

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !800

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !801

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !802

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !803

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !806, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !807, !nonnull !118, !align !119 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = mul i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !133 ; 2 uses
  %i.q = icmp ult i64 %2, %i.e
  br i1 %i.q, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = mul i64 %i.s, %i.k
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !133 ; 2 uses
  %i.w = fcmp oeq float %i.p, %i.v
  br i1 %i.w, label %bb.k, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8
  %i.x = fcmp olt float %i.p, %i.v                ; 2 uses
  %spec.select = select i1 %i.x, i64 %2, i64 %1   ; 3 uses
  %spec.select36 = select i1 %i.x, i64 %1, i64 %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !808, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !809, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !810, !nonnull !118, !align !119 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  store i64 %i.an, ptr %i.al, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 16
  %i.aq = load <2 x i64>, ptr %i.ad, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !811, !nonnull !118, !align !119 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 16, !tbaa !248
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !261
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i.i11 = load i32, ptr %i.be, align 8
  store i32 %.sroa.0.0.copyload.i.i11, ptr %i.bd, align 16
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.bf, ptr %4, align 16, !tbaa !31
  %i.bg = call <2 x float> @_ZN7xgboost3obj10LambdaGradILb1ELb1EZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS3_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlDpRKT_E_EESK_SF_SC_SH_mmSS_SN_SN_Pd(ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.15") align 8 %i.b, i64 %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload, i64 %i.e, ptr nonnull %i.h, i64 noundef %spec.select, i64 noundef %spec.select36, ptr noundef nonnull byval(%class.anon.247) align 8 %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %4, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !807, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !129 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !31 ; 4 uses
  %i.bo = icmp ult i64 %spec.select36, %i.bi
  br i1 %i.bo, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select36
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !812, !nonnull !118, !align !119 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.sroa.023.4.vec.extract = extractelement <2 x float> %i.bg, i64 1
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !133
  %i.bz = fadd <2 x float> %i.bg, %i.by
  store <2 x float> %i.bz, ptr %i.bx, align 4, !tbaa !133
  %i.ca = mul i64 %i.bt, %i.bq
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !282
  %i.cd = fsub float %i.cc, %.sroa.0.0.vec.extract.i
  store float %i.cd, ptr %i.cb, align 4, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !283
  %i.cg = fadd float %.sroa.023.4.vec.extract, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !283
  %i.ch = load ptr, ptr %i.ac, align 8, !tbaa !810, !nonnull !118, !align !119 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !261 ; 2 uses
  %i.ck = icmp ult i64 %i.bn, %i.cj
  %i.cl = icmp ult i64 %i.bq, %i.cj
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13
  %i.cm = load ptr, ptr %i.ar, align 8, !tbaa !811, !nonnull !118, !align !119 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !31
  %i.co = mul i64 %i.cn, %i.bq
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !260
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !53 ; 2 uses
  %i.ct = fcmp ult double %i.cs, f0x3C9CD2B297D889BC
end_hunk_0
begin_hunk_1_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS3_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !908
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS6_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.273") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.273") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !904

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !904

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !904

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !905

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !906

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !907

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !910, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !911, !nonnull !118, !align !119 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = mul i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !133 ; 2 uses
  %i.q = icmp ult i64 %2, %i.e
  br i1 %i.q, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = mul i64 %i.s, %i.k
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !133 ; 2 uses
  %i.w = fcmp oeq float %i.p, %i.v
  br i1 %i.w, label %bb.k, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8
  %i.x = fcmp olt float %i.p, %i.v                ; 2 uses
  %spec.select = select i1 %i.x, i64 %2, i64 %1   ; 3 uses
  %spec.select36 = select i1 %i.x, i64 %1, i64 %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !912, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !913, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !914, !nonnull !118, !align !119 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  store i64 %i.an, ptr %i.al, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 16
  %i.aq = load <2 x i64>, ptr %i.ad, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !915, !nonnull !118, !align !119 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 16, !tbaa !248
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !261
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i.i11 = load i32, ptr %i.be, align 8
  store i32 %.sroa.0.0.copyload.i.i11, ptr %i.bd, align 16
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.bf, ptr %4, align 16, !tbaa !31
  %i.bg = call <2 x float> @_ZN7xgboost3obj10LambdaGradILb1ELb0EZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS3_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlDpRKT_E_EESK_SF_SC_SH_mmSS_SN_SN_Pd(ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.15") align 8 %i.b, i64 %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload, i64 %i.e, ptr nonnull %i.h, i64 noundef %spec.select, i64 noundef %spec.select36, ptr noundef nonnull byval(%class.anon.269) align 8 %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %4, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !911, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !129 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !31 ; 4 uses
  %i.bo = icmp ult i64 %spec.select36, %i.bi
  br i1 %i.bo, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select36
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !916, !nonnull !118, !align !119 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.sroa.023.4.vec.extract = extractelement <2 x float> %i.bg, i64 1
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !133
  %i.bz = fadd <2 x float> %i.bg, %i.by
  store <2 x float> %i.bz, ptr %i.bx, align 4, !tbaa !133
  %i.ca = mul i64 %i.bt, %i.bq
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !282
  %i.cd = fsub float %i.cc, %.sroa.0.0.vec.extract.i
  store float %i.cd, ptr %i.cb, align 4, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !283
  %i.cg = fadd float %.sroa.023.4.vec.extract, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !283
  %i.ch = load ptr, ptr %i.ac, align 8, !tbaa !914, !nonnull !118, !align !119 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !261 ; 2 uses
  %i.ck = icmp ult i64 %i.bn, %i.cj
  %i.cl = icmp ult i64 %i.bq, %i.cj
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13
  %i.cm = load ptr, ptr %i.ar, align 8, !tbaa !915, !nonnull !118, !align !119 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !31
  %i.co = mul i64 %i.cn, %i.bq
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !260
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !53 ; 2 uses
  %i.ct = fcmp ult double %i.cs, f0x3C9CD2B297D889BC
end_hunk_1
begin_hunk_2_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS3_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1012
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS6_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.286") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.286") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !1008

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !1008

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1008

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !1009

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !1010

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !1011

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1014, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1015, !nonnull !118, !align !119 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = mul i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !133 ; 2 uses
  %i.q = icmp ult i64 %2, %i.e
  br i1 %i.q, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = mul i64 %i.s, %i.k
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !133 ; 2 uses
  %i.w = fcmp oeq float %i.p, %i.v
  br i1 %i.w, label %bb.k, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8
  %i.x = fcmp olt float %i.p, %i.v                ; 2 uses
  %spec.select = select i1 %i.x, i64 %2, i64 %1   ; 3 uses
  %spec.select36 = select i1 %i.x, i64 %1, i64 %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1016, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1017, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1018, !nonnull !118, !align !119 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  store i64 %i.an, ptr %i.al, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 16
  %i.aq = load <2 x i64>, ptr %i.ad, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1019, !nonnull !118, !align !119 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 16, !tbaa !248
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !261
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i.i11 = load i32, ptr %i.be, align 8
  store i32 %.sroa.0.0.copyload.i.i11, ptr %i.bd, align 16
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.bf, ptr %4, align 16, !tbaa !31
  %i.bg = call <2 x float> @_ZN7xgboost3obj10LambdaGradILb1ELb1EZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS3_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlDpRKT_E_EESK_SF_SC_SH_mmSS_SN_SN_Pd(ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.15") align 8 %i.b, i64 %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload, i64 %i.e, ptr nonnull %i.h, i64 noundef %spec.select, i64 noundef %spec.select36, ptr noundef nonnull byval(%class.anon.282) align 8 %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %4, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1015, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !129 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !31 ; 4 uses
  %i.bo = icmp ult i64 %spec.select36, %i.bi
  br i1 %i.bo, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select36
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1020, !nonnull !118, !align !119 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.sroa.023.4.vec.extract = extractelement <2 x float> %i.bg, i64 1
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !133
  %i.bz = fadd <2 x float> %i.bg, %i.by
  store <2 x float> %i.bz, ptr %i.bx, align 4, !tbaa !133
  %i.ca = mul i64 %i.bt, %i.bq
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !282
  %i.cd = fsub float %i.cc, %.sroa.0.0.vec.extract.i
  store float %i.cd, ptr %i.cb, align 4, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !283
  %i.cg = fadd float %.sroa.023.4.vec.extract, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !283
  %i.ch = load ptr, ptr %i.ac, align 8, !tbaa !1018, !nonnull !118, !align !119 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !261 ; 2 uses
  %i.ck = icmp ult i64 %i.bn, %i.cj
  %i.cl = icmp ult i64 %i.bq, %i.cj
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13
  %i.cm = load ptr, ptr %i.ar, align 8, !tbaa !1019, !nonnull !118, !align !119 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !31
  %i.co = mul i64 %i.cn, %i.bq
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !260
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !53 ; 2 uses
  %i.ct = fcmp ult double %i.cs, f0x3C9CD2B297D889BC
end_hunk_2
begin_hunk_3_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS3_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1080
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS6_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.298") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.298") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !1076

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !1076

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1076

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !1077

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !1078

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !1079

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1082, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1083, !nonnull !118, !align !119 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = mul i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !133 ; 2 uses
  %i.q = icmp ult i64 %2, %i.e
  br i1 %i.q, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = mul i64 %i.s, %i.k
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !133 ; 2 uses
  %i.w = fcmp oeq float %i.p, %i.v
  br i1 %i.w, label %bb.k, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8
  %i.x = fcmp olt float %i.p, %i.v                ; 2 uses
  %spec.select = select i1 %i.x, i64 %2, i64 %1   ; 3 uses
  %spec.select36 = select i1 %i.x, i64 %1, i64 %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1084, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1085, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1086, !nonnull !118, !align !119 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  store i64 %i.an, ptr %i.al, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 16
  %i.aq = load <2 x i64>, ptr %i.ad, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1087, !nonnull !118, !align !119 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 16, !tbaa !248
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !261
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i.i11 = load i32, ptr %i.be, align 8
  store i32 %.sroa.0.0.copyload.i.i11, ptr %i.bd, align 16
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.bf, ptr %4, align 16, !tbaa !31
  %i.bg = call <2 x float> @_ZN7xgboost3obj10LambdaGradILb1ELb0EZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS3_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlDpRKT_E_EESK_SF_SC_SH_mmSS_SN_SN_Pd(ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.15") align 8 %i.b, i64 %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload, i64 %i.e, ptr nonnull %i.h, i64 noundef %spec.select, i64 noundef %spec.select36, ptr noundef nonnull byval(%class.anon.294) align 8 %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %4, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1083, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !129 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !31 ; 4 uses
  %i.bo = icmp ult i64 %spec.select36, %i.bi
  br i1 %i.bo, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select36
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1088, !nonnull !118, !align !119 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.sroa.023.4.vec.extract = extractelement <2 x float> %i.bg, i64 1
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !133
  %i.bz = fadd <2 x float> %i.bg, %i.by
  store <2 x float> %i.bz, ptr %i.bx, align 4, !tbaa !133
  %i.ca = mul i64 %i.bt, %i.bq
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !282
  %i.cd = fsub float %i.cc, %.sroa.0.0.vec.extract.i
  store float %i.cd, ptr %i.cb, align 4, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !283
  %i.cg = fadd float %.sroa.023.4.vec.extract, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !283
  %i.ch = load ptr, ptr %i.ac, align 8, !tbaa !1086, !nonnull !118, !align !119 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !261 ; 2 uses
  %i.ck = icmp ult i64 %i.bn, %i.cj
  %i.cl = icmp ult i64 %i.bq, %i.cj
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13
  %i.cm = load ptr, ptr %i.ar, align 8, !tbaa !1087, !nonnull !118, !align !119 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !31
  %i.co = mul i64 %i.cn, %i.bq
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !260
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !53 ; 2 uses
  %i.ct = fcmp ult double %i.cs, f0x3C9CD2B297D889BC
end_hunk_3
begin_hunk_4_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS3_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1184
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS6_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.311") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.311") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !1180

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !1180

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1180

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !1181

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !1182

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !1183

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1186, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1187, !nonnull !118, !align !119 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = mul i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !133 ; 2 uses
  %i.q = icmp ult i64 %2, %i.e
  br i1 %i.q, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = mul i64 %i.s, %i.k
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !133 ; 2 uses
  %i.w = fcmp oeq float %i.p, %i.v
  br i1 %i.w, label %bb.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5
  %i.x = fcmp olt float %i.p, %i.v                ; 2 uses
  %spec.select = select i1 %i.x, i64 %2, i64 %1   ; 3 uses
  %spec.select25 = select i1 %i.x, i64 %1, i64 %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1188, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1189, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1190, !nonnull !118, !align !119 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  store i64 %i.an, ptr %i.al, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 16
  %i.aq = load <2 x i64>, ptr %i.ad, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1191, !nonnull !118, !align !119 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 16, !tbaa !248
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !261
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i.i8 = load i32, ptr %i.be, align 8
  store i32 %.sroa.0.0.copyload.i.i8, ptr %i.bd, align 16
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.bf, ptr %4, align 16, !tbaa !31
  %i.bg = call <2 x float> @_ZN7xgboost3obj10LambdaGradILb0ELb1EZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS3_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlDpRKT_E_EESK_SF_SC_SH_mmSS_SN_SN_Pd(ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.15") align 8 %i.b, i64 %.sroa.02.0.copyload, ptr %.sroa.23.0.copyload, i64 %i.e, ptr nonnull %i.h, i64 noundef %spec.select, i64 noundef %spec.select25, ptr noundef nonnull byval(%class.anon.307) align 8 %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %4, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1187, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  %i.bk = icmp ult i64 %spec.select25, %i.bi
  br i1 %i.bk, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !129 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %spec.select
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %spec.select25
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1192, !nonnull !118, !align !119 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bo
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.sroa.012.4.vec.extract = extractelement <2 x float> %i.bg, i64 1
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !133
  %i.bz = fadd <2 x float> %i.bg, %i.by
  store <2 x float> %i.bz, ptr %i.bx, align 4, !tbaa !133
  %i.ca = mul i64 %i.bt, %i.bq
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !282
  %i.cd = fsub float %i.cc, %.sroa.0.0.vec.extract.i
  store float %i.cd, ptr %i.cb, align 4, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !283
  %i.cg = fadd float %.sroa.012.4.vec.extract, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !283
  %i.ch = fpext float %.sroa.0.0.vec.extract.i to double
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1193, !nonnull !118, !align !119 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !53
  %i.cl = call double @llvm.fmuladd.f64(double %i.ch, double -2.000000e+00, double %i.ck)
  store double %i.cl, ptr %i.cj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS6_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.189") align 8 %0, ptr noundef %1, ptr noundef byval(%"class.xgboost::common::IndexTransformIter.311") align 8 %2, ptr noundef byval(%"class.xgboost::common::IndexTransformIter.311") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS3_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1250
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS6_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.323") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.323") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !1246

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !1246

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1246

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !1247

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !1248

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !1249

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1252, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1253, !nonnull !118, !align !119 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = mul i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !133 ; 2 uses
  %i.q = icmp ult i64 %2, %i.e
  br i1 %i.q, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = mul i64 %i.s, %i.k
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !133 ; 2 uses
  %i.w = fcmp oeq float %i.p, %i.v
  br i1 %i.w, label %bb.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5
  %i.x = fcmp olt float %i.p, %i.v                ; 2 uses
  %spec.select = select i1 %i.x, i64 %2, i64 %1   ; 3 uses
  %spec.select25 = select i1 %i.x, i64 %1, i64 %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1254, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1255, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1256, !nonnull !118, !align !119 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  store i64 %i.an, ptr %i.al, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 16
  %i.aq = load <2 x i64>, ptr %i.ad, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1257, !nonnull !118, !align !119 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 16, !tbaa !248
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !261
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i.i8 = load i32, ptr %i.be, align 8
  store i32 %.sroa.0.0.copyload.i.i8, ptr %i.bd, align 16
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.bf, ptr %4, align 16, !tbaa !31
  %i.bg = call <2 x float> @_ZN7xgboost3obj10LambdaGradILb0ELb0EZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS3_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlDpRKT_E_EESK_SF_SC_SH_mmSS_SN_SN_Pd(ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.15") align 8 %i.b, i64 %.sroa.02.0.copyload, ptr %.sroa.23.0.copyload, i64 %i.e, ptr nonnull %i.h, i64 noundef %spec.select, i64 noundef %spec.select25, ptr noundef nonnull byval(%class.anon.319) align 8 %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %4, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1253, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  %i.bk = icmp ult i64 %spec.select25, %i.bi
  br i1 %i.bk, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !129 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %spec.select
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %spec.select25
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1258, !nonnull !118, !align !119 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bo
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.sroa.012.4.vec.extract = extractelement <2 x float> %i.bg, i64 1
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !133
  %i.bz = fadd <2 x float> %i.bg, %i.by
  store <2 x float> %i.bz, ptr %i.bx, align 4, !tbaa !133
  %i.ca = mul i64 %i.bt, %i.bq
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !282
  %i.cd = fsub float %i.cc, %.sroa.0.0.vec.extract.i
  store float %i.cd, ptr %i.cb, align 4, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !283
  %i.cg = fadd float %.sroa.012.4.vec.extract, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !283
  %i.ch = fpext float %.sroa.0.0.vec.extract.i to double
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1259, !nonnull !118, !align !119 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !53
  %i.cl = call double @llvm.fmuladd.f64(double %i.ch, double -2.000000e+00, double %i.ck)
  store double %i.cl, ptr %i.cj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS6_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.189") align 8 %0, ptr noundef %1, ptr noundef byval(%"class.xgboost::common::IndexTransformIter.323") align 8 %2, ptr noundef byval(%"class.xgboost::common::IndexTransformIter.323") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS3_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1352
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS6_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.336") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.336") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !1348

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !1348

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1348

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !1349

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !1350

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !1351

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1354, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1355, !nonnull !118, !align !119 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = mul i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !133 ; 2 uses
  %i.q = icmp ult i64 %2, %i.e
  br i1 %i.q, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = mul i64 %i.s, %i.k
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !133 ; 2 uses
  %i.w = fcmp oeq float %i.p, %i.v
  br i1 %i.w, label %bb.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5
  %i.x = fcmp olt float %i.p, %i.v                ; 2 uses
  %spec.select = select i1 %i.x, i64 %2, i64 %1   ; 3 uses
  %spec.select25 = select i1 %i.x, i64 %1, i64 %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1356, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1357, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1358, !nonnull !118, !align !119 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  store i64 %i.an, ptr %i.al, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 16
  %i.aq = load <2 x i64>, ptr %i.ad, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1359, !nonnull !118, !align !119 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 16, !tbaa !248
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !261
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i.i8 = load i32, ptr %i.be, align 8
  store i32 %.sroa.0.0.copyload.i.i8, ptr %i.bd, align 16
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.bf, ptr %4, align 16, !tbaa !31
  %i.bg = call <2 x float> @_ZN7xgboost3obj10LambdaGradILb0ELb1EZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS3_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlDpRKT_E_EESK_SF_SC_SH_mmSS_SN_SN_Pd(ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.15") align 8 %i.b, i64 %.sroa.02.0.copyload, ptr %.sroa.23.0.copyload, i64 %i.e, ptr nonnull %i.h, i64 noundef %spec.select, i64 noundef %spec.select25, ptr noundef nonnull byval(%class.anon.332) align 8 %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %4, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1355, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  %i.bk = icmp ult i64 %spec.select25, %i.bi
  br i1 %i.bk, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !129 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %spec.select
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %spec.select25
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1360, !nonnull !118, !align !119 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bo
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.sroa.012.4.vec.extract = extractelement <2 x float> %i.bg, i64 1
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !133
  %i.bz = fadd <2 x float> %i.bg, %i.by
  store <2 x float> %i.bz, ptr %i.bx, align 4, !tbaa !133
  %i.ca = mul i64 %i.bt, %i.bq
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !282
  %i.cd = fsub float %i.cc, %.sroa.0.0.vec.extract.i
  store float %i.cd, ptr %i.cb, align 4, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !283
  %i.cg = fadd float %.sroa.012.4.vec.extract, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !283
  %i.ch = fpext float %.sroa.0.0.vec.extract.i to double
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1361, !nonnull !118, !align !119 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !53
  %i.cl = call double @llvm.fmuladd.f64(double %i.ch, double -2.000000e+00, double %i.ck)
  store double %i.cl, ptr %i.cj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS6_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.189") align 8 %0, ptr noundef %1, ptr noundef byval(%"class.xgboost::common::IndexTransformIter.336") align 8 %2, ptr noundef byval(%"class.xgboost::common::IndexTransformIter.336") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS3_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1418
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS6_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.348") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.348") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !1414

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !1414

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1414

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !1415

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !1416

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !1417

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1420, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1421, !nonnull !118, !align !119 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = mul i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !133 ; 2 uses
  %i.q = icmp ult i64 %2, %i.e
  br i1 %i.q, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = mul i64 %i.s, %i.k
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !133 ; 2 uses
  %i.w = fcmp oeq float %i.p, %i.v
  br i1 %i.w, label %bb.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5
  %i.x = fcmp olt float %i.p, %i.v                ; 2 uses
  %spec.select = select i1 %i.x, i64 %2, i64 %1   ; 3 uses
  %spec.select25 = select i1 %i.x, i64 %1, i64 %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1422, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1423, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1424, !nonnull !118, !align !119 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  store i64 %i.an, ptr %i.al, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 16
  %i.aq = load <2 x i64>, ptr %i.ad, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1425, !nonnull !118, !align !119 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 16, !tbaa !248
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !261
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i.i8 = load i32, ptr %i.be, align 8
  store i32 %.sroa.0.0.copyload.i.i8, ptr %i.bd, align 16
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.bf, ptr %4, align 16, !tbaa !31
  %i.bg = call <2 x float> @_ZN7xgboost3obj10LambdaGradILb0ELb0EZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS3_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlDpRKT_E_EESK_SF_SC_SH_mmSS_SN_SN_Pd(ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.15") align 8 %i.b, i64 %.sroa.02.0.copyload, ptr %.sroa.23.0.copyload, i64 %i.e, ptr nonnull %i.h, i64 noundef %spec.select, i64 noundef %spec.select25, ptr noundef nonnull byval(%class.anon.344) align 8 %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %4, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1421, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  %i.bk = icmp ult i64 %spec.select25, %i.bi
  br i1 %i.bk, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !129 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %spec.select
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %spec.select25
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1426, !nonnull !118, !align !119 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bo
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.sroa.012.4.vec.extract = extractelement <2 x float> %i.bg, i64 1
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !133
  %i.bz = fadd <2 x float> %i.bg, %i.by
  store <2 x float> %i.bz, ptr %i.bx, align 4, !tbaa !133
  %i.ca = mul i64 %i.bt, %i.bq
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !282
  %i.cd = fsub float %i.cc, %.sroa.0.0.vec.extract.i
  store float %i.cd, ptr %i.cb, align 4, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !283
  %i.cg = fadd float %.sroa.012.4.vec.extract, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !283
  %i.ch = fpext float %.sroa.0.0.vec.extract.i to double
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1427, !nonnull !118, !align !119 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !53
  %i.cl = call double @llvm.fmuladd.f64(double %i.ch, double -2.000000e+00, double %i.ck)
  store double %i.cl, ptr %i.cj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS6_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.189") align 8 %0, ptr noundef %1, ptr noundef byval(%"class.xgboost::common::IndexTransformIter.348") align 8 %2, ptr noundef byval(%"class.xgboost::common::IndexTransformIter.348") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
end_hunk_7
begin_hunk_8_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb1EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS5_EjSU_SW_T_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1686
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb1EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS8_EjSW_SY_T_EUlmE_EEfSt7greaterIvEEESt6vectorIS17_SaIS17_EES14_T0_S1F_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.391") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.391") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !1682

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !1682

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1682

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !1683

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !1684

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !1685

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1688, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1689, !nonnull !118, !align !119 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = mul i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !133 ; 2 uses
  %i.q = icmp ult i64 %2, %i.e
  br i1 %i.q, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = mul i64 %i.s, %i.k
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !133 ; 2 uses
  %i.w = fcmp oeq float %i.p, %i.v
  br i1 %i.w, label %bb.k, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8
  %i.x = fcmp olt float %i.p, %i.v                ; 2 uses
  %spec.select = select i1 %i.x, i64 %2, i64 %1   ; 3 uses
  %spec.select36 = select i1 %i.x, i64 %1, i64 %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1690, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1691, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1692, !nonnull !118, !align !119 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  store i64 %i.an, ptr %i.al, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 16
  %i.aq = load <2 x i64>, ptr %i.ad, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1693, !nonnull !118, !align !119 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 16, !tbaa !248
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !261
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i.i11 = load i32, ptr %i.be, align 8
  store i32 %.sroa.0.0.copyload.i.i11, ptr %i.bd, align 16
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.bf, ptr %4, align 16, !tbaa !31
  %i.bg = call <2 x float> @_ZN7xgboost3obj10LambdaGradILb1ELb1EZNS0_13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb1EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlDpRKSM_E_EESJ_SU_SS_SW_mmSX_NST_IKdLi1EEES14_Pd(ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.15") align 8 %i.b, i64 %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload, i64 %i.e, ptr nonnull %i.h, i64 noundef %spec.select, i64 noundef %spec.select36, ptr noundef nonnull byval(%class.anon.387) align 8 %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %4, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1689, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !129 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !31 ; 4 uses
  %i.bo = icmp ult i64 %spec.select36, %i.bi
  br i1 %i.bo, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select36
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1694, !nonnull !118, !align !119 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.sroa.023.4.vec.extract = extractelement <2 x float> %i.bg, i64 1
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !133
  %i.bz = fadd <2 x float> %i.bg, %i.by
  store <2 x float> %i.bz, ptr %i.bx, align 4, !tbaa !133
  %i.ca = mul i64 %i.bt, %i.bq
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !282
  %i.cd = fsub float %i.cc, %.sroa.0.0.vec.extract.i
  store float %i.cd, ptr %i.cb, align 4, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !283
  %i.cg = fadd float %.sroa.023.4.vec.extract, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !283
  %i.ch = load ptr, ptr %i.ac, align 8, !tbaa !1692, !nonnull !118, !align !119 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !261 ; 2 uses
  %i.ck = icmp ult i64 %i.bn, %i.cj
  %i.cl = icmp ult i64 %i.bq, %i.cj
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13
  %i.cm = load ptr, ptr %i.ar, align 8, !tbaa !1693, !nonnull !118, !align !119 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !31
  %i.co = mul i64 %i.cn, %i.bq
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !260
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !53 ; 2 uses
  %i.ct = fcmp ult double %i.cs, f0x3C9CD2B297D889BC
end_hunk_8
begin_hunk_9_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb0EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS5_EjSU_SW_T_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1751
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb0EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS8_EjSW_SY_T_EUlmE_EEfSt7greaterIvEEESt6vectorIS17_SaIS17_EES14_T0_S1F_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.403") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.403") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !1747

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !1747

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1747

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !1748

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !1749

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !1750

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1753, !nonnull !118, !align !119 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !128  ; 5 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1754, !nonnull !118, !align !119 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129  ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31
  %i.j = load i64, ptr %i.e, align 8, !tbaa !31   ; 4 uses
  %i.k = mul i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !280  ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.k
  %i.o = load float, ptr %i.n, align 4, !tbaa !133 ; 2 uses
  %i.p = icmp ult i64 %2, %i.c
  br i1 %i.p, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31
  %i.s = mul i64 %i.r, %i.j
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !133 ; 2 uses
  %i.v = fcmp oeq float %i.o, %i.u
  br i1 %i.v, label %bb.s, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8
  %i.w = fcmp olt float %i.o, %i.u                ; 2 uses
  %spec.select = select i1 %i.w, i64 %2, i64 %1   ; 2 uses
  %spec.select68 = select i1 %i.w, i64 %1, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1755, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.y, align 8, !tbaa !31 ; 4 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1756, !nonnull !118, !align !119 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !125
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !261 ; 4 uses
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1757, !nonnull !118, !align !119 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %i.al = icmp ult i64 %spec.select, %i.c
  br i1 %i.al, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %spec.select
  %i.an = load i64, ptr %i.am, align 8, !tbaa !31 ; 9 uses
  %i.ao = icmp ult i64 %spec.select68, %i.c
  br i1 %i.ao, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit21.i, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit21.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %spec.select68
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !31 ; 9 uses
  %i.ar = mul i64 %i.an, %i.j
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !133
  %i.au = mul i64 %i.aq, %i.j
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !133
  %i.ax = fcmp oeq float %i.at, %i.aw
  br i1 %i.ax, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit.i

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit21.i
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !31
  %i.az = icmp ult i64 %i.ay, %.sroa.03.0.copyload
  br i1 %i.az, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit.i, label %bb.f, !prof !49

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit.i
  %i.ba = getelementptr [8 x i8], ptr %i.g, i64 %i.c
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !31
  %i.bd = icmp ult i64 %i.bc, %.sroa.03.0.copyload
  br i1 %i.bd, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit23.i, label %bb.g, !prof !49

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit23.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit.i
  %i.be = icmp ult i64 %i.an, %.sroa.03.0.copyload
  br i1 %i.be, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit24.i, label %bb.h, !prof !49

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit23.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit24.i: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit23.i
  %i.bf = icmp ult i64 %i.aq, %.sroa.03.0.copyload
  br i1 %i.bf, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit25.i, label %bb.i, !prof !49

bb.i:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit24.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit25.i: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit24.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.24.0.copyload, i64 %i.an
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !133
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.24.0.copyload, i64 %i.aq
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !133
  %i.bk = fsub float %i.bh, %i.bj
  %i.bl = fneg float %i.bk                        ; 2 uses
  %i.bm = fcmp ogt float %i.bl, f0x42B16666
  %.sroa.speculated.i.i = select i1 %i.bm, float f0x42B16666, float %i.bl
  %i.bn = tail call float @expf(float noundef %.sroa.speculated.i.i) #11
  %i.bo = fadd float %i.bn, 1.000000e+00
  %i.bp = fadd float %i.bo, 1.000000e-16
  %i.bq = fdiv float 1.000000e+00, %i.bp
  %i.br = fpext float %i.bq to double             ; 3 uses
  %i.bs = fsub double 1.000000e+00, %i.br         ; 2 uses
  %i.bt = fdiv double 1.000000e+00, %i.bs
  %i.bu = tail call double @log(double noundef %i.bt) #11
  %i.bv = fadd double %i.br, -1.000000e+00
  %i.bw = fmul double %i.bs, %i.br                ; 2 uses
  %i.bx = fcmp olt double %i.bw, f0x3C9CD2B297D889BC
  %.sroa.speculated.i = select i1 %i.bx, double f0x3C9CD2B297D889BC, double %i.bw
  %i.by = fmul double %.sroa.speculated.i, 2.000000e+00
  %i.bz = icmp ult i64 %i.an, %i.ae
  %i.ca = icmp ult i64 %i.aq, %i.ae
  %or.cond.i = and i1 %i.bz, %i.ca
  %i.cb = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.by, i64 1 ; 4 uses
  br i1 %or.cond.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit25.i
  %i.cd = mul i64 %i.aq, %i.ak
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !53 ; 2 uses
  %i.cg = fcmp ult double %i.cf, f0x3C9CD2B297D889BC
  br i1 %i.cg, label %bb.m, label %bb.k

end_hunk_9
begin_hunk_10_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb1EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS5_EjSU_SW_T_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1815
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb1EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS8_EjSW_SY_T_EUlmE_EEfSt7greaterIvEEESt6vectorIS17_SaIS17_EES14_T0_S1F_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.415") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.415") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !1811

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !1811

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1811

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !1812

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !1813

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !1814

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1817, !nonnull !118, !align !119 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !128  ; 5 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1818, !nonnull !118, !align !119 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129  ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31
  %i.j = load i64, ptr %i.e, align 8, !tbaa !31   ; 4 uses
  %i.k = mul i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !280  ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.k
  %i.o = load float, ptr %i.n, align 4, !tbaa !133 ; 2 uses
  %i.p = icmp ult i64 %2, %i.c
  br i1 %i.p, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31
  %i.s = mul i64 %i.r, %i.j
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !133 ; 2 uses
  %i.v = fcmp oeq float %i.o, %i.u
  br i1 %i.v, label %bb.j, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5
  %i.w = fcmp olt float %i.o, %i.u                ; 2 uses
  %spec.select = select i1 %i.w, i64 %2, i64 %1   ; 2 uses
  %spec.select57 = select i1 %i.w, i64 %1, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1819, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.y, align 8, !tbaa !31 ; 4 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190 ; 4 uses
  %i.z = icmp ult i64 %spec.select, %i.c
  br i1 %i.z, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %spec.select
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31 ; 4 uses
  %i.ac = icmp ult i64 %spec.select57, %i.c
  br i1 %i.ac, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit16.i, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit16.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %spec.select57
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31 ; 4 uses
  %i.af = mul i64 %i.ab, %i.j
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !133
  %i.ai = mul i64 %i.ae, %i.j
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !133
  %i.al = fcmp oeq float %i.ah, %i.ak
  br i1 %i.al, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit.i

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit16.i
  %i.am = load i64, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %i.an = icmp ult i64 %i.am, %.sroa.02.0.copyload
  br i1 %i.an, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit.i, label %bb.f, !prof !49

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit.i
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.23.0.copyload, i64 %i.am
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !133
  %i.aq = getelementptr [8 x i8], ptr %i.g, i64 %i.c
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !31 ; 2 uses
  %i.at = icmp ult i64 %i.as, %.sroa.02.0.copyload
  br i1 %i.at, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit18.i, label %bb.g, !prof !49

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit18.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit.i
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.23.0.copyload, i64 %i.as
  %i.av = load float, ptr %i.au, align 4, !tbaa !133
  %i.aw = icmp ult i64 %i.ab, %.sroa.02.0.copyload
  br i1 %i.aw, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit19.i, label %bb.h, !prof !49

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit18.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit19.i: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit18.i
  %i.ax = icmp ult i64 %i.ae, %.sroa.02.0.copyload
  br i1 %i.ax, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit20.i, label %bb.i, !prof !49

bb.i:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit19.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit20.i: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit19.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.23.0.copyload, i64 %i.ab
  %i.az = load float, ptr %i.ay, align 4, !tbaa !133
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.23.0.copyload, i64 %i.ae
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !133
  %i.bc = fsub float %i.az, %i.bb                 ; 2 uses
  %i.bd = tail call noundef float @llvm.fabs.f32(float %i.bc)
  %i.be = fneg float %i.bc                        ; 2 uses
  %i.bf = fcmp ogt float %i.be, f0x42B16666
  %.sroa.speculated.i.i = select i1 %i.bf, float f0x42B16666, float %i.be
  %i.bg = tail call float @expf(float noundef %.sroa.speculated.i.i) #11
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = fadd float %i.bh, 1.000000e-16
  %i.bj = fdiv float 1.000000e+00, %i.bi
  %i.bk = fpext float %i.bj to double             ; 3 uses
  %i.bl = fcmp une float %i.ap, %i.av
  %i.bm = fpext float %i.bd to double
  %i.bn = fadd double %i.bm, 1.000000e-02
  %i.bo = fdiv double 1.000000e+00, %i.bn
  %.0.i = select i1 %i.bl, double %i.bo, double 1.000000e+00 ; 2 uses
  %i.bp = fsub double 1.000000e+00, %i.bk
  %i.bq = fmul double %i.bp, %i.bk                ; 2 uses
  %i.br = fcmp olt double %i.bq, f0x3C9CD2B297D889BC
  %.sroa.speculated.i = select i1 %i.br, double f0x3C9CD2B297D889BC, double %i.bq
  %i.bs = fadd double %i.bk, -1.000000e+00
  %i.bt = fmul double %.0.i, %.sroa.speculated.i
  %i.bu = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bt, i64 1
  %i.bw = insertelement <2 x double> <double poison, double 2.000000e+00>, double %.0.i, i64 0
  %i.bx = fmul <2 x double> %i.bv, %i.bw
  %i.by = fptrunc <2 x double> %i.bx to <2 x float>
  br label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit16.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit20.i
  %.sroa.041.0.i = phi <2 x float> [ %i.by, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit20.i ], [ zeroinitializer, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit16.i ] ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.041.0.i, i64 0 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1820, !nonnull !118, !align !119 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !31 ; 2 uses
  %i.cc = mul i64 %i.cb, %i.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !269 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc ; 2 uses
  %.sroa.021.4.vec.extract = extractelement <2 x float> %.sroa.041.0.i, i64 1
end_hunk_10
begin_hunk_11_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb0EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS5_EjSU_SW_T_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1875
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb0EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS8_EjSW_SY_T_EUlmE_EEfSt7greaterIvEEESt6vectorIS17_SaIS17_EES14_T0_S1F_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.427") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.427") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !1871

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !1871

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1871

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !1872

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !1873

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !1874

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1877, !nonnull !118, !align !119 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !128  ; 5 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1878, !nonnull !118, !align !119 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129  ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31
  %i.j = load i64, ptr %i.e, align 8, !tbaa !31   ; 4 uses
  %i.k = mul i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !280  ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.k
  %i.o = load float, ptr %i.n, align 4, !tbaa !133 ; 2 uses
  %i.p = icmp ult i64 %2, %i.c
  br i1 %i.p, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31
  %i.s = mul i64 %i.r, %i.j
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !133 ; 2 uses
  %i.v = fcmp oeq float %i.o, %i.u
  br i1 %i.v, label %bb.j, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5
  %i.w = fcmp olt float %i.o, %i.u                ; 2 uses
  %spec.select = select i1 %i.w, i64 %2, i64 %1   ; 2 uses
  %spec.select57 = select i1 %i.w, i64 %1, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1879, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.y, align 8, !tbaa !31 ; 4 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190 ; 2 uses
  %i.z = icmp ult i64 %spec.select, %i.c
  br i1 %i.z, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %spec.select
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31 ; 4 uses
  %i.ac = icmp ult i64 %spec.select57, %i.c
  br i1 %i.ac, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12.i, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %spec.select57
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31 ; 4 uses
  %i.af = mul i64 %i.ab, %i.j
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !133
  %i.ai = mul i64 %i.ae, %i.j
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !133
  %i.al = fcmp oeq float %i.ah, %i.ak
  br i1 %i.al, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit.i

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12.i
  %i.am = load i64, ptr %i.g, align 8, !tbaa !31
  %i.an = icmp ult i64 %i.am, %.sroa.02.0.copyload
  br i1 %i.an, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit.i, label %bb.f, !prof !49

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit.i
  %i.ao = getelementptr [8 x i8], ptr %i.g, i64 %i.c
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.ar = icmp ult i64 %i.aq, %.sroa.02.0.copyload
  br i1 %i.ar, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit14.i, label %bb.g, !prof !49

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit14.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit.i
  %i.as = icmp ult i64 %i.ab, %.sroa.02.0.copyload
  br i1 %i.as, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit15.i, label %bb.h, !prof !49

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit14.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit15.i: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit14.i
  %i.at = icmp ult i64 %i.ae, %.sroa.02.0.copyload
  br i1 %i.at, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit16.i, label %bb.i, !prof !49

bb.i:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit15.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit16.i: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit15.i
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.23.0.copyload, i64 %i.ab
  %i.av = load float, ptr %i.au, align 4, !tbaa !133
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.23.0.copyload, i64 %i.ae
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !133
  %i.ay = fsub float %i.av, %i.ax
  %i.az = fneg float %i.ay                        ; 2 uses
  %i.ba = fcmp ogt float %i.az, f0x42B16666
  %.sroa.speculated.i.i = select i1 %i.ba, float f0x42B16666, float %i.az
  %i.bb = tail call float @expf(float noundef %.sroa.speculated.i.i) #11
  %i.bc = fadd float %i.bb, 1.000000e+00
  %i.bd = fadd float %i.bc, 1.000000e-16
  %i.be = fdiv float 1.000000e+00, %i.bd          ; 2 uses
  %i.bf = fpext float %i.be to double             ; 2 uses
  %i.bg = fsub double 1.000000e+00, %i.bf
  %i.bh = fmul double %i.bg, %i.bf                ; 2 uses
  %i.bi = fcmp olt double %i.bh, f0x3C9CD2B297D889BC
  %.sroa.speculated.i = select i1 %i.bi, double f0x3C9CD2B297D889BC, double %i.bh
  %i.bj = fmul double %.sroa.speculated.i, 2.000000e+00
  %i.bk = fadd float %i.be, -1.000000e+00
  %i.bl = fptrunc double %i.bj to float
  %.sroa.037.0.vec.insert40.i = insertelement <2 x float> poison, float %i.bk, i64 0
  %.sroa.037.4.vec.insert42.i = insertelement <2 x float> %.sroa.037.0.vec.insert40.i, float %i.bl, i64 1
  br label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit16.i
  %.sroa.037.0.i = phi <2 x float> [ %.sroa.037.4.vec.insert42.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit16.i ], [ zeroinitializer, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12.i ] ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.037.0.i, i64 0 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1880, !nonnull !118, !align !119 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !31 ; 2 uses
  %i.bp = mul i64 %i.bo, %i.ab
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !269 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp ; 2 uses
  %.sroa.021.4.vec.extract = extractelement <2 x float> %.sroa.037.0.i, i64 1
  %i.bt = load <2 x float>, ptr %i.bs, align 4, !tbaa !133
  %i.bu = fadd <2 x float> %.sroa.037.0.i, %i.bt
  store <2 x float> %i.bu, ptr %i.bs, align 4, !tbaa !133
  %i.bv = mul i64 %i.bo, %i.ae
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bv ; 3 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !282
  %i.by = fsub float %i.bx, %.sroa.0.0.vec.extract.i
  store float %i.by, ptr %i.bw, align 4, !tbaa !282
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !283
  %i.cb = fadd float %.sroa.021.4.vec.extract, %i.ca
  store float %i.cb, ptr %i.bz, align 4, !tbaa !283
end_hunk_11
begin_hunk_12_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSU_SW_SM_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !2140
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSW_SY_SP_EUlmE_EEfSt7greaterIvEEESt6vectorISP_SaISP_EES14_SQ_SQ_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.465") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.465") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !2136

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !2136

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !2136

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !2137

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !2138

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !2139

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2142, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2143, !nonnull !118, !align !119 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = mul i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !133 ; 2 uses
  %i.q = icmp ult i64 %2, %i.e
  br i1 %i.q, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = mul i64 %i.s, %i.k
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !133 ; 2 uses
  %i.w = fcmp oeq float %i.p, %i.v
  br i1 %i.w, label %bb.k, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8
  %i.x = fcmp olt float %i.p, %i.v                ; 2 uses
  %spec.select = select i1 %i.x, i64 %2, i64 %1   ; 3 uses
  %spec.select36 = select i1 %i.x, i64 %1, i64 %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2144, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2145, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2146, !nonnull !118, !align !119 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  store i64 %i.an, ptr %i.al, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 16
  %i.aq = load <2 x i64>, ptr %i.ad, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2147, !nonnull !118, !align !119 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 16, !tbaa !248
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !261
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i.i11 = load i32, ptr %i.be, align 8
  store i32 %.sroa.0.0.copyload.i.i11, ptr %i.bd, align 16
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.bf, ptr %4, align 16, !tbaa !31
  %i.bg = call <2 x float> @_ZN7xgboost3obj10LambdaGradILb1ELb1EZNS0_13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlDpRKT_E_EESJ_SU_SS_SW_mmSX_NST_IKdLi1EEES15_Pd(ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.15") align 8 %i.b, i64 %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload, i64 %i.e, ptr nonnull %i.h, i64 noundef %spec.select, i64 noundef %spec.select36, ptr noundef nonnull byval(%class.anon.461) align 8 %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %4, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !2143, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !129 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !31 ; 4 uses
  %i.bo = icmp ult i64 %spec.select36, %i.bi
  br i1 %i.bo, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select36
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2148, !nonnull !118, !align !119 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.sroa.023.4.vec.extract = extractelement <2 x float> %i.bg, i64 1
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !133
  %i.bz = fadd <2 x float> %i.bg, %i.by
  store <2 x float> %i.bz, ptr %i.bx, align 4, !tbaa !133
  %i.ca = mul i64 %i.bt, %i.bq
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !282
  %i.cd = fsub float %i.cc, %.sroa.0.0.vec.extract.i
  store float %i.cd, ptr %i.cb, align 4, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !283
  %i.cg = fadd float %.sroa.023.4.vec.extract, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !283
  %i.ch = load ptr, ptr %i.ac, align 8, !tbaa !2146, !nonnull !118, !align !119 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !261 ; 2 uses
  %i.ck = icmp ult i64 %i.bn, %i.cj
  %i.cl = icmp ult i64 %i.bq, %i.cj
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13
  %i.cm = load ptr, ptr %i.ar, align 8, !tbaa !2147, !nonnull !118, !align !119 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !31
  %i.co = mul i64 %i.cn, %i.bq
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !260
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !53 ; 2 uses
  %i.ct = fcmp ult double %i.cs, f0x3C9CD2B297D889BC
end_hunk_12
begin_hunk_13_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb0EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSU_SW_SM_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !2208
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb0EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSW_SY_SP_EUlmE_EEfSt7greaterIvEEESt6vectorISP_SaISP_EES14_SQ_SQ_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.477") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.477") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !2204

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !2204

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !2204

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !2205

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !2206

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !2207

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2210, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2211, !nonnull !118, !align !119 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = mul i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !133 ; 2 uses
  %i.q = icmp ult i64 %2, %i.e
  br i1 %i.q, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = mul i64 %i.s, %i.k
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !133 ; 2 uses
  %i.w = fcmp oeq float %i.p, %i.v
  br i1 %i.w, label %bb.k, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit8
  %i.x = fcmp olt float %i.p, %i.v                ; 2 uses
  %spec.select = select i1 %i.x, i64 %2, i64 %1   ; 3 uses
  %spec.select36 = select i1 %i.x, i64 %1, i64 %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2212, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2213, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2214, !nonnull !118, !align !119 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  store i64 %i.an, ptr %i.al, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 16
  %i.aq = load <2 x i64>, ptr %i.ad, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2215, !nonnull !118, !align !119 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 16, !tbaa !248
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !261
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i.i11 = load i32, ptr %i.be, align 8
  store i32 %.sroa.0.0.copyload.i.i11, ptr %i.bd, align 16
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.bf, ptr %4, align 16, !tbaa !31
  %i.bg = call <2 x float> @_ZN7xgboost3obj10LambdaGradILb1ELb0EZNS0_13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb0EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlDpRKT_E_EESJ_SU_SS_SW_mmSX_NST_IKdLi1EEES15_Pd(ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.15") align 8 %i.b, i64 %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload, i64 %i.e, ptr nonnull %i.h, i64 noundef %spec.select, i64 noundef %spec.select36, ptr noundef nonnull byval(%class.anon.473) align 8 %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %4, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !2211, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !129 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !31 ; 4 uses
  %i.bo = icmp ult i64 %spec.select36, %i.bi
  br i1 %i.bo, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %spec.select36
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2216, !nonnull !118, !align !119 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.sroa.023.4.vec.extract = extractelement <2 x float> %i.bg, i64 1
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !133
  %i.bz = fadd <2 x float> %i.bg, %i.by
  store <2 x float> %i.bz, ptr %i.bx, align 4, !tbaa !133
  %i.ca = mul i64 %i.bt, %i.bq
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !282
  %i.cd = fsub float %i.cc, %.sroa.0.0.vec.extract.i
  store float %i.cd, ptr %i.cb, align 4, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !283
  %i.cg = fadd float %.sroa.023.4.vec.extract, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !283
  %i.ch = load ptr, ptr %i.ac, align 8, !tbaa !2214, !nonnull !118, !align !119 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !261 ; 2 uses
  %i.ck = icmp ult i64 %i.bn, %i.cj
  %i.cl = icmp ult i64 %i.bq, %i.cj
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit13
  %i.cm = load ptr, ptr %i.ar, align 8, !tbaa !2215, !nonnull !118, !align !119 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !31
  %i.co = mul i64 %i.cn, %i.bq
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !260
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !53 ; 2 uses
  %i.ct = fcmp ult double %i.cs, f0x3C9CD2B297D889BC
end_hunk_13
begin_hunk_14_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb1EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSU_SW_SM_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !2276
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb1EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSW_SY_SP_EUlmE_EEfSt7greaterIvEEESt6vectorISP_SaISP_EES14_SQ_SQ_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.489") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.489") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !2272

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !2272

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !2272

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !2273

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !2274

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !2275

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2278, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2279, !nonnull !118, !align !119 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = mul i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !133 ; 2 uses
  %i.q = icmp ult i64 %2, %i.e
  br i1 %i.q, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = mul i64 %i.s, %i.k
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !133 ; 2 uses
  %i.w = fcmp oeq float %i.p, %i.v
  br i1 %i.w, label %bb.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5
  %i.x = fcmp olt float %i.p, %i.v                ; 2 uses
  %spec.select = select i1 %i.x, i64 %2, i64 %1   ; 3 uses
  %spec.select25 = select i1 %i.x, i64 %1, i64 %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2280, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2281, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2282, !nonnull !118, !align !119 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  store i64 %i.an, ptr %i.al, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 16
  %i.aq = load <2 x i64>, ptr %i.ad, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2283, !nonnull !118, !align !119 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 16, !tbaa !248
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !261
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i.i8 = load i32, ptr %i.be, align 8
  store i32 %.sroa.0.0.copyload.i.i8, ptr %i.bd, align 16
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.bf, ptr %4, align 16, !tbaa !31
  %i.bg = call <2 x float> @_ZN7xgboost3obj10LambdaGradILb0ELb1EZNS0_13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb1EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlDpRKT_E_EESJ_SU_SS_SW_mmSX_NST_IKdLi1EEES15_Pd(ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.15") align 8 %i.b, i64 %.sroa.02.0.copyload, ptr %.sroa.23.0.copyload, i64 %i.e, ptr nonnull %i.h, i64 noundef %spec.select, i64 noundef %spec.select25, ptr noundef nonnull byval(%class.anon.485) align 8 %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %4, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !2279, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  %i.bk = icmp ult i64 %spec.select25, %i.bi
  br i1 %i.bk, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !129 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %spec.select
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %spec.select25
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2284, !nonnull !118, !align !119 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bo
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.sroa.012.4.vec.extract = extractelement <2 x float> %i.bg, i64 1
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !133
  %i.bz = fadd <2 x float> %i.bg, %i.by
  store <2 x float> %i.bz, ptr %i.bx, align 4, !tbaa !133
  %i.ca = mul i64 %i.bt, %i.bq
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !282
  %i.cd = fsub float %i.cc, %.sroa.0.0.vec.extract.i
  store float %i.cd, ptr %i.cb, align 4, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !283
  %i.cg = fadd float %.sroa.012.4.vec.extract, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !283
  %i.ch = fpext float %.sroa.0.0.vec.extract.i to double
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2285, !nonnull !118, !align !119 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !53
  %i.cl = call double @llvm.fmuladd.f64(double %i.ch, double -2.000000e+00, double %i.ck)
  store double %i.cl, ptr %i.cj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb1EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSW_SY_SP_EUlmE_EEfSt7greaterIvEEESt6vectorISP_SaISP_EES14_SQ_SQ_T2_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.189") align 8 %0, ptr noundef %1, ptr noundef byval(%"class.xgboost::common::IndexTransformIter.489") align 8 %2, ptr noundef byval(%"class.xgboost::common::IndexTransformIter.489") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
end_hunk_14
begin_hunk_15_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb0EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSU_SW_SM_:bb.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aq, ptr noundef nonnull @.str.68, i32 noundef 237)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ar = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.z

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %.pr107 = load ptr, ptr %9, align 8, !tbaa !74  ; 4 uses
  %.not.i = icmp eq ptr %.pr107, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %.pr107, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #38
  br label %.thread

.thread:                                          ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = add i32 %3, %1
  %i.bi = urem i32 %i.bh, 2147483647
  %i.bj = call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %storemerge.i.i = zext nneg i32 %i.bj to i64
  store i64 %storemerge.i.i, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %13, align 8, !tbaa !31
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !239
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !263
  %i.bk = zext i32 %i.ac to i64                   ; 4 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %.sroa.6.0..sroa_idx2.i, align 8
  %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %4, ptr %.sroa.8.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !2342
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb0EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSW_SY_SP_EUlmE_EEfSt7greaterIvEEESt6vectorISP_SaISP_EES14_SQ_SQ_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.501") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.501") align 8 %14)
  %.not129 = icmp eq i32 %i.z, %i.ab
  br i1 %.not129, label %._crit_edge, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.lr.ph, %.loopexit114
  %.046123 = phi i64 [ 0, %.preheader115.lr.ph ], [ %.045.lcssa, %.loopexit114 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046123
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046123, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not155 = icmp eq i64 %.046123, %i.bu
  br i1 %exitcond.not155, label %.critedge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader115
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph158

._crit_edge:                                      ; preds = %.loopexit114, %.thread
  %i.by = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.loopexit110

bb.p:                                             ; preds = %bb.t
  %exitcond.not = icmp eq i64 %.045157, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph158, !llvm.loop !2338

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.p
  %.045.in156 = phi i64 [ %.045157, %bb.p ], [ %.046123, %.lr.ph158.preheader ] ; 2 uses
  %.045157 = add nuw nsw i64 %.045.in156, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph158
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph158
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045157
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bp
  br i1 %i.cg, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ci = mul i64 %i.ch, %i.br
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !133
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cf
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = mul i64 %i.cm, %i.br
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !133
  %i.cq = fcmp oeq float %i.ck, %i.cp
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge160, !llvm.loop !2338

..critedge_crit_edge160:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !2338

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge160, %.preheader115
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader115 ], [ %.045.in156, %..critedge_crit_edge160 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader115 ], [ %.045157, %..critedge_crit_edge160 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046123         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit114, label %bb.u, !llvm.loop !2339

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader113:                                    ; preds = %bb.u
  %.not122 = icmp eq i32 %i.cv, 0
  br i1 %.not122, label %.loopexit114, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader113
  %.not60120 = icmp samesign ugt i64 %.046123, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub nsw i64 %.045.lcssa, %.046123
  br i1 %.not60120, label %.loopexit114, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.x
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit114, label %.preheader, !llvm.loop !2340

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.x
  %.043121 = phi i64 [ %.046123, %.preheader ], [ %i.di, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.cz = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.w ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.cz, %.046123
  %i.da = select i1 %.not61, i64 0, i64 %i.cx
  %i.db = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.043121
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.cz
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.da
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.dd, i64 noundef %i.dg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.di = add nuw nsw i64 %.043121, 1
  %exitcond136 = icmp eq i64 %.043121, %.045.in.lcssa
  br i1 %exitcond136, label %..loopexit111_crit_edge, label %bb.v, !llvm.loop !2341

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit, %bb.u
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114:                                     ; preds = %..loopexit111_crit_edge, %.preheader113, %.preheader.lr.ph, %.critedge
  %i.dj = icmp samesign ult i64 %.045.lcssa, %i.bk
  br i1 %i.dj, label %.preheader115, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dk = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %.loopexit.split-lp, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.z

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.aa:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2344, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2345, !nonnull !118, !align !119 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = mul i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !133 ; 2 uses
  %i.q = icmp ult i64 %2, %i.e
  br i1 %i.q, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = mul i64 %i.s, %i.k
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !133 ; 2 uses
  %i.w = fcmp oeq float %i.p, %i.v
  br i1 %i.w, label %bb.f, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5
  %i.x = fcmp olt float %i.p, %i.v                ; 2 uses
  %spec.select = select i1 %i.x, i64 %2, i64 %1   ; 3 uses
  %spec.select25 = select i1 %i.x, i64 %1, i64 %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2346, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2347, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2348, !nonnull !118, !align !119 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  store i64 %i.an, ptr %i.al, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 16
  %i.aq = load <2 x i64>, ptr %i.ad, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2349, !nonnull !118, !align !119 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 16, !tbaa !248
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !261
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i.i8 = load i32, ptr %i.be, align 8
  store i32 %.sroa.0.0.copyload.i.i8, ptr %i.bd, align 16
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.bf, ptr %4, align 16, !tbaa !31
  %i.bg = call <2 x float> @_ZN7xgboost3obj10LambdaGradILb0ELb0EZNS0_13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb0EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlDpRKT_E_EESJ_SU_SS_SW_mmSX_NST_IKdLi1EEES15_Pd(ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.15") align 8 %i.b, i64 %.sroa.02.0.copyload, ptr %.sroa.23.0.copyload, i64 %i.e, ptr nonnull %i.h, i64 noundef %spec.select, i64 noundef %spec.select25, ptr noundef nonnull byval(%class.anon.497) align 8 %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %4, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !2345, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit7
  %i.bk = icmp ult i64 %spec.select25, %i.bi
  br i1 %i.bk, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !129 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %spec.select
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %spec.select25
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2350, !nonnull !118, !align !119 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bo
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.sroa.012.4.vec.extract = extractelement <2 x float> %i.bg, i64 1
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !133
  %i.bz = fadd <2 x float> %i.bg, %i.by
  store <2 x float> %i.bz, ptr %i.bx, align 4, !tbaa !133
  %i.ca = mul i64 %i.bt, %i.bq
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !282
  %i.cd = fsub float %i.cc, %.sroa.0.0.vec.extract.i
  store float %i.cd, ptr %i.cb, align 4, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !283
  %i.cg = fadd float %.sroa.012.4.vec.extract, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !283
  %i.ch = fpext float %.sroa.0.0.vec.extract.i to double
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2351, !nonnull !118, !align !119 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !53
  %i.cl = call double @llvm.fmuladd.f64(double %i.ch, double -2.000000e+00, double %i.ck)
  store double %i.cl, ptr %i.cj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit5, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb0EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSW_SY_SP_EUlmE_EEfSt7greaterIvEEESt6vectorISP_SaISP_EES14_SQ_SQ_T2_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.189") align 8 %0, ptr noundef %1, ptr noundef byval(%"class.xgboost::common::IndexTransformIter.501") align 8 %2, ptr noundef byval(%"class.xgboost::common::IndexTransformIter.501") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
end_hunk_15
