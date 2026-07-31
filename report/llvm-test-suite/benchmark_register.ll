inline.NumInlined: 5049
inline.NumDeleted: 1965
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE7reserveEm:bb.a
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #36 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN9benchmark8internal17BenchmarkInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aIN9benchmark8internal17BenchmarkInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_M_allocateEm.exit ] ; 10 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %_ZSt19__relocate_object_aIN9benchmark8internal17BenchmarkInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_M_allocateEm.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @_ZN9benchmark13BenchmarkNameC2EOS0_(ptr noundef nonnull align 8 dereferenceable(424) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(424) %.0911.i.i.i) #33
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 256
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false), !alias.scope !122
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 320 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 328 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !93, !alias.scope !120, !noalias !117 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 320 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !98, !alias.scope !120, !noalias !117
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 328
  store ptr %i.t, ptr %i.w, align 8, !tbaa !93, !alias.scope !117, !noalias !120
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 336 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !102, !alias.scope !120, !noalias !117
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 344 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !103, !alias.scope !120, !noalias !117
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.r, ptr %i.ab, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 352 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !101, !alias.scope !120, !noalias !117
  store ptr null, ptr %i.s, align 8, !tbaa !93, !alias.scope !120, !noalias !117
  store ptr %i.u, ptr %i.x, align 8, !tbaa !102, !alias.scope !120, !noalias !117
  store ptr %i.u, ptr %i.z, align 8, !tbaa !103, !alias.scope !120, !noalias !117
  store i64 0, ptr %i.ac, align 8, !tbaa !101, !alias.scope !120, !noalias !117
  br label %_ZSt19__relocate_object_aIN9benchmark8internal17BenchmarkInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 328
  store ptr null, ptr %i.ae, align 8, !tbaa !93, !alias.scope !117, !noalias !120
  br label %_ZSt19__relocate_object_aIN9benchmark8internal17BenchmarkInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9benchmark8internal17BenchmarkInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sink6.i.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.y, %bb.d ]
  %.sink5.i.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.aa, %bb.d ]
  %.sink.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.ad, %bb.d ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %i.v, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 336
  store ptr %.sink6.i.i.i.i, ptr %i.af, align 8, !tbaa !102, !alias.scope !117, !noalias !120
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 344
  store ptr %.sink5.i.i.i.i, ptr %i.ag, align 8, !tbaa !103, !alias.scope !117, !noalias !120
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 352
  store i64 %.sink.i.i.i.i, ptr %i.ah, align 8, !tbaa !101, !alias.scope !117, !noalias !120
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.r, align 8, !tbaa !98, !alias.scope !117, !noalias !120
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 360
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i64 64, i1 false), !alias.scope !122
  tail call void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(424) %.0911.i.i.i) #33
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 424 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 424
  %.not.i.i.i = icmp eq ptr %i.ak, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !123

_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aIN9benchmark8internal17BenchmarkInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !83
  br label %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit, %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_M_allocateEm.exit
  %i.am = phi ptr [ %.pre, %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.am, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #34
  br label %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !80
  %i.as = getelementptr inbounds nuw [424 x i8], ptr %i.o, i64 %1
  store ptr %i.as, ptr %i.b, align 8, !tbaa !92
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

declare void @_ZN9benchmark8internal17BenchmarkInstanceC1EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

declare void @_ZNK9benchmark13BenchmarkName3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark8internal17BenchmarkInstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #37
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef returned %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i8 0, i64 64, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN9benchmark8internal17BenchmarkFamiliesD2Ev, ptr nonnull @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #33 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance) #33
  br label %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit

_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 24)) #33 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.f) #35
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i:     ; preds = %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 8), align 8, !tbaa !13 ; 6 uses
  %i.h = load ptr, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, align 8, !tbaa !9 ; 10 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 16), align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i
  store i64 %i.e, ptr %i.g, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 8), align 8, !tbaa !13
  br label %_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit9

bb.f:                                             ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i
  %i.k = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #35
          to label %.noexc16 unwind label %_ZN9benchmark9MutexLockD2Ev.exit4.i

.noexc16:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #36
          to label %.noexc17 unwind label %_ZN9benchmark9MutexLockD2Ev.exit4.i ; 10 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i64 %i.e, ptr %i.v, align 8, !tbaa !14
  %.not10.i.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc17
  %i.w = sub i64 %i.k, %i.l
  %i.x = add i64 %i.w, -8                         ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = add i64 %i.k, -8
  %i.ab = sub i64 %i.aa, %i.l
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ad
  %scevgep26 = getelementptr i8, ptr %i.h, i64 %i.ad
  %bound0 = icmp ult ptr %i.u, %scevgep26
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.h, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ah ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.h, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ai = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !14, !alias.scope !129, !noalias !124
  %wide.load28 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !14, !alias.scope !129, !noalias !124
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !14, !alias.scope !132, !noalias !129
  store <2 x i64> %wide.load28, ptr %i.aj, align 8, !tbaa !14, !alias.scope !132, !noalias !129
  %i.ak = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !14, !alias.scope !129, !noalias !124
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !14, !alias.scope !129, !noalias !124
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader30

.lr.ph.i.i.i.i.preheader30:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader30, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !14, !alias.scope !127, !noalias !124
  store i64 %i.am, ptr %.012.i.i.i.i, align 8, !tbaa !14, !alias.scope !124, !noalias !127
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !14, !alias.scope !127, !noalias !124
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !137

_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc17 ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #34
  br label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.h
  store ptr %i.u, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, align 8, !tbaa !9
  store ptr %i.ap, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 8), align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 16), align 8, !tbaa !21
  br label %_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit9

_ZN9benchmark9MutexLockD2Ev.exit4.i:              ; preds = %_ZNKSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 24)) #33 ; 0 uses
  br label %.body

_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit9: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.at = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 24)) #33 ; 0 uses
  ret ptr %0

bb.i:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN9benchmark9MutexLockD2Ev.exit4.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %bb.i ], [ %i.ar, %_ZN9benchmark9MutexLockD2Ev.exit4.i ]
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit15, label %_ZNKSt14default_deleteIN9benchmark8internal9BenchmarkEEclEPS2_.exit.i11

_ZNKSt14default_deleteIN9benchmark8internal9BenchmarkEEclEPS2_.exit.i11: ; preds = %.body
  %i.av = load ptr, ptr %0, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) #33, !inline_history !138
  br label %_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit15

_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit15: ; preds = %.body, %_ZNKSt14default_deleteIN9benchmark8internal9BenchmarkEEclEPS2_.exit.i11
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN9benchmark8internal22FindBenchmarksInternalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_17BenchmarkInstanceESaISA_EEPSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load atomic i8, ptr @_ZGVZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance) #33
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i8 0, i64 64, i1 false)
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN9benchmark8internal17BenchmarkFamiliesD2Ev, ptr nonnull @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #33 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance) #33
  br label %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit

_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !26
  %i.g = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.i, ptr %i.a, align 8, !tbaa !116
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !46
  %i.l = load i64, ptr %i.a, align 8, !tbaa !116
  store i64 %i.l, ptr %i.f, align 8, !tbaa !32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !32
  store i8 %i.n, ptr %i.m, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !29
  %i.q = load ptr, ptr %3, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.s = invoke noundef zeroext i1 @_ZN9benchmark8internal17BenchmarkFamilies14FindBenchmarksENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_17BenchmarkInstanceESaIS9_EEPSo(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = load ptr, ptr %3, align 8, !tbaa !46     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.f
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.v = load i64, ptr %i.f, align 8, !tbaa !32
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret i1 %i.s

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !46     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.f
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.g
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !32
  %i.ab = add i64 %i.aa, 1
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.ep) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21: ; preds = %.body, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !32
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !32
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = load i64, ptr %i.u, align 8, !tbaa !32
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !32
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.aq = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !32
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !770
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !771  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !32
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #34
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #34
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !895

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9      ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #35
  unreachable

_ZNKSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !14
  store i64 %i.r, ptr %i.q, align 8, !tbaa !14
  store ptr null, ptr %2, align 8, !tbaa !14
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = sub i64 %i.m, %i.e
  %i.t = add i64 %i.s, -8                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %i.m, -8
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.z
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ad ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !14, !alias.scope !901, !noalias !896
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !14, !alias.scope !901, !noalias !896
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !14, !alias.scope !904, !noalias !901
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !tbaa !14, !alias.scope !904, !noalias !901
  %i.ag = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !14, !alias.scope !901, !noalias !896
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !14, !alias.scope !901, !noalias !896
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !906

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !tbaa !14, !alias.scope !899, !noalias !896
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !14, !alias.scope !896, !noalias !899
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !14, !alias.scope !899, !noalias !896
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !907

_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.am = sub i64 %i.d, %i.m
  %i.an = add i64 %i.am, -8                       ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.an, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader61, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.aq = add i64 %i.d, -8
  %i.ar = sub i64 %i.aq, %i.m
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep40 = getelementptr i8, ptr %i.at, i64 16
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep41 = getelementptr i8, ptr %i.au, i64 8
  %bound042 = icmp ult ptr %i.al, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.ap, 4611686018427387900   ; 3 uses
  %i.av = shl i64 %n.vec49, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.ay = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.al, i64 %i.ay ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.ay ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.az = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !tbaa !14, !alias.scope !913, !noalias !908
  %wide.load55 = load <2 x i64>, ptr %i.az, align 8, !tbaa !14, !alias.scope !913, !noalias !908
  %i.ba = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !tbaa !14, !alias.scope !916, !noalias !913
  store <2 x i64> %wide.load55, ptr %i.ba, align 8, !tbaa !14, !alias.scope !916, !noalias !913
  %i.bb = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !tbaa !14, !alias.scope !913, !noalias !908
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !tbaa !14, !alias.scope !913, !noalias !908
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bc, label %middle.block57, label %vector.body50, !llvm.loop !918

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.ap, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !14, !alias.scope !911, !noalias !908
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !14, !alias.scope !908, !noalias !911
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !14, !alias.scope !911, !noalias !908
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !919

_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.aw, %middle.block57 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !21
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #34
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !9
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS4_EESaIS7_EELb1EE8_S_do_itERS9_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #35
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i ; 8 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.l = sub i64 %i.d, %i.e
  %i.m = add i64 %i.l, -8                         ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.s
  %scevgep26 = getelementptr i8, ptr %i.a, i64 %i.s
  %bound0 = icmp ult ptr %i.k, %scevgep26
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.t = shl i64 %n.vec, 3                        ; 2 uses
  %i.u = getelementptr i8, ptr %i.k, i64 %i.t     ; 2 uses
  %i.v = getelementptr i8, ptr %i.a, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.w ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.a, i64 %i.w ; 4 uses
  %i.x = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !14, !alias.scope !920
  %wide.load28 = load <2 x i64>, ptr %i.x, align 8, !tbaa !14, !alias.scope !920
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !14, !alias.scope !923, !noalias !920
  store <2 x i64> %wide.load28, ptr %i.y, align 8, !tbaa !14, !alias.scope !923, !noalias !920
  %i.z = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !14, !alias.scope !920
  store <2 x ptr> splat (ptr null), ptr %i.z, align 8, !tbaa !14, !alias.scope !920
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !925

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, label %.lr.ph.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.preheader30:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.u, %middle.block ]
  %.sroa.08.011.i.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 3 uses
  %i.ab = load i64, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !14
  store i64 %i.ab, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !14
  store ptr null, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !926

_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.ae, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %.09) #33 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.u, %middle.block ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  store ptr %i.k, ptr %0, align 8, !tbaa !9
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !13
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !21
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, %_ZSt8_DestroyISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.a, %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit ] ; 2 uses
  %i.aj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN9benchmark8internal9BenchmarkEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN9benchmark8internal9BenchmarkEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.aj) #33, !inline_history !18
  br label %_ZSt8_DestroyISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN9benchmark8internal9BenchmarkEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.an, %i.c
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread
  %i.ao = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread ], [ %i.ai, %_ZSt8_DestroyISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EEEvPT_.exit.i.i.i ]
  %.not.i.i1.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.aq) #34
  br label %_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #37
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark13BenchmarkNameC2EOS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !26
  %i.b = load ptr, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !46
  %i.i = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.i, ptr %i.a, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !29
  store ptr %i.c, ptr %1, align 8, !tbaa !46
  store i64 0, ptr %i.j, align 8, !tbaa !29
  store i8 0, ptr %i.c, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !26
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.p, ptr %i.m, align 8, !tbaa !46
  %i.w = load i64, ptr %i.q, align 8, !tbaa !32
  store i64 %i.w, ptr %i.o, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.y, ptr %i.z, align 8, !tbaa !29
  store ptr %i.q, ptr %i.n, align 8, !tbaa !46
  store i64 0, ptr %i.x, align 8, !tbaa !29
  store i8 0, ptr %i.q, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !26
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !46 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
end_hunk_1
