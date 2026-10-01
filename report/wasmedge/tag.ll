Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/tag?download=true
inline.NumInlined: 208
inline.NumDeleted: 160
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.cxx20::expected" = type { %"struct.cxx20::detail::expected_move_assign_base" }
%"struct.cxx20::detail::expected_move_assign_base" = type { %"struct.cxx20::detail::expected_copy_assign_base" }
%"struct.cxx20::detail::expected_copy_assign_base" = type { %"struct.cxx20::detail::expected_move_base" }
%"struct.cxx20::detail::expected_move_base" = type { %"struct.cxx20::detail::expected_copy_base" }
%"struct.cxx20::detail::expected_copy_base" = type { %"struct.cxx20::detail::expected_operations_base" }
%"struct.cxx20::detail::expected_operations_base" = type { %"struct.cxx20::detail::expected_view_base" }
%"struct.cxx20::detail::expected_view_base" = type { %"struct.cxx20::detail::expected_storage_base" }
%"struct.cxx20::detail::expected_storage_base" = type { i8, %union.anon }
%union.anon = type { %"class.cxx20::unexpected" }
%"class.cxx20::unexpected" = type { %"class.WasmEdge::ErrCode" }
%"class.WasmEdge::ErrCode" = type { %"union.WasmEdge::ErrCode::InnerT" }
%"union.WasmEdge::ErrCode::InnerT" = type { i32 }

$__clang_call_terminate = comdat any

$_ZN8WasmEdge7Runtime8Instance14ModuleInstance17unsafeAddInstanceINS1_11TagInstanceEJRKNS_3AST7TagTypeERPKNS5_7SubTypeEEEENSt9enable_ifIX11IsInstanceVIT_EEvE4typeERSt6vectorISt10unique_ptrISE_St14default_deleteISE_EESaISL_EERSH_IPSE_SaISP_EEDpOT0_ = comdat any

@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor11instantiateERNS_7Runtime8Instance14ModuleInstanceERKNS_3AST10TagSectionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(952) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not16 = icmp eq ptr %i.c, %i.e
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 504
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN8WasmEdge7Runtime8Instance14ModuleInstance6addTagIJRKNS_3AST7TagTypeERPKNS4_7SubTypeEEEEvDpOT_.exit, %bb.a
  store i64 1, ptr %0, align 4
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN8WasmEdge7Runtime8Instance14ModuleInstance6addTagIJRKNS_3AST7TagTypeERPKNS4_7SubTypeEEEEvDpOT_.exit
  %.017 = phi ptr [ %i.c, %.lr.ph ], [ %i.ad, %_ZN8WasmEdge7Runtime8Instance14ModuleInstance6addTagIJRKNS_3AST7TagTypeERPKNS4_7SubTypeEEEEvDpOT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.k = load i32, ptr %.017, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #11, !noalias !20
  switch i32 %i.l, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #12
          to label %.noexc.i unwind label %bb.f, !noalias !20

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i: ; preds = %bb.c
  %i.m = zext i32 %i.k to i64                     ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !23, !noalias !20
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !24, !noalias !20 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %.not.i = icmp ugt i64 %i.s, %i.m
  br i1 %.not.i, label %bb.e, label %_ZNK8WasmEdge7Runtime8Instance14ModuleInstance7getTypeEj.exit

bb.e:                                             ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.m
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13, !noalias !20
  br label %_ZNK8WasmEdge7Runtime8Instance14ModuleInstance7getTypeEj.exit

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #13, !noalias !20
  unreachable

_ZNK8WasmEdge7Runtime8Instance14ModuleInstance7getTypeEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i, %bb.e
  %.sroa.311.0 = phi ptr [ %i.u, %bb.e ], [ inttoptr (i64 1025 to ptr), %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i ]
  %i.x = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #11, !noalias !20 ; 0 uses
  store ptr %.sroa.311.0, ptr %i.a, align 8, !tbaa !13
  %i.y = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #11
  %i.z = icmp eq i32 %i.y, 35
  br i1 %i.z, label %bb.g, label %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i

bb.g:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14ModuleInstance7getTypeEj.exit
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #12
  unreachable

_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i: ; preds = %_ZNK8WasmEdge7Runtime8Instance14ModuleInstance7getTypeEj.exit
  invoke void @_ZN8WasmEdge7Runtime8Instance14ModuleInstance17unsafeAddInstanceINS1_11TagInstanceEJRKNS_3AST7TagTypeERPKNS5_7SubTypeEEEENSt9enable_ifIX11IsInstanceVIT_EEvE4typeERSt6vectorISt10unique_ptrISE_St14default_deleteISE_EESaISL_EERSH_IPSE_SaISP_EEDpOT0_(ptr noundef nonnull align 8 dereferenceable(952) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %.017, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8WasmEdge7Runtime8Instance14ModuleInstance6addTagIJRKNS_3AST7TagTypeERPKNS4_7SubTypeEEEEvDpOT_.exit unwind label %_ZNSt11unique_lockISt12shared_mutexED2Ev.exit5.i

_ZNSt11unique_lockISt12shared_mutexED2Ev.exit5.i: ; preds = %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #11 ; 0 uses
  resume { ptr, i32 } %i.aa

_ZN8WasmEdge7Runtime8Instance14ModuleInstance6addTagIJRKNS_3AST7TagTypeERPKNS4_7SubTypeEEEEvDpOT_.exit: ; preds = %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i
  %i.ac = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %.017, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge7Runtime8Instance14ModuleInstance17unsafeAddInstanceINS1_11TagInstanceEJRKNS_3AST7TagTypeERPKNS5_7SubTypeEEEENSt9enable_ifIX11IsInstanceVIT_EEvE4typeERSt6vectorISt10unique_ptrISE_St14default_deleteISE_EESaISL_EERSH_IPSE_SaISP_EEDpOT0_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #14, !noalias !35 ; 5 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !13, !noalias !35
  %i.c = load i32, ptr %3, align 8, !tbaa !11, !noalias !35
  store i32 %i.c, ptr %i.a, align 8, !tbaa !11, !noalias !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !36, !noalias !35
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.a to i64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS3_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !43     ; 10 uses
  %i.l = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #12
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS3_EED2Ev.exit9

.noexc12:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i, %i.p  ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i10 = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i10)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #14
          to label %.noexc13 unwind label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS3_EED2Ev.exit9 ; 10 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %i.a to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !42
  %.not10.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc13
  %i.y = add i64 %i.l, -8
  %i.z = sub i64 %i.y, %i.m                       ; 3 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %5 = and i64 %i.z, -8
  %6 = add i64 %5, 8                              ; 2 uses
  %7 = getelementptr i8, ptr %i.v, i64 %6
  %8 = getelementptr i8, ptr %i.k, i64 %6
  %bound0 = icmp ult ptr %i.v, %8
  %bound1 = icmp ult ptr %i.k, %7
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.af ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.k, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.ag = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !42, !alias.scope !46, !noalias !44
  %wide.load25 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !42, !alias.scope !46, !noalias !44
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !42, !alias.scope !47, !noalias !46
  store <2 x i64> %wide.load25, ptr %i.ah, align 8, !tbaa !42, !alias.scope !47, !noalias !46
  %i.ai = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep24, align 8, !tbaa !42, !alias.scope !46, !noalias !44
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !42, !alias.scope !46, !noalias !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader27

.lr.ph.i.i.i.i.preheader27:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader27, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader27 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader27 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.ak = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !42, !alias.scope !45, !noalias !44
  store i64 %i.ak, ptr %.012.i.i.i.i, align 8, !tbaa !42, !alias.scope !44, !noalias !45
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !42, !alias.scope !45, !noalias !44
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.al, %i.f
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !34

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc13
  %.0.lcssa.i.i.i.i = phi ptr [ %i.v, %.noexc13 ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #15
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  store ptr %i.v, ptr %1, align 8, !tbaa !43
  store ptr %i.an, ptr %i.e, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !40
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.b, %.noexc
  %i.ap = phi ptr [ %i.f, %bb.b ], [ %.0.lcssa.i.i.i.i, %.noexc ]
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54
  %.not.i.i6 = icmp eq ptr %i.as, %i.au
  br i1 %.not.i.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS3_EED2Ev.exit
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !42
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !53
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE9push_backEOS4_.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS3_EED2Ev.exit
  %i.aw = load ptr, ptr %2, align 8, !tbaa !55    ; 4 uses
  %i.ax = ptrtoint ptr %i.as to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 6 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.h, label %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #12
  unreachable

_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #14 ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store ptr %i.aq, ptr %i.bi, align 8, !tbaa !42
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.i, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.az) #15
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.bh, ptr %2, align 8, !tbaa !55
  store ptr %i.bk, ptr %i.ar, align 8, !tbaa !53
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bl, ptr %i.at, align 8, !tbaa !54
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.f, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  ret void

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS3_EED2Ev.exit9: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #15
  resume { ptr, i32 } %i.bm
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTSN8WasmEdge3AST7SubTypeE", !8, i64 0}
!10 = !{!"_ZTSN8WasmEdge3AST7TagTypeE", !5, i64 0, !9, i64 8}
!11 = !{!10, !5, i64 0}
!12 = !{!"any p2 pointer", !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance7getTypeEj"}
!15 = distinct !{!15, !14, !"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance7getTypeEj: argument 0"}
!16 = !{!"p1 _ZTSN8WasmEdge3AST7TagTypeE", !8, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST7TagTypeESaIS2_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 0}
!19 = !{!17, !16, i64 8}
!20 = !{!15}
!21 = !{!"p2 _ZTSN8WasmEdge3AST7SubTypeE", !12, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIPKN8WasmEdge3AST7SubTypeESaIS4_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!22, !21, i64 8}
!24 = !{!22, !21, i64 0}
!25 = distinct !{!25, !"_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance11TagInstanceEJRKNS0_3AST7TagTypeERPKNS4_7SubTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!26 = distinct !{!26, !25, !"_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance11TagInstanceEJRKNS0_3AST7TagTypeERPKNS4_7SubTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!27 = distinct !{!27, !"_ZSt19__relocate_object_aISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!28 = distinct !{!28, !27, !"_ZSt19__relocate_object_aISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !27, !"_ZSt19__relocate_object_aISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!30 = distinct !{!30, !"LVerDomain"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !48, !49, !50}
!34 = distinct !{!34, !48, !49}
!35 = !{!26}
!36 = !{!10, !9, i64 8}
!37 = !{!"p1 _ZTSSt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS3_EE", !8, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance11TagInstanceESt14default_deleteIS4_EESaIS7_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!38, !37, i64 8}
!40 = !{!38, !37, i64 16}
!41 = !{!"p1 _ZTSN8WasmEdge7Runtime8Instance11TagInstanceE", !8, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!38, !37, i64 0}
!44 = !{!28}
!45 = !{!29}
!46 = !{!29, !31}
!47 = !{!28, !32}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = !{!"p2 _ZTSN8WasmEdge7Runtime8Instance11TagInstanceE", !12, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIPN8WasmEdge7Runtime8Instance11TagInstanceESaIS4_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!52, !51, i64 8}
!54 = !{!52, !51, i64 16}
!55 = !{!52, !51, i64 0}
end_hunk_0
