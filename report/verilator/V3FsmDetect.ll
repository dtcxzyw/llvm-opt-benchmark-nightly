Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3FsmDetect?download=true
inline.NumInlined: 5729
inline.NumDeleted: 2094
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@__cxa_guard_abort

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare ptr @llvm.ptr.annotation.p0.p0(ptr, ptr, ptr, i32, ptr) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13VErrorMessageC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !577
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !41
  store i8 0, ptr %i.b, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 0)
          to label %_ZNSt5dequeIPK8FileLineSaIS2_EEC2Ev.exit unwind label %bb.b

_ZNSt5dequeIPK8FileLineSaIS2_EEC2Ev.exit:         ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !578
  %i.e = load i64, ptr %i.c, align 8, !tbaa !41
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull @.str.4, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EEC2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.g, align 8, !tbaa !579
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !301, !noalias !580
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !303, !noalias !580 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !581, !noalias !580
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !300  ; 2 uses
  %i.p = icmp ult ptr %i.l, %i.o
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc, %.lr.ph.i.i.i.i.i
  %.06.i.pn.i.i.i.i = phi ptr [ %.06.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.l, %.noexc ]
  %.06.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i.i.i.i, i64 8 ; 3 uses
  %i.q = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !301
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef 512) #27
  %i.r = icmp ult ptr %.06.i.i.i.i.i, %i.o
  br i1 %i.r, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x ptr> %i.i, ptr %i.s, align 8, !tbaa !301
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x ptr> %i.m, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !581
  ret void

bb.b:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EEC2Ev.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.t, %bb.b ]
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.b, align 8, !tbaa !42
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13VErrorMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !299  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !300  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i, align 8, !tbaa !301
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef 512) #27
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !11

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !298
  br label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.b, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !302
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #27
  br label %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit

_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit:         ; preds = %bb.a, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !42
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !298    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !299  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !300  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8, !tbaa !301
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #27
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i, !llvm.loop !11

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !298
  br label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i: ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !302
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #27
  br label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EED2Ev.exit

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EED2Ev.exit:  ; preds = %bb.a, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %2 = add nuw nsw i64 %i.a, 1                    ; 2 uses
  %i.b = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.b, 3     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !302
  %i.d = shl nuw nsw i64 %.sroa.speculated, 3
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #31 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !298
  %i.f = load i64, ptr %i.c, align 8, !tbaa !302
  %3 = sub i64 %i.f, %2
  %i.g = lshr i64 %3, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g ; 6 uses
  %.idx = shl nuw nsw i64 %2, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.k, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i ], [ %i.h, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.j = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #31
          to label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.j, ptr %.011.i, align 8, !tbaa !301
  %i.k = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.i
  br i1 %i.l, label %.lr.ph.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_create_nodesEPPS2_S6_.exit, !llvm.loop !582

bb.a:                                             ; preds = %.lr.ph.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #26 ; 0 uses
  %i.p = icmp ult ptr %i.h, %.011.i
  br i1 %i.p, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.q = load ptr, ptr %.06.i.i, align 8, !tbaa !301
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef 512) #27
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.s = icmp ult ptr %i.r, %.011.i
  br i1 %i.s, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i, !llvm.loop !11

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #30
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #28
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.w = extractvalue { ptr, i32 } %i.t, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #26 ; 0 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !298
  %i.z = load i64, ptr %i.c, align 8, !tbaa !302
  %i.aa = shl i64 %i.z, 3
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #30
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ab

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_create_nodesEPPS2_S6_.exit: ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.h, ptr %i.ad, align 8, !tbaa !303
  %4 = load ptr, ptr %i.h, align 8, !tbaa !301    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.ae, align 8, !tbaa !583
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 512
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !584
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %5 = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %5, ptr %i.ai, align 8, !tbaa !303
  %6 = load ptr, ptr %5, align 8, !tbaa !301      ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %6, ptr %i.aj, align 8, !tbaa !583
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 512
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !584
  store ptr %4, ptr %i.ac, align 8, !tbaa !585
  %i.am = and i64 %1, 63
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.am
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !586
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #28
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !304
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !305  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !42
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !587

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6VNType5asciiEv(ptr noundef nonnull align 2 dereferenceable(2) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !271
  %i.b = zext i16 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI9AstVarRefS_EEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt6vectorIN12_GLOBAL__N_120FsmRegisterCandidateESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !270
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_120FsmRegisterCandidateC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !269
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store ptr %i.f, ptr %i.a, align 8, !tbaa !269
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8, !tbaa !268 ; 5 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775800
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIN12_GLOBAL__N_120FsmRegisterCandidateESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.504) #30
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_120FsmRegisterCandidateESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.k = sdiv exact i64 %i.i, 120                 ; 3 uses
  %i.l = icmp eq ptr %i.b, %.val.i                ; 2 uses
  %.sroa.speculated.i.i = select i1 %i.l, i64 1, i64 %i.k
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.k  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 76861433640456465)
  %i.p = select i1 %i.n, i64 76861433640456465, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = mul nuw nsw i64 %i.p, 120                ; 2 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i
  invoke fastcc void @_ZN12_GLOBAL__N_120FsmRegisterCandidateC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(120) %1)
          to label %_ZNSt16allocator_traitsISaIN12_GLOBAL__N_120FsmRegisterCandidateEEE9constructIS1_JRS1_EEEvRS2_PT_DpOT0_.exit.i unwind label %bb.g

_ZNSt16allocator_traitsISaIN12_GLOBAL__N_120FsmRegisterCandidateEEE9constructIS1_JRS1_EEEvRS2_PT_DpOT0_.exit.i: ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_120FsmRegisterCandidateESaIS1_EE12_M_check_lenEmPKc.exit.i
  br i1 %i.l, label %_ZNSt6vectorIN12_GLOBAL__N_120FsmRegisterCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt16allocator_traitsISaIN12_GLOBAL__N_120FsmRegisterCandidateEEE9constructIS1_JRS1_EEEvRS2_PT_DpOT0_.exit.i, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.r, %_ZNSt16allocator_traitsISaIN12_GLOBAL__N_120FsmRegisterCandidateEEE9constructIS1_JRS1_EEEvRS2_PT_DpOT0_.exit.i ] ; 8 uses
  %.092.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.val.i, %_ZNSt16allocator_traitsISaIN12_GLOBAL__N_120FsmRegisterCandidateEEE9constructIS1_JRS1_EEEvRS2_PT_DpOT0_.exit.i ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.03.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.092.i.i.i.i, i64 40, i1 false), !alias.scope !594
  %i.t = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 40 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !306, !alias.scope !593, !noalias !592
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !306, !alias.scope !592, !noalias !593
  %i.w = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !185, !alias.scope !593, !noalias !592
  store ptr %i.y, ptr %i.w, align 8, !tbaa !185, !alias.scope !592, !noalias !593
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !alias.scope !593, !noalias !592
  %i.z = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !308, !alias.scope !594
  %i.ab = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 80 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !309, !alias.scope !593, !noalias !592
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !309, !alias.scope !592, !noalias !593
  %i.ae = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !213, !alias.scope !593, !noalias !592
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !213, !alias.scope !592, !noalias !593
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false), !alias.scope !593, !noalias !592
  %i.ah = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 104
  %i.ai = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !alias.scope !594
  tail call fastcc void @_ZN12_GLOBAL__N_120FsmRegisterCandidateD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.092.i.i.i.i) #26, !noalias !592
  %i.aj = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 120 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_120FsmRegisterCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36.i, label %.lr.ph.i.i.i.i, !llvm.loop !591

_ZNSt6vectorIN12_GLOBAL__N_120FsmRegisterCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt16allocator_traitsISaIN12_GLOBAL__N_120FsmRegisterCandidateEEE9constructIS1_JRS1_EEEvRS2_PT_DpOT0_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %_ZNSt16allocator_traitsISaIN12_GLOBAL__N_120FsmRegisterCandidateEEE9constructIS1_JRS1_EEEvRS2_PT_DpOT0_.exit.i ], [ %i.ak, %.lr.ph.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 120
  %.not.i37.i = icmp eq ptr %.val.i, null
  br i1 %.not.i37.i, label %_ZNSt6vectorIN12_GLOBAL__N_120FsmRegisterCandidateESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_120FsmRegisterCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36.i
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !270
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.ao) #27
  br label %_ZNSt6vectorIN12_GLOBAL__N_120FsmRegisterCandidateESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

bb.f:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_120FsmRegisterCandidateESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #26 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.q) #27
  invoke void @__cxa_rethrow() #30
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ap

end_hunk_0
