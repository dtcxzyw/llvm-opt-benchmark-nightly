Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/sparse_page_dmatrix?download=true
inline.NumInlined: 6572
inline.NumDeleted: 3008
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN7xgboost6common10ThreadPoolC1INS4_13InitNewThreadEEENS4_10StringViewEiOT_EUlvE_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.ak = getelementptr i8, ptr %next.gep51, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep51, align 8, !tbaa !151, !alias.scope !1131
  %wide.load52 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !151, !alias.scope !1131
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !151, !alias.scope !1130
  store <2 x i64> %wide.load52, ptr %i.al, align 8, !tbaa !151, !alias.scope !1130
  store <2 x i64> zeroinitializer, ptr %next.gep51, align 8, !tbaa !151, !alias.scope !1131
  store <2 x i64> zeroinitializer, ptr %i.ak, align 8, !tbaa !151, !alias.scope !1131
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader71

.lr.ph.i.i.i.preheader71:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader71, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.an = load i64, ptr %.0911.i.i.i, align 8, !tbaa !151, !alias.scope !1131
  store i64 %i.an, ptr %.012.i.i.i, align 8, !tbaa !151, !alias.scope !1130
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !151, !alias.scope !1131
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !1121

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ah, %middle.block ], [ %i.ap, %.lr.ph.i.i.i ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32, label %.lr.ph.i.i.i27.preheader

.lr.ph.i.i.i27.preheader:                         ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ar = add i64 %i.d, -8
  %i.as = sub i64 %i.ar, %i.m                     ; 3 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.as, 152
  br i1 %min.iters.check56, label %.lr.ph.i.i.i27.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i27.preheader
  %i.av = and i64 %i.as, -8                       ; 2 uses
  %i.aw = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = getelementptr i8, ptr %1, i64 %i.av
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %bound0 = icmp ult ptr %i.aq, %i.az
  %bound1 = icmp ult ptr %1, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i27.preheader70, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck
  %n.vec58 = and i64 %i.au, 4611686018427387900   ; 3 uses
  %i.ba = shl i64 %n.vec58, 3                     ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aq, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 %i.ba
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %i.bd = shl i64 %index60, 3                     ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.aq, i64 %i.bd ; 2 uses
  %next.gep62 = getelementptr i8, ptr %1, i64 %i.bd ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %i.be = getelementptr i8, ptr %next.gep62, i64 16 ; 2 uses
  %wide.load63 = load <2 x i64>, ptr %next.gep62, align 8, !tbaa !151, !alias.scope !1136
  %wide.load64 = load <2 x i64>, ptr %i.be, align 8, !tbaa !151, !alias.scope !1136
  %i.bf = getelementptr i8, ptr %next.gep61, i64 16
  store <2 x i64> %wide.load63, ptr %next.gep61, align 8, !tbaa !151, !alias.scope !1137, !noalias !1138
  store <2 x i64> %wide.load64, ptr %i.bf, align 8, !tbaa !151, !alias.scope !1137, !noalias !1138
  store <2 x i64> zeroinitializer, ptr %next.gep62, align 8, !tbaa !151, !alias.scope !1136
  store <2 x i64> zeroinitializer, ptr %i.be, align 8, !tbaa !151, !alias.scope !1136
  %index.next65 = add nuw i64 %index60, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.bg, label %middle.block66, label %vector.body59, !llvm.loop !1128

middle.block66:                                   ; preds = %vector.body59
  %cmp.n67 = icmp eq i64 %i.au, %n.vec58
  br i1 %cmp.n67, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32, label %.lr.ph.i.i.i27.preheader70

.lr.ph.i.i.i27.preheader70:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i27.preheader, %middle.block66
  %.012.i.i.i28.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i27.preheader ], [ %i.bb, %middle.block66 ]
  %.0911.i.i.i29.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i27.preheader ], [ %i.bc, %middle.block66 ]
  br label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %.lr.ph.i.i.i27.preheader70, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.bj, %.lr.ph.i.i.i27 ], [ %.012.i.i.i28.ph, %.lr.ph.i.i.i27.preheader70 ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.bi, %.lr.ph.i.i.i27 ], [ %.0911.i.i.i29.ph, %.lr.ph.i.i.i27.preheader70 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %i.bh = load i64, ptr %.0911.i.i.i29, align 8, !tbaa !151, !alias.scope !1135
  store i64 %i.bh, ptr %.012.i.i.i28, align 8, !tbaa !151, !alias.scope !1134
  store i64 0, ptr %.0911.i.i.i29, align 8, !tbaa !151, !alias.scope !1135
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bi, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !1129

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32: ; preds = %.lr.ph.i.i.i27, %middle.block66, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.aq, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bb, %middle.block66 ], [ %i.bj, %.lr.ph.i.i.i27 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !435
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bn) #32
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !443
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !434
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !435
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.g ], [ %i.x, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i ], [ %i.x, %bb.d ]
  %i.br = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bs = call ptr @__cxa_begin_catch(ptr %i.br) #15 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #32
  invoke void @__cxa_rethrow() #34
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bq

bb.k:                                             ; preds = %bb.h
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #33
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7xgboost6common10ThreadPoolC1INS3_13InitNewThreadEEENS3_10StringViewEiOT_EUlvE_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7xgboost6common10ThreadPoolC1INS3_13InitNewThreadEEENS3_10StringViewEiOT_EUlvE_EEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 9 uses
  %2 = alloca %"class.std::function", align 8     ; 14 uses
  %3 = alloca %"class.std::function", align 8     ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !433  ; 9 uses
  tail call void @_ZNK7xgboost13InitNewThreadclEv(ptr noundef nonnull align 4 dereferenceable(20) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr %i.b, ptr %1, align 8, !tbaa !1143
  store i8 0, ptr %i.c, align 8, !tbaa !1144
  %i.o = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #15 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_system_errori(i32 noundef %i.o) #34
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.b
  store i8 1, ptr %i.c, align 8, !tbaa !1144
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !458
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !458  ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q
  %i.s = load i8, ptr %i.e, align 8, !tbaa !442, !range !153, !noundef !154
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  br i1 %i.r, label %_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i.preheader, label %_ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit.thread

_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i.preheader: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  br i1 %i.t, label %_ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit, label %.lr.ph174

_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i: ; preds = %.noexc
  %i.u = load i8, ptr %i.e, align 8, !tbaa !442, !range !153, !noundef !154
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i._ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit_crit_edge, label %.lr.ph174, !llvm.loop !1139

.lr.ph174:                                        ; preds = %_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i.preheader, %_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %.lr.ph174
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !458  ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !458  ; 4 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i, label %.noexc._ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit_crit_edge, !llvm.loop !1139

.noexc._ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit_crit_edge: ; preds = %.noexc
  br label %_ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit, !llvm.loop !1139

_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i._ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit_crit_edge: ; preds = %_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i
  %i.z = icmp eq ptr %i.w, %i.x
  br label %_ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit

_ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit: ; preds = %_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i._ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit_crit_edge, %.noexc._ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit_crit_edge, %_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i.preheader
  %i.aa = phi i1 [ %i.z, %_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i._ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit_crit_edge ], [ false, %.noexc._ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit_crit_edge ], [ true, %_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i.preheader ]
  %i.ab = phi ptr [ %i.x, %_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i._ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit_crit_edge ], [ %i.x, %.noexc._ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit_crit_edge ], [ %i.q, %_ZZZN7xgboost6common10ThreadPoolC1INS_13InitNewThreadEEENS_10StringViewEiOT_ENKUlvE_clEvENKUlvE_clEv.exit.i.preheader ] ; 2 uses
  %i.ac = load i8, ptr %i.e, align 8, !tbaa !442, !range !153, !noundef !154
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.preheader, label %bb.v

_ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit.thread: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  br i1 %i.t, label %.lr.ph.preheader, label %bb.v

.preheader:                                       ; preds = %_ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit
  br i1 %i.aa, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit.thread, %.preheader
  %.ph = phi ptr [ %i.q, %_ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit.thread ], [ %i.ab, %.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt14_Function_baseD2Ev.exit
  %i.ae = phi ptr [ %i.bm, %_ZNSt14_Function_baseD2Ev.exit ], [ %.ph, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !460 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvvEEC2ERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 noundef 2)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ai = load <2 x ptr>, ptr %i.af, align 8, !tbaa !175
  store <2 x ptr> %i.ai, ptr %i.m, align 8, !tbaa !175
  %.pre110 = load ptr, ptr %i.g, align 8, !tbaa !456 ; 2 uses
  %.phi.trans.insert111 = getelementptr inbounds nuw i8, ptr %.pre110, i64 16
  %.pre112 = load ptr, ptr %.phi.trans.insert111, align 8, !tbaa !460
  br label %_ZNSt8functionIFvvEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !460 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %.body unwind label %bb.h      ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #33
  unreachable

_ZNSt8functionIFvvEEC2ERKS1_.exit:                ; preds = %bb.e, %.lr.ph
  %i.ao = phi ptr [ %.pre112, %bb.e ], [ null, %.lr.ph ] ; 3 uses
  %i.ap = phi ptr [ %.pre110, %bb.e ], [ %i.ae, %.lr.ph ] ; 6 uses
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !1145
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -32
  %.not.i.i11 = icmp eq ptr %i.ap, %i.ar
  %.not.i.i.i.i = icmp eq ptr %i.ao, null         ; 2 uses
  br i1 %.not.i.i11, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i32 noundef 3)
          to label %._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i unwind label %bb.k ; 0 uses

._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i:    ; preds = %bb.j
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !456
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i, %bb.i
  %i.av = phi ptr [ %.pre.i.i, %._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i ], [ %i.ap, %bb.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  br label %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit

bb.l:                                             ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit
  br i1 %.not.i.i.i.i, label %_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i32 noundef 3)
          to label %_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #33
  unreachable

_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !1146
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef 512) #32
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !461
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.l, align 8, !tbaa !453
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !452 ; 3 uses
  store ptr %i.bd, ptr %i.k, align 8, !tbaa !454
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 512
  store ptr %i.be, ptr %i.j, align 8, !tbaa !455
  br label %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i
  %storemerge.i.i = phi ptr [ %i.aw, %_ZNSt14_Function_baseD2Ev.exit.i.i ], [ %i.bd, %_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.g, align 8, !tbaa !456
  %i.bf = load ptr, ptr %i.m, align 8, !tbaa !460
  %.not.i.i12 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i12, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !463
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1140

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.p
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !460 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNKSt8functionIFvvEEclEv.exit
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNKSt8functionIFvvEEclEv.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !458
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !458 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %.loopexit, label %.lr.ph, !llvm.loop !1141

bb.s:                                             ; preds = %.lr.ph174
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.o
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %i.m, align 8, !tbaa !460 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bp, null
  br i1 %.not.i15, label %.body, label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bq = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %.body unwind label %bb.u      ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #33
  unreachable

.body:                                            ; preds = %bb.t, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %lpad.loopexit.split-lp178, %bb.t ], [ %i.aj, %bb.g ], [ %lpad.loopexit.split-lp178, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.as

bb.v:                                             ; preds = %_ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit.thread, %_ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit
  %i.bt = phi ptr [ %i.q, %_ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit.thread ], [ %i.ab, %_ZNSt18condition_variable4waitIZZN7xgboost6common10ThreadPoolC1INS1_13InitNewThreadEEENS1_10StringViewEiOT_ENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexES7_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !460 ; 2 uses
  %.not.i.i.not.i17 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.not.i17, label %_ZNSt8functionIFvvEEC2ERKS1_.exit22, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i32 noundef 2)
          to label %bb.x unwind label %bb.y       ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.bx = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !175
  store <2 x ptr> %i.bx, ptr %i.h, align 8, !tbaa !175
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !456 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre109 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !460
  br label %_ZNSt8functionIFvvEEC2ERKS1_.exit22

bb.y:                                             ; preds = %bb.w
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %i.h, align 8, !tbaa !460 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i18, label %.body20, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %.body20 unwind label %bb.aa   ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #33
  unreachable

_ZNSt8functionIFvvEEC2ERKS1_.exit22:              ; preds = %bb.x, %bb.v
  %i.cd = phi ptr [ %.pre109, %bb.x ], [ null, %bb.v ] ; 3 uses
  %i.ce = phi ptr [ %.pre, %bb.x ], [ %i.bt, %bb.v ] ; 6 uses
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !1145
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -32
  %.not.i.i23 = icmp eq ptr %i.ce, %i.cg
  %.not.i.i.i.i24 = icmp eq ptr %i.cd, null       ; 2 uses
  br i1 %.not.i.i23, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit22
  br i1 %.not.i.i.i.i24, label %_ZNSt14_Function_baseD2Ev.exit.i.i27, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ch = invoke noundef zeroext i1 %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i32 noundef 3)
          to label %._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i25 unwind label %bb.ad ; 0 uses

._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i25:  ; preds = %bb.ac
  %.pre.i.i26 = load ptr, ptr %i.g, align 8, !tbaa !456
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i27

bb.ad:                                            ; preds = %bb.ac
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i27:             ; preds = %._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i25, %bb.ab
  %i.ck = phi ptr [ %.pre.i.i26, %._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i25 ], [ %i.ce, %bb.ab ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  br label %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit30

bb.ae:                                            ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit22
  br i1 %.not.i.i.i.i24, label %_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i29, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cm = invoke noundef zeroext i1 %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i32 noundef 3)
          to label %_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i29 unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #33
  unreachable

_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i29: ; preds = %bb.af, %bb.ae
  %i.cp = load ptr, ptr %i.k, align 8, !tbaa !1146
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef 512) #32
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !461
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  store ptr %i.cr, ptr %i.l, align 8, !tbaa !453
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !452 ; 3 uses
  store ptr %i.cs, ptr %i.k, align 8, !tbaa !454
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 512
  store ptr %i.ct, ptr %i.j, align 8, !tbaa !455
  br label %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit30

_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit30: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i27, %_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i29
  %storemerge.i.i28 = phi ptr [ %i.cl, %_ZNSt14_Function_baseD2Ev.exit.i.i27 ], [ %i.cs, %_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i29 ]
  store ptr %storemerge.i.i28, ptr %i.g, align 8, !tbaa !456
  %i.cu = load i8, ptr %i.c, align 8, !tbaa !1144, !range !153, !noundef !154
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit30
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #34
          to label %.noexc32 unwind label %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit30
  %i.cw = load ptr, ptr %1, align 8, !tbaa !1143  ; 2 uses
  %.not.i31 = icmp eq ptr %i.cw, null
  br i1 %.not.i31, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cw) #15 ; 0 uses
  store i8 0, ptr %i.c, align 8, !tbaa !1144
  br label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit

_ZNSt11unique_lockISt5mutexE6unlockEv.exit:       ; preds = %bb.aj, %bb.ai
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !460
  %.not.i.i33 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i33, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc34 unwind label %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !463
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNKSt8functionIFvvEEclEv.exit36 unwind label %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp, !inline_history !1140

_ZNKSt8functionIFvvEEclEv.exit36:                 ; preds = %bb.al
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !460 ; 2 uses
  %.not.i37 = icmp eq ptr %i.da, null
  br i1 %.not.i37, label %_ZNSt14_Function_baseD2Ev.exit38, label %bb.am

bb.am:                                            ; preds = %_ZNKSt8functionIFvvEEclEv.exit36
  %i.db = invoke noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit38 unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit38:                 ; preds = %_ZNKSt8functionIFvvEEclEv.exit36, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.preheader, %_ZNSt14_Function_baseD2Ev.exit38
  %i.de = phi i1 [ false, %_ZNSt14_Function_baseD2Ev.exit38 ], [ true, %.preheader ], [ true, %_ZNSt14_Function_baseD2Ev.exit ]
  %i.df = load i8, ptr %i.c, align 8, !tbaa !1144, !range !153, !noundef !154
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ao, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.ao:                                            ; preds = %.loopexit
  %i.dh = load ptr, ptr %1, align 8, !tbaa !1143  ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i39, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.di = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dh) #15 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.loopexit, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br i1 %i.de, label %bb.av, label %bb.b

.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.ah, %bb.ak
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %i.h, align 8, !tbaa !460 ; 2 uses
  %.not.i40 = icmp eq ptr %i.dj, null
  br i1 %.not.i40, label %.body20, label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp
  %i.dk = invoke noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %.body20 unwind label %bb.ar   ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #33
  unreachable

.body20:                                          ; preds = %bb.aq, %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.by, %bb.y ], [ %lpad.loopexit.split-lp180, %bb.aq ], [ %i.by, %bb.z ], [ %lpad.loopexit.split-lp180, %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.as

bb.as:                                            ; preds = %.body20, %.body, %bb.s
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %.body ], [ %.pn, %.body20 ], [ %i.bo, %bb.s ]
  %i.dn = load i8, ptr %i.c, align 8, !tbaa !1144, !range !153, !noundef !154
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.at, label %_ZNSt11unique_lockISt5mutexED2Ev.exit43

bb.at:                                            ; preds = %bb.as
  %i.dp = load ptr, ptr %1, align 8, !tbaa !1143  ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i42, label %_ZNSt11unique_lockISt5mutexED2Ev.exit43, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dp) #15 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit43

_ZNSt11unique_lockISt5mutexED2Ev.exit43:          ; preds = %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %.pn8.pn

bb.av:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  ret void
}

declare void @_ZNK7xgboost13InitNewThreadclEv(ptr noundef nonnull align 4 dereferenceable(20)) local_unnamed_addr #2

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !452, !noalias !1151
  store <2 x ptr> %i.g, ptr %1, align 16, !tbaa !452
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x ptr>, ptr %i.b, align 8, !tbaa !175, !noalias !1151
  store <2 x ptr> %i.i, ptr %i.h, align 16, !tbaa !175
  %i.j = load <2 x ptr>, ptr %i.d, align 8, !tbaa !452, !noalias !1152
  store <2 x ptr> %i.j, ptr %2, align 16, !tbaa !452
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load <2 x ptr>, ptr %i.e, align 8, !tbaa !175, !noalias !1152
  store <2 x ptr> %i.l, ptr %i.k, align 16, !tbaa !175
  invoke void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.m = load ptr, ptr %0, align 8, !tbaa !451    ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !461  ; 2 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !464  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !452
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #32
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.t = icmp ult ptr %.06.i.i, %i.o
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i, !llvm.loop !23

_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !451
  br label %_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i: ; preds = %_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i, %bb.c
  %i.u = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i ], [ %i.m, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !450
  %i.x = shl i64 %i.w, 3
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #32
  br label %_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EED2Ev.exit

_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #33
  unreachable
}
end_hunk_0
