Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/lambdarank_obj?download=true
inline.NumInlined: 8766
inline.NumDeleted: 2252
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS3_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !802
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS6_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.253") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.253") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !798

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !798

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !798

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !799

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !800

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !801

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !804, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !805, !nonnull !118, !align !119 ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !806, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !807, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !808, !nonnull !118, !align !119 ; 5 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !809, !nonnull !118, !align !119 ; 5 uses
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
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !805, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

end_hunk_0
begin_hunk_1_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS3_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !906
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS6_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.273") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.273") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !902

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !902

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !902

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !903

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !904

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !905

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_22CalcLambdaForGroupNDCGILb1ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !908, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !909, !nonnull !118, !align !119 ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !910, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !911, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !912, !nonnull !118, !align !119 ; 5 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !913, !nonnull !118, !align !119 ; 5 uses
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
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !909, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

end_hunk_1
begin_hunk_2_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS3_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1008
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS6_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.286") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.286") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !1004

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !1004

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1004

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !1005

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !1006

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !1007

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1010, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1011, !nonnull !118, !align !119 ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1012, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1013, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1014, !nonnull !118, !align !119 ; 5 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1015, !nonnull !118, !align !119 ; 5 uses
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
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1011, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

end_hunk_2
begin_hunk_3_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS3_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1076
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS6_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.298") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.298") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !1072

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !1072

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1072

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !1073

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !1074

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !1075

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_22CalcLambdaForGroupNDCGILb1ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1078, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1079, !nonnull !118, !align !119 ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1080, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1081, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1082, !nonnull !118, !align !119 ; 5 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1083, !nonnull !118, !align !119 ; 5 uses
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
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1079, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

end_hunk_3
begin_hunk_4_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS3_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1178
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS6_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.311") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.311") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !1174

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !1174

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1174

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !1175

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !1176

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !1177

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1180, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1181, !nonnull !118, !align !119 ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1182, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1183, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1184, !nonnull !118, !align !119 ; 5 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1185, !nonnull !118, !align !119 ; 5 uses
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
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1181, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9, label %bb.d, !prof !49

end_hunk_4
begin_hunk_5_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS3_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1244
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS6_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.323") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.323") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !1240

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !1240

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1240

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !1241

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !1242

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !1243

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_22CalcLambdaForGroupNDCGILb0ELb1EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1246, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1247, !nonnull !118, !align !119 ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1248, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1249, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1250, !nonnull !118, !align !119 ; 5 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1251, !nonnull !118, !align !119 ; 5 uses
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
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1247, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9, label %bb.d, !prof !49

end_hunk_5
begin_hunk_6_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS3_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1344
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS6_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.336") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.336") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !1340

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !1340

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1340

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !1341

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !1342

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !1343

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1346, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1347, !nonnull !118, !align !119 ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1348, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1349, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1350, !nonnull !118, !align !119 ; 5 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1351, !nonnull !118, !align !119 ; 5 uses
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
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1347, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9, label %bb.d, !prof !49

end_hunk_6
begin_hunk_7_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS3_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISB_Li1EEEfNSA_IKmLm18446744073709551615EEENSE_INS_6detail20GradientPairInternalIfEELi1EEENSE_IKdLi1EEENSA_ISM_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSC_SF_fSH_jT1_SL_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSF_SH_SP_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1410
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS6_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISD_Li1EEEfNSC_IKmLm18446744073709551615EEENSG_INS_6detail20GradientPairInternalIfEELi1EEENSG_IKdLi1EEENSC_ISO_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSE_SH_fSJ_jT1_SN_EUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSH_SJ_SR_EUlmE_EEfSt7greaterIvEEESt6vectorISR_SaISR_EESY_SS_SS_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.348") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.348") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !1406

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !1406

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1406

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !1407

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !1408

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !1409

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_14LambdaRankNDCGENS_3ltr9NDCGCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_22CalcLambdaForGroupNDCGILb0ELb0EEEvjNS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEfNS9_IKmLm18446744073709551615EEENSD_INS_6detail20GradientPairInternalIfEELi1EEENSD_IKdLi1EEENS9_ISL_Lm18446744073709551615EEEjEUlT_T0_mmjE_EEvjSB_SE_fSG_jT1_SK_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1412, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1413, !nonnull !118, !align !119 ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1414, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1415, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1416, !nonnull !118, !align !119 ; 5 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1417, !nonnull !118, !align !119 ; 5 uses
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
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1413, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9, label %bb.d, !prof !49

end_hunk_7
begin_hunk_8_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb1EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS5_EjSU_SW_T_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1674
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb1EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS8_EjSW_SY_T_EUlmE_EEfSt7greaterIvEEESt6vectorIS17_SaIS17_EES14_T0_S1F_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.391") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.391") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !1670

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !1670

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1670

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !1671

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !1672

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !1673

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1676, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1677, !nonnull !118, !align !119 ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1678, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1679, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1680, !nonnull !118, !align !119 ; 5 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1681, !nonnull !118, !align !119 ; 5 uses
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
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !1677, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

end_hunk_8
begin_hunk_9_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb0EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS5_EjSU_SW_T_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1739
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb0EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS8_EjSW_SY_T_EUlmE_EEfSt7greaterIvEEESt6vectorIS17_SaIS17_EES14_T0_S1F_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.403") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.403") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !1735

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !1735

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1735

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !1736

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !1737

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !1738

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1741, !nonnull !118, !align !119 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !128  ; 5 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1742, !nonnull !118, !align !119 ; 2 uses
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1743, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.y, align 8, !tbaa !31 ; 4 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1744, !nonnull !118, !align !119 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !125
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !261 ; 4 uses
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1745, !nonnull !118, !align !119 ; 3 uses
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

end_hunk_9
begin_hunk_10_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb1EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS5_EjSU_SW_T_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1803
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb1EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS8_EjSW_SY_T_EUlmE_EEfSt7greaterIvEEESt6vectorIS17_SaIS17_EES14_T0_S1F_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.415") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.415") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !1799

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !1799

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1799

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !1800

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !1801

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !1802

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1805, !nonnull !118, !align !119 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !128  ; 5 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1806, !nonnull !118, !align !119 ; 2 uses
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1807, !nonnull !118, !align !119 ; 2 uses
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

end_hunk_10
begin_hunk_11_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb0EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS5_EjSU_SW_T_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !1863
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb0EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrIS8_EjSW_SY_T_EUlmE_EEfSt7greaterIvEEESt6vectorIS17_SaIS17_EES14_T0_S1F_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.427") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.427") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !1859

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !1859

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !1859

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !1860

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !1861

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !1862

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_18LambdaRankPairwiseENS_3ltr12RankingCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlDpT_E_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1865, !nonnull !118, !align !119 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !128  ; 5 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1866, !nonnull !118, !align !119 ; 2 uses
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1867, !nonnull !118, !align !119 ; 2 uses
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

end_hunk_11
begin_hunk_12_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSU_SW_SM_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !2124
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSW_SY_SP_EUlmE_EEfSt7greaterIvEEESt6vectorISP_SaISP_EES14_SQ_SQ_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.465") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.465") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !2120

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !2120

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !2120

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !2121

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !2122

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !2123

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2126, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2127, !nonnull !118, !align !119 ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2128, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2129, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2130, !nonnull !118, !align !119 ; 5 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2131, !nonnull !118, !align !119 ; 5 uses
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
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !2127, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

end_hunk_12
begin_hunk_13_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb0EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSU_SW_SM_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !2192
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb0EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSW_SY_SP_EUlmE_EEfSt7greaterIvEEESt6vectorISP_SaISP_EES14_SQ_SQ_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.477") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.477") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !2188

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !2188

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !2188

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !2189

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !2190

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !2191

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2194, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2195, !nonnull !118, !align !119 ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2196, !nonnull !118, !align !119 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2197, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2198, !nonnull !118, !align !119 ; 5 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2199, !nonnull !118, !align !119 ; 5 uses
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
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !2195, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit12, label %bb.d, !prof !49

end_hunk_13
begin_hunk_14_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb1EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSU_SW_SM_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !2260
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb1EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSW_SY_SP_EUlmE_EEfSt7greaterIvEEESt6vectorISP_SaISP_EES14_SQ_SQ_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.489") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.489") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !2256

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !2256

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !2256

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !2257

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !2258

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !2259

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2262, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2263, !nonnull !118, !align !119 ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2264, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2265, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2266, !nonnull !118, !align !119 ; 5 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2267, !nonnull !118, !align !119 ; 5 uses
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
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !2263, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9, label %bb.d, !prof !49

end_hunk_14
begin_hunk_15_@_ZN7xgboost3obj9MakePairsIZNS0_13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb0EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS4_12RankingCacheEEjSU_SW_SM_:bb.a
_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq ptr %.pr, null
  br i1 %.not109, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
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
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ac

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
  store i64 %i.bk, ptr %14, align 8, !tbaa !31, !alias.scope !2326
  call void @_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb0EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSW_SY_SP_EUlmE_EEfSt7greaterIvEEESt6vectorISP_SaISP_EES14_SQ_SQ_T2_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.189") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.501") align 8 %13, ptr noundef nonnull byval(%"class.xgboost::common::IndexTransformIter.501") align 8 %14)
  %.not128 = icmp eq i32 %i.z, %i.ab
  br i1 %.not128, label %._crit_edge, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.loopexit113
  %.046122 = phi i64 [ 0, %.preheader114.lr.ph ], [ %.045.lcssa, %.loopexit113 ] ; 9 uses
  %i.bn = load ptr, ptr %12, align 8              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.046122
  %i.bp = load i64, ptr %8, align 8               ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.br = load i64, ptr %4, align 8               ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = add nuw nsw i64 %.046122, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bk) ; 3 uses
  %i.bu = add nsw i64 %umax, -1                   ; 4 uses
  %exitcond.not153 = icmp eq i64 %.046122, %i.bu
  br i1 %exitcond.not153, label %.critedge, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader114
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %.lr.ph156

._crit_edge:                                      ; preds = %.loopexit113, %.thread
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
  %exitcond.not = icmp eq i64 %.045155, %i.bu
  br i1 %exitcond.not, label %.critedge, label %.lr.ph156, !llvm.loop !2322

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.p
  %.045.in154 = phi i64 [ %.045155, %bb.p ], [ %.046122, %.lr.ph156.preheader ] ; 2 uses
  %.045155 = add nuw nsw i64 %.045.in154, 1       ; 4 uses
  br i1 %i.bw, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %.lr.ph156
  call void @_ZSt9terminatev() #37
  unreachable

bb.r:                                             ; preds = %.lr.ph156
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.045155
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
  br i1 %i.cq, label %bb.p, label %..critedge_crit_edge158, !llvm.loop !2322

..critedge_crit_edge158:                          ; preds = %bb.t
  br label %.critedge, !llvm.loop !2322

.critedge:                                        ; preds = %bb.p, %..critedge_crit_edge158, %.preheader114
  %.045.in.lcssa = phi i64 [ %i.bu, %.preheader114 ], [ %.045.in154, %..critedge_crit_edge158 ], [ %i.bu, %bb.p ] ; 2 uses
  %.045.lcssa = phi i64 [ %umax, %.preheader114 ], [ %.045155, %..critedge_crit_edge158 ], [ %umax, %bb.p ] ; 4 uses
  %i.cr = sub nuw nsw i64 %i.bk, %.045.lcssa
  %i.cs = add nuw nsw i64 %i.cr, %.046122         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit113, label %bb.u, !llvm.loop !2323

bb.u:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %2, align 8, !tbaa !37
  %i.cv = invoke noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cu)
          to label %.preheader112 unwind label %bb.v ; 2 uses

.preheader112:                                    ; preds = %bb.u
  %.not121 = icmp eq i32 %i.cv, 0
  br i1 %.not121, label %.loopexit113, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader112
  %.not60119 = icmp ugt i64 %.046122, %.045.in.lcssa
  %i.cw = add nsw i64 %i.cs, -1
  %i.cx = sub i64 %.045.lcssa, %.046122
  br i1 %.not60119, label %.loopexit113, label %.preheader

..loopexit111_crit_edge:                          ; preds = %bb.y
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.loopexit113, label %.preheader, !llvm.loop !2324

.preheader:                                       ; preds = %.preheader.lr.ph, %..loopexit111_crit_edge
  %.in = phi i32 [ %i.cy, %..loopexit111_crit_edge ], [ %i.cv, %.preheader.lr.ph ]
  %i.cy = add i32 %.in, -1                        ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %.preheader, %bb.y
  %.043120 = phi i64 [ %.046122, %.preheader ], [ %i.dj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store i64 0, ptr %15, align 8, !tbaa !278
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !279
  %i.da = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit unwind label %bb.x ; 2 uses

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.not61 = icmp ult i64 %i.da, %.046122
  %i.db = select i1 %.not61, i64 0, i64 %i.cx
  %i.dc = load ptr, ptr %12, align 8, !tbaa !275  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.043120
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.db
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  invoke void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef %i.de, i64 noundef %i.dh)
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dj = add i64 %.043120, 1                     ; 2 uses
  %.not60 = icmp ugt i64 %i.dj, %.045.in.lcssa
  br i1 %.not60, label %..loopexit111_crit_edge, label %bb.w, !llvm.loop !2325

bb.z:                                             ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit113:                                     ; preds = %..loopexit111_crit_edge, %.preheader112, %.preheader.lr.ph, %.critedge
  %i.dl = icmp ult i64 %.045.lcssa, %i.bk
  br i1 %i.dl, label %.preheader114, label %._crit_edge

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.v
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %i.dk, %bb.z ], [ %i.cz, %bb.v ]
  %i.dm = load ptr, ptr %12, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorImSaImEED2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !276
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit88

_ZNSt6vectorImSaImEED2Ev.exit88:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ac

.loopexit110:                                     ; preds = %.loopexit, %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit88, %bb.l
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit88 ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb0ELb0EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2328, !nonnull !118, !align !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2329, !nonnull !118, !align !119 ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2330, !nonnull !118, !align !119 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.z, align 8, !tbaa !31
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2331, !nonnull !118, !align !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2332, !nonnull !118, !align !119 ; 5 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2333, !nonnull !118, !align !119 ; 5 uses
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
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !2329, !nonnull !118, !align !119 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !128 ; 2 uses
  %i.bj = icmp ult i64 %spec.select, %i.bi
  br i1 %i.bj, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit9, label %bb.d, !prof !49

end_hunk_15
