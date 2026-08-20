inline.NumInlined: 14549
inline.NumDeleted: 4331
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a

_ZSt8_DestroyIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.thread: ; preds = %.body
  call void @_ZN2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.s) #28
  br label %_ZNSt12_Vector_baseI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit47

bb.m:                                             ; preds = %_ZNSt12_Vector_baseI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit47
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit: ; preds = %.body
  %i.cq = mul nuw nsw i64 %i.m, 48
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.cq) #29
  br label %_ZNSt12_Vector_baseI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit47

_ZNSt12_Vector_baseI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit47: ; preds = %_ZSt8_DestroyIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit, %_ZSt8_DestroyIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #31
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.cp

bb.o:                                             ; preds = %bb.m
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #32
  unreachable

bb.p:                                             ; preds = %_ZNSt12_Vector_baseI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit47
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE17_M_realloc_insertIJRS2_RK19cmListFileBacktraceEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3140 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !3958   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.408) #31
  unreachable

_ZNKSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI2BTIP17cmGeneratorTargetESaIS3_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30
  br label %_ZNSt12_Vector_baseI2BTIP17cmGeneratorTargetESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI2BTIP17cmGeneratorTargetESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !579
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !425  ; 2 uses
  %i.v = load <2 x ptr>, ptr %3, align 8, !tbaa !426
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseI2BTIP17cmGeneratorTargetESaIS3_EE11_M_allocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.w, align 4, !tbaa !427
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !427
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZNSt12_Vector_baseI2BTIP17cmGeneratorTargetESaIS3_EE11_M_allocateEm.exit
  store ptr %i.s, ptr %i.r, align 8, !tbaa !3144
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store <2 x ptr> %i.v, ptr %i.ab, align 8, !tbaa !426
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.q, %bb.g ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3962)
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ad = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !426, !alias.scope !3962, !noalias !3959
  store <2 x ptr> %i.ad, ptr %.012.i.i.i, align 8, !tbaa !426, !alias.scope !3959, !noalias !3962
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !425, !alias.scope !3962, !noalias !3959
  store ptr null, ptr %i.af, align 8, !tbaa !425, !alias.scope !3962, !noalias !3959
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !425, !alias.scope !3959, !noalias !3962
  store ptr null, ptr %i.ac, align 8, !tbaa !504, !alias.scope !3962, !noalias !3959
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i27, label %_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !3964

_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.g ], [ %i.ai, %.lr.ph.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.aq, %.lr.ph.i.i.i29 ], [ %i.aj, %_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  %.0911.i.i.i31 = phi ptr [ %i.ap, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3968)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.al = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !426, !alias.scope !3968, !noalias !3965
  store <2 x ptr> %i.al, ptr %.012.i.i.i30, align 8, !tbaa !426, !alias.scope !3965, !noalias !3968
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !425, !alias.scope !3968, !noalias !3965
  store ptr null, ptr %i.an, align 8, !tbaa !425, !alias.scope !3968, !noalias !3965
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !425, !alias.scope !3965, !noalias !3968
  store ptr null, ptr %i.ak, align 8, !tbaa !504, !alias.scope !3968, !noalias !3965
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.ap, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !3964

_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.aj, %_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.aq, %.lr.ph.i.i.i29 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseI2BTIP17cmGeneratorTargetESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !3143
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.au) #29
  br label %_ZNSt12_Vector_baseI2BTIP17cmGeneratorTargetESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseI2BTIP17cmGeneratorTargetESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorI2BTIP17cmGeneratorTargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !3958
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !3140
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.l
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !3143
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_range_insertISt23_Rb_tree_const_iteratorIS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not103 = icmp eq ptr %2, %3
  br i1 %.not103, label %_ZSt4copyISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEET0_T_SG_SF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi i64 [ %i.b, %.lr.ph.i ], [ 0, %bb.a ] ; 4 uses
  %.sroa.02.05.i = phi ptr [ %i.a, %.lr.ph.i ], [ %2, %bb.a ]
  %i.a = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i) #33 ; 2 uses
  %i.b = add nuw nsw i64 %.06.i, 1                ; 5 uses
  %.not.i = icmp eq ptr %i.a, %3
  br i1 %.not.i, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !3970

_ZSt10__distanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit: ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 13 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 5
  %.not.not = icmp ugt i64 %i.j, %.06.i
  br i1 %.not.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.h, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 5                   ; 5 uses
  %i.n = icmp ugt i64 %i.m, %i.b
  br i1 %i.n, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.o = xor i64 %.06.i, -1
  %.idx = shl nsw i64 %i.o, 5
  %i.p = getelementptr inbounds i8, ptr %i.f, i64 %.idx ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.f, %bb.c ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %bb.c ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.q, ptr %.013.i.i.i.i.i, align 8, !tbaa !21
  %i.r = load ptr, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27   ; 2 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.r, ptr %.013.i.i.i.i.i, align 8, !tbaa !24
  %i.y = load i64, ptr %i.s, align 8, !tbaa !29
  store i64 %i.y, ptr %i.q, align 8, !tbaa !29
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !27
  store ptr %i.s, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !24
  store i64 0, ptr %i.z, align 8, !tbaa !27
  store i8 0, ptr %i.s, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3971

_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.b
  store ptr %i.af, ptr %i.e, align 8, !tbaa !17
  %i.ag = ptrtoint ptr %i.p to i64
  %i.ah = sub i64 %i.ag, %i.k
  %i.ai = ashr exact i64 %i.ah, 5                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i51, label %.lr.ph.i.i.i.i.i52.preheader

.lr.ph.i.i.i.i.i51:                               ; preds = %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.ai, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.f, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.p, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 7 uses
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24 ; 6 uses
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !24 ; 6 uses
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq                ; 2 uses
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i51
  br i1 %i.ar, label %bb.e, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i51
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !27 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %.not21.i.i.i.i.i.i = icmp eq ptr %.078.i.i.i.i.i, %.069.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, label %bb.f, !prof !409

bb.f:                                             ; preds = %bb.e
  switch i64 %i.at, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !29
  store i8 %i.av, ptr %i.am, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ap, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !27 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !27
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !29
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !24
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !27
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !27
  %i.bd = load i64, ptr %i.aq, align 8, !tbaa !29
  store i64 %i.bd, ptr %i.an, align 8, !tbaa !29
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.be = load i64, ptr %i.an, align 8, !tbaa !29
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !24
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !27
  %i.bh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !27
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !29
  store i64 %i.bi, ptr %i.an, align 8, !tbaa !29
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !24
  store i64 %i.be, ptr %i.aq, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i, %bb.e
  %i.bj = phi ptr [ %i.am, %bb.i ], [ %i.aq, %bb.j ], [ %i.ap, %bb.e ], [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ]
  %i.bk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.bk, align 8, !tbaa !27
  store i8 0, ptr %i.bj, align 1, !tbaa !29
  %i.bl = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bm = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i51, label %.lr.ph.i.i.i.i.i52.preheader, !llvm.loop !3667

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  br label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i52
  %.08.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i52 ], [ %1, %.lr.ph.i.i.i.i.i52.preheader ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i52 ], [ %2, %.lr.ph.i.i.i.i.i52.preheader ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.bp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i53 = icmp eq ptr %i.bp, %3
  br i1 %.not.i.i.i.i.i53, label %_ZSt4copyISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEET0_T_SG_SF_.exit, label %.lr.ph.i.i.i.i.i52, !llvm.loop !3972

bb.k:                                             ; preds = %bb.b
  %i.bq = icmp sgt i64 %i.m, 0
  br i1 %i.bq, label %.preheader.i.a, label %.preheader7.i

.preheader7.i:                                    ; preds = %bb.k
  %.not9.i = icmp eq ptr %i.f, %1
  br i1 %.not9.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i55

.preheader.i.a:                                   ; preds = %bb.k, %.preheader.i.a
  %.012.i = phi i64 [ %5, %.preheader.i.a ], [ %i.m, %bb.k ]
  %4 = phi ptr [ %6, %.preheader.i.a ], [ %2, %bb.k ]
  %5 = add nsw i64 %.012.i, -1                    ; 2 uses
  %6 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %4) #33 ; 2 uses
  %.not6.i = icmp eq i64 %5, 0
  br i1 %.not6.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.preheader.i.a, !llvm.loop !3973

.lr.ph.i55:                                       ; preds = %.preheader7.i, %.lr.ph.i55
  %.110.i = phi i64 [ %i.bs, %.lr.ph.i55 ], [ %i.m, %.preheader7.i ]
  %i.br = phi ptr [ %i.bt, %.lr.ph.i55 ], [ %2, %.preheader7.i ]
  %i.bs = add nsw i64 %.110.i, 1                  ; 2 uses
  %i.bt = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %i.br) #33 ; 2 uses
  %.not.i56 = icmp eq i64 %i.bs, 0
  br i1 %.not.i56, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i55, !llvm.loop !3974

_ZSt9__advanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph.i55, %.preheader.i.a, %.preheader7.i
  %.sroa.0.0 = phi ptr [ %6, %.preheader.i.a ], [ %2, %.preheader7.i ], [ %i.bt, %.lr.ph.i55 ] ; 3 uses
  %i.bu = tail call noundef ptr @_ZSt16__do_uninit_copyISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_ET0_T_SA_S9_(ptr %.sroa.0.0, ptr %3, ptr noundef %i.f) ; 0 uses
  %i.bv = sub nuw i64 %i.b, %i.m
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.bv ; 3 uses
  store ptr %i.bx, ptr %i.e, align 8, !tbaa !17
  %.not11.i.i.i.i.i57 = icmp eq ptr %1, %i.f
  br i1 %.not11.i.i.i.i.i57, label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit65, label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i62
  %.013.i.i.i.i.i59 = phi ptr [ %i.cl, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i62 ], [ %i.bx, %_ZSt9__advanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i60 = phi ptr [ %i.ck, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i62 ], [ %1, %_ZSt9__advanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i59, i64 16 ; 3 uses
  store ptr %i.by, ptr %.013.i.i.i.i.i59, align 8, !tbaa !21
  %i.bz = load ptr, ptr %.sroa.08.012.i.i.i.i.i60, align 8, !tbaa !24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i60, i64 16 ; 5 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i61

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i58
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i60, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !27 ; 2 uses
  %i.ce = icmp ult i64 %i.cd, 16
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = add nuw nsw i64 %i.cd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %i.ca, i64 %i.cf, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i61: ; preds = %.lr.ph.i.i.i.i.i58
  store ptr %i.bz, ptr %.013.i.i.i.i.i59, align 8, !tbaa !24
  %i.cg = load i64, ptr %i.ca, align 8, !tbaa !29
  store i64 %i.cg, ptr %i.by, align 8, !tbaa !29
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i62

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i62: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i61, %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i60, i64 8 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i59, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !27
  store ptr %i.ca, ptr %.sroa.08.012.i.i.i.i.i60, align 8, !tbaa !24
  store i64 0, ptr %i.ch, align 8, !tbaa !27
  store i8 0, ptr %i.ca, align 8, !tbaa !29
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i60, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i59, i64 32
  %.not.i.i.i.i.i63 = icmp eq ptr %i.ck, %i.f
  br i1 %.not.i.i.i.i.i63, label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit65.loopexit, label %.lr.ph.i.i.i.i.i58, !llvm.loop !3971

_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit65.loopexit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i62
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit65

_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit65: ; preds = %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit65.loopexit, %_ZSt9__advanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.cm = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit65.loopexit ], [ %i.bx, %_ZSt9__advanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEElEvRT_T0_St26bidirectional_iterator_tag.exit ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.l
  store ptr %i.cn, ptr %i.e, align 8, !tbaa !17
  %.not6.i.i.i.i.i66 = icmp eq ptr %2, %.sroa.0.0
  br i1 %.not6.i.i.i.i.i66, label %_ZSt4copyISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEET0_T_SG_SF_.exit, label %.lr.ph.i.i.i.i.i67

.lr.ph.i.i.i.i.i67:                               ; preds = %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit65, %.lr.ph.i.i.i.i.i67
  %.08.i.i.i.i.i68 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i67 ], [ %1, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit65 ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i69 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i67 ], [ %2, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit65 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i69, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i.i.i.i68, ptr noundef nonnull align 8 dereferenceable(32) %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68, i64 32
  %i.cq = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i69) #33 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.cq, %.sroa.0.0
  br i1 %.not.i.i.i.i.i70, label %_ZSt4copyISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEET0_T_SG_SF_.exit, label %.lr.ph.i.i.i.i.i67, !llvm.loop !3972

bb.m:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !38    ; 7 uses
  %i.cs = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.ct = sub i64 %i.h, %i.cs
  %i.cu = ashr exact i64 %i.ct, 5                 ; 4 uses
  %i.cv = sub nsw i64 288230376151711743, %i.cu
  %.not = icmp ugt i64 %i.cv, %.06.i
  br i1 %.not, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.443) #31
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.m
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.b)
  %i.cw = add nsw i64 %.sroa.speculated.i, %i.cu  ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cu
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 288230376151711743)
  %i.cz = select i1 %i.cx, i64 288230376151711743, i64 %i.cy ; 4 uses
  %.not.i73 = icmp eq i64 %i.cz, 0
  br i1 %.not.i73, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.da = shl nuw nsw i64 %i.cz, 5
  %i.db = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.o
  %i.dc = phi ptr [ %i.db, %bb.o ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not11.i.i.i.i.i74 = icmp eq ptr %i.cr, %1
  br i1 %.not11.i.i.i.i.i74, label %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i79
  %.013.i.i.i.i.i76 = phi ptr [ %i.dq, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i79 ], [ %i.dc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i77 = phi ptr [ %i.dp, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i79 ], [ %i.cr, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i76, i64 16 ; 3 uses
  store ptr %i.dd, ptr %.013.i.i.i.i.i76, align 8, !tbaa !21
  %i.de = load ptr, ptr %.sroa.08.012.i.i.i.i.i77, align 8, !tbaa !24 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i77, i64 16 ; 5 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i78

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i75
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i77, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !27 ; 2 uses
  %i.dj = icmp ult i64 %i.di, 16
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = add nuw nsw i64 %i.di, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dd, ptr noundef nonnull align 8 dereferenceable(1) %i.df, i64 %i.dk, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i78: ; preds = %.lr.ph.i.i.i.i.i75
  store ptr %i.de, ptr %.013.i.i.i.i.i76, align 8, !tbaa !24
  %i.dl = load i64, ptr %i.df, align 8, !tbaa !29
  store i64 %i.dl, ptr %i.dd, align 8, !tbaa !29
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i79

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i79: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i78, %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i77, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !27
  %i.do = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i76, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !27
  store ptr %i.df, ptr %.sroa.08.012.i.i.i.i.i77, align 8, !tbaa !24
  store i64 0, ptr %i.dm, align 8, !tbaa !27
  store i8 0, ptr %i.df, align 8, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i77, i64 32 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i76, i64 32 ; 2 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.dp, %1
  br i1 %.not.i.i.i.i.i80, label %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i75, !llvm.loop !3971

_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i79, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i81 = phi ptr [ %i.dc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ], [ %i.dq, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i79 ] ; 2 uses
  %i.dr = invoke noundef ptr @_ZSt16__do_uninit_copyISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_ET0_T_SA_S9_(ptr %2, ptr %3, ptr noundef %.0.lcssa.i.i.i.i.i81)
          to label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_S6_ET0_T_SA_S9_RSaIT1_E.exit unwind label %bb.s ; 2 uses

_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_S6_ET0_T_SA_S9_RSaIT1_E.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.not11.i.i.i.i.i82 = icmp eq ptr %1, %i.f
  br i1 %.not11.i.i.i.i.i82, label %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit90, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_S6_ET0_T_SA_S9_RSaIT1_E.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i87
  %.013.i.i.i.i.i84 = phi ptr [ %i.ef, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i87 ], [ %i.dr, %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_S6_ET0_T_SA_S9_RSaIT1_E.exit ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i85 = phi ptr [ %i.ee, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i87 ], [ %1, %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_S6_ET0_T_SA_S9_RSaIT1_E.exit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i84, i64 16 ; 3 uses
  store ptr %i.ds, ptr %.013.i.i.i.i.i84, align 8, !tbaa !21
  %i.dt = load ptr, ptr %.sroa.08.012.i.i.i.i.i85, align 8, !tbaa !24 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i85, i64 16 ; 5 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i86

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i83
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i85, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !27 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, 16
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = add nuw nsw i64 %i.dx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ds, ptr noundef nonnull align 8 dereferenceable(1) %i.du, i64 %i.dz, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i86: ; preds = %.lr.ph.i.i.i.i.i83
  store ptr %i.dt, ptr %.013.i.i.i.i.i84, align 8, !tbaa !24
  %i.ea = load i64, ptr %i.du, align 8, !tbaa !29
  store i64 %i.ea, ptr %i.ds, align 8, !tbaa !29
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i87

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i87: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i86, %bb.q
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i85, i64 8 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !27
  %i.ed = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i84, i64 8
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !27
  store ptr %i.du, ptr %.sroa.08.012.i.i.i.i.i85, align 8, !tbaa !24
  store i64 0, ptr %i.eb, align 8, !tbaa !27
  store i8 0, ptr %i.du, align 8, !tbaa !29
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i85, i64 32 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i84, i64 32 ; 2 uses
  %.not.i.i.i.i.i88 = icmp eq ptr %i.ee, %i.f
  br i1 %.not.i.i.i.i.i88, label %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit90, label %.lr.ph.i.i.i.i.i83, !llvm.loop !3971

_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit90: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i87, %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_S6_ET0_T_SA_S9_RSaIT1_E.exit
  %.0.lcssa.i.i.i.i.i89 = phi ptr [ %i.dr, %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_S6_ET0_T_SA_S9_RSaIT1_E.exit ], [ %i.ef, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i87 ]
  %.not4.i.i = icmp eq ptr %i.cr, %i.f
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit90, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.el, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.cr, %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit90 ] ; 3 uses
  %i.eg = load ptr, ptr %.05.i.i, align 8, !tbaa !24 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !29
  %i.ek = add i64 %i.ej, 1
  tail call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.el, %i.f
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !39

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit90
  %.not.i91 = icmp eq ptr %i.cr, null
  br i1 %.not.i91, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.em = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = sub i64 %i.en, %i.cs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.eo) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.r
  store ptr %i.dc, ptr %0, align 8, !tbaa !38
  store ptr %.0.lcssa.i.i.i.i.i89, ptr %i.e, align 8, !tbaa !17
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %i.cz
  store ptr %i.ep, ptr %i.c, align 8, !tbaa !20
  br label %_ZSt4copyISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEET0_T_SG_SF_.exit

bb.s:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  %i.es = tail call ptr @__cxa_begin_catch(ptr %i.er) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %i.dc, ptr noundef %.0.lcssa.i.i.i.i.i81)
          to label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit unwind label %bb.u

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %bb.s
  %.not.i92 = icmp eq ptr %i.dc, null
  br i1 %.not.i92, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit93, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.et = shl nuw nsw i64 %i.cz, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.et) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit93

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit93: ; preds = %bb.t, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  invoke void @__cxa_rethrow() #31
          to label %bb.x unwind label %bb.u

bb.u:                                             ; preds = %bb.s, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit93
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  resume { ptr, i32 } %i.eu

_ZSt4copyISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEET0_T_SG_SF_.exit: ; preds = %.lr.ph.i.i.i.i.i67, %.lr.ph.i.i.i.i.i52, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit65, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void

bb.w:                                             ; preds = %bb.u
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  tail call void @__clang_call_terminate(ptr %i.ew) #32
  unreachable

bb.x:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit93
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_ET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.q, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.c, ptr %.014, align 8, !tbaa !21
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.f, ptr %i.a, align 8, !tbaa !28
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.h, ptr %.014, align 8, !tbaa !24
  %i.i = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.i, ptr %i.c, align 8, !tbaa !29
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %.lr.ph ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !29
  store i8 %i.k, ptr %i.j, align 1, !tbaa !29
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !27
  %i.n = load ptr, ptr %.014, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.p = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.08.013) #33 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.p, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3975

bb.e:                                             ; preds = %.noexc.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = call ptr @__cxa_begin_catch(ptr %i.s) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #31
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.q, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.u

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #32
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE17_M_emplace_uniqueIJS6_IS5_S8_EEEES6_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cmCxxModuleUsageEffects>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cmCxxModuleUsageEffects>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %0, ptr %2, align 8, !tbaa !3976
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #30 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !21
  %i.d = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !24
  %i.k = load i64, ptr %i.e, align 8, !tbaa !29
  store i64 %i.k, ptr %i.c, align 8, !tbaa !29
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.b
  %i.l = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !27
  store ptr %i.e, ptr %1, align 8, !tbaa !24
  store i64 0, ptr %i.m, align 8, !tbaa !27
  store i8 0, ptr %i.e, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 5 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !21
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.r, ptr %i.o, align 8, !tbaa !24
  %i.y = load i64, ptr %i.s, align 8, !tbaa !29
  store i64 %i.y, ptr %i.q, align 8, !tbaa !29
  %.phi.trans.insert4.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre5.i.i = load i64, ptr %.phi.trans.insert4.i.i, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre5.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.z, ptr %i.ac, align 8, !tbaa !27
  store ptr %i.s, ptr %i.p, align 8, !tbaa !24
  store i64 0, ptr %i.ab, align 8, !tbaa !27
  store i8 0, ptr %i.s, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !1318
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !1318
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1619
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !1619
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %i.aa, align 8, !tbaa !3978
  %i.aj = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1      ; 5 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp ne ptr %i.ak, null
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.an
  br i1 %or.cond.i.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i64, ptr %i.n, align 8, !tbaa !27  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !27 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.ao) ; 2 uses
  %i.ar = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ar, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !24
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.av = tail call i32 @memcmp(ptr noundef %i.au, ptr noundef %i.at, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.aw = sub i64 %i.ao, %i.aq
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.aw, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.av, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ax = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.ay = phi i1 [ %i.ax, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.f ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ay, ptr noundef nonnull %i.a, ptr noundef nonnull %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.am) #28
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !229
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !229
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_Auto_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.bc

bb.i:                                             ; preds = %bb.e
  tail call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ad) #28
  %i.bd = load ptr, ptr %i.o, align 8, !tbaa !24  ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.q
  br i1 %i.be, label %_ZN23cmCxxModuleUsageEffectsD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.bf = load i64, ptr %i.q, align 8, !tbaa !29
  %i.bg = add i64 %i.bf, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #29
  br label %_ZN23cmCxxModuleUsageEffectsD2Ev.exit.i.i.i.i

_ZN23cmCxxModuleUsageEffectsD2Ev.exit.i.i.i.i:    ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.c
  br i1 %i.bi, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7: ; preds = %_ZN23cmCxxModuleUsageEffectsD2Ev.exit.i.i.i.i
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !29
  %i.bk = add i64 %i.bj, 1
  tail call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i: ; preds = %_ZN23cmCxxModuleUsageEffectsD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i
  %.sroa.3.015 = phi i8 [ 1, %.thread ], [ 0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i ]
  %.sroa.010.014 = phi ptr [ %i.a, %.thread ], [ %i.ak, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.014, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.015, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !432 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !432 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3981

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !227
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !24
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #28 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3978 ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #28
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN23cmCxxModuleUsageEffectsD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !29
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZN23cmCxxModuleUsageEffectsD2Ev.exit.i.i.i

_ZN23cmCxxModuleUsageEffectsD2Ev.exit.i.i.i:      ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN23cmCxxModuleUsageEffectsD2Ev.exit.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !29
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %_ZN23cmCxxModuleUsageEffectsD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 120) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

declare void @_ZN10cmAlphaNumC1Em(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cmGeneratorTarget *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cmGeneratorTarget *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %0, ptr %5, align 8, !tbaa !3982
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30 ; 8 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !3984
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.q = tail call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.r = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.s = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.t = phi i1 [ %i.s, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !229
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !229
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.x

bb.f:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.e, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !229
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !432  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load ptr, ptr %2, align 8, !tbaa !24
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.m, i64 noundef %.sroa.speculated.i.i.i) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.p = sub i64 %i.h, %i.j
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.q, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.b
  %i.r = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !27   ; 4 uses
  %.sroa.speculated.i.i.i10 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.v) ; 3 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i10, 0
  br i1 %i.y, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24  ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.ac = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.aa, i64 noundef %.sroa.speculated.i.i.i10) #28 ; 2 uses
  %.not.i.i.i12 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i12, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18: ; preds = %bb.e
  %i.ad = sub i64 %i.v, %i.x
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11
  %i.af = sub i64 %i.v, %i.x
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11
  %i.ah = icmp slt i32 %i.ac, 0
  br i1 %i.ah, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !432 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #33 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !27 ; 2 uses
  %.sroa.speculated.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.an) ; 2 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i.i19, 0
  br i1 %i.ao, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20: ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.aq = load ptr, ptr %2, align 8, !tbaa !24
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.as = tail call i32 @memcmp(ptr noundef %i.ar, ptr noundef %i.aq, i64 noundef %.sroa.speculated.i.i.i19) #28 ; 2 uses
  %.not.i.i.i21 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i21, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20, %bb.g
  %i.at = sub i64 %i.an, %i.v
  %spec.select7.i.i.i.i24 = tail call i64 @llvm.smax.i64(i64 %i.at, i64 -2147483648)
  %.08.i.i.i.i25 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i24, i64 2147483647)
  %.0.i6.i.i.i26 = trunc nsw i64 %.08.i.i.i.i25 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23
  %.0.i.i.i22 = phi i32 [ %i.as, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20 ], [ %.0.i6.i.i.i26, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23 ]
  %i.au = icmp slt i32 %.0.i.i.i22, 0
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !3496
  %i.ax = icmp eq ptr %i.aw, null                 ; 2 uses
  %spec.select = select i1 %i.ax, ptr null, ptr %1
  %spec.select73 = select i1 %i.ax, ptr %i.al, ptr %1
  br label %bb.n

bb.i:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27
  %i.ay = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1
  br label %bb.n

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread
  %i.bb = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i10) #28 ; 2 uses
  %.not.i.i.i30 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i30, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29
  %i.bc = sub i64 %i.x, %i.v
  %spec.select7.i.i.i.i33 = tail call i64 @llvm.smax.i64(i64 %i.bc, i64 -2147483648)
  %.08.i.i.i.i34 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i33, i64 2147483647)
  %.0.i6.i.i.i35 = trunc nsw i64 %.08.i.i.i.i34 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32
  %.0.i.i.i31 = phi i32 [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29 ], [ %.0.i6.i.i.i35, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32 ]
  %i.bd = icmp slt i32 %.0.i.i.i31, 0
  br i1 %i.bd, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !432 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %1
  br i1 %i.bg, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #33 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !27 ; 2 uses
  %.sroa.speculated.i.i.i37 = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.v) ; 2 uses
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i37, 0
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38: ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !24
  %i.bn = load ptr, ptr %2, align 8, !tbaa !24
  %i.bo = tail call i32 @memcmp(ptr noundef %i.bn, ptr noundef %i.bm, i64 noundef %.sroa.speculated.i.i.i37) #28 ; 2 uses
  %.not.i.i.i39 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i39, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38, %bb.k
  %i.bp = sub i64 %i.v, %i.bj
  %spec.select7.i.i.i.i42 = tail call i64 @llvm.smax.i64(i64 %i.bp, i64 -2147483648)
  %.08.i.i.i.i43 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i42, i64 2147483647)
  %.0.i6.i.i.i44 = trunc nsw i64 %.08.i.i.i.i43 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41
  %.0.i.i.i40 = phi i32 [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38 ], [ %.0.i6.i.i.i44, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41 ]
  %i.bq = icmp slt i32 %.0.i.i.i40, 0
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !3496
  %i.bt = icmp eq ptr %i.bs, null                 ; 2 uses
  %spec.select74 = select i1 %i.bt, ptr null, ptr %i.bh
  %spec.select75 = select i1 %i.bt, ptr %1, ptr %i.bh
  br label %bb.n

bb.m:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45
  %i.bu = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36, %bb.m, %bb.j, %bb.i, %bb.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.d
  %.sroa.066.2 = phi ptr [ %i.s, %bb.d ], [ %spec.select, %bb.h ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select74, %bb.l ], [ %i.az, %bb.i ], [ %i.aj, %bb.f ], [ %1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bv, %bb.m ], [ null, %bb.j ]
  %.sroa.12.2 = phi ptr [ %i.t, %bb.d ], [ %spec.select73, %bb.h ], [ %i.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select75, %bb.l ], [ %i.ba, %bb.i ], [ %i.aj, %bb.f ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bw, %bb.m ], [ %i.bf, %bb.j ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.066.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3984 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !29
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !253
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !21
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.h, ptr %i.a, align 8, !tbaa !28
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !24
  %i.k = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.k, ptr %i.e, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !29
  store i8 %i.m, ptr %i.l, align 1, !tbaa !29
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #28 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #29
  invoke void @__cxa_rethrow() #31
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !27
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.v, align 8, !tbaa !3279
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #32
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !432 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !432 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3987

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !227
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !24
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #28 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESJ_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<const cmGeneratorTarget *, std::pair<const cmGeneratorTarget *const, std::set<const cmGeneratorTarget *>>, std::_Select1st<std::pair<const cmGeneratorTarget *const, std::set<const cmGeneratorTarget *>>>, std::less<const cmGeneratorTarget *>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %0, ptr %5, align 8, !tbaa !3988
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #30 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !577
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !579
  store ptr %i.f, ptr %i.c, align 8, !tbaa !3325
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !227
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.h, ptr %i.j, align 8, !tbaa !228
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %i.k, align 8, !tbaa !229
  store ptr %i.b, ptr %i.a, align 8, !tbaa !3990
  %i.l = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.m, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.p
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !579
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !579
  %i.t = icmp ult ptr %i.q, %i.s
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.u = phi i1 [ %i.t, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.u, ptr noundef nonnull %i.b, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !229
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !229
  br label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.y

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !226
  invoke void @_ZNSt8_Rb_treeIPK17cmGeneratorTargetS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %i.aa)
          to label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #32
  unreachable

_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #29
  br label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.m, %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !229
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !432  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !579
  %i.i = load ptr, ptr %2, align 8, !tbaa !579
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !432 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !579    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !579  ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !432 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !3993

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !227
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #33 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8, !tbaa !579
  %.pre82 = load ptr, ptr %2, align 8, !tbaa !579
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi ptr [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi ptr [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult ptr %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8, !tbaa !579    ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !579  ; 2 uses
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !432 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #33 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !579
  %i.ag = icmp ult ptr %i.af, %i.w
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3496
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !432 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !579 ; 2 uses
  %i.an = icmp ult ptr %i.w, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !432 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !3993

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #33 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 8, !tbaa !579
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi ptr [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult ptr %i.aq, %i.w                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult ptr %i.y, %i.w
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !432 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #33 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !579
  %i.az = icmp ult ptr %i.w, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !3496
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !432 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !579 ; 2 uses
  %i.bg = icmp ult ptr %i.w, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !432 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !3993

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !227
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #33 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !579
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi ptr [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult ptr %i.bl, %i.w                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit

_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE24_M_get_insert_unique_posERS4_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3990 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !226
  invoke void @_ZNSt8_Rb_treeIPK17cmGeneratorTargetS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
          to label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #32
  unreachable

_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #29
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN17cmGeneratorTarget15AllConfigSourceESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.017 = phi ptr [ %i.y, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.09.016 = phi ptr [ %i.x, %bb.f ], [ %0, %bb.a ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.017, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.09.016, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %.017, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3994 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !324  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !409

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #30
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.j, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !324
  %i.l = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !3994
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %.017, i64 32
  store ptr %i.m, ptr %i.n, align 8, !tbaa !327
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !3995 ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !3995
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 8
  br i1 %i.t, label %bb.c, label %bb.d, !prof !3573

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.o, i64 %i.s, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.u = icmp eq i64 %i.s, 8
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.o, align 8, !tbaa !28
  store i64 %i.v, ptr %i.k, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !3994
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.017, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3996

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.z = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPN17cmGeneratorTarget15AllConfigSourceEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #31
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.y, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ab

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #32
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_cmGeneratorTarget.cxx() #23 section ".text.startup" {
bb.a:
  tail call void @_ZN5cmsys18SystemToolsManagerC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN5cmsysL26SystemToolsManagerInstanceE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5cmsys18SystemToolsManagerD1Ev, ptr nonnull @_ZN5cmsysL26SystemToolsManagerInstanceE, ptr nonnull @__dso_handle) #28 ; 0 uses
  store i64 7, ptr @_ZN12cmStateEnumsL16AllTargetDomainsE, align 8, !tbaa !28
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12cmStateEnumsL16AllTargetDomainsE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSSt10unique_ptrIN2cm19TargetPropertyEntryESt14default_deleteIS1_EE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"branch_weights", i32 1, i32 1048575}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTSN2cm19TargetPropertyEntryE", !11, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{!18, !19, i64 8}
!18 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!20 = !{!18, !19, i64 16}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!23 = !{!"p1 omnipotent char", !11, i64 0}
!24 = !{!25, !23, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !26, i64 8, !7, i64 16}
!26 = !{!"long", !7, i64 0}
!27 = !{!25, !26, i64 8}
!28 = !{!26, !26, i64 0}
!29 = !{!7, !7, i64 0}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_: argument 0"}
!32 = distinct !{!32, !"_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_"}
!33 = !{!23, !23, i64 0}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN6cmList4JoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEES7_RKT_St17basic_string_viewIcS5_E: argument 0"}
!36 = distinct !{!36, !"_ZN6cmList4JoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEES7_RKT_St17basic_string_viewIcS5_E"}
!37 = !{!35, !31}
!38 = !{!18, !19, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTS17cmGeneratorTarget", !43, i64 0, !44, i64 8, !45, i64 16, !46, i64 24, !25, i64 32, !25, i64 64, !47, i64 96, !47, i64 144, !47, i64 192, !47, i64 240, !47, i64 288, !47, i64 336, !56, i64 384, !61, i64 432, !25, i64 440, !62, i64 472, !67, i64 520, !70, i64 568, !73, i64 616, !76, i64 664, !84, i64 720, !25, i64 768, !87, i64 800, !61, i64 856, !89, i64 864, !92, i64 912, !95, i64 960, !95, i64 1008, !25, i64 1056, !98, i64 1088, !61, i64 1136, !101, i64 1144, !101, i64 1192, !104, i64 1240, !107, i64 1288, !110, i64 1336, !110, i64 1384, !113, i64 1432, !113, i64 1480, !116, i64 1528, !119, i64 1576, !122, i64 1624, !67, i64 1648, !127, i64 1696, !129, i64 1752, !129, i64 1776, !129, i64 1800, !129, i64 1824, !129, i64 1848, !129, i64 1872, !129, i64 1896, !129, i64 1920, !67, i64 1944, !133, i64 1992, !133, i64 2040, !133, i64 2088, !133, i64 2136, !133, i64 2184, !133, i64 2232, !136, i64 2280, !138, i64 2336, !140, i64 2392, !142, i64 2448, !142, i64 2496, !145, i64 2544, !133, i64 2592, !148, i64 2640, !151, i64 2688, !156, i64 2736, !161, i64 2784, !61, i64 2872, !61, i64 2873, !61, i64 2874, !61, i64 2875, !61, i64 2876, !61, i64 2877, !61, i64 2878, !61, i64 2879, !61, i64 2880, !61, i64 2881, !164, i64 2884, !165, i64 2888, !168, i64 2936, !133, i64 2984, !171, i64 3032, !174, i64 3080, !177, i64 3128, !180, i64 3176, !61, i64 3184, !61, i64 3185, !61, i64 3186}
!43 = !{!"p1 _ZTS8cmTarget", !11, i64 0}
!44 = !{!"p1 _ZTS10cmMakefile", !11, i64 0}
!45 = !{!"p1 _ZTS16cmLocalGenerator", !11, i64 0}
!46 = !{!"p1 _ZTS17cmGlobalGenerator", !11, i64 0}
!47 = !{!"_ZTSSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt6vectorI2BTIS6_ESaISA_EESt4lessIS7_ESaIS0_IKS7_SC_EEE", !48, i64 0}
!48 = !{!"_ZTSSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_St6vectorI2BTIS6_ESaISB_EEESt10_Select1stISE_ESt4lessIS7_ESaISE_EE", !49, i64 0}
!49 = !{!"_ZTSNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_St6vectorI2BTIS6_ESaISB_EEESt10_Select1stISE_ESt4lessIS7_ESaISE_EE13_Rb_tree_implISI_Lb1EEE", !50, i64 0, !52, i64 8}
!50 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE", !51, i64 0}
!51 = !{!"_ZTSSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE"}
!52 = !{!"_ZTSSt15_Rb_tree_header", !53, i64 0, !26, i64 32}
!53 = !{!"_ZTSSt18_Rb_tree_node_base", !54, i64 0, !55, i64 8, !55, i64 16, !55, i64 24}
!54 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!55 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!56 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmGeneratorTarget11CompileInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !57, i64 0}
!57 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmGeneratorTarget11CompileInfoEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !58, i64 0}
!58 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmGeneratorTarget11CompileInfoEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !59, i64 0, !52, i64 8}
!59 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !60, i64 0}
!60 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!61 = !{!"bool", !7, i64 0}
!62 = !{!"_ZTSSt3mapIPK12cmSourceFileN17cmGeneratorTarget11SourceEntryESt4lessIS2_ESaISt4pairIKS2_S4_EEE", !63, i64 0}
!63 = !{!"_ZTSSt8_Rb_treeIPK12cmSourceFileSt4pairIKS2_N17cmGeneratorTarget11SourceEntryEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !64, i64 0}
!64 = !{!"_ZTSNSt8_Rb_treeIPK12cmSourceFileSt4pairIKS2_N17cmGeneratorTarget11SourceEntryEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !65, i64 0, !52, i64 8}
!65 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPK12cmSourceFileEE", !66, i64 0}
!66 = !{!"_ZTSSt4lessIPK12cmSourceFileE"}
!67 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !68, i64 0}
!68 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !69, i64 0}
!69 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !59, i64 0, !52, i64 8}
!70 = !{!"_ZTSSt3mapIPK12cmSourceFile17cmObjectLocationsSt4lessIS2_ESaISt4pairIKS2_S3_EEE", !71, i64 0}
!71 = !{!"_ZTSSt8_Rb_treeIPK12cmSourceFileSt4pairIKS2_17cmObjectLocationsESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE", !72, i64 0}
!72 = !{!"_ZTSNSt8_Rb_treeIPK12cmSourceFileSt4pairIKS2_17cmObjectLocationsESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !65, i64 0, !52, i64 8}
!73 = !{!"_ZTSSt3setIPK12cmSourceFileSt4lessIS2_ESaIS2_EE", !74, i64 0}
!74 = !{!"_ZTSSt8_Rb_treeIPK12cmSourceFileS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE", !75, i64 0}
!75 = !{!"_ZTSNSt8_Rb_treeIPK12cmSourceFileS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !65, i64 0, !52, i64 8}
!76 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IP8cmTargetbSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_bEEES8_IS5_ESA_IS5_ESaISC_IKS5_SG_EEE", !77, i64 0}
!77 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapIP8cmTargetbSt4hashISA_ESt8equal_toISA_ESaIS6_IKSA_bEEEESaISJ_ENSt8__detail10_Select1stESD_IS5_ESB_IS5_ENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE", !78, i64 0, !26, i64 8, !80, i64 16, !26, i64 24, !82, i64 32, !81, i64 48}
!78 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !79, i64 0}
!79 = !{!"any p2 pointer", !11, i64 0}
!80 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !81, i64 0}
!81 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!82 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !83, i64 0, !26, i64 8}
!83 = !{!"float", !7, i64 0}
end_hunk_0
begin_hunk_1_@bcmp
!3775 = distinct !{!3775, !"_ZSt19__relocate_object_aIN17cmGeneratorTarget14ClassifiedFlagES1_SaIS1_EEvPT_PT0_RT1_"}
!3776 = !{!3777}
!3777 = distinct !{!3777, !3775, !"_ZSt19__relocate_object_aIN17cmGeneratorTarget14ClassifiedFlagES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!3778 = !{!3774, !3777}
!3779 = !{!3780}
!3780 = distinct !{!3780, !3781, !"_ZSt19__relocate_object_aIN17cmGeneratorTarget14ClassifiedFlagES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!3781 = distinct !{!3781, !"_ZSt19__relocate_object_aIN17cmGeneratorTarget14ClassifiedFlagES1_SaIS1_EEvPT_PT0_RT1_"}
!3782 = !{!3783}
!3783 = distinct !{!3783, !3781, !"_ZSt19__relocate_object_aIN17cmGeneratorTarget14ClassifiedFlagES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!3784 = !{!3780, !3783}
!3785 = distinct !{!3785, !40}
!3786 = distinct !{!3786, !40}
!3787 = distinct !{!3787, !40}
!3788 = distinct !{!3788, !40}
!3789 = distinct !{!3789, !40}
!3790 = !{!3791}
!3791 = distinct !{!3791, !3792, !"_ZSt19__relocate_object_aIN17cmGeneratorTarget14ClassifiedFlagES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!3792 = distinct !{!3792, !"_ZSt19__relocate_object_aIN17cmGeneratorTarget14ClassifiedFlagES1_SaIS1_EEvPT_PT0_RT1_"}
!3793 = !{!3794}
!3794 = distinct !{!3794, !3792, !"_ZSt19__relocate_object_aIN17cmGeneratorTarget14ClassifiedFlagES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!3795 = !{!3791, !3794}
!3796 = !{!3797}
!3797 = distinct !{!3797, !3798, !"_ZSt19__relocate_object_aIN17cmGeneratorTarget14ClassifiedFlagES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!3798 = distinct !{!3798, !"_ZSt19__relocate_object_aIN17cmGeneratorTarget14ClassifiedFlagES1_SaIS1_EEvPT_PT0_RT1_"}
!3799 = !{!3800}
!3800 = distinct !{!3800, !3798, !"_ZSt19__relocate_object_aIN17cmGeneratorTarget14ClassifiedFlagES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!3801 = !{!3797, !3800}
!3802 = !{!3803, !3803, i64 0}
!3803 = !{!"p1 _ZTSSt8_Rb_treeIPK12cmSourceFileSt4pairIKS2_St6vectorIN17cmGeneratorTarget14ClassifiedFlagESaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE", !11, i64 0}
!3804 = !{!3805, !3806, i64 8}
!3805 = !{!"_ZTSNSt8_Rb_treeIPK12cmSourceFileSt4pairIKS2_St6vectorIN17cmGeneratorTarget14ClassifiedFlagESaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE10_Auto_nodeE", !3803, i64 0, !3806, i64 8}
!3806 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKPK12cmSourceFileSt6vectorIN17cmGeneratorTarget14ClassifiedFlagESaIS7_EEEE", !11, i64 0}
!3807 = distinct !{!3807, !40}
!3808 = !{!3809}
!3809 = distinct !{!3809, !3810, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!3810 = distinct !{!3810, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!3811 = !{!3812}
!3812 = distinct !{!3812, !3813, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!3813 = distinct !{!3813, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!3814 = !{!3812, !3809}
!3815 = distinct !{!3815, !40}
!3816 = distinct !{!3816, !40}
!3817 = !{!3818, !3819, i64 8}
!3818 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !2425, i64 0, !3819, i64 8}
!3819 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE", !11, i64 0}
!3820 = distinct !{!3820, !40}
!3821 = !{!137, !26, i64 24}
!3822 = distinct !{!3822, !40}
!3823 = distinct !{!3823, !40}
!3824 = !{!3825, !2515, i64 0}
!3825 = !{!"_ZTSNSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEE", !2515, i64 0}
!3826 = !{!3827, !2515, i64 0}
!3827 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeE", !2515, i64 0, !3828, i64 8}
!3828 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEE", !11, i64 0}
!3829 = !{!3827, !3828, i64 8}
!3830 = !{!137, !81, i64 48}
!3831 = distinct !{!3831, !40}
!3832 = distinct !{!3832, !40}
!3833 = distinct !{!3833, !40}
!3834 = !{!3835, !3835, i64 0}
!3835 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_15cmStandardLevelESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !11, i64 0}
!3836 = !{!3837, !3838, i64 8}
!3837 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_15cmStandardLevelESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_Auto_nodeE", !3835, i64 0, !3838, i64 8}
!3838 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE15cmStandardLevelEE", !11, i64 0}
!3839 = distinct !{!3839, !40}
!3840 = !{!3841, !3841, i64 0}
!3841 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_3BTsIS5_EESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !11, i64 0}
!3842 = !{!3843, !3844, i64 8}
!3843 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_3BTsIS5_EESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeE", !3841, i64 0, !3844, i64 8}
!3844 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE3BTsIS6_EEE", !11, i64 0}
!3845 = !{!3846, !19, i64 0}
!3846 = !{!"_ZTSSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !19, i64 0}
!3847 = distinct !{!3847, !40}
!3848 = !{!3849}
!3849 = distinct !{!3849, !3850, !"_ZSt19__relocate_object_aI19cmListFileBacktraceS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!3850 = distinct !{!3850, !"_ZSt19__relocate_object_aI19cmListFileBacktraceS0_SaIS0_EEvPT_PT0_RT1_"}
!3851 = !{!3852}
!3852 = distinct !{!3852, !3850, !"_ZSt19__relocate_object_aI19cmListFileBacktraceS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!3853 = distinct !{!3853, !40}
!3854 = !{!3855}
!3855 = distinct !{!3855, !3856, !"_ZSt19__relocate_object_aI19cmListFileBacktraceS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!3856 = distinct !{!3856, !"_ZSt19__relocate_object_aI19cmListFileBacktraceS0_SaIS0_EEvPT_PT0_RT1_"}
!3857 = !{!3858}
!3858 = distinct !{!3858, !3856, !"_ZSt19__relocate_object_aI19cmListFileBacktraceS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!3859 = !{!3860}
!3860 = distinct !{!3860, !3861, !"_ZSt19__relocate_object_aI19cmListFileBacktraceS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!3861 = distinct !{!3861, !"_ZSt19__relocate_object_aI19cmListFileBacktraceS0_SaIS0_EEvPT_PT0_RT1_"}
!3862 = !{!3863}
!3863 = distinct !{!3863, !3861, !"_ZSt19__relocate_object_aI19cmListFileBacktraceS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!3864 = !{!3865}
!3865 = distinct !{!3865, !3866, !"_ZSt19__relocate_object_aI19cmListFileBacktraceS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!3866 = distinct !{!3866, !"_ZSt19__relocate_object_aI19cmListFileBacktraceS0_SaIS0_EEvPT_PT0_RT1_"}
!3867 = !{!3868}
!3868 = distinct !{!3868, !3866, !"_ZSt19__relocate_object_aI19cmListFileBacktraceS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!3869 = distinct !{!3869, !40}
!3870 = !{!3871}
!3871 = distinct !{!3871, !3872, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!3872 = distinct !{!3872, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!3873 = !{!3874}
!3874 = distinct !{!3874, !3872, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!3875 = !{!3871, !3874}
!3876 = !{!3877}
!3877 = distinct !{!3877, !3878, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!3878 = distinct !{!3878, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!3879 = !{!3880}
!3880 = distinct !{!3880, !3878, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!3881 = !{!3877, !3880}
!3882 = !{!3883, !2882, i64 0}
!3883 = !{!"_ZTSZNK17cmGeneratorTarget20GetTargetObjectNamesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbRK12cmSourceFileEERSt6vectorIS5_SaIS5_EEE3$_0", !2882, i64 0}
!3884 = !{!3885, !3885, i64 0}
!3885 = !{!"p1 _ZTSSt9type_info", !11, i64 0}
!3886 = distinct !{!3886, !40}
!3887 = !{!139, !26, i64 24}
!3888 = distinct !{!3888, !40}
!3889 = distinct !{!3889, !40}
!3890 = !{!3891, !3892, i64 0}
!3891 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !3892, i64 0, !3893, i64 8}
!3892 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEELb1EEEEEE", !11, i64 0}
!3893 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEELb1EEE", !11, i64 0}
!3894 = !{!3891, !3893, i64 8}
!3895 = distinct !{!3895, !40}
!3896 = !{!139, !81, i64 48}
!3897 = distinct !{!3897, !40}
!3898 = distinct !{!3898, !40}
!3899 = distinct !{!3899, !40}
!3900 = !{!141, !26, i64 24}
!3901 = distinct !{!3901, !40}
!3902 = distinct !{!3902, !40}
!3903 = !{!3904, !3905, i64 0}
!3904 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS6_IPK12cmSourceFileS5_ESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !3905, i64 0, !3906, i64 8}
!3905 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS2_IPK12cmSourceFileS8_ESaISE_EEELb1EEEEEE", !11, i64 0}
!3906 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_IPK12cmSourceFileS7_ESaISD_EEELb1EEE", !11, i64 0}
!3907 = !{!3904, !3906, i64 8}
!3908 = distinct !{!3908, !40}
!3909 = !{!141, !81, i64 48}
!3910 = distinct !{!3910, !40}
!3911 = distinct !{!3911, !40}
!3912 = distinct !{!3912, !40}
!3913 = distinct !{!3913, !40}
!3914 = distinct !{!3914, !40}
!3915 = distinct !{!3915, !40}
!3916 = distinct !{!3916, !40}
!3917 = !{!3918, !3918, i64 0}
!3918 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !11, i64 0}
!3919 = !{!3920, !3921, i64 8}
!3920 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !3918, i64 0, !3921, i64 8}
!3921 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEE", !11, i64 0}
!3922 = !{!3923, !61, i64 32}
!3923 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE", !25, i64 0, !61, i64 32}
!3924 = distinct !{!3924, !40}
!3925 = distinct !{!3925, !40}
!3926 = distinct !{!3926, !40}
!3927 = !{!3928, !3928, i64 0}
!3928 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmGeneratorTarget10ImportInfoEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !11, i64 0}
!3929 = !{!3930, !3931, i64 8}
!3930 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmGeneratorTarget10ImportInfoEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeE", !3928, i64 0, !3931, i64 8}
!3931 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmGeneratorTarget10ImportInfoEEE", !11, i64 0}
!3932 = distinct !{!3932, !40}
!3933 = !{!3934}
!3934 = distinct !{!3934, !3935, !"_ZSt19__relocate_object_aI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!3935 = distinct !{!3935, !"_ZSt19__relocate_object_aI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_"}
!3936 = !{!3937}
!3937 = distinct !{!3937, !3935, !"_ZSt19__relocate_object_aI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!3938 = !{!3934, !3937}
!3939 = distinct !{!3939, !40}
!3940 = !{!3941}
!3941 = distinct !{!3941, !3942, !"_ZSt19__relocate_object_aI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!3942 = distinct !{!3942, !"_ZSt19__relocate_object_aI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_"}
!3943 = !{!3944}
!3944 = distinct !{!3944, !3942, !"_ZSt19__relocate_object_aI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!3945 = !{!3941, !3944}
!3946 = !{!3947}
!3947 = distinct !{!3947, !3948, !"_ZSt19__relocate_object_aI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!3948 = distinct !{!3948, !"_ZSt19__relocate_object_aI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_"}
!3949 = !{!3950}
!3950 = distinct !{!3950, !3948, !"_ZSt19__relocate_object_aI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!3951 = !{!3947, !3950}
!3952 = !{!3953}
!3953 = distinct !{!3953, !3954, !"_ZSt19__relocate_object_aI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!3954 = distinct !{!3954, !"_ZSt19__relocate_object_aI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_"}
!3955 = !{!3956}
!3956 = distinct !{!3956, !3954, !"_ZSt19__relocate_object_aI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!3957 = !{!3953, !3956}
!3958 = !{!3141, !3142, i64 0}
!3959 = !{!3960}
!3960 = distinct !{!3960, !3961, !"_ZSt19__relocate_object_aI2BTIP17cmGeneratorTargetES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!3961 = distinct !{!3961, !"_ZSt19__relocate_object_aI2BTIP17cmGeneratorTargetES3_SaIS3_EEvPT_PT0_RT1_"}
!3962 = !{!3963}
!3963 = distinct !{!3963, !3961, !"_ZSt19__relocate_object_aI2BTIP17cmGeneratorTargetES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!3964 = distinct !{!3964, !40}
!3965 = !{!3966}
!3966 = distinct !{!3966, !3967, !"_ZSt19__relocate_object_aI2BTIP17cmGeneratorTargetES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!3967 = distinct !{!3967, !"_ZSt19__relocate_object_aI2BTIP17cmGeneratorTargetES3_SaIS3_EEvPT_PT0_RT1_"}
!3968 = !{!3969}
!3969 = distinct !{!3969, !3967, !"_ZSt19__relocate_object_aI2BTIP17cmGeneratorTargetES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!3970 = distinct !{!3970, !40}
!3971 = distinct !{!3971, !40}
!3972 = distinct !{!3972, !40}
!3973 = distinct !{!3973, !40}
!3974 = distinct !{!3974, !40}
!3975 = distinct !{!3975, !40}
!3976 = !{!3977, !3977, i64 0}
!3977 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !11, i64 0}
!3978 = !{!3979, !3980, i64 8}
!3979 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23cmCxxModuleUsageEffectsESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_Auto_nodeE", !3977, i64 0, !3980, i64 8}
!3980 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE23cmCxxModuleUsageEffectsEE", !11, i64 0}
!3981 = distinct !{!3981, !40}
!3982 = !{!3983, !3983, i64 0}
!3983 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !11, i64 0}
!3984 = !{!3985, !3986, i64 8}
!3985 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P17cmGeneratorTargetESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeE", !3983, i64 0, !3986, i64 8}
!3986 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP17cmGeneratorTargetEE", !11, i64 0}
!3987 = distinct !{!3987, !40}
!3988 = !{!3989, !3989, i64 0}
!3989 = !{!"p1 _ZTSSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE", !11, i64 0}
!3990 = !{!3991, !3992, i64 8}
!3991 = !{!"_ZTSNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3setIS2_St4lessIS2_ESaIS2_EEESt10_Select1stISA_ES7_SaISA_EE10_Auto_nodeE", !3989, i64 0, !3992, i64 8}
!3992 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKPK17cmGeneratorTargetSt3setIS3_St4lessIS3_ESaIS3_EEEE", !11, i64 0}
!3993 = distinct !{!3993, !40}
!3994 = !{!325, !326, i64 8}
!3995 = !{!326, !326, i64 0}
!3996 = distinct !{!3996, !40}
end_hunk_1
