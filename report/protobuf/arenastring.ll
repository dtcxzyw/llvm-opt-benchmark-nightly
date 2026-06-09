inline.NumInlined: 221
inline.NumDeleted: 79
begin_hunk_0_@_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE:bb.a

.noexc.i11:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.i, ptr %i.a, align 8, !tbaa !11
  %i.y = icmp ugt i64 %i.i, 15
  br i1 %i.y, label %.noexc.i.i10, label %._crit_edge.i.i.i9

.noexc.i.i10:                                     ; preds = %bb.h
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc2.i unwind label %bb.k  ; 2 uses

.noexc2.i:                                        ; preds = %.noexc.i.i10
  store ptr %i.z, ptr %i.w, align 8, !tbaa !15
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !11
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !17
  br label %._crit_edge.i.i.i9

._crit_edge.i.i.i9:                               ; preds = %.noexc2.i, %bb.h
  %i.ab = phi ptr [ %i.z, %.noexc2.i ], [ %i.x, %bb.h ] ; 2 uses
  switch i64 %i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i9
  %i.ac = load i8, ptr %i.g, align 1, !tbaa !17
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !17
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr readonly align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.k:                                             ; preds = %.noexc.i.i10, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 32) #14
  resume { ptr, i32 } %i.ad

_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %._crit_edge.i.i.i9, %bb.i, %bb.j
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !18
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sink13 = phi ptr [ %i.w, %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.l, %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.sink12 = phi i64 [ 2, %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 3, %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.ai = ptrtoint ptr %.sink13 to i64
  %i.aj = or i64 %.sink12, %i.ai
  %.sroa.05.0 = inttoptr i64 %i.aj to ptr
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal14ArenaStringPtr3SetESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  %i.g = icmp eq ptr %2, null
  %i.h = icmp ne i64 %1, 0
  %or.cond.i.i6 = and i1 %i.h, %i.g               ; 2 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %3) ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !13
  br i1 %or.cond.i.i6, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  %i.k = icmp ugt i64 %1, 15
  br i1 %i.k, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !15
  %i.m = load i64, ptr %i.b, align 8, !tbaa !11
  store i64 %i.m, ptr %i.j, align 8, !tbaa !17
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.d
  %i.n = phi ptr [ %i.l, %.noexc.i.i ], [ %i.j, %bb.d ] ; 2 uses
  switch i64 %1, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %2, align 1, !tbaa !17
  store i8 %i.o, ptr %i.n, align 1, !tbaa !17
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr readonly align 1 %2, i64 %1, i1 false)
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.p = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !18
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.m

bb.g:                                             ; preds = %bb.b
  %i.t = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !13
  br i1 %or.cond.i.i6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc.i9 unwind label %bb.l

.noexc.i9:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  %i.v = icmp ugt i64 %1, 15
  br i1 %i.v, label %.noexc.i.i8, label %._crit_edge.i.i.i7

.noexc.i.i8:                                      ; preds = %bb.i
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc2.i unwind label %bb.l  ; 2 uses

.noexc2.i:                                        ; preds = %.noexc.i.i8
  store ptr %i.w, ptr %i.t, align 8, !tbaa !15
  %i.x = load i64, ptr %i.a, align 8, !tbaa !11
  store i64 %i.x, ptr %i.u, align 8, !tbaa !17
  br label %._crit_edge.i.i.i7

._crit_edge.i.i.i7:                               ; preds = %.noexc2.i, %bb.i
  %i.y = phi ptr [ %i.w, %.noexc2.i ], [ %i.u, %bb.i ] ; 2 uses
  switch i64 %1, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i7
  %i.z = load i8, ptr %2, align 1, !tbaa !17
  store i8 %i.z, ptr %i.y, align 1, !tbaa !17
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr readonly align 1 %2, i64 %1, i1 false)
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.l:                                             ; preds = %.noexc.i.i8, %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 32) #14
  resume { ptr, i32 } %i.aa

_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %._crit_edge.i.i.i7, %bb.j, %bb.k
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !18
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sink14 = phi ptr [ %i.t, %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.i, %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.sink13 = phi i64 [ 2, %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 3, %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.af = ptrtoint ptr %.sink14 to i64
  %i.ag = or i64 %.sink13, %i.af
  %.sroa.03.0 = inttoptr i64 %i.ag to ptr
  store ptr %.sroa.03.0, ptr %0, align 8, !tbaa !21
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.ah = and i64 %i.d, -4
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18
  %i.al = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef 0, i64 noundef %i.ak, ptr noundef %2, i64 noundef %1) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  %i.g = load ptr, ptr %1, align 8, !tbaa !15     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 9 uses
  %i.j = icmp eq ptr %i.g, null
  %i.k = icmp ne i64 %i.i, 0
  %or.cond.i.i11 = and i1 %i.j, %i.k              ; 2 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %2) ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !13
  br i1 %or.cond.i.i11, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 %i.i, ptr %i.b, align 8, !tbaa !11
  %i.n = icmp ugt i64 %i.i, 15
  br i1 %i.n, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %i.l, align 8, !tbaa !15
  %i.p = load i64, ptr %i.b, align 8, !tbaa !11
  store i64 %i.p, ptr %i.m, align 8, !tbaa !17
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i.i ], [ %i.m, %bb.d ] ; 2 uses
  switch i64 %i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.g, align 1, !tbaa !17
  store i8 %i.r, ptr %i.q, align 1, !tbaa !17
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr readonly align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !18
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.m

bb.g:                                             ; preds = %bb.b
  %i.w = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !13
  br i1 %or.cond.i.i11, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc.i14 unwind label %bb.l

.noexc.i14:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.i, ptr %i.a, align 8, !tbaa !11
  %i.y = icmp ugt i64 %i.i, 15
  br i1 %i.y, label %.noexc.i.i13, label %._crit_edge.i.i.i12

.noexc.i.i13:                                     ; preds = %bb.i
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc2.i unwind label %bb.l  ; 2 uses

.noexc2.i:                                        ; preds = %.noexc.i.i13
  store ptr %i.z, ptr %i.w, align 8, !tbaa !15
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !11
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !17
  br label %._crit_edge.i.i.i12

._crit_edge.i.i.i12:                              ; preds = %.noexc2.i, %bb.i
  %i.ab = phi ptr [ %i.z, %.noexc2.i ], [ %i.x, %bb.i ] ; 2 uses
  switch i64 %i.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i12
  %i.ac = load i8, ptr %i.g, align 1, !tbaa !17
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !17
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr readonly align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.l:                                             ; preds = %.noexc.i.i13, %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 32) #14
  resume { ptr, i32 } %i.ad

_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %._crit_edge.i.i.i12, %bb.j, %bb.k
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !18
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sink16 = phi ptr [ %i.w, %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.l, %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.sink15 = phi i64 [ 2, %_ZN6google8protobuf8internal12_GLOBAL__N_112CreateStringESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 3, %_ZN6google8protobuf8internal12_GLOBAL__N_117CreateArenaStringERNS0_5ArenaESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.ai = ptrtoint ptr %.sink16 to i64
  %i.aj = or i64 %.sink15, %i.ai
  %.sroa.03.0 = inttoptr i64 %i.aj to ptr
  store ptr %.sroa.03.0, ptr %0, align 8, !tbaa !21
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.ak = and i64 %i.d, -4
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal14ArenaStringPtr3SetEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %2, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !13
  %i.i = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.i, ptr %i.g, align 8, !tbaa !15
  %i.o = load i64, ptr %i.f, align 8, !tbaa !17
  store i64 %i.o, ptr %i.h, align 8, !tbaa !17
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.p = phi i64 [ %i.l, %bb.d ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !18
  store ptr %i.f, ptr %1, align 8, !tbaa !15
  store i64 0, ptr %i.q, align 8, !tbaa !18
  br label %_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPS9_PNS0_5ArenaEDpOT_.exit

bb.e:                                             ; preds = %bb.b
  %i.s = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %2) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !13
  %i.u = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.f
  br i1 %i.v, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.z, i1 false)
  br label %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_EEEPT_PS1_DpOT0_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i: ; preds = %bb.e
  store ptr %i.u, ptr %i.s, align 8, !tbaa !15
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !17
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !17
  br label %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_EEEPT_PS1_DpOT0_.exit.i

_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_EEEPT_PS1_DpOT0_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !18
  store ptr %i.f, ptr %1, align 8, !tbaa !15
  store i64 0, ptr %i.ab, align 8, !tbaa !18
  br label %_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPS9_PNS0_5ArenaEDpOT_.exit

_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPS9_PNS0_5ArenaEDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_EEEPT_PS1_DpOT0_.exit.i
  %.sink20.i = phi ptr [ %i.s, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_EEEPT_PS1_DpOT0_.exit.i ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %.sink19.i = phi i64 [ 3, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_EEEPT_PS1_DpOT0_.exit.i ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  store i8 0, ptr %i.f, align 8, !tbaa !17
  %i.ae = ptrtoint ptr %.sink20.i to i64
  %i.af = or i64 %.sink19.i, %i.ae
  %storemerge.i = inttoptr i64 %i.af to ptr
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !19
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.ag = and i64 %i.b, -4
  %i.ah = inttoptr i64 %i.ag to ptr               ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 4 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  %i.al = load ptr, ptr %1, align 8, !tbaa !15    ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.an = icmp eq ptr %i.al, %i.am                ; 2 uses
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11: ; preds = %bb.g
  br i1 %i.an, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.an, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !18 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  tail call void @llvm.assume(i1 %i.aq)
  %.not21.i = icmp eq ptr %1, %i.ah
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h
  switch i64 %i.ap, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !17
  store i8 %i.ar, ptr %i.ai, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.al, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.as = load i64, ptr %i.ao, align 8, !tbaa !18 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !18
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !17
  %.pre.i10 = load ptr, ptr %1, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !18
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !18
  %i.az = load i64, ptr %i.am, align 8, !tbaa !17
  store i64 %i.az, ptr %i.aj, align 8, !tbaa !17
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ba = load i64, ptr %i.aj, align 8, !tbaa !17
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !18
  %i.be = load i64, ptr %i.am, align 8, !tbaa !17
  store i64 %i.be, ptr %i.aj, align 8, !tbaa !17
  %.not.i9 = icmp eq ptr %i.ai, null
  br i1 %.not.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ai, ptr %1, align 8, !tbaa !15
  store i64 %i.ba, ptr %i.am, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.am, ptr %1, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bf = phi ptr [ %i.ai, %bb.l ], [ %i.am, %bb.m ], [ %i.al, %bb.h ], [ %.pre.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !18
  store i8 0, ptr %i.bf, align 1, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPS9_PNS0_5ArenaEDpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 2
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.d, label %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13
  br label %_ZN6google8protobuf8internal14ArenaStringPtr11MutableSlowIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpRKT_.exit

_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i.i: ; preds = %bb.c
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %_ZN6google8protobuf8internal14ArenaStringPtr11MutableSlowIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpRKT_.exit

_ZN6google8protobuf8internal14ArenaStringPtr11MutableSlowIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpRKT_.exit: ; preds = %bb.d, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i.i
  %.sink14.i.i = phi ptr [ %i.h, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i.i ], [ %i.g, %bb.d ] ; 5 uses
  %.sink8.i.i = phi i64 [ 3, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i.i ], [ 2, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 16 ; 2 uses
  store ptr %i.i, ptr %.sink14.i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !18
  store i8 0, ptr %i.i, align 8, !tbaa !17
  %i.k = ptrtoint ptr %.sink14.i.i to i64
  %i.l = or i64 %.sink8.i.i, %i.k
  %storemerge.i.i = inttoptr i64 %i.l to ptr
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr11MutableSlowIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpRKT_.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %.sink14.i.i, %_ZN6google8protobuf8internal14ArenaStringPtr11MutableSlowIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpRKT_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11ERKNS1_10LazyStringEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 2
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_ZN6google8protobuf8internal14ArenaStringPtr11MutableSlowIJNS1_10LazyStringEEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpRKT_.exit, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf8internal10LazyString4InitB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZN6google8protobuf8internal14ArenaStringPtr11MutableSlowIJNS1_10LazyStringEEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpRKT_.exit

_ZN6google8protobuf8internal14ArenaStringPtr11MutableSlowIJNS1_10LazyStringEEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpRKT_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  %i.j = tail call noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPS9_PNS0_5ArenaEDpOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i)
  br label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr11MutableSlowIJNS1_10LazyStringEEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpRKT_.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.j, %_ZN6google8protobuf8internal14ArenaStringPtr11MutableSlowIJNS1_10LazyStringEEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpRKT_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr13MutableNoCopyB5cxx11EPNS0_5ArenaE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 2
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.d, label %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13
  br label %_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpOT_.exit

_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i: ; preds = %bb.c
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpOT_.exit

_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpOT_.exit: ; preds = %bb.d, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i
  %.sink14.i = phi ptr [ %i.h, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i ], [ %i.g, %bb.d ] ; 5 uses
  %.sink8.i = phi i64 [ 3, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i ], [ 2, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16 ; 2 uses
  store ptr %i.i, ptr %.sink14.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal14ArenaStringPtr7ReleaseB5cxx11Ev:bb.a
  %i.t = phi i64 [ %i.p, %bb.e ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !18
  store ptr %i.m, ptr %i.g, align 8, !tbaa !15
  store i64 0, ptr %i.u, align 8, !tbaa !18
  store i8 0, ptr %i.m, align 8, !tbaa !17
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.x, ptr %i.a, align 8, !tbaa !11
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.z, ptr %i.j, align 8, !tbaa !15
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !11
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.f
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.k, %bb.f ] ; 2 uses
  switch i64 %i.x, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %i.l, align 1, !tbaa !17
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.l, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !18
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.j

bb.i:                                             ; preds = %.noexc.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 32) #14
  resume { ptr, i32 } %i.ah

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %bb.b
  %.08 = phi ptr [ %i.g, %bb.b ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE to i64), ptr %0, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.0 = phi ptr [ %.08, %bb.j ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal14ArenaStringPtr12SetAllocatedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = xor i64 %i.b, 2                          ; 2 uses
  %i.d = and i64 %i.c, 3
  %.not.i.i = icmp ne i64 %i.d, 0
  %i.e = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.f = icmp eq ptr %i.a, inttoptr (i64 2 to ptr)
  %i.g = or i1 %i.f, %.not.i.i
  br i1 %i.g, label %_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !17
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #14
  br label %_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv.exit

_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.m = icmp eq ptr %1, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv.exit
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE to i64), ptr %0, align 8, !tbaa !21
  br label %_ZN6google8protobuf8internal14ArenaStringPtr13InitAllocatedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit

bb.d:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv.exit
  %.not.i = icmp eq ptr %2, null
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = or i64 %i.n, 3
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %0, align 8, !tbaa !19
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArena10AddCleanupEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull %1, ptr noundef nonnull @_ZN6google8protobuf8internal19arena_delete_objectINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPv)
  br label %_ZN6google8protobuf8internal14ArenaStringPtr13InitAllocatedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit

bb.f:                                             ; preds = %bb.d
  %i.q = or i64 %i.n, 2
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %0, align 8, !tbaa !19
  br label %_ZN6google8protobuf8internal14ArenaStringPtr13InitAllocatedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit

_ZN6google8protobuf8internal14ArenaStringPtr13InitAllocatedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit: ; preds = %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = xor i64 %i.b, 2                          ; 2 uses
  %i.d = and i64 %i.c, 3
  %.not.i = icmp ne i64 %i.d, 0
  %i.e = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.f = icmp eq ptr %i.a, inttoptr (i64 2 to ptr)
  %i.g = or i1 %i.f, %.not.i
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !17
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #14
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6google8protobuf8internal14ArenaStringPtr12ClearToEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, -4
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !18
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !15
  store i8 0, ptr %i.h, align 1, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal14ArenaStringPtr14ClearToDefaultERKNS1_10LazyStringEPNS0_5ArenaE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, -4
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_ZNK6google8protobuf8internal10LazyString3getB5cxx11Ev.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf8internal10LazyString4InitB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZNK6google8protobuf8internal10LazyString3getB5cxx11Ev.exit

_ZNK6google8protobuf8internal10LazyString3getB5cxx11Ev.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.c ], [ %i.h, %bb.b ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.0.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK6google8protobuf8internal10LazyString3getB5cxx11Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream15ReadArenaStringEPKcPNS1_14ArenaStringPtrEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !17      ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.e = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.b) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.e, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.e, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i16 = phi i32 [ %i.b, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i15 = phi ptr [ %i.d, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 4 uses
  %i.f = icmp eq ptr %3, null
  br i1 %i.f, label %bb.c, label %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13
  br label %_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpOT_.exit

_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i: ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %3)
  br label %_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpOT_.exit

_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpOT_.exit: ; preds = %bb.c, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i
  %.sink14.i = phi ptr [ %i.h, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i ], [ %i.g, %bb.c ] ; 7 uses
  %.sink8.i = phi i64 [ 3, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEPT_PS1_DpOT0_.exit.i ], [ 2, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16 ; 2 uses
  store ptr %i.i, ptr %.sink14.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !18
  store i8 0, ptr %i.i, align 8, !tbaa !17
  %i.k = ptrtoint ptr %.sink14.i to i64
  %i.l = or i64 %.sink8.i, %i.k
  %storemerge.i8 = inttoptr i64 %i.l to ptr
  store ptr %storemerge.i8, ptr %2, align 8, !tbaa !19
  %i.m = tail call noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.0.i16, ptr noundef nonnull %storemerge.i15)
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpOT_.exit
  %i.n = sext i32 %.0.i16 to i64                  ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %.sink14.i, i64 noundef %i.n, i8 noundef signext 0)
  %i.o = load ptr, ptr %.sink14.i, align 8, !tbaa !15, !nonnull !23, !noundef !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %storemerge.i15, i64 %i.n, i1 false)
  %i.p = getelementptr inbounds i8, ptr %storemerge.i15, i64 %i.n
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpOT_.exit
  %i.q = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %storemerge.i15, i32 noundef %.0.i16, ptr noundef nonnull %.sink14.i)
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.d, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.1 = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.p, %bb.d ], [ %i.q, %bb.e ]
  ret ptr %.1
}

declare noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare void @_ZN6google8protobuf8internal15ThreadSafeArena10AddCleanupEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal19arena_delete_objectINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPv(ptr noundef %0) #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !17
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #14
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

declare { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPS9_PNS0_5ArenaEDpOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = icmp eq ptr %1, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !13
  %i.g = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.h = load i64, ptr %i.d, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 %i.h, ptr %i.b, align 8, !tbaa !11
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %i.e, align 8, !tbaa !15
  %i.k = load i64, ptr %i.b, align 8, !tbaa !11
  store i64 %i.k, ptr %i.f, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.g, align 1, !tbaa !17
  store i8 %i.m, ptr %i.l, align 1, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.g, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.n = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !18
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.j

bb.f:                                             ; preds = %.noexc.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #14
  resume { ptr, i32 } %i.r

bb.g:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %1) ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !13
  %i.u = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.v, ptr %i.a, align 8, !tbaa !11
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i11, label %._crit_edge.i.i10

.noexc.i11:                                       ; preds = %bb.g
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !15
  %i.y = load i64, ptr %i.a, align 8, !tbaa !11
  store i64 %i.y, ptr %i.t, align 8, !tbaa !17
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %.noexc.i11, %bb.g
  %i.z = phi ptr [ %i.x, %.noexc.i11 ], [ %i.t, %bb.g ] ; 2 uses
  switch i64 %i.v, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS8_EEEPT_PS1_DpOT0_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i10
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !17
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !17
  br label %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS8_EEEPT_PS1_DpOT0_.exit

bb.i:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.u, i64 %i.v, i1 false)
  br label %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS8_EEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS8_EEEPT_PS1_DpOT0_.exit: ; preds = %bb.i, %bb.h, %._crit_edge.i.i10
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !18
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS8_EEEPT_PS1_DpOT0_.exit, %bb.e
  %.sink15 = phi ptr [ %i.s, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS8_EEEPT_PS1_DpOT0_.exit ], [ %i.e, %bb.e ] ; 2 uses
  %.sink14 = phi i64 [ 3, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS8_EEEPT_PS1_DpOT0_.exit ], [ 2, %bb.e ]
  %i.af = ptrtoint ptr %.sink15 to i64
  %i.ag = or i64 %.sink14, %i.af
  %storemerge = inttoptr i64 %i.ag to ptr
  store ptr %storemerge, ptr %0, align 8, !tbaa !19
  ret ptr %.sink15
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!14, !9, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!15 = !{!16, !9, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !12, i64 8, !5, i64 16}
!17 = !{!5, !5, i64 0}
!18 = !{!16, !12, i64 8}
!19 = !{!20, !10, i64 0}
!20 = !{!"_ZTSN6google8protobuf8internal15TaggedStringPtrE", !10, i64 0}
!21 = !{!10, !10, i64 0}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{}
end_hunk_1
