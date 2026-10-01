Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3DfgAstToDfg?download=true
inline.NumInlined: 1407
inline.NumDeleted: 751
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev:bb.a
_ZNSt11_Deque_baseIPK8FileLineSaIS2_EED2Ev.exit:  ; preds = %bb.a, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !266
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !262
  %i.g = load i64, ptr %i.d, align 8, !tbaa !266
  %i.h = sub i64 %i.g, %i.b
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #22
          to label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !265
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_create_nodesEPPS2_S6_.exit, !llvm.loop !422

bb.a:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #23 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !265
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #24
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i, !llvm.loop !2

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #25
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #21
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #23 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !262
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !266
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #25
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ad

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_create_nodesEPPS2_S6_.exit: ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !267
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !265 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !423
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !424
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !267
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !265 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !423
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !424
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !425
  %i.ar = and i64 %1, 63
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !426
  ret void

bb.g:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #21
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !428
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !429  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !34
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !427

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN9DfgVertex8newInputEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !268  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !269
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.f, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !268
  br label %_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !56   ; 10 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
  unreachable

_ZNKSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #22 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr %i.b, ptr %i.v, align 8, !tbaa !58
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %1 = and i64 %i.x, -8
  %2 = add i64 %1, 8                              ; 2 uses
  %3 = getelementptr i8, ptr %i.u, i64 %2
  %4 = getelementptr i8, ptr %i.j, i64 %2
  %bound0 = icmp ult ptr %i.u, %4
  %bound1 = icmp ult ptr %i.j, %3
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ad ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.j, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.ae = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !tbaa !58, !alias.scope !440, !noalias !438
  %wide.load6 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !58, !alias.scope !440, !noalias !438
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !58, !alias.scope !441, !noalias !440
  store <2 x i64> %wide.load6, ptr %i.af, align 8, !tbaa !58, !alias.scope !441, !noalias !440
  %i.ag = getelementptr i8, ptr %next.gep5, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep5, align 8, !tbaa !58, !alias.scope !440, !noalias !438
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !58, !alias.scope !440, !noalias !438
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.preheader8:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !58, !alias.scope !439, !noalias !438
  store i64 %i.ai, ptr %.012.i.i.i.i.i, align 8, !tbaa !58, !alias.scope !438, !noalias !439
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !58, !alias.scope !439, !noalias !438
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !437

_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !269
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ao) #24
  br label %_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !56
  store ptr %i.al, ptr %i.e, align 8, !tbaa !268
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !269
  br label %_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.aq = phi ptr [ %i.f, %bb.b ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58
  ret ptr %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8DfgAstRd6acceptER10DfgVisitor(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8DfgAstRdD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV9DfgVertex, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !58 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !128 ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %.pre.i.i.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !128
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.d, %bb.c
  %.not15.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.i, ptr %i.k, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.m = icmp eq ptr %i.l, %i.e
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !64
  store ptr %i.n, ptr %i.g, align 8, !tbaa !63
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !129
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %bb.i, label %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %.pre.i.i.i.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !129
  br label %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #24, !inline_history !270
  br label %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.s = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i, label %_ZN9DfgVertexD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !269
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #24, !inline_history !270
  br label %_ZN9DfgVertexD2Ev.exit

_ZN9DfgVertexD2Ev.exit:                           ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK8DfgAstRd7srcNameB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !33
  store i8 0, ptr %i.a, align 8, !tbaa !34
  ret void
}

declare void @_ZN9DfgVertexC2ER8DfgGraph8VDfgTypeP8FileLineRK11DfgDataType(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(144), i16, ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #3

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9DfgVertexD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser2InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser2InUse10s_userBusyE)
          to label %_ZN12VNUser2InUseD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #21
  unreachable

_ZN12VNUser2InUseD2Ev.exit:                       ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 4184) (i8, ptr @_ZTV9VNVisitor, i64 16), ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN9VNDeleter9doDeletesEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.e, !inline_history !49

bb.c:                                             ; preds = %_ZN12VNUser2InUseD2Ev.exit
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN9VNVisitorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #24, !inline_history !49
  br label %_ZN9VNVisitorD2Ev.exit

bb.e:                                             ; preds = %_ZN12VNUser2InUseD2Ev.exit
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #21, !inline_history !49
  unreachable

_ZN9VNVisitorD2Ev.exit:                           ; preds = %bb.c, %bb.d
  ret void
}

declare void @_ZN9DfgVertex12unlinkDeleteER8DfgGraph(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(144)) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12VNUser2InUseD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser2InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser2InUse10s_userBusyE)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitor5visitEP7AstNode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271, !nonnull !69, !align !119
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8
  %i.f = ptrtoint ptr %0 to i64
  store i64 %i.f, ptr %2, align 8, !tbaa !273
  store ptr @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.d, align 8, !tbaa !118
  store ptr @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.c, align 8, !tbaa !16
  invoke void @_ZN11V3DfgPasses10addAstRefsER8DfgGraphP7AstNodeSt8functionIFP12DfgVertexVarP11AstVarScopeEE(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef %1, ptr noundef nonnull align 8 %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.l, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.k

_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser2InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser2InUse10s_userBusyE)
          to label %_ZN12VNUser2InUseD2Ev.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #21
  unreachable

_ZN12VNUser2InUseD2Ev.exit.i:                     ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 4184) (i8, ptr @_ZTV9VNVisitor, i64 16), ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN9VNDeleter9doDeletesEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.e, !inline_history !49

bb.c:                                             ; preds = %_ZN12VNUser2InUseD2Ev.exit.i
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15AstToDfgVisitorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #24, !inline_history !49
  br label %_ZN15AstToDfgVisitorD2Ev.exit

bb.e:                                             ; preds = %_ZN12VNUser2InUseD2Ev.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #21, !inline_history !49
  unreachable

_ZN15AstToDfgVisitorD2Ev.exit:                    ; preds = %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitor5visitEP9AstActive(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !444
  %i.c = tail call noundef zeroext i1 @_ZNK10AstSenTree8hasComboEv(ptr noundef nonnull align 8 dereferenceable(160) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7AstNode15iterateChildrenER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !271, !nonnull !69, !align !119
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = ptrtoint ptr %0 to i64
  store i64 %i.i, ptr %2, align 8, !tbaa !273
  store ptr @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.g, align 8, !tbaa !118
  store ptr @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.f, align 8, !tbaa !16
  invoke void @_ZN11V3DfgPasses10addAstRefsER8DfgGraphP7AstNodeSt8functionIFP12DfgVertexVarP11AstVarScopeEE(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull %1, ptr noundef nonnull align 8 %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #21
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.o, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.n

_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.j

bb.j:                                             ; preds = %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitor5visitEP9AstAlways(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = tail call noundef zeroext i1 @_ZN15AstToDfgVisitor7convertEP9AstAlways(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1)
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271, !nonnull !69, !align !119
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = ptrtoint ptr %0 to i64
  store i64 %i.g, ptr %2, align 8, !tbaa !273
  store ptr @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.e, align 8, !tbaa !118
  store ptr @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.d, align 8, !tbaa !16
  invoke void @_ZN11V3DfgPasses10addAstRefsER8DfgGraphP7AstNodeSt8functionIFP12DfgVertexVarP11AstVarScopeEE(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef %1, ptr noundef nonnull align 8 %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #21
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.l

_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.i:                                             ; preds = %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitor5visitEP7AstCell(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271, !nonnull !69, !align !119
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8
  %i.f = ptrtoint ptr %0 to i64
  store i64 %i.f, ptr %2, align 8, !tbaa !273
  store ptr @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.d, align 8, !tbaa !118
  store ptr @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.c, align 8, !tbaa !16
  invoke void @_ZN11V3DfgPasses10addAstRefsER8DfgGraphP7AstNodeSt8functionIFP12DfgVertexVarP11AstVarScopeEE(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef %1, ptr noundef nonnull align 8 %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.l, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.k

_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitor5visitEP8AstIface(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 306
  %i.b = load i8, ptr %i.a, align 2, !tbaa !107, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit, label %bb.c, !prof !116

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7AstNode14iterateAndNextER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !271, !nonnull !69, !align !119
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.j, align 8
  %i.k = ptrtoint ptr %0 to i64
  store i64 %i.k, ptr %2, align 8, !tbaa !273
  store ptr @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.i, align 8, !tbaa !118
  store ptr @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.h, align 8, !tbaa !16
  invoke void @_ZN11V3DfgPasses10addAstRefsER8DfgGraphP7AstNodeSt8functionIFP12DfgVertexVarP11AstVarScopeEE(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull %1, ptr noundef nonnull align 8 %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.q, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.p

_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit

_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit: ; preds = %bb.c, %bb.b, %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit
  ret void
}

declare void @_ZN14VNVisitorConst5visitEP7AstLoop(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitor5visitEP9AstModule(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit, label %bb.b, !prof !116

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7AstNode14iterateAndNextER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit

_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitor5visitEP10AstNetlist(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit, label %bb.b, !prof !116

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7AstNode14iterateAndNextER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit

_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitor5visitEP16AstNodeProcedure(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271, !nonnull !69, !align !119
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8
  %i.f = ptrtoint ptr %0 to i64
  store i64 %i.f, ptr %2, align 8, !tbaa !273
  store ptr @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.d, align 8, !tbaa !118
  store ptr @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.c, align 8, !tbaa !16
  invoke void @_ZN11V3DfgPasses10addAstRefsER8DfgGraphP7AstNodeSt8functionIFP12DfgVertexVarP11AstVarScopeEE(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef %1, ptr noundef nonnull align 8 %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.l, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.k

_ZN15AstToDfgVisitor14markReferencedEP7AstNode.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitor5visitEP8AstScope(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !445  ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !48
  invoke void @_ZN7AstNode15iterateChildrenER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN9VNVisitor15iterateChildrenEP7AstNode.exit unwind label %bb.b

_ZN9VNVisitor15iterateChildrenEP7AstNode.exit:    ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8, !tbaa !445
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.a, align 8, !tbaa !445
  resume { ptr, i32 } %i.c
}

declare void @_ZN14VNVisitorConst5visitEP10AstSenItem(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitor5visitEP11AstTopScope(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0), !inline_history !0
  ret void
}

declare void @_ZN14VNVisitorConst5visitEP9AstVarRef(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9VNVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 4184) (i8, ptr @_ZTV9VNVisitor, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN9VNDeleter9doDeletesEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN9VNDeleterD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZN9VNDeleterD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #21
  unreachable

_ZN9VNDeleterD2Ev.exit:                           ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9VNVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15VNUserInUseBase8allocateEiRjRb(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !109
  %i.b = load i8, ptr %2, align 1, !tbaa !67, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18, i64 noundef 16) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 47) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.20, i64 noundef 1) ; 0 uses
  %i.g = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !19
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !280
  %i.m = and i32 %i.l, -75
  %i.n = or disjoint i32 %i.m, 2
  store i32 %i.n, ptr %i.k, align 8, !tbaa !281
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef 182) ; 2 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.20, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.22)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %3, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.g, !inline_history !4 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.v = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !34
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.af = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN7V3Error7vlAbortEv()
  %.pre = load i32, ptr %i.a, align 4, !tbaa !109
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.f:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.g
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !34
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.f
  %.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.am, %bb.g ] ; 2 uses
  %i.as = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.av = load i64, ptr %i.at, align 8, !tbaa !34
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !34
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn

bb.h:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.bc = phi i32 [ %0, %bb.a ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ]
  store i8 1, ptr %2, align 1, !tbaa !67
  call void @_ZN15VNUserInUseBase8clearcntEiRjRKb(i32 noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #23 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !33
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !30
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !35
  %i.o = load i64, ptr %i.i, align 8, !tbaa !34
  store i64 %i.o, ptr %i.g, align 8, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !33
  store ptr %i.i, ptr %i.f, align 8, !tbaa !35
  store i64 0, ptr %i.q, align 8, !tbaa !33
  store i8 0, ptr %i.i, align 8, !tbaa !34
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !30
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !35
  %i.k = load i64, ptr %i.e, align 8, !tbaa !34
  store i64 %i.k, ptr %i.c, align 8, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !33
  store ptr %i.e, ptr %i.b, align 8, !tbaa !35
  store i64 0, ptr %i.m, align 8, !tbaa !33
  store i8 0, ptr %i.e, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = load i32, ptr %1, align 4, !tbaa !109
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.a)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !30, !alias.scope !452
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !33, !alias.scope !452
  store i8 0, ptr %i.c, align 8, !tbaa !34, !alias.scope !452
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !453, !noalias !452 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !452 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !454, !noalias !452 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !35, !alias.scope !452 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.c, align 8, !tbaa !34, !alias.scope !452
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #24
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !19
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !34
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ai) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare void @_ZN7V3Error7vlAbortEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15VNUserInUseBase8clearcntEiRjRKb(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !109
  %i.b = load i8, ptr %2, align 1, !tbaa !67, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.h, label %bb.b, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18, i64 noundef 16) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 47) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.20, i64 noundef 1) ; 0 uses
  %i.g = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !19
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !280
  %i.m = and i32 %i.l, -75
  %i.n = or disjoint i32 %i.m, 2
  store i32 %i.n, ptr %i.k, align 8, !tbaa !281
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef 192) ; 2 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.20, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.26, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.27)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %3, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.g, !inline_history !4 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.v = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !34
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.af = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN7V3Error7vlAbortEv()
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.f:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.g
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !34
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.f
  %.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.am, %bb.g ] ; 2 uses
  %i.as = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.av = load i64, ptr %i.at, align 8, !tbaa !34
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !34
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
end_hunk_0
begin_hunk_1_@_ZN15VNUserInUseBase8clearcntEiRjRKb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn

bb.h:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.bc = load i32, ptr %1, align 4, !tbaa !109
  %i.bd = add i32 %i.bc, 1                        ; 2 uses
  store i32 %i.bd, ptr %1, align 4, !tbaa !109
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %bb.i, label %bb.j, !prof !116

bb.i:                                             ; preds = %bb.h
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18, i64 noundef 16) ; 0 uses
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 47) ; 0 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.20, i64 noundef 1) ; 0 uses
  %i.bh = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !19
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !280
  %i.bn = and i32 %i.bm, -75
  %i.bo = or disjoint i32 %i.bn, 2
  store i32 %i.bo, ptr %i.bl, align 8, !tbaa !281
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef 196) ; 3 uses
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.20, i64 noundef 1) ; 0 uses
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.28, i64 noundef 19) ; 0 uses
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.bp), !inline_history !4 ; 0 uses
  call void @_ZN7V3Error7vlAbortEv()
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !109
  %i.b = load i8, ptr %2, align 1, !tbaa !67, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.h, label %bb.b, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18, i64 noundef 16) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 47) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.20, i64 noundef 1) ; 0 uses
  %i.g = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !19
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !280
  %i.m = and i32 %i.l, -75
  %i.n = or disjoint i32 %i.m, 2
  store i32 %i.n, ptr %i.k, align 8, !tbaa !281
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef 187) ; 2 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.20, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.29, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.27)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %3, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.g, !inline_history !4 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.v = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !34
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.af = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN7V3Error7vlAbortEv()
  %.pre = load i32, ptr %i.a, align 4, !tbaa !109
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.f:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.g
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !34
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.f
  %.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.am, %bb.g ] ; 2 uses
  %i.as = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.av = load i64, ptr %i.at, align 8, !tbaa !34
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !34
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn

bb.h:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.bc = phi i32 [ %0, %bb.a ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ]
  call void @_ZN15VNUserInUseBase8clearcntEiRjRKb(i32 noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  store i8 0, ptr %2, align 1, !tbaa !67
  ret void
}

declare void @_ZN9VNDeleter9doDeletesEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !117
  %i.b = load ptr, ptr %0, align 8, !tbaa !456
  %i.c = tail call noundef ptr @_ZN15AstToDfgVisitor12getVarVertexEP11AstVarScope(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef %i.a)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFP12DfgVertexVarP11AstVarScopeEZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlP11AstVarScopeE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlP11AstVarScopeE_, ptr %0, align 8, !tbaa !458
  br label %_ZNSt14_Function_base13_Base_managerIZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlP11AstVarScopeE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !17
  br label %_ZNSt14_Function_base13_Base_managerIZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlP11AstVarScopeE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !273
  store i64 %i.a, ptr %0, align 8, !tbaa !273
  br label %_ZNSt14_Function_base13_Base_managerIZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlP11AstVarScopeE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlP11AstVarScopeE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN15AstToDfgVisitor12getVarVertexEP11AstVarScope(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !282
  %i.c = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !109
  %i.d = icmp ne i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not20 = icmp eq i64 %i.f, 0
  %.not = select i1 %i.d, i1 true, i1 %.not20
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.i = tail call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.h, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit.thread, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit

_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.j, align 8, !tbaa !97
  %i.k = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 99
  br i1 %i.k, label %bb.c, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit.thread

bb.c:                                             ; preds = %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
  %i.l = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !271, !nonnull !69, !align !119
  invoke void @_ZN12DfgVertexVarC2ER8DfgGraph8VDfgTypeP11AstVarScope(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef nonnull align 8 dereferenceable(144) %i.n, i16 60, ptr noundef nonnull %1)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV11DfgVarArray, i64 16), ptr %i.l, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !283, !nonnull !69, !align !119
  %i.q = load i8, ptr %i.p, align 8, !tbaa !145
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %_ZN11DfgVarArrayC2ER8DfgGraphP11AstVarScope.exit, label %bb.d, !prof !153

bb.d:                                             ; preds = %.noexc
  %i.s = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.30, i32 noundef 148)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.31, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.f
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.t) #25
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  unreachable

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.f, %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN12DfgVertexVarD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.l) #23
  br label %.body

_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit.thread: ; preds = %bb.b, %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
  %i.w = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !271, !nonnull !69, !align !119
  invoke void @_ZN12DfgVertexVarC2ER8DfgGraph8VDfgTypeP11AstVarScope(ptr noundef nonnull align 8 dereferenceable(120) %i.w, ptr noundef nonnull align 8 dereferenceable(144) %i.y, i16 61, ptr noundef nonnull %1)
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit.thread
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV12DfgVarPacked, i64 16), ptr %i.w, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !283, !nonnull !69, !align !119
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !145
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %_ZN11DfgVarArrayC2ER8DfgGraphP11AstVarScope.exit, label %bb.i, !prof !153

bb.i:                                             ; preds = %.noexc17
  %i.ad = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.30, i32 noundef 160)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.36, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16: ; preds = %bb.k
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.ae) #25
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16
  unreachable

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16, %bb.k, %bb.j, %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN12DfgVertexVarD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.w) #23
  br label %.body

_ZN11DfgVarArrayC2ER8DfgGraphP11AstVarScope.exit: ; preds = %.noexc17, %.noexc
  %i.ah = phi ptr [ %i.l, %.noexc ], [ %i.w, %.noexc17 ]
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  store i64 %i.ai, ptr %i.e, align 8, !tbaa !34
  %i.aj = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !109
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !282
  br label %bb.p

bb.n:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit.thread
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.m, %bb.n, %bb.h
  %.sink = phi ptr [ %i.l, %bb.n ], [ %i.l, %bb.h ], [ %i.w, %bb.m ], [ %i.w, %bb.o ]
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.n ], [ %i.v, %bb.h ], [ %i.ag, %bb.m ], [ %i.al, %bb.o ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 120) #24
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZN11DfgVarArrayC2ER8DfgGraphP11AstVarScope.exit, %bb.a
  %i.am = phi i64 [ %i.ai, %_ZN11DfgVarArrayC2ER8DfgGraphP11AstVarScope.exit ], [ %i.f, %bb.a ]
  %i.an = inttoptr i64 %i.am to ptr
  ret ptr %i.an
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode6user2pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !282
  %i.c = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !109
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0.i = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12AstNodeDType8skipRefpEv(ptr noundef nonnull align 8 dereferenceable(162) %0) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !97
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user2uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !282
  %i.c = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !109
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
end_hunk_1
begin_hunk_2_@_ZNK12DfgVertexVar7srcNameB5cxx11Em:._crit_edge.i.i
  %i.a = select i1 %.not, ptr @.str.35, ptr @.str.34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !30
  %i.c = select i1 %.not, i64 4, i64 8            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(4) %i.a, i64 %i.c, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  store i8 0, ptr %i.e, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12DfgVertexVarD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12DfgVarPacked6acceptER10DfgVisitor(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12DfgVertexVarD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV12DfgVertexVar, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !285  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !108
  %i.e = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !109 ; 3 uses
  %i.f = icmp eq i32 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, 4294967264
  %i.j = and i64 %i.i, 4294967295
  %.sroa.0.0.insert.ext.i = select i1 %i.f, i64 %i.j, i64 4294967264
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.g, align 8, !tbaa !34
  store i32 %i.e, ptr %i.c, align 8, !tbaa !108
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !285  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load i32, ptr %i.l, align 8, !tbaa !108
  %i.n = icmp eq i32 %i.m, %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 2147483648
  %i.r = icmp ne i64 %i.q, 0
  %i.s = select i1 %i.n, i1 %i.r, i1 false
  br i1 %i.s, label %bb.b, label %bb.f, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.t = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.30, i32 noundef 76)
          to label %bb.c unwind label %bb.p       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.u = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.d unwind label %bb.p       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.33, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr noundef nonnull align 8 dereferenceable(112) %i.u) #25
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  unreachable

bb.f:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV9DfgVertex, i64 16), ptr %0, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !268  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.aa = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !58 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !61 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !128 ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %.pre.i.i.i.i.i.i.i.i.i.i, ptr %i.af, align 8, !tbaa !128
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.i, %bb.h
  %.not15.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !63
  %i.ai = icmp eq ptr %i.ah, %i.aa
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !64
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !63
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !129
  %i.am = icmp eq ptr %i.al, %i.aa
  br i1 %i.am, label %bb.n, label %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  store ptr %.pre.i.i.i.i.i.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !129
  br label %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #24, !inline_history !270
  br label %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.z
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.w, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %bb.f
  %i.ao = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.x, %bb.f ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i.i, label %_ZN9DfgVertexD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !269
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #24, !inline_history !270
  br label %_ZN9DfgVertexD2Ev.exit

_ZN9DfgVertexD2Ev.exit:                           ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.o
  ret void

bb.p:                                             ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.b
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #21
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12DfgVarPackedD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN12DfgVertexVarD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #24
  ret void
}

declare noundef zeroext i1 @_ZNK10AstSenTree8hasComboEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

declare void @_ZN7AstNode15iterateChildrenER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN15AstToDfgVisitor7convertEP9AstAlways(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.167", align 8 ; 8 uses
  %3 = alloca %"class.std::unique_ptr.167", align 8 ; 8 uses
  %4 = alloca %"class.std::unique_ptr.175", align 8 ; 4 uses
  %5 = alloca %"class.std::unique_ptr.175", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr.167", align 8 ; 8 uses
  %7 = alloca %"class.std::unique_ptr.167", align 8 ; 8 uses
  %8 = alloca %"class.std::unique_ptr.175", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 153
  %.sroa.0.0.copyload.i = load i8, ptr %i.a, align 1, !tbaa !460 ; 2 uses
  %i.b = icmp eq i8 %.sroa.0.0.copyload.i, 4      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 6 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.e, align 8, !tbaa !97
  %i.f = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 471
  br i1 %i.f, label %_ZN7AstNode4castI10AstAssignWS_EEPT_PT0_.exit, label %bb.u

_ZN7AstNode4castI10AstAssignWS_EEPT_PT0_.exit:    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !286
  %.not36 = icmp eq ptr %i.h, null
  br i1 %.not36, label %bb.d, label %.thread78

bb.d:                                             ; preds = %_ZN7AstNode4castI10AstAssignWS_EEPT_PT0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287
  %.not37 = icmp eq ptr %i.j, null
  br i1 %.not37, label %bb.e, label %.thread78

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !288, !nonnull !69, !align !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !291
  %i.o = fadd double %i.n, 1.000000e+00
  store double %i.o, ptr %i.m, align 8, !tbaa !291
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN15AstToDfgVisitor13gatherWrittenEPK7AstNode(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.167") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.d)
  %i.p = load ptr, ptr %2, align 8, !tbaa !293
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev.exit53, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN15AstToDfgVisitor10gatherReadEPK7AstNode(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.167") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.d)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %3, align 8, !tbaa !293
  %i.r = icmp ne ptr %i.q, null                   ; 3 uses
  br i1 %i.r, label %bb.i, label %.thread

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.t = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #22
          to label %bb.j unwind label %bb.l       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !271, !nonnull !69, !align !119
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48
  store ptr null, ptr %4, align 8, !tbaa !461
  invoke void @_ZN8DfgLogicC2ER8DfgGraphP9AstAlwaysP8AstScopeSt10unique_ptrI8CfgGraphSt14default_deleteIS7_EE(ptr noundef nonnull align 8 dereferenceable(152) %i.t, ptr noundef nonnull align 8 dereferenceable(144) %i.v, ptr noundef nonnull %1, ptr noundef %i.x, ptr noundef nonnull align 8 %4)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt10unique_ptrI8CfgGraphSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  %i.y = load ptr, ptr %3, align 8, !tbaa !293
  %i.z = load ptr, ptr %2, align 8, !tbaa !293
  invoke void @_ZN15AstToDfgVisitor7connectER8DfgLogicRKSt6vectorIP12DfgVertexVarSaIS4_EES8_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI8CfgGraphSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 152) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %i.ab, %bb.m ]
  call void @_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !288, !nonnull !69, !align !119
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !291
  %i.af = fadd double %i.ae, 1.000000e+00
  store double %i.af, ptr %i.ad, align 8, !tbaa !291
  %.pr = load ptr, ptr %3, align 8, !tbaa !293    ; 4 uses
  %.not.i49 = icmp eq ptr %.pr, null
  br i1 %.not.i49, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = load ptr, ptr %.pr, align 8, !tbaa !298 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !299
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #24
  br label %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i

_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i: ; preds = %bb.q, %bb.p
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 24) #24
  br label %.thread

bb.r:                                             ; preds = %bb.n, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.au

.thread:                                          ; preds = %bb.g, %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.pr73 = load ptr, ptr %2, align 8, !tbaa !293  ; 4 uses
  %.not.i50 = icmp eq ptr %.pr73, null
  br i1 %.not.i50, label %_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev.exit53, label %bb.s

bb.s:                                             ; preds = %.thread
  %i.am = load ptr, ptr %.pr73, align 8, !tbaa !298 ; 3 uses
  %.not.i.i.i.i.i51 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i51, label %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i52, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %.pr73, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !299
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #24
  br label %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i52

_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i52: ; preds = %bb.t, %bb.s
  call void @_ZdlPvm(ptr noundef nonnull %.pr73, i64 noundef 24) #24
  br label %_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev.exit53

_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev.exit53: ; preds = %bb.e, %.thread, %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i52
  %.13077 = phi i1 [ %i.r, %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i52 ], [ %i.r, %.thread ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.thread78

bb.u:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !146
  %.not40 = icmp eq ptr %i.at, null
  br i1 %.not40, label %bb.v, label %.thread78

bb.v:                                             ; preds = %bb.u
  switch i8 %.sroa.0.0.copyload.i, label %bb.w [
    i8 0, label %bb.x
    i8 3, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  br i1 %i.b, label %bb.x, label %.thread78

bb.x:                                             ; preds = %bb.v, %bb.v, %bb.w
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !288, !nonnull !69, !align !119
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !291
  %i.ay = fadd double %i.ax, 1.000000e+00
  store double %i.ay, ptr %i.aw, align 8, !tbaa !291
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !113
  call void @_ZN8CfgGraph5buildEP7AstNode(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.175") align 8 %5, ptr noundef %i.ba)
  %i.bb = load ptr, ptr %5, align 8, !tbaa !300
  %.not89 = icmp eq ptr %i.bb, null
  br i1 %.not89, label %.thread97, label %bb.y

.thread97:                                        ; preds = %bb.x
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !288, !nonnull !69, !align !119
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !291
  %i.bf = fadd double %i.be, 1.000000e+00
  store double %i.bf, ptr %i.bd, align 8, !tbaa !291
  br label %_ZNSt10unique_ptrI8CfgGraphSt14default_deleteIS0_EED2Ev.exit66

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN15AstToDfgVisitor13gatherWrittenEPK7AstNode(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.167") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bg = load ptr, ptr %6, align 8, !tbaa !293
  %.not90 = icmp eq ptr %i.bg, null
  br i1 %.not90, label %bb.at, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bi = load ptr, ptr %5, align 8, !tbaa !300
  invoke void @_ZN15AstToDfgVisitor10gatherLiveERK8CfgGraph(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.167") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bi)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bj = load ptr, ptr %7, align 8, !tbaa !293
  %i.bk = icmp ne ptr %i.bj, null                 ; 3 uses
  br i1 %i.bk, label %bb.ae, label %.thread82

bb.ad:                                            ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ae:                                            ; preds = %bb.ac
  %i.bm = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #22
          to label %bb.af unwind label %bb.aj     ; 8 uses

bb.af:                                            ; preds = %bb.ae
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !271, !nonnull !69, !align !119
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !48
  %i.br = load i64, ptr %5, align 8, !tbaa !300   ; 2 uses
  store i64 %i.br, ptr %8, align 8, !tbaa !300
  store ptr null, ptr %5, align 8, !tbaa !300
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.bu = load ptr, ptr @_ZN11DfgDataType11s_nullTypepE, align 8, !tbaa !161 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %bb.ag, label %_ZN11DfgDataType4nullEv.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.bv = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22
          to label %.noexc unwind label %bb.ak    ; 13 uses

.noexc:                                           ; preds = %bb.ag
  store i8 2, ptr %i.bv, align 8, !tbaa !145
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 0, ptr %i.bw, align 4, !tbaa !162
  %i.bx = load ptr, ptr @v3Global, align 8, !tbaa !218
  %i.by = invoke noundef ptr @_ZNK7AstNode13findVoidDTypeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bx)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !163
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr null, ptr %i.ca, align 8, !tbaa !164
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !155
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i64 1, ptr %i.cd, align 8, !tbaa !154
end_hunk_2
begin_hunk_3_@_ZN15AstToDfgVisitor13gatherWrittenEPK7AstNode:bb.a
_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev.exit: ; preds = %.thread, %bb.e, %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser3InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser3InUse10s_userBusyE)
          to label %_ZN12VNUser3InUseD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #21
  unreachable

_ZN12VNUser3InUseD2Ev.exit:                       ; preds = %_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.i:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN12VNUser3InUseD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitor10gatherReadEPK7AstNode(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.167") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.VNUser3InUse, align 1        ; 4 uses
  %4 = alloca %"class.std::unique_ptr.167", align 8 ; 8 uses
  %5 = alloca %class.anon.209, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @_ZN15VNUserInUseBase8allocateEiRjRb(i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser3InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser3InUse10s_userBusyE)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %4, align 8, !tbaa !293
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %4, ptr %5, align 8, !tbaa !317
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !323
  %i.c = invoke noundef zeroext i1 @_ZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_b(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext false)
          to label %_ZNK7AstNode6existsIZN15AstToDfgVisitor10gatherReadEPKS_EUlPK9AstVarRefE_EEbOT_.exit unwind label %bb.d

_ZNK7AstNode6existsIZN15AstToDfgVisitor10gatherReadEPKS_EUlPK9AstVarRefE_EEbOT_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.c, label %bb.e, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  br label %bb.i

.thread:                                          ; preds = %_ZNK7AstNode6existsIZN15AstToDfgVisitor10gatherReadEPKS_EUlPK9AstVarRefE_EEbOT_.exit
  %i.f = load i64, ptr %4, align 8, !tbaa !293
  store i64 %i.f, ptr %0, align 8, !tbaa !293
  br label %_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev.exit

bb.e:                                             ; preds = %_ZNK7AstNode6existsIZN15AstToDfgVisitor10gatherReadEPKS_EUlPK9AstVarRefE_EEbOT_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !288, !nonnull !69, !align !119
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !291
  %i.k = fadd double %i.j, 1.000000e+00
  store double %i.k, ptr %i.i, align 8, !tbaa !291
  store ptr null, ptr %0, align 8, !tbaa !321
  %.pr = load ptr, ptr %4, align 8, !tbaa !293    ; 4 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %.pr, align 8, !tbaa !298  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !299
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #24
  br label %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i

_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i: ; preds = %bb.g, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 24) #24
  br label %_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev.exit: ; preds = %.thread, %bb.e, %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser3InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser3InUse10s_userBusyE)
          to label %_ZN12VNUser3InUseD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #21
  unreachable

_ZN12VNUser3InUseD2Ev.exit:                       ; preds = %_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.i:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN12VNUser3InUseD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8DfgLogicC2ER8DfgGraphP9AstAlwaysP8AstScopeSt10unique_ptrI8CfgGraphSt14default_deleteIS7_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %2, ptr noundef %3, ptr noundef align 8 %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.c = load ptr, ptr @_ZN11DfgDataType11s_nullTypepE, align 8, !tbaa !161 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN11DfgDataType4nullEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22 ; 13 uses
  store i8 2, ptr %i.d, align 8, !tbaa !145
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !162
  %i.f = load ptr, ptr @v3Global, align 8, !tbaa !218
  %i.g = invoke noundef ptr @_ZNK7AstNode13findVoidDTypeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.f)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !163
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.i, align 8, !tbaa !164
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.k, ptr %i.j, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 1, ptr %i.l, align 8, !tbaa !154
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !165
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store ptr %i.d, ptr @_ZN11DfgDataType11s_nullTypepE, align 8, !tbaa !161
  br label %_ZN11DfgDataType4nullEv.exit

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #24
  resume { ptr, i32 } %i.p

_ZN11DfgDataType4nullEv.exit:                     ; preds = %bb.a, %bb.c
  %i.q = phi ptr [ %i.d, %bb.c ], [ %i.c, %bb.a ]
  tail call void @_ZN9DfgVertexC2ER8DfgGraph8VDfgTypeP8FileLineRK11DfgDataType(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i16 62, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.q)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8DfgLogic, i64 16), ptr %0, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %2, ptr %i.r, align 8, !tbaa !314
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %3, ptr %i.s, align 8, !tbaa !315
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load i64, ptr %4, align 8, !tbaa !300
  store i64 %i.u, ptr %i.t, align 8, !tbaa !300
  store ptr null, ptr %4, align 8, !tbaa !300
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.v, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI8CfgGraphSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !300    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI8CfgGraphEclEPS0_.exit

_ZNKSt14default_deleteI8CfgGraphEclEPS0_.exit:    ; preds = %bb.a
  tail call void @_ZN7V3GraphD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #24
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI8CfgGraphEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitor7connectER8DfgLogicRKSt6vectorIP12DfgVertexVarSaIS4_EES8_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !462    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !462  ; 2 uses
  %.not3537 = icmp eq ptr %i.a, %i.c
  br i1 %.not3537, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN8DfgLogic8addInputEP12DfgVertexVar.exit, %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !462    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !462  ; 2 uses
  %.not3639 = icmp eq ptr %i.d, %i.f
  br i1 %.not3639, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.m

.lr.ph:                                           ; preds = %bb.a, %_ZN8DfgLogic8addInputEP12DfgVertexVar.exit
  %.sroa.032.038 = phi ptr [ %i.ae, %_ZN8DfgLogic8addInputEP12DfgVertexVar.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.032.038, align 8, !tbaa !325 ; 4 uses
  %i.k = tail call noundef ptr @_ZN9DfgVertex8newInputEv(ptr noundef nonnull align 8 dereferenceable(152) %1) ; 11 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !128 ; 4 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.pre.i.i.i.i, ptr %i.p, align 8, !tbaa !128
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %bb.b
  %.not15.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not15.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 16
  store ptr %i.o, ptr %i.q, align 8, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.s = icmp eq ptr %i.r, %i.k
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !64
  store ptr %i.t, ptr %i.m, align 8, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !129
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %bb.h, label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %.pre.i.i.i.i, ptr %i.u, align 8, !tbaa !129
  br label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i

_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i: ; preds = %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i

_ZN7DfgEdge10unlinkSrcpEv.exit.i.i:               ; preds = %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i, %.lr.ph
  store ptr %i.j, ptr %i.k, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN8DfgLogic8addInputEP12DfgVertexVar.exit, label %bb.i

bb.i:                                             ; preds = %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !63   ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr null, ptr %i.aa, align 8, !tbaa !128
  %.not.i2.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i2.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.k, ptr %i.ab, align 8, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %i.k, ptr %i.x, align 8, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !129
  %.not6.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not6.i.i.i, label %bb.l, label %_ZN8DfgLogic8addInputEP12DfgVertexVar.exit

bb.l:                                             ; preds = %bb.k
  store ptr %i.k, ptr %i.ac, align 8, !tbaa !129
  br label %_ZN8DfgLogic8addInputEP12DfgVertexVar.exit

_ZN8DfgLogic8addInputEP12DfgVertexVar.exit:       ; preds = %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i, %bb.k, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.038, i64 8 ; 2 uses
  %.not35 = icmp eq ptr %i.ae, %i.c
  br i1 %.not35, label %._crit_edge, label %.lr.ph

._crit_edge43:                                    ; preds = %_ZN13DfgUnresolved9addDriverEP8DfgLogic.exit, %._crit_edge
  ret void

bb.m:                                             ; preds = %.lr.ph42, %_ZN13DfgUnresolved9addDriverEP8DfgLogic.exit
  %.sroa.028.040 = phi ptr [ %i.d, %.lr.ph42 ], [ %i.ci, %_ZN13DfgUnresolved9addDriverEP8DfgLogic.exit ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.028.040, align 8, !tbaa !325 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !61
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.n, label %_ZN12DfgVertexVar4srcpEP9DfgVertex.exit

bb.n:                                             ; preds = %bb.m
  %i.ak = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22 ; 6 uses
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !271, !nonnull !69, !align !119
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !326
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !283, !nonnull !69, !align !119
  invoke void @_ZN9DfgVertexC2ER8DfgGraph8VDfgTypeP8FileLineRK11DfgDataType(ptr noundef nonnull align 8 dereferenceable(96) %i.ak, ptr noundef nonnull align 8 dereferenceable(144) %i.al, i16 63, ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(80) %i.ap)
          to label %bb.o unwind label %bb.z

bb.o:                                             ; preds = %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV13DfgUnresolved, i64 16), ptr %i.ak, align 8, !tbaa !19
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58 ; 11 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !61 ; 3 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i15, label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.av, null
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !128 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %.pre.i.i.i.i.i, ptr %i.aw, align 8, !tbaa !128
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.q, %bb.p
  %.not15.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not15.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 16
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i.i
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !63
  %i.az = icmp eq ptr %i.ay, %i.ar
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !64
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !63
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !129
  %i.bd = icmp eq ptr %i.bc, %i.ar
  br i1 %i.bd, label %bb.v, label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  store ptr %.pre.i.i.i.i.i, ptr %i.bb, align 8, !tbaa !129
  br label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i

_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i

_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i:             ; preds = %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i, %bb.o
  store ptr %i.ak, ptr %i.ar, align 8, !tbaa !61
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !63 ; 3 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr null, ptr %i.bh, align 8, !tbaa !128
  %.not.i2.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i2.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.ar, ptr %i.bi, align 8, !tbaa !128
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i
  store ptr %i.ar, ptr %i.be, align 8, !tbaa !63
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !129
  %.not6.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not6.i.i.i.i, label %bb.y, label %_ZN12DfgVertexVar4srcpEP9DfgVertex.exit

bb.y:                                             ; preds = %bb.x
  store ptr %i.ar, ptr %i.bj, align 8, !tbaa !129
  br label %_ZN12DfgVertexVar4srcpEP9DfgVertex.exit

bb.z:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 96) #24
  resume { ptr, i32 } %i.bl

_ZN12DfgVertexVar4srcpEP9DfgVertex.exit:          ; preds = %bb.y, %bb.x, %bb.m
  %i.bm = load ptr, ptr %i.ag, align 8, !tbaa !56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !58
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !61
  %i.bp = tail call noundef ptr @_ZN9DfgVertex2asI13DfgUnresolvedEEPT_v(ptr noundef nonnull align 8 dereferenceable(96) %i.bo)
  %i.bq = tail call noundef ptr @_ZN9DfgVertex8newInputEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bp) ; 11 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !61 ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i17, label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i24, label %bb.aa

bb.aa:                                            ; preds = %_ZN12DfgVertexVar4srcpEP9DfgVertex.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.bu, null
  %.phi.trans.insert.i.i.i.i19 = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.pre.i.i.i.i20 = load ptr, ptr %.phi.trans.insert.i.i.i.i19, align 8, !tbaa !128 ; 4 uses
  br i1 %.not.i.i.i.i18, label %._crit_edge.i.i.i.i21, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %.pre.i.i.i.i20, ptr %i.bv, align 8, !tbaa !128
  br label %._crit_edge.i.i.i.i21

._crit_edge.i.i.i.i21:                            ; preds = %bb.ab, %bb.aa
  %.not15.i.i.i.i22 = icmp eq ptr %.pre.i.i.i.i20, null
  br i1 %.not15.i.i.i.i22, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i21
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i20, i64 16
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i.i.i21
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !63
  %i.by = icmp eq ptr %i.bx, %i.bq
  br i1 %i.by, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !64
  store ptr %i.bz, ptr %i.bs, align 8, !tbaa !63
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 56 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !129
  %i.cc = icmp eq ptr %i.cb, %i.bq
  br i1 %i.cc, label %bb.ag, label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i23

bb.ag:                                            ; preds = %bb.af
  store ptr %.pre.i.i.i.i20, ptr %i.ca, align 8, !tbaa !129
  br label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i23

_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i23: ; preds = %bb.ag, %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  br label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i24

_ZN7DfgEdge10unlinkSrcpEv.exit.i.i24:             ; preds = %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i23, %_ZN12DfgVertexVar4srcpEP9DfgVertex.exit
  store ptr %1, ptr %i.bq, align 8, !tbaa !61
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ce = load ptr, ptr %i.h, align 8, !tbaa !63  ; 3 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr null, ptr %i.cf, align 8, !tbaa !128
  %.not.i2.i.i26 = icmp eq ptr %i.ce, null
  br i1 %.not.i2.i.i26, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store ptr %i.bq, ptr %i.cg, align 8, !tbaa !128
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i24
  store ptr %i.bq, ptr %i.h, align 8, !tbaa !63
  %i.ch = load ptr, ptr %i.i, align 8, !tbaa !129
  %.not6.i.i.i27 = icmp eq ptr %i.ch, null
  br i1 %.not6.i.i.i27, label %bb.aj, label %_ZN13DfgUnresolved9addDriverEP8DfgLogic.exit

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.bq, ptr %i.i, align 8, !tbaa !129
  br label %_ZN13DfgUnresolved9addDriverEP8DfgLogic.exit

_ZN13DfgUnresolved9addDriverEP8DfgLogic.exit:     ; preds = %bb.ai, %bb.aj
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.028.040, i64 8 ; 2 uses
  %.not36 = icmp eq ptr %i.ci, %i.f
  br i1 %.not36, label %._crit_edge43, label %bb.m
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !293    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !299
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit

_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteISt6vectorIP12DfgVertexVarSaIS2_EEEclEPS4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9AstAlways8sentreepEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  ret ptr %i.b
}

declare void @_ZN8CfgGraph5buildEP7AstNode(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.175") align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15AstToDfgVisitor10gatherLiveERK8CfgGraph(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.167") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.214", align 8 ; 9 uses
  %4 = alloca %class.VNUser3InUse, align 1        ; 4 uses
  %5 = alloca %"class.std::unique_ptr.167", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5V3Cfg13liveVarScopesERK8CfgGraph(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.214") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !328
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread77, label %bb.b

.thread77:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !288, !nonnull !69, !align !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !291
  %i.f = fadd double %i.e, 1.000000e+00
  store double %i.f, ptr %i.d, align 8, !tbaa !291
  store ptr null, ptr %0, align 8, !tbaa !321
  br label %_ZNSt10unique_ptrISt6vectorIP11AstVarScopeSaIS2_EESt14default_deleteIS4_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN15VNUserInUseBase8allocateEiRjRb(i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser3InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser3InUse10s_userBusyE)
          to label %_ZN12VNUser3InUseC2Ev.exit unwind label %bb.h

_ZN12VNUser3InUseC2Ev.exit:                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.c unwind label %bb.i       ; 12 uses

bb.c:                                             ; preds = %_ZN12VNUser3InUseC2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr %i.g, ptr %5, align 8, !tbaa !293
  %i.h = load ptr, ptr %3, align 8, !tbaa !328    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !463  ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !331  ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp ugt i64 %i.n, 9223372036854775800
  %i.p = ptrtoint ptr %i.g to i64
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.106) #25
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %.not76 = icmp eq ptr %i.j, %i.k
  br i1 %.not76, label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIP12DfgVertexVarSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP12DfgVertexVarSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22
          to label %.noexc22 unwind label %bb.j   ; 4 uses

.noexc22:                                         ; preds = %_ZNSt12_Vector_baseIP12DfgVertexVarSaIS1_EE11_M_allocateEm.exit.i
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !298  ; 4 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !332
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

bb.f:                                             ; preds = %.noexc22
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.t, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.f, %.noexc22
  %.not.i8.i = icmp eq ptr %i.t, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIP12DfgVertexVarSaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !299
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ab) #24
  br label %_ZNSt12_Vector_baseIP12DfgVertexVarSaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIP12DfgVertexVarSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.s, ptr %i.g, align 8, !tbaa !298
  store ptr %i.s, ptr %i.r, align 8, !tbaa !332
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n
  store ptr %i.ac, ptr %i.q, align 8, !tbaa !299
  %.pre = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %.pre61 = load ptr, ptr %.pre, align 8, !tbaa !464
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre62 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !464
  br label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP12DfgVertexVarSaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIP12DfgVertexVarSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.e
  %i.ad = phi ptr [ %.pre62, %_ZNSt12_Vector_baseIP12DfgVertexVarSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.ae = phi ptr [ %.pre61, %_ZNSt12_Vector_baseIP12DfgVertexVarSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.k, %bb.e ] ; 2 uses
  %.not4254 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not4254, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE7reserveEm.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  br label %.lr.ph

bb.h:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.i:                                             ; preds = %_ZN12VNUser3InUseC2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIP12DfgVertexVarSaIS1_EE11_M_allocateEm.exit.i, %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aa
  %.sroa.034.055 = phi ptr [ %i.cu, %bb.aa ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.034.055, align 8, !tbaa !117 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !93
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 200
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !96 ; 3 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %bb.ab, label %_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i

_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i: ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.ao, align 8, !tbaa !97
  switch i16 %.sroa.0.0.copyload.i.i.i.i, label %bb.ab [
    i16 387, label %bb.k
    i16 386, label %_ZN7AstNode4castI8AstIface13AstNodeModuleEEPKT_PKT0_.exit.i
  ]

_ZN7AstNode4castI8AstIface13AstNodeModuleEEPKT_PKT0_.exit.i: ; preds = %_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 306
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !107, !range !68, !noundef !69
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %_ZN7AstNode4castI8AstIface13AstNodeModuleEEPKT_PKT0_.exit.i, %_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.at = load i32, ptr %i.as, align 8, !tbaa !108
  %i.au = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !109
  %i.av = icmp eq i32 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = and i64 %i.ax, 16
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = select i1 %i.av, i1 %i.az, i1 false
  br i1 %i.ba, label %bb.ab, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 168
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !110 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 248
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.bd, align 8, !tbaa !112
  %i.be = icmp eq i8 %.sroa.0.0.copyload.i.i.i, 20
  br i1 %i.be, label %bb.ab, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !113
  %.not14.i = icmp eq ptr %i.bg, null
  br i1 %.not14.i, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 260
  %i.bi = load i64, ptr %i.bh, align 4
  %i.bj = and i64 %i.bi, 32
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !114
  %i.bm = invoke noundef ptr @_ZN11DfgDataType7fromAstEPK12AstNodeDType(ptr noundef %i.bl)
          to label %_ZN5V3Dfg11isSupportedEPK11AstVarScope.exit unwind label %.loopexit

_ZN5V3Dfg11isSupportedEPK11AstVarScope.exit:      ; preds = %bb.o
  %.not43 = icmp eq ptr %i.bm, null
  br i1 %.not43, label %bb.ab, label %bb.p

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %_ZN7AstNode12user3SetOnceEv.exit, %bb.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.p:                                             ; preds = %_ZN5V3Dfg11isSupportedEPK11AstVarScope.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 136 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !333
  %i.bp = load i32, ptr @_ZN12VNUser3InUse12s_userCntGblE, align 4, !tbaa !109 ; 2 uses
  %i.bq = icmp ne i32 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.aj, i64 128 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = and i64 %i.bs, 4294967295
  %.not.i2444 = icmp eq i64 %i.bt, 0
  %.not.i24 = select i1 %i.bq, i1 true, i1 %.not.i2444
  br i1 %.not.i24, label %bb.t, label %_ZN7AstNode12user3SetOnceEv.exit

_ZN7AstNode12user3SetOnceEv.exit:                 ; preds = %bb.p
  %i.bu = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 186)
          to label %bb.q unwind label %.loopexit.split-lp ; 0 uses

bb.q:                                             ; preds = %_ZN7AstNode12user3SetOnceEv.exit
  %i.bv = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.r unwind label %.loopexit.split-lp ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.105, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.r
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.aj, ptr noundef nonnull align 8 dereferenceable(112) %i.bv) #25
          to label %bb.s unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  unreachable

bb.t:                                             ; preds = %bb.p
  store i64 1, ptr %i.br, align 8, !tbaa !34
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !333
  %i.bx = invoke noundef ptr @_ZN15AstToDfgVisitor12getVarVertexEP11AstVarScope(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.aj)
          to label %bb.u unwind label %.loopexit45 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.by = load ptr, ptr %i.af, align 8, !tbaa !332 ; 4 uses
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !299
  %.not.i26 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i26, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !325
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.ca, ptr %i.af, align 8, !tbaa !332
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !298 ; 4 uses
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 5 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.x, label %_ZNKSt6vectorIP12DfgVertexVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
          to label %.noexc27 unwind label %.loopexit.split-lp46

.noexc27:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIP12DfgVertexVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #22
          to label %.noexc28 unwind label %.loopexit45 ; 4 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIP12DfgVertexVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store ptr %i.bx, ptr %i.cn, align 8, !tbaa !325
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.y, label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.y:                                             ; preds = %.noexc28
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr align 8 %i.cb, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.y, %.noexc28
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.cq = load ptr, ptr %i.q, align 8, !tbaa !299
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.cd
end_hunk_3
begin_hunk_4_@_ZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor13gatherWrittenEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_b:bb.a
bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.0.add = add nuw nsw i64 %.0.idx, 8
  store ptr %i.i, ptr %.0.idx.sroa.phi, align 8, !tbaa !335
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4.idx = phi i64 [ %.0.idx, %bb.e ], [ %.0.add, %bb.f ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !287  ; 2 uses
  %.not21.i = icmp eq ptr %i.k, null
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.4.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.idx
  %.4.add = add nuw nsw i64 %.4.idx, 8
  store ptr %i.k, ptr %.4.ptr, align 8, !tbaa !335
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.5.idx = phi i64 [ %.4.idx, %bb.g ], [ %.4.add, %bb.h ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113  ; 2 uses
  %.not22.i = icmp eq ptr %i.m, null
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.5.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.idx
  %.5.add = add nuw nsw i64 %.5.idx, 8
  store ptr %i.m, ptr %.5.ptr, align 8, !tbaa !335
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.6.idx = phi i64 [ %.5.idx, %bb.i ], [ %.5.add, %bb.j ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !146  ; 2 uses
  %.not23.i = icmp eq ptr %i.o, null
  br i1 %.not23.i, label %.preheader, label %.preheader.thread

.preheader.thread:                                ; preds = %bb.k
  %.6.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.6.idx
  %.6.add = add nuw nsw i64 %.6.idx, 8
  store ptr %i.o, ptr %.6.ptr, align 8, !tbaa !335
  br label %.lr.ph.preheader

_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor13gatherWrittenEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit: ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZZN15AstToDfgVisitor13gatherWrittenEPK7AstNodeENKUlPK9AstVarRefE_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  br i1 %i.p, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.k, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor13gatherWrittenEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit
  %.1.ph.idx = phi i64 [ %.0.idx, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor13gatherWrittenEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit ], [ %.6.idx, %bb.k ] ; 2 uses
  %i.q = icmp samesign ugt i64 %.1.ph.idx, 16
  br i1 %i.q, label %.lr.ph.preheader, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit, !prof !337

.lr.ph.preheader:                                 ; preds = %.preheader.thread, %.preheader
  %.1.ph.idx134 = phi i64 [ %.6.add, %.preheader.thread ], [ %.1.ph.idx, %.preheader ]
  %.1.ph.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.ph.idx134
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.035106 = phi ptr [ %.136, %.backedge ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.037105 = phi ptr [ %.138, %.backedge ], [ %.ptr111, %.lr.ph.preheader ] ; 3 uses
  %.039104 = phi i64 [ %.140, %.backedge ], [ 32, %.lr.ph.preheader ] ; 3 uses
  %.sroa.070.0103 = phi ptr [ %.sroa.070.1, %.backedge ], [ null, %.lr.ph.preheader ] ; 4 uses
  %.1102 = phi ptr [ %.1.be, %.backedge ], [ %.1.ph.ptr, %.lr.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.1102, i64 -8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !335  ; 7 uses
  %i.t = getelementptr inbounds i8, ptr %.1102, i64 -24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !335  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.w, i32 0, i32 3, i32 1)
  %.not46 = icmp ult ptr %i.r, %.035106
  br i1 %.not46, label %bb.o, label %bb.l, !prof !153

bb.l:                                             ; preds = %.lr.ph
  %i.x = shl i64 %.039104, 1                      ; 3 uses
  %i.y = icmp ugt i64 %i.x, 2305843009213693951
  %i.z = shl i64 %.039104, 4
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z
  %i.ab = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #22
          to label %bb.m unwind label %bb.n       ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.ac = ptrtoint ptr %i.r to i64
  %i.ad = ptrtoint ptr %.037105 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.037105, i64 -16
  %i.ag = add i64 %i.ae, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.af, i64 %i.ag, i1 false)
  %.not.i.i = icmp eq ptr %.sroa.070.0103, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit, label %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i

_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.0103) #24
  br label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit

_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.ae
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -40
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit, %.lr.ph
  %.286 = phi ptr [ %i.r, %.lr.ph ], [ %i.ai, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ] ; 3 uses
  %.sroa.070.1 = phi ptr [ %.sroa.070.0103, %.lr.ph ], [ %i.ab, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ] ; 4 uses
  %.140 = phi i64 [ %.039104, %.lr.ph ], [ %i.x, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ]
  %.138 = phi ptr [ %.037105, %.lr.ph ], [ %i.ah, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ] ; 2 uses
  %.136 = phi ptr [ %.035106, %.lr.ph ], [ %i.ak, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !286 ; 2 uses
  %.not47 = icmp eq ptr %i.an, null
  br i1 %.not47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %.286, i64 8
  store ptr %i.an, ptr %.286, align 8, !tbaa !335
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3 = phi ptr [ %.286, %bb.o ], [ %i.ao, %bb.p ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.0.0.copyload.i.i.i50 = load i16, ptr %i.ap, align 8, !tbaa !97
  %i.aq = icmp eq i16 %.sroa.0.0.copyload.i.i.i50, 369
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ar = invoke noundef zeroext i1 @_ZZN15AstToDfgVisitor13gatherWrittenEPK7AstNodeENKUlPK9AstVarRefE_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.s)
          to label %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor13gatherWrittenEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit57 unwind label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !336 ; 2 uses
  %.not.i51 = icmp eq ptr %i.at, null
  br i1 %.not.i51, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %.3, i64 8
  store ptr %i.at, ptr %.3, align 8, !tbaa !335
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.8 = phi ptr [ %.3, %bb.s ], [ %i.au, %bb.t ]  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !287 ; 2 uses
  %.not21.i52 = icmp eq ptr %i.aw, null
  br i1 %.not21.i52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %.8, i64 8
  store ptr %i.aw, ptr %.8, align 8, !tbaa !335
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.9 = phi ptr [ %.8, %bb.u ], [ %i.ax, %bb.v ]  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !113 ; 2 uses
  %.not22.i53 = icmp eq ptr %i.az, null
  br i1 %.not22.i53, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %.9, i64 8
  store ptr %i.az, ptr %.9, align 8, !tbaa !335
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.10 = phi ptr [ %.9, %bb.w ], [ %i.ba, %bb.x ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !146 ; 2 uses
  %.not23.i54 = icmp eq ptr %i.bc, null
  br i1 %.not23.i54, label %.backedge, label %.split87

.split87:                                         ; preds = %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %.10, i64 8
  store ptr %i.bc, ptr %.10, align 8, !tbaa !335
  br label %.backedge

bb.z:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor13gatherWrittenEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit57: ; preds = %bb.r
  br i1 %i.ar, label %._crit_edge, label %.backedge

.backedge:                                        ; preds = %bb.y, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor13gatherWrittenEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit57, %.split87
  %.1.be = phi ptr [ %i.bd, %.split87 ], [ %.3, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor13gatherWrittenEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit57 ], [ %.10, %bb.y ] ; 2 uses
  %i.bf = icmp ugt ptr %.1.be, %.138
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !prof !338, !llvm.loop !465

._crit_edge:                                      ; preds = %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor13gatherWrittenEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit57, %.backedge
  %.lcssa = phi i1 [ false, %.backedge ], [ true, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor13gatherWrittenEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit57 ] ; 2 uses
  %.not.i58 = icmp eq ptr %.sroa.070.1, null
  br i1 %.not.i58, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i

_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i: ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.1) #24
  br label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit: ; preds = %.preheader, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor13gatherWrittenEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit, %._crit_edge, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i
  %.291 = phi i1 [ %.lcssa, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i ], [ %.lcssa, %._crit_edge ], [ true, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor13gatherWrittenEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit ], [ false, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.291

bb.aa:                                            ; preds = %bb.n, %bb.z
  %.sroa.070.3 = phi ptr [ %.sroa.070.1, %bb.z ], [ %.sroa.070.0103, %bb.n ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.be, %bb.z ], [ %i.al, %bb.n ]
  %.not.i59 = icmp eq ptr %.sroa.070.3, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit61, label %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i60

_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i60: ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.3) #24
  br label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit61

_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit61: ; preds = %bb.aa, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN15AstToDfgVisitor13gatherWrittenEPK7AstNodeENKUlPK9AstVarRefE_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !319
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i = load i8, ptr %i.c, align 8, !tbaa !115
  %i.d = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.d, label %_ZN7AstNode12user3SetOnceEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !96   ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN7AstNode12user3SetOnceEv.exit, label %_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i

_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.k, align 8, !tbaa !97
  switch i16 %.sroa.0.0.copyload.i.i.i.i, label %_ZN7AstNode12user3SetOnceEv.exit [
    i16 387, label %bb.c
    i16 386, label %_ZN7AstNode4castI8AstIface13AstNodeModuleEEPKT_PKT0_.exit.i
  ]

_ZN7AstNode4castI8AstIface13AstNodeModuleEEPKT_PKT0_.exit.i: ; preds = %_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 306
  %i.m = load i8, ptr %i.l, align 2, !tbaa !107, !range !68, !noundef !69
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN7AstNode12user3SetOnceEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7AstNode4castI8AstIface13AstNodeModuleEEPKT_PKT0_.exit.i, %_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.p = load i32, ptr %i.o, align 8, !tbaa !108
  %i.q = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !109
  %i.r = icmp eq i32 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 16
  %i.v = icmp ne i64 %i.u, 0
  %i.w = select i1 %i.r, i1 %i.v, i1 false
  br i1 %i.w, label %_ZN7AstNode12user3SetOnceEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !110  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 248
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.z, align 8, !tbaa !112
  %i.aa = icmp eq i8 %.sroa.0.0.copyload.i.i.i, 20
  br i1 %i.aa, label %_ZN7AstNode12user3SetOnceEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !113
  %.not14.i = icmp eq ptr %i.ac, null
  br i1 %.not14.i, label %bb.f, label %_ZN7AstNode12user3SetOnceEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 260
  %i.ae = load i64, ptr %i.ad, align 4
  %i.af = and i64 %i.ae, 32
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %_ZN5V3Dfg11isSupportedEPK11AstVarScope.exit, label %_ZN7AstNode12user3SetOnceEv.exit

_ZN5V3Dfg11isSupportedEPK11AstVarScope.exit:      ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !114
  %i.ai = tail call noundef ptr @_ZN11DfgDataType7fromAstEPK12AstNodeDType(ptr noundef %i.ah)
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %_ZN7AstNode12user3SetOnceEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5V3Dfg11isSupportedEPK11AstVarScope.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !333
  %i.al = load i32, ptr @_ZN12VNUser3InUse12s_userCntGblE, align 4, !tbaa !109 ; 2 uses
  %i.am = icmp ne i32 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, 4294967295
  %.not.i712 = icmp eq i64 %i.ap, 0
  %.not.i7 = select i1 %i.am, i1 true, i1 %.not.i712
  br i1 %.not.i7, label %bb.h, label %_ZN7AstNode12user3SetOnceEv.exit

bb.h:                                             ; preds = %bb.g
  store i64 1, ptr %i.an, align 8, !tbaa !34
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !333
  %i.aq = load ptr, ptr %0, align 8, !tbaa !466, !nonnull !69, !align !119
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !293 ; 4 uses
  %i.as = tail call noundef ptr @_ZN15AstToDfgVisitor12getVarVertexEP11AstVarScope(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull %i.f) ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !332 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !299
  %.not.i8 = icmp eq ptr %i.au, %i.aw
  br i1 %.not.i8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.as, ptr %i.au, align 8, !tbaa !325
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !332
  br label %_ZN7AstNode12user3SetOnceEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !298 ; 4 uses
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 5 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.k, label %_ZNKSt6vectorIP12DfgVertexVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
  unreachable

_ZNKSt6vectorIP12DfgVertexVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bd = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #22 ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store ptr %i.as, ptr %i.bk, align 8, !tbaa !325
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.l, label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIP12DfgVertexVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr align 8 %i.ay, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorIP12DfgVertexVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bn = load ptr, ptr %i.av, align 8, !tbaa !299
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bp) #24
  br label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP12DfgVertexVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.bj, ptr %i.ar, align 8, !tbaa !298
  store ptr %i.bm, ptr %i.at, align 8, !tbaa !332
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh
  store ptr %i.bq, ptr %i.av, align 8, !tbaa !299
  br label %_ZN7AstNode12user3SetOnceEv.exit

_ZN7AstNode12user3SetOnceEv.exit:                 ; preds = %_ZN5V3Dfg11isSupportedEPK11AstVarScope.exit, %bb.g, %bb.i, %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.f, %bb.c, %_ZN7AstNode4castI8AstIface13AstNodeModuleEEPKT_PKT0_.exit.i, %bb.d, %bb.e, %_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ true, %_ZN5V3Dfg11isSupportedEPK11AstVarScope.exit ], [ false, %bb.g ], [ false, %bb.i ], [ true, %bb.f ], [ true, %bb.c ], [ true, %_ZN7AstNode4castI8AstIface13AstNodeModuleEEPKT_PKT0_.exit.i ], [ true, %bb.d ], [ true, %bb.e ], [ true, %_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i ], [ true, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode4op4pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user3uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !333
  %i.c = load i32, ptr @_ZN12VNUser3InUse12s_userCntGblE, align 4, !tbaa !109
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_b(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.ptr111 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.0.idx.sroa.gep119 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.a, align 16, !tbaa !335
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !335
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !286  ; 2 uses
  %.not45 = icmp eq ptr %i.e, null
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %.ptr111, align 16, !tbaa !335
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.idx.sroa.phi = phi ptr [ %.ptr111, %bb.b ], [ %.0.idx.sroa.gep119, %bb.c ], [ %.ptr111, %bb.a ]
  %.0.idx = phi i64 [ 16, %bb.b ], [ 24, %bb.c ], [ 16, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.f, align 8, !tbaa !97
  %i.g = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 369
  br i1 %i.g, label %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.0.add = add nuw nsw i64 %.0.idx, 8
  store ptr %i.i, ptr %.0.idx.sroa.phi, align 8, !tbaa !335
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4.idx = phi i64 [ %.0.idx, %bb.e ], [ %.0.add, %bb.f ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !287  ; 2 uses
  %.not21.i = icmp eq ptr %i.k, null
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.4.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.idx
  %.4.add = add nuw nsw i64 %.4.idx, 8
  store ptr %i.k, ptr %.4.ptr, align 8, !tbaa !335
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.5.idx = phi i64 [ %.4.idx, %bb.g ], [ %.4.add, %bb.h ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113  ; 2 uses
  %.not22.i = icmp eq ptr %i.m, null
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.5.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.idx
  %.5.add = add nuw nsw i64 %.5.idx, 8
  store ptr %i.m, ptr %.5.ptr, align 8, !tbaa !335
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.6.idx = phi i64 [ %.5.idx, %bb.i ], [ %.5.add, %bb.j ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !146  ; 2 uses
  %.not23.i = icmp eq ptr %i.o, null
  br i1 %.not23.i, label %.preheader, label %.preheader.thread

.preheader.thread:                                ; preds = %bb.k
  %.6.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.6.idx
  %.6.add = add nuw nsw i64 %.6.idx, 8
  store ptr %i.o, ptr %.6.ptr, align 8, !tbaa !335
  br label %.lr.ph.preheader

_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit: ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZZN15AstToDfgVisitor10gatherReadEPK7AstNodeENKUlPK9AstVarRefE_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  br i1 %i.p, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.k, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit
  %.1.ph.idx = phi i64 [ %.0.idx, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit ], [ %.6.idx, %bb.k ] ; 2 uses
  %i.q = icmp samesign ugt i64 %.1.ph.idx, 16
  br i1 %i.q, label %.lr.ph.preheader, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit, !prof !337

.lr.ph.preheader:                                 ; preds = %.preheader.thread, %.preheader
  %.1.ph.idx134 = phi i64 [ %.6.add, %.preheader.thread ], [ %.1.ph.idx, %.preheader ]
  %.1.ph.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.ph.idx134
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.035106 = phi ptr [ %.136, %.backedge ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.037105 = phi ptr [ %.138, %.backedge ], [ %.ptr111, %.lr.ph.preheader ] ; 3 uses
  %.039104 = phi i64 [ %.140, %.backedge ], [ 32, %.lr.ph.preheader ] ; 3 uses
  %.sroa.070.0103 = phi ptr [ %.sroa.070.1, %.backedge ], [ null, %.lr.ph.preheader ] ; 4 uses
  %.1102 = phi ptr [ %.1.be, %.backedge ], [ %.1.ph.ptr, %.lr.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.1102, i64 -8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !335  ; 7 uses
  %i.t = getelementptr inbounds i8, ptr %.1102, i64 -24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !335  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.w, i32 0, i32 3, i32 1)
  %.not46 = icmp ult ptr %i.r, %.035106
  br i1 %.not46, label %bb.o, label %bb.l, !prof !153

bb.l:                                             ; preds = %.lr.ph
  %i.x = shl i64 %.039104, 1                      ; 3 uses
  %i.y = icmp ugt i64 %i.x, 2305843009213693951
  %i.z = shl i64 %.039104, 4
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z
  %i.ab = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #22
          to label %bb.m unwind label %bb.n       ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.ac = ptrtoint ptr %i.r to i64
  %i.ad = ptrtoint ptr %.037105 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.037105, i64 -16
  %i.ag = add i64 %i.ae, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.af, i64 %i.ag, i1 false)
  %.not.i.i = icmp eq ptr %.sroa.070.0103, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit, label %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i

_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.0103) #24
  br label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit

_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.ae
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -40
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit, %.lr.ph
  %.286 = phi ptr [ %i.r, %.lr.ph ], [ %i.ai, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ] ; 3 uses
  %.sroa.070.1 = phi ptr [ %.sroa.070.0103, %.lr.ph ], [ %i.ab, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ] ; 4 uses
  %.140 = phi i64 [ %.039104, %.lr.ph ], [ %i.x, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ]
  %.138 = phi ptr [ %.037105, %.lr.ph ], [ %i.ah, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ] ; 2 uses
  %.136 = phi ptr [ %.035106, %.lr.ph ], [ %i.ak, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !286 ; 2 uses
  %.not47 = icmp eq ptr %i.an, null
  br i1 %.not47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %.286, i64 8
  store ptr %i.an, ptr %.286, align 8, !tbaa !335
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3 = phi ptr [ %.286, %bb.o ], [ %i.ao, %bb.p ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.0.0.copyload.i.i.i50 = load i16, ptr %i.ap, align 8, !tbaa !97
  %i.aq = icmp eq i16 %.sroa.0.0.copyload.i.i.i50, 369
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ar = invoke noundef zeroext i1 @_ZZN15AstToDfgVisitor10gatherReadEPK7AstNodeENKUlPK9AstVarRefE_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.s)
          to label %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit57 unwind label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !336 ; 2 uses
  %.not.i51 = icmp eq ptr %i.at, null
  br i1 %.not.i51, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %.3, i64 8
  store ptr %i.at, ptr %.3, align 8, !tbaa !335
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.8 = phi ptr [ %.3, %bb.s ], [ %i.au, %bb.t ]  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !287 ; 2 uses
  %.not21.i52 = icmp eq ptr %i.aw, null
  br i1 %.not21.i52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %.8, i64 8
  store ptr %i.aw, ptr %.8, align 8, !tbaa !335
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.9 = phi ptr [ %.8, %bb.u ], [ %i.ax, %bb.v ]  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !113 ; 2 uses
  %.not22.i53 = icmp eq ptr %i.az, null
  br i1 %.not22.i53, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %.9, i64 8
  store ptr %i.az, ptr %.9, align 8, !tbaa !335
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.10 = phi ptr [ %.9, %bb.w ], [ %i.ba, %bb.x ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !146 ; 2 uses
  %.not23.i54 = icmp eq ptr %i.bc, null
  br i1 %.not23.i54, label %.backedge, label %.split87

.split87:                                         ; preds = %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %.10, i64 8
  store ptr %i.bc, ptr %.10, align 8, !tbaa !335
  br label %.backedge

bb.z:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit57: ; preds = %bb.r
  br i1 %i.ar, label %._crit_edge, label %.backedge

.backedge:                                        ; preds = %bb.y, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit57, %.split87
  %.1.be = phi ptr [ %i.bd, %.split87 ], [ %.3, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit57 ], [ %.10, %bb.y ] ; 2 uses
  %i.bf = icmp ugt ptr %.1.be, %.138
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !prof !338, !llvm.loop !467

._crit_edge:                                      ; preds = %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit57, %.backedge
  %.lcssa = phi i1 [ false, %.backedge ], [ true, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit57 ] ; 2 uses
  %.not.i58 = icmp eq ptr %.sroa.070.1, null
  br i1 %.not.i58, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i

_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i: ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.1) #24
  br label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit: ; preds = %.preheader, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit, %._crit_edge, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i
  %.291 = phi i1 [ %.lcssa, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i ], [ %.lcssa, %._crit_edge ], [ true, %_ZZN7AstNode13predicateImplIK9AstVarRefLb0EZN15AstToDfgVisitor10gatherReadEPKS_EUlPS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES4_S_E4typeERKT1_bENKUlS5_E_clES5_.exit ], [ false, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.291

bb.aa:                                            ; preds = %bb.n, %bb.z
  %.sroa.070.3 = phi ptr [ %.sroa.070.1, %bb.z ], [ %.sroa.070.0103, %bb.n ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.be, %bb.z ], [ %i.al, %bb.n ]
  %.not.i59 = icmp eq ptr %.sroa.070.3, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit61, label %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i60

_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i60: ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.3) #24
  br label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit61

_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit61: ; preds = %bb.aa, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN15AstToDfgVisitor10gatherReadEPK7AstNodeENKUlPK9AstVarRefE_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !323
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i = load i8, ptr %i.c, align 8, !tbaa !115
  %i.d = icmp eq i8 %.sroa.0.0.copyload.i, 1
  br i1 %i.d, label %_ZN7AstNode12user3SetOnceEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !96   ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN7AstNode12user3SetOnceEv.exit, label %_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i

_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.k, align 8, !tbaa !97
  switch i16 %.sroa.0.0.copyload.i.i.i.i, label %_ZN7AstNode12user3SetOnceEv.exit [
    i16 387, label %bb.c
    i16 386, label %_ZN7AstNode4castI8AstIface13AstNodeModuleEEPKT_PKT0_.exit.i
  ]

_ZN7AstNode4castI8AstIface13AstNodeModuleEEPKT_PKT0_.exit.i: ; preds = %_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 306
  %i.m = load i8, ptr %i.l, align 2, !tbaa !107, !range !68, !noundef !69
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN7AstNode12user3SetOnceEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7AstNode4castI8AstIface13AstNodeModuleEEPKT_PKT0_.exit.i, %_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.p = load i32, ptr %i.o, align 8, !tbaa !108
  %i.q = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !109
  %i.r = icmp eq i32 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 16
  %i.v = icmp ne i64 %i.u, 0
  %i.w = select i1 %i.r, i1 %i.v, i1 false
  br i1 %i.w, label %_ZN7AstNode12user3SetOnceEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !110  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 248
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.z, align 8, !tbaa !112
  %i.aa = icmp eq i8 %.sroa.0.0.copyload.i.i.i, 20
  br i1 %i.aa, label %_ZN7AstNode12user3SetOnceEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !113
  %.not14.i = icmp eq ptr %i.ac, null
  br i1 %.not14.i, label %bb.f, label %_ZN7AstNode12user3SetOnceEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 260
  %i.ae = load i64, ptr %i.ad, align 4
  %i.af = and i64 %i.ae, 32
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %_ZN5V3Dfg11isSupportedEPK11AstVarScope.exit, label %_ZN7AstNode12user3SetOnceEv.exit

_ZN5V3Dfg11isSupportedEPK11AstVarScope.exit:      ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !114
  %i.ai = tail call noundef ptr @_ZN11DfgDataType7fromAstEPK12AstNodeDType(ptr noundef %i.ah)
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %_ZN7AstNode12user3SetOnceEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5V3Dfg11isSupportedEPK11AstVarScope.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !333
  %i.al = load i32, ptr @_ZN12VNUser3InUse12s_userCntGblE, align 4, !tbaa !109 ; 2 uses
  %i.am = icmp ne i32 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, 4294967295
  %.not.i712 = icmp eq i64 %i.ap, 0
  %.not.i7 = select i1 %i.am, i1 true, i1 %.not.i712
  br i1 %.not.i7, label %bb.h, label %_ZN7AstNode12user3SetOnceEv.exit

bb.h:                                             ; preds = %bb.g
  store i64 1, ptr %i.an, align 8, !tbaa !34
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !333
  %i.aq = load ptr, ptr %0, align 8, !tbaa !468, !nonnull !69, !align !119
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !293 ; 4 uses
  %i.as = tail call noundef ptr @_ZN15AstToDfgVisitor12getVarVertexEP11AstVarScope(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull %i.f) ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !332 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !299
  %.not.i8 = icmp eq ptr %i.au, %i.aw
  br i1 %.not.i8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.as, ptr %i.au, align 8, !tbaa !325
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !332
  br label %_ZN7AstNode12user3SetOnceEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !298 ; 4 uses
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 5 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.k, label %_ZNKSt6vectorIP12DfgVertexVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
  unreachable

_ZNKSt6vectorIP12DfgVertexVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bd = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #22 ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store ptr %i.as, ptr %i.bk, align 8, !tbaa !325
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.l, label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIP12DfgVertexVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr align 8 %i.ay, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorIP12DfgVertexVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bn = load ptr, ptr %i.av, align 8, !tbaa !299
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bp) #24
  br label %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP12DfgVertexVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.bj, ptr %i.ar, align 8, !tbaa !298
  store ptr %i.bm, ptr %i.at, align 8, !tbaa !332
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh
  store ptr %i.bq, ptr %i.av, align 8, !tbaa !299
  br label %_ZN7AstNode12user3SetOnceEv.exit

_ZN7AstNode12user3SetOnceEv.exit:                 ; preds = %_ZN5V3Dfg11isSupportedEPK11AstVarScope.exit, %bb.g, %bb.i, %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.f, %bb.c, %_ZN7AstNode4castI8AstIface13AstNodeModuleEEPKT_PKT0_.exit.i, %bb.d, %bb.e, %_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNSt6vectorIP12DfgVertexVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ true, %_ZN5V3Dfg11isSupportedEPK11AstVarScope.exit ], [ false, %bb.g ], [ false, %bb.i ], [ true, %bb.f ], [ true, %bb.c ], [ true, %_ZN7AstNode4castI8AstIface13AstNodeModuleEEPKT_PKT0_.exit.i ], [ true, %bb.d ], [ true, %bb.e ], [ true, %_ZN7AstNode2isI9AstModule13AstNodeModuleEEbPKT0_.exit.i ], [ true, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8DfgLogic6acceptER10DfgVisitor(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8DfgLogicD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(152) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !469  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP9DfgVertexSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !470
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIP9DfgVertexSaIS1_EED2Ev.exit

_ZNSt6vectorIP9DfgVertexSaIS1_EED2Ev.exit:        ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !300  ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI8CfgGraphSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI8CfgGraphEclEPS0_.exit.i

_ZNKSt14default_deleteI8CfgGraphEclEPS0_.exit.i:  ; preds = %_ZNSt6vectorIP9DfgVertexSaIS1_EED2Ev.exit
  tail call void @_ZN7V3GraphD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.i) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 72) #24
  br label %_ZNSt10unique_ptrI8CfgGraphSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI8CfgGraphSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIP9DfgVertexSaIS1_EED2Ev.exit, %_ZNKSt14default_deleteI8CfgGraphEclEPS0_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV9DfgVertex, i64 16), ptr %0, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !268  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrI8CfgGraphSt14default_deleteIS0_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i ], [ %i.k, %_ZNSt10unique_ptrI8CfgGraphSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %i.n = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !58 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !128 ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.pre.i.i.i.i.i.i.i.i.i.i, ptr %i.s, align 8, !tbaa !128
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.e, %bb.d
  %.not15.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.r, ptr %i.t, align 8, !tbaa !64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !63
  %i.v = icmp eq ptr %i.u, %i.n
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !64
  store ptr %i.w, ptr %i.p, align 8, !tbaa !63
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !129
  %i.z = icmp eq ptr %i.y, %i.n
  br i1 %i.z, label %bb.j, label %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  store ptr %.pre.i.i.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !tbaa !129
  br label %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 32) #24, !inline_history !270
  br label %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.m
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.j, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrI8CfgGraphSt14default_deleteIS0_EED2Ev.exit
  %i.ab = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.k, %_ZNSt10unique_ptrI8CfgGraphSt14default_deleteIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i, label %_ZN9DfgVertexD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !269
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #24, !inline_history !270
  br label %_ZN9DfgVertexD2Ev.exit

_ZN9DfgVertexD2Ev.exit:                           ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8DfgLogicD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN8DfgLogicD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(152) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK8DfgLogic7srcNameB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !33
  store i8 0, ptr %i.a, align 8, !tbaa !34
  ret void
}

declare noundef ptr @_ZNK7AstNode13findVoidDTypeEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN7V3GraphD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN9DfgVertex2asI13DfgUnresolvedEEPT_v(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.a, align 8, !tbaa !339
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 63
  br i1 %i.b, label %bb.e, label %bb.b, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.37, i32 noundef 329) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.38, i64 noundef 57) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZNK9DfgVertex8typeNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.f = load ptr, ptr %1, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.39, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  unreachable

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !34
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13DfgUnresolved6acceptER10DfgVisitor(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_4
begin_hunk_5_@llvm.umin.i64
!233 = !{!232, !226, i64 304}
!234 = !{!142, !138, i64 16}
!235 = !{!31, !31, i64 0}
!236 = !{!"_ZTSN12V3NumberData16V3NumberDataTypeE", !10, i64 0}
!237 = !{!"_ZTS12V3NumberData", !10, i64 0, !11, i64 32, !236, i64 36, !24, i64 37, !24, i64 37, !24, i64 37, !24, i64 37, !24, i64 37, !24, i64 37, !24, i64 37}
!238 = !{!237, !11, i64 32}
!239 = !{!237, !236, i64 36}
!240 = !{!"p1 _ZTSN12V3NumberData9ValueAndXE", !14, i64 0}
!241 = !{!"_ZTSNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE17_Vector_impl_dataE", !240, i64 0, !240, i64 8, !240, i64 16}
!242 = !{!241, !240, i64 0}
!243 = !{!241, !240, i64 16}
!244 = !{!"llvm.loop.isvectorized", i32 1}
!245 = !{!"llvm.loop.unroll.runtime.disable"}
!246 = !{!241, !240, i64 8}
!247 = !{!"_ZTSN11V3ErrorCode2enE", !10, i64 0}
!248 = !{!"_ZTS11V3ErrorCode", !247, i64 0}
!249 = !{!"any p3 pointer", !37, i64 0}
!250 = !{!"p3 _ZTS8FileLine", !249, i64 0}
!251 = !{!"p2 _ZTS8FileLine", !37, i64 0}
!252 = !{!"_ZTSSt15_Deque_iteratorIPK8FileLineRS2_PS2_E", !251, i64 0, !251, i64 8, !251, i64 16, !250, i64 24}
!253 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE16_Deque_impl_dataE", !250, i64 0, !31, i64 8, !252, i64 16, !252, i64 48}
!254 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE11_Deque_implE", !253, i64 0}
!255 = !{!"_ZTSSt11_Deque_baseIPK8FileLineSaIS2_EE", !254, i64 0}
!256 = !{!"_ZTSSt5dequeIPK8FileLineSaIS2_EE", !255, i64 0}
!257 = !{!"_ZTS13VErrorMessage", !248, i64 0, !32, i64 8, !75, i64 40, !256, i64 48}
!258 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!259 = !{!"_ZTSSt6locale", !258, i64 0}
!260 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !259, i64 56}
!261 = !{!185, !183, i64 8}
!262 = !{!253, !250, i64 0}
!263 = !{!253, !250, i64 40}
!264 = !{!253, !250, i64 72}
!265 = !{!251, !251, i64 0}
!266 = !{!253, !31, i64 8}
!267 = !{!252, !250, i64 24}
!268 = !{!55, !54, i64 8}
!269 = !{!55, !54, i64 16}
!270 = !{ptr @_ZN9DfgVertexD2Ev}
!271 = !{!47, !20, i64 40}
!272 = !{!"p1 _ZTS15AstToDfgVisitor", !14, i64 0}
!273 = !{!272, !272, i64 0}
!274 = !{!"_ZTSSt13_Ios_Fmtflags", !10, i64 0}
!275 = !{!"_ZTSSt12_Ios_Iostate", !10, i64 0}
!276 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!277 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !31, i64 8}
!278 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!279 = !{!"_ZTSSt8ios_base", !31, i64 8, !31, i64 16, !274, i64 24, !275, i64 28, !275, i64 32, !276, i64 40, !277, i64 48, !10, i64 64, !11, i64 192, !278, i64 200, !259, i64 208}
!280 = !{!279, !274, i64 24}
!281 = !{!274, !274, i64 0}
!282 = !{!77, !11, i64 116}
!283 = !{!127, !124, i64 72}
!284 = !{!"_ZTS12DfgVertexVar", !127, i64 0, !80, i64 96, !75, i64 104, !80, i64 112}
!285 = !{!284, !80, i64 96}
!286 = !{!77, !70, i64 8}
!287 = !{!77, !70, i64 40}
!288 = !{!47, !36, i64 48}
!289 = !{!"double", !10, i64 0}
!290 = !{!"_ZTS8VDouble0", !289, i64 0}
!291 = !{!290, !289, i64 0}
!292 = !{!"p1 _ZTSSt6vectorIP12DfgVertexVarSaIS1_EE", !14, i64 0}
!293 = !{!292, !292, i64 0}
!294 = !{!"p1 _ZTS8CfgGraph", !14, i64 0}
!295 = !{!"_ZTSSt10_Head_baseILm0EP8CfgGraphLb0EE", !294, i64 0}
!296 = !{!"p2 _ZTS12DfgVertexVar", !37, i64 0}
!297 = !{!"_ZTSNSt12_Vector_baseIP12DfgVertexVarSaIS1_EE17_Vector_impl_dataE", !296, i64 0, !296, i64 8, !296, i64 16}
!298 = !{!297, !296, i64 0}
!299 = !{!297, !296, i64 16}
!300 = !{!294, !294, i64 0}
!301 = !{!"_ZTS17DfgVertexVariadic", !127, i64 0}
!302 = !{!"p1 _ZTS9AstAlways", !14, i64 0}
!303 = !{!"_ZTSSt11_Tuple_implILm0EJP8CfgGraphSt14default_deleteIS0_EEE", !295, i64 0}
!304 = !{!"_ZTSSt5tupleIJP8CfgGraphSt14default_deleteIS0_EEE", !303, i64 0}
!305 = !{!"_ZTSSt15__uniq_ptr_implI8CfgGraphSt14default_deleteIS0_EE", !304, i64 0}
!306 = !{!"_ZTSSt15__uniq_ptr_dataI8CfgGraphSt14default_deleteIS0_ELb1ELb1EE", !305, i64 0}
!307 = !{!"_ZTSSt10unique_ptrI8CfgGraphSt14default_deleteIS0_EE", !306, i64 0}
!308 = !{!"p2 _ZTS9DfgVertex", !37, i64 0}
!309 = !{!"_ZTSNSt12_Vector_baseIP9DfgVertexSaIS1_EE17_Vector_impl_dataE", !308, i64 0, !308, i64 8, !308, i64 16}
!310 = !{!"_ZTSNSt12_Vector_baseIP9DfgVertexSaIS1_EE12_Vector_implE", !309, i64 0}
!311 = !{!"_ZTSSt12_Vector_baseIP9DfgVertexSaIS1_EE", !310, i64 0}
!312 = !{!"_ZTSSt6vectorIP9DfgVertexSaIS1_EE", !311, i64 0}
!313 = !{!"_ZTS8DfgLogic", !301, i64 0, !302, i64 96, !46, i64 104, !307, i64 112, !312, i64 120, !24, i64 144, !24, i64 145, !24, i64 146, !10, i64 147}
!314 = !{!313, !302, i64 96}
!315 = !{!313, !46, i64 104}
!316 = !{!"p1 _ZTSSt10unique_ptrISt6vectorIP12DfgVertexVarSaIS2_EESt14default_deleteIS4_EE", !14, i64 0}
!317 = !{!316, !316, i64 0}
!318 = !{!"_ZTSZN15AstToDfgVisitor13gatherWrittenEPK7AstNodeEUlPK9AstVarRefE_", !316, i64 0, !272, i64 8}
!319 = !{!318, !272, i64 8}
!320 = !{!"_ZTSSt10_Head_baseILm0EPSt6vectorIP12DfgVertexVarSaIS2_EELb0EE", !292, i64 0}
!321 = !{!320, !292, i64 0}
!322 = !{!"_ZTSZN15AstToDfgVisitor10gatherReadEPK7AstNodeEUlPK9AstVarRefE_", !316, i64 0, !272, i64 8}
!323 = !{!322, !272, i64 8}
!324 = !{!"p1 _ZTS12DfgVertexVar", !14, i64 0}
!325 = !{!324, !324, i64 0}
!326 = !{!127, !75, i64 64}
!327 = !{!"p1 _ZTSSt6vectorIP11AstVarScopeSaIS1_EE", !14, i64 0}
!328 = !{!327, !327, i64 0}
!329 = !{!"p2 _ZTS11AstVarScope", !37, i64 0}
!330 = !{!"_ZTSNSt12_Vector_baseIP11AstVarScopeSaIS1_EE17_Vector_impl_dataE", !329, i64 0, !329, i64 8, !329, i64 16}
!331 = !{!330, !329, i64 0}
!332 = !{!297, !296, i64 8}
!333 = !{!77, !11, i64 136}
!334 = !{!330, !329, i64 16}
!335 = !{!70, !70, i64 0}
!336 = !{!77, !70, i64 48}
!337 = !{!"branch_weights", i32 2118722707, i32 28760941}
!338 = !{!"branch_weights", i32 255873, i32 127}
!339 = !{!125, !125, i64 0}
!340 = !{!126, !125, i64 0}
!341 = !{!28, !28, i64 0}
!342 = distinct !{null}
!343 = distinct !{null}
!344 = distinct !{!344, !66}
!345 = !{!36, !36, i64 0}
!346 = !{!"_ZTS6V3ListI9DfgVertexXadL_ZNS0_5linksEvEE12DfgVertexVarE", !52, i64 0, !52, i64 8}
!347 = !{!346, !52, i64 0}
!348 = !{!53, !52, i64 0}
!349 = !{!"_ZTSSt8functionIFbR9DfgVertexEE", !15, i64 0, !14, i64 24}
!350 = !{!349, !14, i64 24}
!351 = distinct !{null}
!352 = !{!90, !81, i64 168}
!353 = !{!25, !20, i64 8}
!354 = !{!"p1 _ZTS11AstNodeExpr", !14, i64 0}
!355 = !{!"_ZTS12DfgVertexAst", !127, i64 0, !354, i64 96}
!356 = !{!355, !354, i64 96}
!357 = !{!"_ZTS8DfgAstRd", !355, i64 0, !24, i64 104, !24, i64 105}
!358 = !{!357, !24, i64 104}
!359 = !{!357, !24, i64 105}
!360 = !{!"_ZTS8VVarType", !111, i64 0}
!361 = !{!360, !111, i64 0}
!362 = !{!141, !31, i64 8}
!363 = !{!142, !31, i64 24}
!364 = distinct !{!364, !66}
!365 = !{!142, !138, i64 48}
!366 = !{!"_ZTS19AstUnpackArrayDType", !134, i64 0, !24, i64 176}
!367 = !{!366, !24, i64 176}
!368 = !{!131, !131, i64 0}
!369 = !{!"_ZTS12AstNodeRange", !77, i64 0}
!370 = !{!"_ZTS8AstRange", !369, i64 0, !24, i64 152}
!371 = !{!370, !24, i64 152}
!372 = !{!"_ZTSN12V3NumberData9ValueAndXE", !11, i64 0, !11, i64 4}
!373 = !{!372, !11, i64 0}
!374 = distinct !{!374, !66, !244, !245}
!375 = distinct !{!375, !66, !245, !244}
!376 = distinct !{!376, !66}
!377 = distinct !{!377, !66, !244, !245}
!378 = distinct !{!378, !66, !245, !244}
!379 = !{i64 0, i64 32, !34}
!380 = distinct !{!380, !66, !244, !245}
!381 = distinct !{!381, !66, !245, !244}
!382 = distinct !{!382, !66, !244, !245}
!383 = distinct !{!383, !66, !245, !244}
!384 = !{!236, !236, i64 0}
!385 = !{!"_ZTSSt12_Base_bitsetILm3EE", !10, i64 0}
!386 = !{!"_ZTSSt6bitsetILm146EE", !385, i64 0}
!387 = !{!"_ZTS12VErrorBitSet", !386, i64 0}
!388 = !{!"_ZTSSo"}
!389 = !{!"_ZTSSt13_Ios_Openmode", !10, i64 0}
!390 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !260, i64 0, !389, i64 64, !32, i64 72}
!391 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !388, i64 0, !390, i64 8}
!392 = !{!"_ZTSSt22__recursive_mutex_base", !10, i64 0}
!393 = !{!"_ZTSSt15recursive_mutex", !392, i64 0}
!394 = !{!"_ZTS10V3MutexImpISt15recursive_mutexE", !393, i64 0}
!395 = !{!"_ZTS14V3ErrorGuarded", !24, i64 0, !24, i64 1, !257, i64 8, !24, i64 136, !188, i64 144, !14, i64 192, !24, i64 200, !11, i64 204, !11, i64 208, !387, i64 216, !387, i64 240, !387, i64 264, !11, i64 288, !11, i64 292, !24, i64 296, !391, i64 304, !394, i64 680}
!396 = !{!395, !24, i64 0}
!397 = !{!395, !24, i64 1}
!398 = !{!395, !24, i64 136}
!399 = !{!185, !182, i64 0}
!400 = !{!185, !183, i64 16}
!401 = !{!185, !183, i64 24}
!402 = !{!185, !31, i64 32}
!403 = !{!395, !14, i64 192}
!404 = !{!395, !24, i64 200}
!405 = !{!395, !11, i64 204}
!406 = !{!395, !11, i64 208}
!407 = !{!395, !11, i64 288}
!408 = !{!395, !11, i64 292}
!409 = !{!395, !24, i64 296}
!410 = !{!"short", !10, i64 0}
!411 = !{!"p1 _ZTS23__pthread_internal_list", !14, i64 0}
!412 = !{!"_ZTS23__pthread_internal_list", !411, i64 0, !411, i64 8}
!413 = !{!"_ZTS17__pthread_mutex_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !410, i64 20, !410, i64 22, !412, i64 24}
!414 = !{!413, !11, i64 16}
!415 = distinct !{!415, !"_ZNSt5dequeIPK8FileLineSaIS2_EE5beginEv"}
!416 = distinct !{!416, !415, !"_ZNSt5dequeIPK8FileLineSaIS2_EE5beginEv: argument 0"}
!417 = !{!248, !247, i64 0}
!418 = !{!247, !247, i64 0}
!419 = !{!257, !75, i64 40}
!420 = !{!416}
!421 = !{!37, !37, i64 0}
!422 = distinct !{!422, !66}
!423 = !{!252, !251, i64 8}
!424 = !{!252, !251, i64 16}
!425 = !{!253, !251, i64 16}
!426 = !{!253, !251, i64 48}
!427 = distinct !{!427, !66}
!428 = !{!184, !183, i64 24}
!429 = !{!184, !183, i64 16}
!430 = distinct !{!430, !"_ZSt19__relocate_object_aISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!431 = distinct !{!431, !430, !"_ZSt19__relocate_object_aISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!432 = distinct !{!432, !430, !"_ZSt19__relocate_object_aISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!433 = distinct !{!433, !"LVerDomain"}
!434 = distinct !{!434, !433}
!435 = distinct !{!435, !433}
!436 = distinct !{!436, !66, !244, !245}
!437 = distinct !{!437, !66, !244}
!438 = !{!431}
!439 = !{!432}
!440 = !{!432, !434}
!441 = !{!431, !435}
!442 = !{!"p1 _ZTS10AstSenTree", !14, i64 0}
!443 = !{!"_ZTS9AstActive", !77, i64 0, !32, i64 152, !442, i64 184}
!444 = !{!443, !442, i64 184}
!445 = !{!46, !46, i64 0}
!446 = distinct !{!446, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!447 = distinct !{!447, !446, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!448 = distinct !{!448, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!449 = distinct !{!449, !448, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!450 = !{!447}
!451 = !{!449}
!452 = !{!449, !447}
!453 = !{!260, !28, i64 40}
!454 = !{!260, !28, i64 32}
!455 = !{!"_ZTSZN15AstToDfgVisitor14markReferencedEP7AstNodeEUlP11AstVarScopeE_", !272, i64 0}
!456 = !{!455, !272, i64 0}
!457 = !{!"p1 _ZTSSt9type_info", !14, i64 0}
!458 = !{!457, !457, i64 0}
!459 = !{!"_ZTSN10VAlwaysKwd2enE", !10, i64 0}
!460 = !{!459, !459, i64 0}
!461 = !{!295, !294, i64 0}
!462 = !{!296, !296, i64 0}
!463 = !{!330, !329, i64 8}
!464 = !{!329, !329, i64 0}
!465 = distinct !{!465, !66}
!466 = !{!318, !316, i64 0}
!467 = distinct !{!467, !66}
!468 = !{!322, !316, i64 0}
!469 = !{!309, !308, i64 0}
!470 = !{!309, !308, i64 16}
end_hunk_5
