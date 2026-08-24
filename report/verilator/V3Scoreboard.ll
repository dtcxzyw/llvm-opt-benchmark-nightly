Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Scoreboard?download=true
inline.NumInlined: 185
inline.NumDeleted: 114
begin_hunk_0_@_ZN13VErrorMessageC2Ev:bb.a
  invoke void @_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 0)
          to label %_ZNSt5dequeIPK8FileLineSaIS2_EEC2Ev.exit unwind label %bb.b

_ZNSt5dequeIPK8FileLineSaIS2_EEC2Ev.exit:         ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !104
  %i.e = load i64, ptr %i.c, align 8, !tbaa !103
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull @.str.16, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EEC2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.g, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !98, !noalias !106
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !109, !noalias !106 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !110, !noalias !106
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97   ; 2 uses
  %i.p = icmp ult ptr %i.l, %i.o
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc, %.lr.ph.i.i.i.i.i
  %.06.i.pn.i.i.i.i = phi ptr [ %.06.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.l, %.noexc ]
  %.06.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i.i.i.i, i64 8 ; 3 uses
  %i.q = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !98
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef 512) #19
  %i.r = icmp ult ptr %.06.i.i.i.i.i, %i.o
  br i1 %i.r, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !99

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x ptr> %i.i, ptr %i.s, align 8, !tbaa !98
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x ptr> %i.m, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !110
  ret void

bb.b:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EEC2Ev.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.t, %bb.b ]
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.b, align 8, !tbaa !94
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #20
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13VErrorMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i, align 8, !tbaa !98
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef 512) #19
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !99

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !95
  br label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.b, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !100
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #19
  br label %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit

_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit:         ; preds = %bb.a, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !94
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8, !tbaa !98
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #19
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i, !llvm.loop !99

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !95
  br label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i: ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !100
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #19
  br label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EED2Ev.exit

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EED2Ev.exit:  ; preds = %bb.a, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !100
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #21 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !95
  %2 = load i64, ptr %i.d, align 8, !tbaa !100
  %i.g = sub i64 %2, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
          to label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_create_nodesEPPS2_S6_.exit, !llvm.loop !111

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #17 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !98
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #19
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i, !llvm.loop !99

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #18
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #20
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #17 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !95
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !100
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #18
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_create_nodesEPPS2_S6_.exit: ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !109
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !98  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !112
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !113
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !109
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !98 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !112
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !113
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !114
  %i.aq = and i64 %1, 63
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !115
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #20
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !94
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #19
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !118

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN11PairingHeapI3KeyE6reduceEPNS1_4NodeE(ptr noundef %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %.not.i35 = icmp eq ptr %i.a, null
  br i1 %.not.i35, label %.loopexit, label %.preheader.preheader

.preheaderthread-pre-split:                       ; preds = %_ZN11PairingHeapI3KeyE4Link4linkEPNS1_4NodeE.exit33.thread77, %_ZN11PairingHeapI3KeyE4Link4linkEPNS1_4NodeE.exit33
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %.not.i34 = icmp eq ptr %.pr, null
  br i1 %.not.i34, label %_ZN11PairingHeapI3KeyE4Link4linkEPNS1_4NodeE.exit33.thread.thread73, label %.preheader.preheader

_ZN11PairingHeapI3KeyE4Link4linkEPNS1_4NodeE.exit33.thread.thread73: ; preds = %.preheaderthread-pre-split
  store ptr %.0.i38, ptr %i.d, align 8, !tbaa !22
  br label %.lr.ph.sink.split

.preheader.preheader:                             ; preds = %bb.a, %.preheaderthread-pre-split
  %i.b = phi ptr [ %.0.i38, %.preheaderthread-pre-split ], [ null, %bb.a ] ; 4 uses
  %.0265299 = phi ptr [ %i.d, %.preheaderthread-pre-split ], [ %0, %bb.a ] ; 9 uses
  %i.c = phi ptr [ %.pr, %.preheaderthread-pre-split ], [ %i.a, %bb.a ] ; 10 uses
  store ptr null, ptr %.0265299, align 8, !tbaa !22
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 6 uses
  store ptr null, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %.0265299, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !119  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0265299, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !119  ; 2 uses
  %i.k = icmp ugt i32 %i.h, %i.j
  br i1 %i.k, label %_ZNK3KeyltERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.l = icmp eq i32 %i.h, %i.j
  br i1 %i.l, label %_ZNK3KeyltERKS_.exit, label %_ZNK3KeyltERKS_.exit.thread43
end_hunk_0
