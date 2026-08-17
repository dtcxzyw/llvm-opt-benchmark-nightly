inline.NumInlined: 4757
inline.NumDeleted: 1841
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvEJRKSt6localeRNSt15regex_constants18syntax_option_typeEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_:_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.g, i8 0, i64 17, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #29
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29, !noalias !338
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.i) #29, !noalias !338
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6localeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %7) #29, !noalias !338 ; 0 uses
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6localeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #29, !noalias !338 ; 0 uses
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #29, !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29, !noalias !338
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #29
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %i.a, ptr %0, align 8, !tbaa !172
  store ptr %i.d, ptr %1, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !277  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt8__detail6_StateIcEES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyINSt8__detail6_StateIcEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyINSt8__detail6_StateIcEEEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 4 uses
  %i.g = load i32, ptr %.05.i.i.i.i.i, align 8, !tbaa !260
  %i.h = icmp eq i32 %i.g, 11
  br i1 %i.h, label %bb.b, label %_ZSt8_DestroyINSt8__detail6_StateIcEEEvPT_.exit.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !282  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyINSt8__detail6_StateIcEEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.l = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 3)
          to label %_ZSt8_DestroyINSt8__detail6_StateIcEEEvPT_.exit.i.i.i.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #32
  unreachable

_ZSt8_DestroyINSt8__detail6_StateIcEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt8__detail6_StateIcEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !341

_ZSt8_DestroyIPNSt8__detail6_StateIcEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt8__detail6_StateIcEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !236
  br label %_ZSt8_DestroyIPNSt8__detail6_StateIcEES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt8__detail6_StateIcEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt8__detail6_StateIcEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.a
  %i.p = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt8__detail6_StateIcEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt8__detail6_StateIcEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !278
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #31
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EED2Ev.exit.i.i: ; preds = %bb.e, %_ZSt8_DestroyIPNSt8__detail6_StateIcEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !274  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEEEvPT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !273
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #31
  br label %_ZSt8_DestroyINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEEEvPT_.exit

_ZSt8_DestroyINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEEEvPT_.exit: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EED2Ev.exit.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !342  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #29
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6localeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !260
  %i.b = icmp eq i32 %i.a, 11
  br i1 %i.b, label %bb.b, label %_ZNSt14_Function_baseD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !282  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE15_M_allocate_mapEm.exit:
  %i.a = udiv i64 %1, 21                          ; 2 uses
  %i.b = urem i64 %1, 21
  %i.c = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.d, 3     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.e, align 8, !tbaa !266
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !263
  %i.h = sub nuw nsw i64 %.sroa.speculated, %i.c
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #33
          to label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE15_M_create_nodesEPPS5_S9_.exit, !llvm.loop !344

bb.a:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #29 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !254
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 504) #31
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i, !llvm.loop !265

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #30
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #32
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #29 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !263
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !266
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #30
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ad

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE15_M_create_nodesEPPS5_S9_.exit: ; preds = %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !253
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !254 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !252
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 504
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !257
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !253
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !254 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !252
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 504
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !257
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !345
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.b
  store ptr %i.ar, ptr %i.ak, align 8, !tbaa !258
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #32
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !277  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !236    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt8__detail6_StateIcEESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #30
  unreachable

_ZNKSt6vectorINSt8__detail6_StateIcEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !275
  %i.r = load i32, ptr %2, align 8, !tbaa !260
  %i.s = icmp eq i32 %i.r, 11
  br i1 %i.s, label %bb.c, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

bb.c:                                             ; preds = %_ZNKSt6vectorINSt8__detail6_StateIcEESaIS2_EE12_M_check_lenEmPKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !279
  store ptr %i.w, ptr %i.u, align 8, !tbaa !279
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !282  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 16, i1 false), !tbaa.struct !346
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !282
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %_ZNKSt6vectorINSt8__detail6_StateIcEESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c, %bb.d
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit, %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt8__detail6_StateIcEC2EOS1_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt8__detail6_StateIcEC2EOS1_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !275, !alias.scope !352
  %i.ab = load i32, ptr %.0911.i.i.i, align 8, !tbaa !260, !alias.scope !350, !noalias !347
  %i.ac = icmp eq i32 %i.ab, 11
  br i1 %i.ac, label %bb.e, label %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i8 0, i64 24, i1 false), !alias.scope !347, !noalias !350
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !279, !alias.scope !350, !noalias !347
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !279, !alias.scope !347, !noalias !350
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !282, !alias.scope !350, !noalias !347 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 16, i1 false), !tbaa.struct !346, !alias.scope !352
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !282, !alias.scope !347, !noalias !350
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !350, !noalias !347
  br label %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_:bb.a
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8, !tbaa !50
  %.pre82 = load i64, ptr %2, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i64 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %2, align 8, !tbaa !50     ; 8 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !50   ; 2 uses
  %i.z = icmp slt i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !784 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #34 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !50
  %i.ag = icmp slt i64 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !792
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !784 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !50 ; 2 uses
  %i.an = icmp slt i64 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !784 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !791

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #34 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !784 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #34 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !50
  %i.az = icmp slt i64 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !792
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !784 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !50 ; 2 uses
  %i.bg = icmp slt i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !784 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !791

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !778
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #34 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i64 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i64 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !792
  tail call void @_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !793  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !794

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIlSaIlEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIlSaIlEE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !437
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !434
  %i.g = sub nuw nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIlSaIlEE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIlSaIlEE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIlSaIlEE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIlSaIlEE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #33
          to label %_ZNSt11_Deque_baseIlSaIlEE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIlSaIlEE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !302
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIlSaIlEE15_M_create_nodesEPPlS3_.exit, !llvm.loop !795

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #29 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !302
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #31
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i, !llvm.loop !436

_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #30
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #32
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #29 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !434
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !437
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #30
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseIlSaIlEE15_M_create_nodesEPPlS3_.exit: ; preds = %_ZNSt11_Deque_baseIlSaIlEE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !430
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !302 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !422
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !432
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !430
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !302 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !422
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !432
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !796
  %i.aq = and i64 %1, 63
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !426
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #32
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !430
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !419
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !422
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !432
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !419
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !437
  %i.ag = load ptr, ptr %0, align 8, !tbaa !434
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIlSaIlEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIlSaIlEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIlSaIlEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIlSaIlEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #33 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !431
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !302
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !426
  %i.aq = load i64, ptr %1, align 8, !tbaa !50
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !50
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !430
  store ptr %i.am, ptr %i.o, align 8, !tbaa !422
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !432
  store ptr %i.am, ptr %i.a, align 8, !tbaa !426
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIlSaIlEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !431  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !435  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !437  ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k
end_hunk_1
begin_hunk_2_@_Z11matrix2realPK8t_matrixPPf:bb.a
  %i.bv = sext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.053.094, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !116
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv73.epil
  store float %i.bx, ptr %i.by, align 4, !tbaa !116
  %indvars.iv.next74.epil = add nuw nsw i64 %indvars.iv73.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !920

._crit_edge:                                      ; preds = %bb.h, %._crit_edge.unr-lcssa
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %.loopexit110, label %.preheader, !llvm.loop !921

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv73 = phi i64 [ %indvars.iv.next74.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.bz = load i64, ptr %i.bk, align 8
  %i.ca = mul nsw i64 %i.bz, %indvars.iv76
  %i.cb = getelementptr [2 x i8], ptr %i.bm, i64 %i.ca
  %i.cc = getelementptr [2 x i8], ptr %i.cb, i64 %indvars.iv73
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !122
  %i.ce = sext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.053.094, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !116
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv73
  store float %i.cg, ptr %i.ch, align 4, !tbaa !116
  %indvars.iv.next74 = or disjoint i64 %indvars.iv73, 1 ; 2 uses
  %i.ci = load i64, ptr %i.bk, align 8
  %i.cj = mul nsw i64 %i.ci, %indvars.iv76
  %i.ck = getelementptr [2 x i8], ptr %i.bm, i64 %i.cj
  %i.cl = getelementptr [2 x i8], ptr %i.ck, i64 %indvars.iv.next74
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !122
  %i.cn = sext i16 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sroa.053.094, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !116
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next74
  store float %i.cp, ptr %i.cq, align 4, !tbaa !116
  %indvars.iv.next74.1 = or disjoint i64 %indvars.iv73, 2 ; 2 uses
  %i.cr = load i64, ptr %i.bk, align 8
  %i.cs = mul nsw i64 %i.cr, %indvars.iv76
  %i.ct = getelementptr [2 x i8], ptr %i.bm, i64 %i.cs
  %i.cu = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.next74.1
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !122
  %i.cw = sext i16 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.053.094, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !116
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next74.1
  store float %i.cy, ptr %i.cz, align 4, !tbaa !116
  %indvars.iv.next74.2 = or disjoint i64 %indvars.iv73, 3 ; 2 uses
  %i.da = load i64, ptr %i.bk, align 8
  %i.db = mul nsw i64 %i.da, %indvars.iv76
  %i.dc = getelementptr [2 x i8], ptr %i.bm, i64 %i.db
  %i.dd = getelementptr [2 x i8], ptr %i.dc, i64 %indvars.iv.next74.2
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !122
  %i.df = sext i16 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.053.094, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !116
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next74.2
  store float %i.dh, ptr %i.di, align 4, !tbaa !116
  %indvars.iv.next74.3 = add nuw nsw i64 %indvars.iv73, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !922

.loopexit110:                                     ; preds = %._crit_edge, %.preheader.lr.ph, %.loopexit.._crit_edge70.split_crit_edge
  %.061100 = phi ptr [ %.061101, %.loopexit.._crit_edge70.split_crit_edge ], [ %.061, %.preheader.lr.ph ], [ %.061, %._crit_edge ] ; 2 uses
  %i.dj = phi i32 [ %i.bg, %.loopexit.._crit_edge70.split_crit_edge ], [ %i.be, %.preheader.lr.ph ], [ %i.be, %._crit_edge ]
  %i.dk = phi i32 [ %.pre83, %.loopexit.._crit_edge70.split_crit_edge ], [ %i.bi, %.preheader.lr.ph ], [ %i.bi, %._crit_edge ]
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 6
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.223, i32 noundef %i.dj, i32 noundef %i.dk, i64 noundef %i.dr) #35 ; 0 uses
  %.not.i.i.i = icmp eq ptr %.sroa.053.094, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.thread, %.loopexit110
  %.143108 = phi ptr [ null, %.thread ], [ %.061100, %.loopexit110 ]
  %.sroa.053.095107 = phi ptr [ %i.l, %.thread ], [ %.sroa.053.094, %.loopexit110 ] ; 2 uses
  %.sroa.11.098106 = phi ptr [ %i.m, %.thread ], [ %.sroa.11.097, %.loopexit110 ]
  %i.dt = ptrtoint ptr %.sroa.11.098106 to i64
  %i.du = ptrtoint ptr %.sroa.053.095107 to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.095107, i64 noundef %i.dv) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.loopexit110, %bb.i
  %.143109 = phi ptr [ %.061100, %.loopexit110 ], [ %.143108, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %.143109

bb.j:                                             ; preds = %bb.g, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.g ], [ %i.av, %bb.e ]
  %.not.i.i.i51 = icmp eq ptr %.sroa.053.094, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIfSaIfEED2Ev.exit52, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dw = ptrtoint ptr %.sroa.11.097 to i64
  %i.dx = ptrtoint ptr %.sroa.053.094 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.094, i64 noundef %i.dy) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit52

_ZNSt6vectorIfSaIfEED2Ev.exit52:                  ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_Z11write_xpm_mP8_IO_FILE8t_matrix(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !42
  %.fr61 = freeze i8 %i.d
  %i.e = icmp eq i8 %.fr61, 0                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.k = load i8, ptr %i.j, align 8, !tbaa !104, !range !77, !noundef !78
  %i.l = trunc nuw i8 %i.k to i1
  tail call fastcc void @_ZL16write_xpm_headerP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_b(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i1 noundef zeroext %i.l)
  %i.m = tail call i64 @fwrite(ptr nonnull @.str.224, i64 31, i64 1, ptr %0) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 6
  %i.y = select i1 %i.e, i32 1, i32 2
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.225, i32 noundef %i.o, i32 noundef %i.q, i64 noundef %i.x, i32 noundef %i.y) #29 ; 0 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !133 ; 3 uses
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !133 ; 3 uses
  %.not4448 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not4448, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.sroa.040.049.us = phi ptr [ %i.au, %.lr.ph.split.us ], [ %i.aa, %.lr.ph ] ; 5 uses
  %i.ac = load i8, ptr %.sroa.040.049.us, align 8, !tbaa !38
  %i.ad = sext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.040.049.us, i64 40
  %i.af = load <2 x double>, ptr %i.ae, align 8, !tbaa !44
  %i.ag = fmul <2 x double> %i.af, splat (double 2.550000e+02)
  %i.ah = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.ag) ; 2 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0
  %i.aj = fptoui double %i.ai to i32
  %i.ak = extractelement <2 x double> %i.ah, i64 1
  %i.al = fptoui double %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.040.049.us, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !47
  %i.ao = fmul double %i.an, 2.550000e+02
  %i.ap = tail call double @llvm.round.f64(double %i.ao)
  %i.aq = fptoui double %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.040.049.us, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.226, i32 noundef %i.ad, i32 noundef 32, i32 noundef %i.aj, i32 noundef %i.al, i32 noundef %i.aq, ptr noundef %i.as) #29 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.040.049.us, i64 64 ; 2 uses
  %.not44.us = icmp eq ptr %i.au, %i.ab
  br i1 %.not44.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !114 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !115
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bb
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.207, ptr %i.aw, ptr %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !114 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !115
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.208, ptr %i.be, ptr %i.bk)
  %i.bl = load i32, ptr %i.p, align 8, !tbaa !103 ; 4 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %._crit_edge
  %.03554 = add nsw i32 %i.bl, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.bp = zext nneg i32 %.03554 to i64            ; 2 uses
  br i1 %i.e, label %.lr.ph58.split.us, label %.lr.ph58.split

.lr.ph58.split.us:                                ; preds = %.lr.ph58, %bb.e
  %indvars.iv71.in = phi i64 [ %indvars.iv.next72, %bb.e ], [ %i.bp, %.lr.ph58 ] ; 4 uses
  %.035.in55.us = phi i32 [ %i.bt, %bb.e ], [ %i.bl, %.lr.ph58 ]
  %i.bq = load i32, ptr %i.p, align 8, !tbaa !103 ; 3 uses
  %i.br = sdiv i32 %i.bq, 100
  %i.bs = add nsw i32 %i.br, 1
  %i.bt = trunc nuw nsw i64 %indvars.iv71.in to i32 ; 3 uses
  %i.bu = srem i32 %i.bt, %i.bs
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.b, label %.preheader.us

bb.b:                                             ; preds = %.lr.ph58.split.us
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.bx = sub nsw i32 %i.bq, %i.bt
  %i.by = mul nsw i32 %i.bx, 100
  %i.bz = sdiv i32 %i.by, %i.bq
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.47, i32 noundef %i.bz) #35 ; 0 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %bb.b, %.lr.ph58.split.us
  %fputc.us = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  %i.cb = load i32, ptr %i.n, align 4, !tbaa !102
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph53.us, label %.loopexit.us

.lr.ph53.us:                                      ; preds = %.preheader.us, %.lr.ph53.us
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.lr.ph53.us ], [ 0, %.preheader.us ] ; 2 uses
  %i.cd = load ptr, ptr %i.bn, align 8, !tbaa !126
  %i.ce = load i64, ptr %i.bo, align 8
  %i.cf = mul nsw i64 %i.ce, %indvars.iv68
  %i.cg = getelementptr [2 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = getelementptr [2 x i8], ptr %i.cg, i64 %indvars.iv71.in
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !122
  %i.cj = sext i16 %i.ci to i64
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.ck, i64 %i.cj
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !38
  %i.cn = sext i8 %i.cm to i32
  %fputc36.us = tail call i32 @fputc(i32 %i.cn, ptr %0) ; 0 uses
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.co = load i32, ptr %i.n, align 4, !tbaa !102
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next69, %i.cp
  br i1 %i.cq, label %.lr.ph53.us, label %.loopexit.us, !llvm.loop !923

bb.c:                                             ; preds = %.loopexit.us
  %i.cr = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.loopexit.us
  %i.cs = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next72 = add nsw i64 %indvars.iv71.in, -1
  %2 = icmp sgt i64 %indvars.iv71.in, 0
  br i1 %2, label %.lr.ph58.split.us, label %._crit_edge59, !llvm.loop !924

.loopexit.us:                                     ; preds = %.lr.ph53.us, %.preheader.us
  %.not.us = icmp eq i32 %.035.in55.us, 1
  br i1 %.not.us, label %bb.d, label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.sroa.040.049 = phi ptr [ %i.do, %.lr.ph.split ], [ %i.aa, %.lr.ph ] ; 6 uses
  %i.ct = load i8, ptr %.sroa.040.049, align 8, !tbaa !38
  %i.cu = sext i8 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.040.049, i64 1
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = sext i8 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.040.049, i64 40
  %i.cz = load <2 x double>, ptr %i.cy, align 8, !tbaa !44
  %i.da = fmul <2 x double> %i.cz, splat (double 2.550000e+02)
  %i.db = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.da) ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 0
  %i.dd = fptoui double %i.dc to i32
  %i.de = extractelement <2 x double> %i.db, i64 1
  %i.df = fptoui double %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.040.049, i64 56
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !47
  %i.di = fmul double %i.dh, 2.550000e+02
  %i.dj = tail call double @llvm.round.f64(double %i.di)
  %i.dk = fptoui double %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.040.049, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !28
  %i.dn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.226, i32 noundef %i.cu, i32 noundef %i.cx, i32 noundef %i.dd, i32 noundef %i.df, i32 noundef %i.dk, ptr noundef %i.dm) #29 ; 0 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.040.049, i64 64 ; 2 uses
  %.not44 = icmp eq ptr %i.do, %i.ab
  br i1 %.not44, label %._crit_edge, label %.lr.ph.split

._crit_edge59:                                    ; preds = %bb.i, %bb.e, %._crit_edge
  ret void

.lr.ph58.split:                                   ; preds = %.lr.ph58, %bb.i
  %indvars.iv65.in = phi i64 [ %indvars.iv.next66, %bb.i ], [ %i.bp, %.lr.ph58 ] ; 4 uses
  %.035.in55 = phi i32 [ %i.ds, %bb.i ], [ %i.bl, %.lr.ph58 ]
  %i.dp = load i32, ptr %i.p, align 8, !tbaa !103 ; 3 uses
  %i.dq = sdiv i32 %i.dp, 100
  %i.dr = add nsw i32 %i.dq, 1
  %i.ds = trunc nuw nsw i64 %indvars.iv65.in to i32 ; 3 uses
  %i.dt = srem i32 %i.ds, %i.dr
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.f, label %.preheader46

bb.f:                                             ; preds = %.lr.ph58.split
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.dw = sub nsw i32 %i.dp, %i.ds
  %i.dx = mul nsw i32 %i.dw, 100
  %i.dy = sdiv i32 %i.dx, %i.dp
  %i.dz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.47, i32 noundef %i.dy) #35 ; 0 uses
  br label %.preheader46

.preheader46:                                     ; preds = %bb.f, %.lr.ph58.split
  %fputc = tail call i32 @fputc(i32 34, ptr %0)   ; 0 uses
  %i.ea = load i32, ptr %i.n, align 4, !tbaa !102
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph51, label %.loopexit47

.lr.ph51:                                         ; preds = %.preheader46, %.lr.ph51
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph51 ], [ 0, %.preheader46 ] ; 2 uses
  %i.ec = load ptr, ptr %i.bn, align 8, !tbaa !126
  %i.ed = load i64, ptr %i.bo, align 8
  %i.ee = mul nsw i64 %i.ed, %indvars.iv
  %i.ef = getelementptr [2 x i8], ptr %i.ec, i64 %i.ee
  %i.eg = getelementptr [2 x i8], ptr %i.ef, i64 %indvars.iv65.in
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !122
  %i.ei = sext i16 %i.eh to i64
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.ek = getelementptr inbounds nuw [64 x i8], ptr %i.ej, i64 %i.ei
  %i.el = load i16, ptr %i.ek, align 8            ; 2 uses
  %.sroa.043.0.extract.trunc = zext i16 %i.el to i32
  %.sroa.5.0.extract.shift = lshr i16 %i.el, 8
  %.sroa.5.0.extract.trunc = zext nneg i16 %.sroa.5.0.extract.shift to i32
  %sext = shl i32 %.sroa.043.0.extract.trunc, 24
  %i.em = ashr exact i32 %sext, 24
  %sext45 = shl nuw i32 %.sroa.5.0.extract.trunc, 24
  %i.en = ashr exact i32 %sext45, 24
  %i.eo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.229, i32 noundef %i.em, i32 noundef %i.en) #29 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ep = load i32, ptr %i.n, align 4, !tbaa !102
  %i.eq = sext i32 %i.ep to i64
  %i.er = icmp slt i64 %indvars.iv.next, %i.eq
  br i1 %i.er, label %.lr.ph51, label %.loopexit47, !llvm.loop !925

.loopexit47:                                      ; preds = %.lr.ph51, %.preheader46
  %.not = icmp eq i32 %.035.in55, 1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit47
  %i.es = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %.loopexit47
  %i.et = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next66 = add nsw i64 %indvars.iv65.in, -1
  %3 = icmp sgt i64 %indvars.iv65.in, 0
  br i1 %3, label %.lr.ph58.split, label %._crit_edge59, !llvm.loop !924
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL16write_xpm_headerP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_b(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i1 noundef zeroext %5) unnamed_addr #15 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.232, i64 10, i64 1, ptr %0) ; 0 uses
  %i.b = tail call i64 @fwrite(ptr nonnull @.str.233, i64 70, i64 1, ptr %0) ; 0 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !28
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.234, ptr noundef %i.c) #29 ; 0 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !28
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.235, ptr noundef %i.e) #29 ; 0 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !28
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.236, ptr noundef %i.g) #29 ; 0 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !28
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.237, ptr noundef %i.i) #29 ; 0 uses
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i64 @fwrite(ptr nonnull @.str.238, i64 26, i64 1, ptr %0) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.239, i64 28, i64 1, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #22

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 2
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.241, ptr noundef %1) #29 ; 0 uses
  %i.g = load float, ptr %2, align 4, !tbaa !116
  %i.h = fpext float %i.g to double
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.242, double noundef %i.h) #29 ; 0 uses
  %.not.peel = icmp eq i64 %i.d, 4
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.240, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.011 = phi i64 [ %i.s, %bb.d ], [ 1, %bb.b ]   ; 3 uses
  %i.k = urem i64 %.011, 80
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.m = tail call i64 @fwrite(ptr nonnull @.str.240, i64 3, i64 1, ptr %0) ; 0 uses
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.241, ptr noundef %1) #29 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.011
  %i.p = load float, ptr %i.o, align 4, !tbaa !116
  %i.q = fpext float %i.p to double
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.242, double noundef %i.q) #29 ; 0 uses
  %i.s = add nuw nsw i64 %.011, 1                 ; 2 uses
  %.not = icmp eq i64 %i.s, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !926

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z10write_xpm3P8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPfS9_PS9_fff5t_rgbSB_SB_Pi(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10, float noundef %11, float noundef %12, float noundef %13, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %14, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %15, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %16, ptr nofree noundef captures(none) %17) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = fcmp ugt float %13, %11
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 1 dereferenceable(61) @.str.1, i8 noundef zeroext 2)
  %i.b = fpext float %13 to double
  %i.c = fpext float %11 to double
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 1131, ptr noundef nonnull @.str.243, double noundef %i.b, double noundef %i.c) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.ae, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.232, i64 10, i64 1, ptr %0) ; 0 uses
  %i.f = tail call i64 @fwrite(ptr nonnull @.str.233, i64 70, i64 1, ptr %0) ; 0 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !28
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.234, ptr noundef %i.g) #29 ; 0 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !28
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.235, ptr noundef %i.i) #29 ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !28
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.236, ptr noundef %i.k) #29 ; 0 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !28
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.237, ptr noundef %i.m) #29 ; 0 uses
  %i.o = tail call i64 @fwrite(ptr nonnull @.str.239, i64 28, i64 1, ptr %0) ; 0 uses
  %i.p = load <2 x double>, ptr %14, align 8, !tbaa !44 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.3.0.copyload = load double, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !44 ; 2 uses
  %.sroa.356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.356.0.copyload = load double, ptr %.sroa.356.0..sroa_idx, align 8, !tbaa !44 ; 3 uses
  %i.q = load <2 x double>, ptr %15, align 8, !tbaa !44 ; 3 uses
  %i.r = load <2 x double>, ptr %16, align 8, !tbaa !44
  %.sroa.362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.362.0.copyload = load double, ptr %.sroa.362.0..sroa_idx, align 8, !tbaa !44
  %i.s = load i32, ptr %17, align 4, !tbaa !34    ; 4 uses
  %i.t = icmp sgt i32 %i.s, 7921
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.244, i32 noundef %i.s, i32 noundef 7921) #35 ; 0 uses
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.w = icmp slt i32 %i.s, 2
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.245, i32 noundef %i.s) #35 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi i32 [ 2, %bb.h ], [ 7921, %bb.f ]
  store i32 %.sink.i, ptr %17, align 4, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.g
  %i.z = fcmp oge float %12, %11
  %i.aa = fcmp olt float %12, %13
  %or.cond.i = and i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 1 dereferenceable(61) @.str.1, i8 noundef zeroext 2)
  %i.ab = fpext float %11 to double
  %i.ac = fpext float %12 to double
  %i.ad = fpext float %13 to double
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 672, ptr noundef nonnull @.str.246, double noundef %i.ab, double noundef %i.ac, double noundef %i.ad) #30
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %common.resume

bb.m:                                             ; preds = %bb.i
  %i.af = tail call i64 @fwrite(ptr nonnull @.str.224, i64 31, i64 1, ptr %0) ; 0 uses
  %i.ag = load i32, ptr %17, align 4, !tbaa !34   ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 90
  %i.ai = select i1 %i.ah, i32 1, i32 2
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.247, i32 noundef %6, i32 noundef %7, i32 noundef %i.ag, i32 noundef %i.ai) #29 ; 0 uses
  %i.ak = load i32, ptr %17, align 4, !tbaa !34   ; 3 uses
  %i.al = fsub float %12, %11                     ; 2 uses
  %i.am = fsub float %13, %11
  %i.an = fdiv float %i.al, %i.am                 ; 2 uses
  %i.ao = add nsw i32 %i.ak, -1                   ; 2 uses
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fmul float %i.an, %i.ap
  %i.ar = fptosi float %i.aq to i32
  %.sroa.speculated7.i.i = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 0)
  %.sroa.speculated.i.i = tail call noundef range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 %i.ao, i32 %.sroa.speculated7.i.i) ; 8 uses
  %i.as = sitofp i32 %.sroa.speculated.i.i to double ; 3 uses
  %i.at = xor i32 %.sroa.speculated.i.i, -1       ; 2 uses
  %i.au = add i32 %i.ak, %i.at
  %i.av = sitofp i32 %i.au to double              ; 3 uses
  %i.aw = icmp sgt i32 %.sroa.speculated.i.i, 0
  br i1 %i.aw, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.ax = fsub <2 x double> %i.q, %i.p
  %i.ay = fsub double %.sroa.356.0.copyload, %.sroa.3.0.copyload
  %i.az = insertelement <2 x double> poison, double %i.as, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.n

.preheader.loopexit.i:                            ; preds = %bb.p
  %.pre.i = load i32, ptr %17, align 4, !tbaa !34
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.m
  %i.bb = phi i32 [ %.pre.i, %.preheader.loopexit.i ], [ %i.ak, %bb.m ] ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, %.sroa.speculated.i.i
  br i1 %i.bc, label %.lr.ph88.i, label %_ZL14write_xpm_map3P8_IO_FILEiiPifff5t_rgbS2_S2_.exit

.lr.ph88.i:                                       ; preds = %.preheader.i
  %i.bd = fsub <2 x double> %i.r, %i.q
  %i.be = fsub double %.sroa.362.0.copyload, %.sroa.356.0.copyload
  %i.bf = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.q

bb.n:                                             ; preds = %bb.p, %.lr.ph.i
  %.086.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cr, %bb.p ] ; 6 uses
  %i.bh = uitofp nneg i32 %.086.i to double       ; 2 uses
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x double> %i.ax, %i.bj
  %i.bl = fdiv <2 x double> %i.bk, %i.ba
  %i.bm = fadd <2 x double> %i.p, %i.bl
  %i.bn = fmul double %i.ay, %i.bh
  %i.bo = fdiv double %i.bn, %i.as
  %i.bp = fadd double %.sroa.3.0.copyload, %i.bo
  %i.bq = urem i32 %.086.i, 89
  %i.br = udiv i32 %.086.i, 89
  %.zext.i = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZL6mapper, i64 %.zext.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !33
  %i.bu = sext i8 %i.bt to i32
  %i.bv = load i32, ptr %17, align 4, !tbaa !34
  %i.bw = icmp slt i32 %i.bv, 90
  br i1 %i.bw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.zext82.i = zext nneg i32 %i.br to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZL6mapper, i64 %.zext82.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !33
  %i.bz = sext i8 %i.by to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ca = phi i32 [ %i.bz, %bb.o ], [ 32, %bb.n ]
  %i.cb = fmul <2 x double> %i.bm, splat (double 2.550000e+02)
  %i.cc = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.cb) ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 0
  %i.ce = fptoui double %i.cd to i32
  %i.cf = extractelement <2 x double> %i.cc, i64 1
  %i.cg = fptoui double %i.cf to i32
  %i.ch = fmul double %i.bp, 2.550000e+02
  %i.ci = tail call double @llvm.round.f64(double %i.ch)
  %i.cj = fptoui double %i.ci to i32
  %i.ck = sub nuw nsw i32 %.sroa.speculated.i.i, %.086.i
  %20 = uitofp nneg i32 %i.ck to float
  %i.cl = uitofp nneg i32 %.086.i to float
  %i.cm = fmul float %12, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %20, float %11, float %i.cm)
  %i.co = fpext float %i.cn to double
  %i.cp = fdiv double %i.co, %i.as
  %i.cq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.248, i32 noundef %i.bu, i32 noundef %i.ca, i32 noundef %i.ce, i32 noundef %i.cg, i32 noundef %i.cj, double noundef %i.cp) #29 ; 0 uses
  %i.cr = add nuw nsw i32 %.086.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cr, %.sroa.speculated.i.i
  br i1 %exitcond.not.i, label %.preheader.loopexit.i, label %bb.n, !llvm.loop !928

bb.q:                                             ; preds = %bb.s, %.lr.ph88.i
  %i.cs = phi i32 [ %i.bb, %.lr.ph88.i ], [ %i.eg, %bb.s ] ; 2 uses
  %.187.i = phi i32 [ 0, %.lr.ph88.i ], [ %i.ef, %bb.s ] ; 5 uses
  %i.ct = uitofp nneg i32 %.187.i to double       ; 2 uses
  %i.cu = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x double> %i.bd, %i.cv
  %i.cx = fdiv <2 x double> %i.cw, %i.bg
  %i.cy = fadd <2 x double> %i.q, %i.cx
  %i.cz = fmul double %i.be, %i.ct
  %i.da = fdiv double %i.cz, %i.av
  %i.db = fadd double %.sroa.356.0.copyload, %i.da
  %i.dc = add nsw i32 %.187.i, %.sroa.speculated.i.i ; 2 uses
  %i.dd = srem i32 %i.dc, 89
  %i.de = sdiv i32 %i.dc, 89
  %.sext.i = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %.sext.i
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !33
  %i.dh = sext i8 %i.dg to i32
  %i.di = icmp slt i32 %i.cs, 90
  br i1 %i.di, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sext85.i = sext i32 %i.de to i64
  %i.dj = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %.sext85.i
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !33
  %i.dl = sext i8 %i.dk to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dm = phi i32 [ %i.dl, %bb.r ], [ 32, %bb.q ]
  %i.dn = fmul <2 x double> %i.cy, splat (double 2.550000e+02)
  %i.do = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.dn) ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 0
  %i.dq = fptoui double %i.dp to i32
  %i.dr = extractelement <2 x double> %i.do, i64 1
  %i.ds = fptoui double %i.dr to i32
  %i.dt = fmul double %i.db, 2.550000e+02
  %i.du = tail call double @llvm.round.f64(double %i.dt)
  %i.dv = fptoui double %i.du to i32
  %i.dw = add i32 %i.cs, %i.at
  %i.dx = sub i32 %i.dw, %.187.i
  %i.dy = sitofp i32 %i.dx to float
  %i.dz = uitofp nneg i32 %.187.i to float
  %i.ea = fmul float %13, %i.dz
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dy, float %12, float %i.ea)
  %i.ec = fpext float %i.eb to double
  %i.ed = fdiv double %i.ec, %i.av
  %i.ee = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.248, i32 noundef %i.dh, i32 noundef %i.dm, i32 noundef %i.dq, i32 noundef %i.ds, i32 noundef %i.dv, double noundef %i.ed) #29 ; 0 uses
  %i.ef = add nuw nsw i32 %.187.i, 1              ; 2 uses
  %i.eg = load i32, ptr %17, align 4, !tbaa !34   ; 2 uses
  %i.eh = sub nsw i32 %i.eg, %.sroa.speculated.i.i
  %i.ei = icmp slt i32 %i.ef, %i.eh
  br i1 %i.ei, label %bb.q, label %_ZL14write_xpm_map3P8_IO_FILEiiPifff5t_rgbS2_S2_.exit, !llvm.loop !929

_ZL14write_xpm_map3P8_IO_FILEiiPifff5t_rgbS2_S2_.exit: ; preds = %bb.s, %.preheader.i
  %i.ej = sext i32 %6 to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %8, i64 %i.ej
  %i.el = and i32 %1, 1
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.em
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.207, ptr %8, ptr %i.en)
  %i.eo = sext i32 %7 to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %9, i64 %i.eo
  %i.eq = lshr i32 %1, 1
  %.lobit = and i32 %i.eq, 1
  %i.er = zext nneg i32 %.lobit to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.er
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.208, ptr %9, ptr %i.es)
  %i.et = load i32, ptr %17, align 4, !tbaa !34   ; 2 uses
  %i.eu = add nsw i32 %i.et, -1                   ; 5 uses
  %i.ev = sitofp i32 %i.eu to float
  %i.ew = fmul float %i.an, %i.ev
  %i.ex = fptosi float %i.ew to i32
  %.sroa.speculated7.i.i37 = tail call i32 @llvm.smax.i32(i32 %i.ex, i32 0)
  %.sroa.speculated.i.i38 = tail call noundef range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 %i.eu, i32 %.sroa.speculated7.i.i37) ; 4 uses
  %i.ey = sub nsw i32 %i.eu, %.sroa.speculated.i.i38
  %i.ez = uitofp nneg i32 %i.ey to float
  %i.fa = fsub float %13, %12
  %i.fb = fdiv float %i.ez, %i.fa                 ; 2 uses
  %i.fc = sitofp i32 %.sroa.speculated.i.i38 to float
  %i.fd = fdiv float %i.fc, %i.al                 ; 2 uses
  %.05465.i = add i32 %7, -1                      ; 2 uses
  %i.fe = icmp sgt i32 %7, 0
  br i1 %i.fe, label %.lr.ph69.i, label %_ZL15write_xpm_data3P8_IO_FILEiiPPffffi.exit

.lr.ph69.i:                                       ; preds = %_ZL14write_xpm_map3P8_IO_FILEiiPifff5t_rgbS2_S2_.exit
  %i.ff = udiv i32 %7, 100
  %i.fg = add nuw nsw i32 %i.ff, 1                ; 3 uses
  %i.fh = icmp sgt i32 %6, 0
  br i1 %i.fh, label %.lr.ph69.split.us.i, label %.lr.ph69.split.i

.lr.ph69.split.us.i:                              ; preds = %.lr.ph69.i
  %i.fi = icmp slt i32 %i.et, 90
  %i.fj = zext nneg i32 %.05465.i to i64          ; 2 uses
  %wide.trip.count86.i = zext nneg i32 %6 to i64  ; 2 uses
  br i1 %i.fi, label %.lr.ph69.split.us.split.us.i, label %.lr.ph69.split.us.split.i

.lr.ph69.split.us.split.us.i:                     ; preds = %.lr.ph69.split.us.i, %bb.w
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %bb.w ], [ %i.fj, %.lr.ph69.split.us.i ] ; 4 uses
  %.054.in66.us.us.i = phi i32 [ %i.fk, %bb.w ], [ %7, %.lr.ph69.split.us.i ]
  %i.fk = trunc nuw nsw i64 %indvars.iv88.i to i32 ; 3 uses
  %i.fl = srem i32 %i.fk, %i.fg
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.t, label %.lr.ph.us.us.i

bb.t:                                             ; preds = %.lr.ph69.split.us.split.us.i
  %i.fn = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.fo = sub i32 %7, %i.fk
  %i.fp = mul i32 %i.fo, 100
  %i.fq = sdiv i32 %i.fp, %7
  %i.fr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fn, ptr noundef nonnull @.str.47, i32 noundef %i.fq) #35 ; 0 uses
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %bb.t, %.lr.ph69.split.us.split.us.i
  %fputc.us.us.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %._crit_edge.split.us.us.us.i
  %i.fs = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.split.us.us.us.i
  %i.ft = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next89.i = add nsw i64 %indvars.iv88.i, -1
  %i.fu = icmp sgt i64 %indvars.iv88.i, 0
  br i1 %i.fu, label %.lr.ph69.split.us.split.us.i, label %_ZL15write_xpm_data3P8_IO_FILEiiPPffffi.exit, !llvm.loop !930

bb.x:                                             ; preds = %bb.ab, %.lr.ph.us.us.i
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i, %bb.ab ], [ 0, %.lr.ph.us.us.i ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv83.i
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !9
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv88.i
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !116 ; 4 uses
  %i.fz = fcmp ult float %i.fy, %12
  br i1 %i.fz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ga = fsub float %i.fy, %12
  %i.gb = fmul float %i.fb, %i.ga
  %i.gc = tail call float @llvm.rint.f32(float %i.gb)
  %i.gd = fptosi float %i.gc to i32
  %i.ge = add nsw i32 %.sroa.speculated.i.i38, %i.gd
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.gf = fcmp ult float %i.fy, %11
  br i1 %i.gf, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gg = fsub float %i.fy, %11
  %i.gh = fmul float %i.fd, %i.gg
  %i.gi = tail call float @llvm.rint.f32(float %i.gh)
  %i.gj = fptosi float %i.gi to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.055.us.us.us.i = phi i32 [ %i.ge, %bb.y ], [ %i.gj, %bb.aa ], [ 0, %bb.z ]
  %spec.store.select.us.us.us.i = tail call i32 @llvm.smax.i32(i32 %.055.us.us.us.i, i32 0)
  %spec.select.us.us.us.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.us.us.us.i, i32 %i.eu)
  %i.gk = sext i32 %spec.select.us.us.us.i to i64
  %i.gl = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !33
  %i.gn = sext i8 %i.gm to i32
  %fputc61.us.us.us.i = tail call i32 @fputc(i32 %i.gn, ptr %0) ; 0 uses
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1 ; 2 uses
  %exitcond87.not.i = icmp eq i64 %indvars.iv.next84.i, %wide.trip.count86.i
  br i1 %exitcond87.not.i, label %._crit_edge.split.us.us.us.i, label %bb.x, !llvm.loop !931

._crit_edge.split.us.us.us.i:                     ; preds = %bb.ab
  %.not.us.us.i = icmp eq i32 %.054.in66.us.us.i, 1
  br i1 %.not.us.us.i, label %bb.v, label %bb.u

.lr.ph69.split.us.split.i:                        ; preds = %.lr.ph69.split.us.i, %bb.ak
  %indvars.iv80.i = phi i64 [ %indvars.iv.next81.i, %bb.ak ], [ %i.fj, %.lr.ph69.split.us.i ] ; 4 uses
  %.054.in66.us.i = phi i32 [ %i.go, %bb.ak ], [ %7, %.lr.ph69.split.us.i ]
  %i.go = trunc nuw nsw i64 %indvars.iv80.i to i32 ; 3 uses
  %i.gp = srem i32 %i.go, %i.fg
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.ac, label %.lr.ph.us.i

bb.ac:                                            ; preds = %.lr.ph69.split.us.split.i
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.gs = sub i32 %7, %i.go
  %i.gt = mul i32 %i.gs, 100
  %i.gu = sdiv i32 %i.gt, %7
  %i.gv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str.47, i32 noundef %i.gu) #35 ; 0 uses
end_hunk_2
