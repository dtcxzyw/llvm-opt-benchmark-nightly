Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_container?download=true
inline.NumInlined: 11203
inline.NumDeleted: 3081
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEEPKvNS_8internal11any_requestERKS1_S8_:bb.a
bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.sroa.05.06.i.i.i = phi ptr [ %.sroa.09.023.i.i, %.lr.ph.i.i.i ], [ %i.af, %bb.j ] ; 3 uses
  %i.af = load ptr, ptr %.sroa.05.06.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !350
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !350
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.06.i.i.i) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.05.06.i.i.i, i64 noundef 24) #30
  %i.ai = icmp eq ptr %i.af, %i.e
  br i1 %i.ai, label %_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit, label %bb.j, !llvm.loop !46

bb.k:                                             ; preds = %.critedge.i.i
  %i.aj = tail call ptr @_ZNSt7__cxx114listIiSaIiEE6insertISt20_List_const_iteratorIiEvEESt14_List_iteratorIiES5_T_S8_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr nonnull align 8 dereferenceable(24) %i.e, ptr %.sroa.015.0.lcssa.i.i, ptr nonnull align 8 dereferenceable(24) %2) ; 0 uses
  br label %_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit

bb.l:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !350
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !350
  %.not.i16 = icmp eq i64 %i.al, %i.an
  br i1 %.not.i16, label %.preheader.i, label %_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit

.preheader.i:                                     ; preds = %bb.l, %bb.n
  %.sroa.010.0.in.i = phi ptr [ %.sroa.010.0.i, %bb.n ], [ %i.e, %bb.l ]
  %.sroa.0.0.in.i = phi ptr [ %.sroa.0.0.i.fr, %bb.n ], [ %2, %bb.l ]
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !191
  %.sroa.0.0.i.fr = freeze ptr %.sroa.0.0.i       ; 3 uses
  %.sroa.010.0.i = load ptr, ptr %.sroa.010.0.in.i, align 8, !tbaa !191 ; 3 uses
  %i.ao = icmp eq ptr %.sroa.010.0.i, %i.e
  %i.ap = icmp eq ptr %.sroa.0.0.i.fr, %2         ; 2 uses
  br i1 %i.ao, label %_ZSteqIiSaIiEEbRKNSt7__cxx114listIT_T0_EES7_.exit, label %bb.m

bb.m:                                             ; preds = %.preheader.i
  br i1 %i.ap, label %_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.fr, i64 16
  %i.at = load i32, ptr %i.as, align 4, !tbaa !134
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %.preheader.i, label %_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit, !llvm.loop !1735

_ZSteqIiSaIiEEbRKNSt7__cxx114listIT_T0_EES7_.exit: ; preds = %.preheader.i
  %spec.select = select i1 %i.ap, ptr %2, ptr null
  br label %_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit

bb.o:                                             ; preds = %bb.a
  tail call void @_ZN4entt9basic_anyILm16ELm8EE10initializeINSt7__cxx114listIiSaIiEEEJRKS6_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(37) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit: ; preds = %bb.n, %bb.m, %bb.j, %_ZSteqIiSaIiEEbRKNSt7__cxx114listIT_T0_EES7_.exit, %bb.l, %.critedge.i.i, %bb.g, %_ZNSt7__cxx114listIiSaIiEE5clearEv.exit.i.i, %bb.c, %bb.b, %bb.k, %bb.f, %bb.d, %bb.o, %bb.a
  %i.av = phi ptr [ null, %bb.o ], [ null, %bb.a ], [ @_ZZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance, %bb.d ], [ %spec.select, %_ZSteqIiSaIiEEbRKNSt7__cxx114listIT_T0_EES7_.exit ], [ null, %bb.l ], [ %2, %bb.j ], [ %2, %.critedge.i.i ], [ %2, %bb.g ], [ %2, %_ZNSt7__cxx114listIiSaIiEE5clearEv.exit.i.i ], [ @_ZZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance, %bb.b ], [ %2, %bb.k ], [ %2, %bb.f ], [ null, %bb.m ], [ null, %bb.n ]
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt9basic_anyILm16ELm8EE10initializeINSt7__cxx114listIiSaIiEEEJRKS6_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEEPKvNS_8internal11any_requestERKS1_S8_, ptr %i.a, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -2090318345, ptr %i.b, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEEvRKS1_, ptr %i.c, align 8, !tbaa !110
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.d, align 4, !tbaa !111
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !190
  store ptr %i.e, ptr %i.e, align 8, !tbaa !191
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.g, align 8, !tbaa !193
  %i.h = load ptr, ptr %1, align 8, !tbaa !191    ; 2 uses
  %i.i = icmp eq ptr %i.h, %1
  br i1 %i.i, label %_ZNSt7__cxx114listIiSaIiEEC2ERKS2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.sroa.01.04.i.i = phi ptr [ %i.p, %.noexc.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.j = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc.i unwind label %bb.b   ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i32, ptr %i.k, align 4, !tbaa !134
  store i32 %i.m, ptr %i.l, align 4, !tbaa !134
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e) #27
  %i.n = load i64, ptr %i.g, align 8, !tbaa !350
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.g, align 8, !tbaa !350
  %i.p = load ptr, ptr %.sroa.01.04.i.i, align 8, !tbaa !191 ; 2 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZNSt7__cxx114listIiSaIiEEC2ERKS2_.exit, label %.lr.ph.i.i, !llvm.loop !47

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !191  ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.s, %i.e
  br i1 %.not8.i.i.i, label %.body, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.s, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.09.i.i.i, align 8, !tbaa !191 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #30
  %.not.i.i.i = icmp eq ptr %i.t, %i.e
  br i1 %.not.i.i.i, label %.body, label %.lr.ph.i.i.i, !llvm.loop !10

_ZNSt7__cxx114listIiSaIiEEC2ERKS2_.exit:          ; preds = %.noexc.i, %bb.a
  store ptr %i.e, ptr %0, align 8, !tbaa !98
  ret void

.body:                                            ; preds = %.lr.ph.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 24) #30
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2INSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexINSt7__cxx114listIiSaIiEEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexINSt7__cxx114listIiSaIiEEEE5valueEv.exit, !prof !295

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexINSt7__cxx114listIiSaIiEEEE5valueEvE5value) #27
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexINSt7__cxx114listIiSaIiEEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !134 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !134
  store i32 %i.d, ptr @_ZZN4entt10type_indexINSt7__cxx114listIiSaIiEEEE5valueEvE5value, align 4, !tbaa !134
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexINSt7__cxx114listIiSaIiEEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexINSt7__cxx114listIiSaIiEEEE5valueEvE5value) #27
  br label %_ZN4entt10type_indexINSt7__cxx114listIiSaIiEEEE5valueEv.exit

_ZN4entt10type_indexINSt7__cxx114listIiSaIiEEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexINSt7__cxx114listIiSaIiEEEE5valueEvE5value, align 4, !tbaa !134
  store i32 %i.g, ptr %0, align 8, !tbaa !296
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -2090318345, ptr %i.h, align 4, !tbaa !176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 14, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.234, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt7__cxx114listIiSaIiEE6insertISt20_List_const_iteratorIiEvEESt14_List_iteratorIiES5_T_S8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::list", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !190
  store ptr %4, ptr %4, align 8, !tbaa !191
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !193
  %i.c = icmp eq ptr %2, %3
  br i1 %i.c, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.sroa.01.04.i.i = phi ptr [ %i.j, %.noexc.i ], [ %2, %bb.a ] ; 2 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc.i unwind label %bb.b   ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load i32, ptr %i.e, align 4, !tbaa !134
  store i32 %i.g, ptr %i.f, align 4, !tbaa !134
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  %i.h = load i64, ptr %i.b, align 8, !tbaa !350
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.b, align 8, !tbaa !350
  %i.j = load ptr, ptr %.sroa.01.04.i.i, align 8, !tbaa !191 ; 2 uses
  %i.k = icmp eq ptr %i.j, %3
  br i1 %i.k, label %_ZNSt7__cxx114listIiSaIiEEC2ISt20_List_const_iteratorIiEvEET_S6_RKS1_.exit, label %.lr.ph.i.i, !llvm.loop !47

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !191    ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.m, %4
  br i1 %.not8.i.i.i, label %.body, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.n = load ptr, ptr %.09.i.i.i, align 8, !tbaa !191 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #30
  %.not.i.i.i = icmp eq ptr %i.n, %4
  br i1 %.not.i.i.i, label %.body, label %.lr.ph.i.i.i, !llvm.loop !10

_ZNSt7__cxx114listIiSaIiEEC2ISt20_List_const_iteratorIiEvEET_S6_RKS1_.exit: ; preds = %.noexc.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !191   ; 4 uses
  %i.o = icmp eq ptr %.pre, %4
  br i1 %i.o, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_.exit

.body:                                            ; preds = %.lr.ph.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.l

_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_.exit: ; preds = %_ZNSt7__cxx114listIiSaIiEEC2ISt20_List_const_iteratorIiEvEET_S6_RKS1_.exit
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  %i.p = load i64, ptr %i.b, align 8, !tbaa !350
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !350
  %i.s = add i64 %i.r, %i.p
  store i64 %i.s, ptr %i.q, align 8, !tbaa !350
  store i64 0, ptr %i.b, align 8, !tbaa !350
  %.pre9 = load ptr, ptr %4, align 8, !tbaa !191  ; 2 uses
  %.not8.i.i = icmp eq ptr %.pre9, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_.exit, %.lr.ph.i.i7
  %.09.i.i = phi ptr [ %i.t, %.lr.ph.i.i7 ], [ %.pre9, %_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_.exit ] ; 2 uses
  %i.t = load ptr, ptr %.09.i.i, align 8, !tbaa !191 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #30
  %.not.i.i = icmp eq ptr %i.t, %4
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %.lr.ph.i.i7, !llvm.loop !10

_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit:       ; preds = %.lr.ph.i.i7, %bb.a, %_ZNSt7__cxx114listIiSaIiEEC2ISt20_List_const_iteratorIiEvEET_S6_RKS1_.exit, %_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_.exit
  %.sroa.06.019 = phi ptr [ %1, %bb.a ], [ %.pre, %_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_.exit ], [ %1, %_ZNSt7__cxx114listIiSaIiEEC2ISt20_List_const_iteratorIiEvEET_S6_RKS1_.exit ], [ %.pre, %.lr.ph.i.i7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret ptr %.sroa.06.019
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEEvRKS1_(ptr noundef nonnull align 8 dereferenceable(37) %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !111
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %0, align 8
  %i.e = select i1 %i.c, ptr %0, ptr %i.d         ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !191  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.09.i.i, align 8, !tbaa !191 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #30
  %.not.i.i = icmp eq ptr %i.h, %i.e
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !10

_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit:       ; preds = %.lr.ph.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 24) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !295

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #27
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forINSt7__cxx114listIiSaIiEEEEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #27
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !173
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !176  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !306
  %i.k = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 4294967295
  %i.q = and i64 %i.p, %i.h
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.07.in.i.i = phi ptr [ %i.r, %bb.d ], [ %i.u, %bb.f ]
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !134
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !30

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !309  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !309
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, %bb.g
  %i.ae = phi ptr [ %i.z, %bb.g ], [ %.pre, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.u, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.1.i.i, %i.ae
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !137
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit ]
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal14setup_node_forINSt7__cxx114listIiSaIiEEEEEDav(ptr dead_on_unwind noalias writable sret(%"struct.entt::internal::meta_type_node") align 8 %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit, !prof !295

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance) #27
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2INSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance) #27
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance) #27
  br label %_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, !prof !295

bb.d:                                             ; preds = %_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance) #27
  %.not.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i1, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2INSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance) #27
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance) #27
  br label %_ZN4entt8internal14meta_type_nodeD2Ev.exit

_ZN4entt8internal14meta_type_nodeD2Ev.exit:       ; preds = %_ZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !176
  store ptr @_ZZN4entt7type_idINSt7__cxx114listIiSaIiEEEEERKNS_9type_infoEvE8instance, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1152, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 24, ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4entt8internal14setup_node_forINSt7__cxx114listIiSaIiEEEEEDavENUlRKNS_8meta_ctxEE_8__invokeES8_, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZZN4entt8internal14setup_node_forINSt7__cxx114listIiSaIiEEEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeES8_S9_SB_, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.14.0..sroa_idx, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8internal14setup_node_forINSt7__cxx114listIiSaIiEEEEEDavENUlRKNS_8meta_ctxEE_8__invokeES8_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #9 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEEPKvNS_8internal11any_requestERKS1_S8_, ptr %i.a, align 8, !tbaa !108, !alias.scope !1739
  store i32 -2090318345, ptr %i.c, align 8, !tbaa !109, !alias.scope !1739
  store ptr @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEEvRKS1_, ptr %i.b, align 8, !tbaa !110, !alias.scope !1739
  store i8 1, ptr %i.d, align 4, !tbaa !111, !alias.scope !1739
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !1739, !inline_history !1738 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !190, !noalias !1739
  store ptr %i.e, ptr %i.e, align 8, !tbaa !191, !noalias !1739
end_hunk_0
