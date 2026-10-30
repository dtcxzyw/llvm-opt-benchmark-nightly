Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/memory?download=true
inline.NumInlined: 397
inline.NumDeleted: 275
begin_hunk_0_@_ZN8WasmEdge8Executor8Executor11instantiateERNS_7Runtime8Instance14ModuleInstanceERKNS_3AST13MemorySectionE:bb.a
    i32 11, label %bb.t
    i32 35, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #15
          to label %.noexc.i33 unwind label %bb.w, !noalias !64

.noexc.i33:                                       ; preds = %bb.u
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i34: ; preds = %bb.t
  %i.ch = and i64 %i.cf, 4294967295               ; 3 uses
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !13, !noalias !64
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !14, !noalias !64 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3
  %.not.i35 = icmp ugt i64 %i.cn, %i.ch
  br i1 %.not.i35, label %bb.v, label %_ZNK8WasmEdge7Runtime8Instance14ModuleInstance9getMemoryEj.exit37

bb.v:                                             ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i34
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !21, !noalias !64
  br label %_ZNK8WasmEdge7Runtime8Instance14ModuleInstance9getMemoryEj.exit37

bb.w:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #16, !noalias !64
  unreachable

_ZNK8WasmEdge7Runtime8Instance14ModuleInstance9getMemoryEj.exit37: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i34, %bb.v
  %.sroa.338.0 = phi ptr [ %i.cp, %bb.v ], [ inttoptr (i64 1025 to ptr), %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i34 ]
  %i.cs = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #14, !noalias !64 ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.338.0, i64 24
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ch
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %.02547, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.cw, %i.ax
  br i1 %.not, label %._crit_edge, label %bb.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPPhSaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !23
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPPhmS1_ET_S3_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPPhmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPPhmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPPhmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPPhmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPPhmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPPhmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !18
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPPhSaIS1_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #15
  unreachable

_ZNKSt6vectorIPPhSaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !23
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPPhmS1_ET_S3_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPPhmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPPhmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPPhSaIS1_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !23
  br label %_ZSt27__uninitialized_default_n_aIPPPhmS1_ET_S3_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPPhmS1_ET_S3_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPPhmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPPhSaIS1_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPPhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPPhmS1_ET_S3_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPPhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIPPhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPPhmS1_ET_S3_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPPhSaIS1_EE13_M_deallocateEPS1_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPPhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #18
  br label %_ZNSt12_Vector_baseIPPhSaIS1_EE13_M_deallocateEPS1_m.exit36

_ZNSt12_Vector_baseIPPhSaIS1_EE13_M_deallocateEPS1_m.exit36: ; preds = %_ZNSt6vectorIPPhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPPhmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPPhSaIS1_EE13_M_deallocateEPS1_m.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge7Runtime8Instance14ModuleInstance17unsafeAddInstanceINS1_14MemoryInstanceEJRKNS_3AST10MemoryTypeEmEEENSt9enable_ifIX11IsInstanceVIT_EEvE4typeERSt6vectorISt10unique_ptrISA_St14default_deleteISA_EESaISH_EERSD_IPSA_SaISL_EEDpOT0_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #17, !noalias !73 ; 4 uses
  %i.b = load i64, ptr %4, align 8, !tbaa !26, !noalias !73
  tail call void @_ZN8WasmEdge7Runtime8Instance14MemoryInstanceC2ERKNS_3AST10MemoryTypeEm(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.b) #14, !noalias !73
  store ptr %i.a, ptr %5, align 8, !tbaa !21, !alias.scope !73
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = ptrtoint ptr %i.a to i64                 ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.a
  store i64 %i.g, ptr %i.d, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !76
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !78     ; 7 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.c, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
          to label %.noexc11 unwind label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS3_EED2Ev.exit8

.noexc11:                                         ; preds = %bb.c
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.b
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i9 = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i9)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #17
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS3_EED2Ev.exit8 ; 7 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i64 %i.g, ptr %i.u, align 8, !tbaa !21
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc12
  %i.v = add i64 %i.j, -8
  %i.w = sub i64 %i.v, %i.k                       ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.i, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ac ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.i, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.ad = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep23, align 8, !tbaa !21, !alias.scope !80
  %wide.load24 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !21, !alias.scope !80
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !21, !alias.scope !79
  store <2 x i64> %wide.load24, ptr %i.ae, align 8, !tbaa !21, !alias.scope !79
  %i.af = getelementptr i8, ptr %next.gep23, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep23, align 8, !tbaa !21, !alias.scope !80
  store <2 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !21, !alias.scope !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader26

.lr.ph.i.i.i.i.preheader26:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader26, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader26 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader26 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.ah = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !21, !alias.scope !80
  store i64 %i.ah, ptr %.012.i.i.i.i, align 8, !tbaa !21, !alias.scope !79
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !21, !alias.scope !80
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.ai, %i.d
  br i1 %.not.i.i.i.i10, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !72

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %.noexc12 ], [ %i.aa, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.d
  store ptr %i.t, ptr %1, align 8, !tbaa !78
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !76
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.al, ptr %i.e, align 8, !tbaa !77
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread
  %i.am = phi ptr [ %i.d, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread ], [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !13 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  %.not.i.i6 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i.i6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS3_EED2Ev.exit
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !13
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE9push_backEOS4_.exit

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS3_EED2Ev.exit
  %i.at = load ptr, ptr %2, align 8, !tbaa !14    ; 4 uses
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.g, label %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #17 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store ptr %i.an, ptr %i.bf, align 8, !tbaa !21
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.h, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.at, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.aw) #18
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.be, ptr %2, align 8, !tbaa !14
  store ptr %i.bh, ptr %i.ao, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bi, ptr %i.aq, align 8, !tbaa !83
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.e, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  ret void

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS3_EED2Ev.exit8: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14MemoryInstanceEEclEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %i.bj
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge7Runtime8Instance14MemoryInstanceC2ERKNS_3AST10MemoryTypeEm(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.spdlog::details::log_msg", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !85
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i64 %2, ptr %i.b, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.e, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 1, ptr %i.f, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = load i8, ptr %0, align 8, !tbaa !88
  %i.k = icmp ult i8 %i.j, 4
  %i.l = icmp ugt i64 %2, 65536
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 281474976710656
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRmRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.m, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.4, i64 76, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) @_ZN8WasmEdge7Runtime8Instance14MemoryInstance12kPageLimit32E)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  store i64 65536, ptr %i.b, align 8, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.n = phi i64 [ 65536, %bb.e ], [ %2, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  %i.q = icmp ugt i64 %i.p, %i.n
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3 unwind label %bb.n

.noexc3:                                          ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.r, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.5, i64 50, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.s = load i64, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  store i64 %i.s, ptr %i.o, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.t = phi i64 [ %i.s, %bb.h ], [ %i.p, %bb.f ]
  %i.u = tail call noundef ptr @_ZN8WasmEdge9Allocator8allocateEm(i64 noundef %i.t) #14 ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !41
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.w = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5 unwind label %bb.n    ; 5 uses

.noexc5:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.y = load atomic i32, ptr %i.x monotonic, align 4
  %i.z = icmp slt i32 %i.y, 5                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.ab = invoke noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.aa)
          to label %.noexc6 unwind label %bb.n    ; 2 uses

.noexc6:                                          ; preds = %.noexc5
  %or.cond.i.i.i.i = or i1 %i.z, %i.ab
  br i1 %or.cond.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !48
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, ptr %i.ad, i64 %i.af, i32 noundef 4, ptr nonnull @.str.6, i64 54)
          to label %.noexc7 unwind label %bb.n

.noexc7:                                          ; preds = %bb.k
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.w, ptr noundef nonnull align 8 dereferenceable(96) %3, i1 noundef zeroext %i.z, i1 noundef zeroext %i.ab)
          to label %.noexc8 unwind label %bb.n

.noexc8:                                          ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.l

bb.l:                                             ; preds = %.noexc8, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 0, ptr %i.o, align 8, !tbaa !44
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  ret void

bb.n:                                             ; preds = %.noexc7, %bb.k, %.noexc5, %bb.j, %.noexc3, %bb.g, %.noexc, %bb.c
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #16
  unreachable
}

; Function Attrs: nounwind
declare noundef ptr @_ZN8WasmEdge9Allocator8allocateEm(i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN6spdlog18default_logger_rawEv() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRmRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 6 uses
  %9 = alloca %"struct.spdlog::details::log_msg", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = tail call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.d) ; 2 uses
  %or.cond = or i1 %i.c, %i.e
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !51
  store i64 250, ptr %i.f, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.j = load i64, ptr %5, align 8, !tbaa !26
  %.sroa.01.0.insert.ext.i = zext i64 %i.j to i128
  store i128 %.sroa.01.0.insert.ext.i, ptr %8, align 16, !alias.scope !91
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.l = load i64, ptr %6, align 8, !tbaa !26
  %.sroa.01.0.insert.ext.i17 = zext i64 %i.l to i128
  store i128 %.sroa.01.0.insert.ext.i17, ptr %i.k, align 16, !alias.scope !91
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr %3, i64 %4, i64 68, ptr nonnull %8, ptr null)
          to label %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit unwind label %bb.g

_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48
  %i.q = load ptr, ptr %7, align 8, !tbaa !51
  %i.r = load i64, ptr %i.h, align 8, !tbaa !53
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, ptr %i.n, i64 %i.p, i32 noundef %2, ptr %i.q, i64 %i.r)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %9, i1 noundef zeroext %i.c, i1 noundef zeroext %i.e)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.s = load ptr, ptr %7, align 8, !tbaa !51     ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.i
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.f, align 8, !tbaa !52
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.t) #18
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.u, %bb.g ]
  %i.w = load ptr, ptr %7, align 8, !tbaa !51     ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.w, %i.i
  br i1 %.not.i.i19, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit20, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr %i.f, align 8, !tbaa !52
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.x) #18
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit20

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit20: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #10

declare void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef byval(%"struct.spdlog::source_loc") align 8, ptr, i64, i32 noundef, ptr, i64) unnamed_addr #10

declare void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @llvm.umax.i64(i64 %1, i64 9223372036854775807)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i64 [ %1, %bb.a ], [ %i.g, %bb.c ]    ; 2 uses
  %i.h = icmp slt i64 %.0, 0
  br i1 %i.h, label %bb.e, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit, !prof !92

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit:     ; preds = %bb.b, %bb.d
  %.035 = phi i64 [ %.0, %bb.d ], [ %i.d, %bb.b ] ; 3 uses
  %2 = load ptr, ptr %0, align 8, !tbaa !51       ; 3 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.035) #17 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53   ; 2 uses
  %i.l = icmp ule i64 %i.k, %.035
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %2, i64 %i.k, i1 false)
  store ptr %i.i, ptr %0, align 8, !tbaa !51
  store i64 %.035, ptr %i.a, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %2, %i.m
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  tail call void @_ZdlPvm(ptr noundef %2, i64 noundef %i.b) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

declare void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.204", align 16 ; 5 uses
  %8 = alloca %"struct.spdlog::details::log_msg", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = tail call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.d) ; 2 uses
  %or.cond = or i1 %i.c, %i.e
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !51
  store i64 250, ptr %i.f, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.j = load i64, ptr %5, align 8, !tbaa !26
  %.sroa.01.0.insert.ext.i = zext i64 %i.j to i128
  store i128 %.sroa.01.0.insert.ext.i, ptr %7, align 16
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %3, i64 %4, i64 4, ptr nonnull %7, ptr null)
          to label %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit unwind label %bb.g

_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48
  %i.o = load ptr, ptr %6, align 8, !tbaa !51
  %i.p = load i64, ptr %i.h, align 8, !tbaa !53
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, ptr %i.l, i64 %i.n, i32 noundef %2, ptr %i.o, i64 %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.c, i1 noundef zeroext %i.e)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.q = load ptr, ptr %6, align 8, !tbaa !51     ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.f, align 8, !tbaa !52
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.r) #18
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.s, %bb.g ]
  %i.u = load ptr, ptr %6, align 8, !tbaa !51     ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.u, %i.i
  br i1 %.not.i.i15, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.f, align 8, !tbaa !52
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #18
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14MemoryInstanceEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44
  tail call void @_ZN8WasmEdge9Allocator7releaseEPhm(ptr noundef %i.c, i64 noundef %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94   ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !95 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 112) #18
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !93

_ZNSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !43
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN8WasmEdge7Runtime8Instance14MemoryInstanceD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !43
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZN8WasmEdge7Runtime8Instance14MemoryInstanceD2Ev.exit

_ZN8WasmEdge7Runtime8Instance14MemoryInstanceD2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 136) #18
  br label %bb.d

bb.d:                                             ; preds = %_ZN8WasmEdge7Runtime8Instance14MemoryInstanceD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN8WasmEdge9Allocator7releaseEPhm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 1, !"long-double-type", !"x86_fp80"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"any p2 pointer", !9, i64 0}
!11 = !{!"p2 _ZTSN8WasmEdge7Runtime8Instance14MemoryInstanceE", !10, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 8}
!14 = !{!12, !11, i64 0}
!15 = !{!"any p3 pointer", !10, i64 0}
!16 = !{!"p3 omnipotent char", !15, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIPPhSaIS1_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !16, i64 0}
!20 = !{!"p1 _ZTSN8WasmEdge7Runtime8Instance14MemoryInstanceE", !9, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p2 omnipotent char", !10, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"long", !5, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"_ZTSN8WasmEdge3AST5Limit9LimitTypeE", !5, i64 0}
!28 = !{!"_ZTSN8WasmEdge3AST5LimitE", !27, i64 0, !25, i64 8, !25, i64 16}
!29 = !{!"_ZTSN8WasmEdge3AST10MemoryTypeE", !28, i64 0}
!30 = !{!"p1 omnipotent char", !9, i64 0}
!31 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!32 = !{!"_ZTSSt5mutex", !31, i64 0}
!33 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!34 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !9, i64 0}
!35 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!36 = !{!"float", !5, i64 0}
!37 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !36, i64 0, !25, i64 8}
!38 = !{!"_ZTSSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE", !33, i64 0, !25, i64 8, !35, i64 16, !25, i64 24, !37, i64 32, !34, i64 48}
!39 = !{!"_ZTSSt18unordered_multimapImN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE", !38, i64 0}
!40 = !{!"_ZTSN8WasmEdge7Runtime8Instance14MemoryInstanceE", !29, i64 0, !30, i64 24, !25, i64 32, !32, i64 40, !39, i64 80}
!41 = !{!40, !30, i64 24}
!42 = !{!38, !33, i64 0}
!43 = !{!38, !25, i64 8}
!44 = !{!28, !25, i64 8}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !25, i64 8, !5, i64 16}
!47 = !{!46, !30, i64 0}
!48 = !{!46, !25, i64 8}
!49 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !30, i64 0, !25, i64 8, !25, i64 16, !9, i64 24}
!50 = !{!49, !9, i64 24}
!51 = !{!49, !30, i64 0}
!52 = !{!49, !25, i64 16}
!53 = !{!49, !25, i64 8}
!54 = distinct !{!54, i1 true, !"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance9getMemoryEj"}
!55 = distinct !{!55, !54, !"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance9getMemoryEj: argument 0"}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, i1 true, !"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance9getMemoryEj"}
!58 = distinct !{!58, !57, !"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance9getMemoryEj: argument 0"}
!59 = !{!"p1 _ZTSN8WasmEdge3AST10MemoryTypeE", !9, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST10MemoryTypeESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!60, !59, i64 0}
!62 = !{!60, !59, i64 8}
!63 = !{!55}
!64 = !{!58}
!65 = !{!17, !16, i64 16}
!66 = distinct !{!66, i1 true, !"_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14MemoryInstanceEJRKNS0_3AST10MemoryTypeEmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!67 = distinct !{!67, !66, !"_ZSt11make_uniqueIN8WasmEdge7Runtime8Instance14MemoryInstanceEJRKNS0_3AST10MemoryTypeEmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!68 = distinct !{!68, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!69 = distinct !{!69, !68, !"_ZSt19__relocate_object_aISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!70 = distinct !{!70, !68, !"_ZSt19__relocate_object_aISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!71 = distinct !{!71, !24, !81, !82}
!72 = distinct !{!72, !24, !82, !81}
!73 = !{!67}
!74 = !{!"p1 _ZTSSt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS3_EE", !9, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance14MemoryInstanceESt14default_deleteIS4_EESaIS7_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!75, !74, i64 8}
!77 = !{!75, !74, i64 16}
!78 = !{!75, !74, i64 0}
!79 = !{!69}
!80 = !{!70}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = !{!12, !11, i64 16}
!84 = !{!27, !27, i64 0}
!85 = !{i64 0, i64 1, !84, i64 8, i64 8, !26, i64 16, i64 8, !26}
!86 = !{!40, !25, i64 32}
!87 = !{!37, !36, i64 0}
!88 = !{!28, !27, i64 0}
!89 = distinct !{!89, i1 true, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJmKmELm2ELm0ELy68ETnNSt9enable_ifIXeqT2_Li0EEiE4typeELi0EEENS0_6detail16format_arg_storeIT_XT1_ELm0EXT3_EEEDpRT0_"}
!90 = distinct !{!90, !89, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJmKmELm2ELm0ELy68ETnNSt9enable_ifIXeqT2_Li0EEiE4typeELi0EEENS0_6detail16format_arg_storeIT_XT1_ELm0EXT3_EEEDpRT0_: argument 0"}
!91 = !{!90}
!92 = !{!"branch_weights", !"expected", i32 1430940, i32 2146052708}
!93 = distinct !{!93, !24}
!94 = !{!38, !34, i64 16}
!95 = !{!35, !34, i64 0}
end_hunk_0
