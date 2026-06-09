inline.NumInlined: 291
inline.NumDeleted: 156
begin_hunk_0_@_ZN4YAML14EmitFromEventsD0Ev:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %i.i) #16, !inline_history !125
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i, !llvm.loop !123

_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !121
  br label %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i

_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i ], [ %i.b, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.l) #16, !inline_history !125
  br label %_ZN4YAML14EmitFromEventsD2Ev.exit

_ZN4YAML14EmitFromEventsD2Ev.exit:                ; preds = %bb.a, %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4YAML12EventHandler8OnAnchorERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #5 align 2 {
bb.a:
  ret void
}

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_5_NullE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_6_AliasE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_4_TagE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(68)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML4_TagC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_4Type5valueE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !40
  %i.d = load ptr, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !43   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 %i.f, ptr %i.b, align 8, !tbaa !62
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !46
  %i.i = load i64, ptr %i.b, align 8, !tbaa !62
  store i64 %i.i, ptr %i.c, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !45
  store i8 %i.k, ptr %i.j, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !43
  %i.n = load ptr, ptr %0, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !40
  %i.r = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !43   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.t, ptr %i.a, align 8, !tbaa !62
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i6, label %._crit_edge.i.i5

.noexc.i6:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i6
  store ptr %i.v, ptr %i.p, align 8, !tbaa !46
  %i.w = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.w, ptr %i.q, align 8, !tbaa !45
  br label %._crit_edge.i.i5

._crit_edge.i.i5:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i5
  %i.y = load i8, ptr %i.r, align 1, !tbaa !45
  store i8 %i.y, ptr %i.x, align 1, !tbaa !45
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i5
  %i.z = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !43
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %3, ptr %i.ad, align 8, !tbaa !126
  ret void

bb.g:                                             ; preds = %.noexc.i6
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.af) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ae
}

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_7_AnchorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 7                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 3
  %2 = icmp ugt i64 %1, 767
  %3 = select i1 %2, i64 %i.b, i64 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8, !tbaa !129
  %4 = add nuw nsw i64 %i.a, 1                    ; 2 uses
  %i.d = shl nuw nsw i64 %3, 3
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !121
  %i.f = sub nsw i64 %3, %4
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g ; 6 uses
  %.idx = shl nuw nsw i64 %4, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.k, %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_allocate_nodeEv.exit.i ], [ %i.h, %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.j = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18
          to label %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.j, ptr %.011.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.i
  br i1 %i.l, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE15_M_create_nodesEPPS3_S7_.exit, !llvm.loop !130

bb.a:                                             ; preds = %.lr.ph.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #15 ; 0 uses
  %i.p = icmp ult ptr %i.h, %.011.i
  br i1 %i.p, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.q = load ptr, ptr %.06.i.i, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %i.q) #16
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.s = icmp ult ptr %i.r, %.011.i
  br i1 %i.s, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i, !llvm.loop !123

_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #19
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #17
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.w = extractvalue { ptr, i32 } %i.t, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #15 ; 0 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !121
  tail call void @_ZdlPv(ptr noundef %i.y) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #19
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.z

_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE15_M_create_nodesEPPS3_S7_.exit: ; preds = %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_allocate_nodeEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.h, ptr %i.ab, align 8, !tbaa !19
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !20  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 512
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !19
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 512
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.al, ptr %i.am, align 8, !tbaa !111
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !131
  %i.an = and i64 %1, 127
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.an
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !107
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #17
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !111
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.ag = load ptr, ptr %0, align 8, !tbaa !121
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN4YAML14EmitFromEvents5State5valueESaIS3_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN4YAML14EmitFromEvents5State5valueESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !110
  br label %_ZNSt5dequeIN4YAML14EmitFromEvents5State5valueESaIS3_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN4YAML14EmitFromEvents5State5valueESaIS3_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %i.an = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !20
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.aq = load i32, ptr %1, align 4, !tbaa !21
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !21
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.c, align 8, !tbaa !19
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20 ; 3 uses
  store ptr %i.at, ptr %i.o, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.au, ptr %i.av, align 8, !tbaa !111
  store ptr %i.at, ptr %i.a, align 8, !tbaa !107
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN4YAML14EmitFromEvents5State5valueESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
