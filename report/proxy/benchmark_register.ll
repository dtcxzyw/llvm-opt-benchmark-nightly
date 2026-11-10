Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/benchmark_register?download=true
inline.NumInlined: 5083
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE7reserveEm:bb.a
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !124, !alias.scope !455
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false), !alias.scope !456
  br label %_ZSt19__relocate_object_aIN9benchmark8internal17BenchmarkInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9benchmark8internal17BenchmarkInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN9benchmark8internal17BenchmarkInstanceC2EOS1_.exit.i.i.i.i, %_ZNSt8functionIFvRKN9benchmark5StateEEEC2EOS5_.exit.i.i.i.i.i
  tail call void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(472) %.0911.i.i.i) #33
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 472 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 472
  %.not.i.i.i = icmp eq ptr %i.bc, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aIN9benchmark8internal17BenchmarkInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !102
  br label %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split, %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_M_allocateEm.exit
  %i.be = phi ptr [ %.pr, %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.be, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #34
  br label %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !102
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.bj, ptr %i.j, align 8, !tbaa !101
  %i.bk = getelementptr inbounds nuw [472 x i8], ptr %i.o, i64 %1
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !109
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

declare void @_ZN9benchmark8internal17BenchmarkInstanceC1EPNS_9BenchmarkEiiRKSt6vectorIlSaIlEEi(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

declare void @_ZNK9benchmark13BenchmarkName3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark8internal17BenchmarkInstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef %i.o)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #37
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit2
  tail call void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalESt10unique_ptrINS_9BenchmarkESt14default_deleteIS2_EE(ptr nofree noundef align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48
  %i.b = load atomic i8, ptr @_ZGVZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit, !prof !41

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
  %i.f = load i64, ptr %0, align 8, !tbaa !48     ; 4 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !48
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 24)) #33 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #35
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i:     ; preds = %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 8), align 8, !tbaa !46 ; 6 uses
  %i.j = load ptr, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, align 8, !tbaa !45 ; 7 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 16), align 8, !tbaa !52
  %.not.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i
  store i64 %i.f, ptr %i.i, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 8), align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i
  %i.m = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #35
          to label %.noexc7 unwind label %_ZN9benchmark9MutexLockD2Ev.exit4.i

.noexc7:                                          ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i, %i.q  ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #36
          to label %.noexc8 unwind label %_ZN9benchmark9MutexLockD2Ev.exit4.i ; 7 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store i64 %i.f, ptr %i.x, align 8, !tbaa !48
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc8
  %i.y = add i64 %i.m, -8
  %i.z = sub i64 %i.y, %i.n                       ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.af ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.j, i64 %i.af ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.ag = getelementptr i8, ptr %next.gep14, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !48, !alias.scope !465
  %wide.load15 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !48, !alias.scope !465
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !48, !alias.scope !464
  store <2 x i64> %wide.load15, ptr %i.ah, align 8, !tbaa !48, !alias.scope !464
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !48, !alias.scope !465
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !48, !alias.scope !465
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !461

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader17

.lr.ph.i.i.i.i.preheader17:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader17, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.aj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !48, !alias.scope !465
  store i64 %i.aj, ptr %.012.i.i.i.i, align 8, !tbaa !48, !alias.scope !464
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !48, !alias.scope !465
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.i
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !462

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %.noexc8 ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 16), align 8, !tbaa !52
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ap) #34
  br label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.h
  store ptr %i.w, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, align 8, !tbaa !45
  store ptr %i.am, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 8), align 8, !tbaa !46
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 16), align 8, !tbaa !52
  br label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit

_ZN9benchmark9MutexLockD2Ev.exit4.i:              ; preds = %_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 24)) #33 ; 0 uses
  br label %.body

_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %bb.e
  %i.at = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 24)) #33 ; 0 uses
  ret ptr %i.a

bb.i:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN9benchmark9MutexLockD2Ev.exit4.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %bb.i ], [ %i.ar, %_ZN9benchmark9MutexLockD2Ev.exit4.i ]
  %.not.i4 = icmp eq i64 %i.f, 0
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit6, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5: ; preds = %.body
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(304) %i.g) #33, !inline_history !463
  br label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit6

_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit6: ; preds = %.body, %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN9benchmark8internal22FindBenchmarksInternalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_17BenchmarkInstanceESaISA_EEPSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load atomic i8, ptr @_ZGVZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit, !prof !41

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
  store ptr %i.f, ptr %3, align 8, !tbaa !58
  %i.g = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !61   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.i, ptr %i.a, align 8, !tbaa !135
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !76
  %i.l = load i64, ptr %i.a, align 8, !tbaa !135
  store i64 %i.l, ptr %i.f, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !62
  store i8 %i.n, ptr %i.m, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !135  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !61
  %i.q = load ptr, ptr %3, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.s = invoke noundef zeroext i1 @_ZN9benchmark8internal17BenchmarkFamilies14FindBenchmarksENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_17BenchmarkInstanceESaIS9_EEPSo(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, ptr nofree noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1, ptr noundef %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = load ptr, ptr %3, align 8, !tbaa !76     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.f
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.v = load i64, ptr %i.f, align 8, !tbaa !62
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret i1 %i.s

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !76     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.f
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.g
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !62
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(304) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark9BenchmarkE, i64 16), ptr %0, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !58
  %i.l = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !61   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  store i64 %i.n, ptr %i.i, align 8, !tbaa !135
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i
end_hunk_0
begin_hunk_1_@_ZN9benchmark13BenchmarkNameD2Ev:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !62
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !62
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !62
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = load i64, ptr %i.u, align 8, !tbaa !62
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !62
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !62
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !76 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !62
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.aq = load ptr, ptr %0, align 8, !tbaa !76    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !62
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !386  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !62
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #34
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #34
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !890

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !45     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #35
  unreachable

_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !48
  store i64 %i.r, ptr %i.q, align 8, !tbaa !48
  store ptr null, ptr %2, align 8, !tbaa !48
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !48, !alias.scope !905
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !48, !alias.scope !905
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !48, !alias.scope !904
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !48, !alias.scope !904
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !48, !alias.scope !905
  store <2 x ptr> splat (ptr null), ptr %i.aa, align 8, !tbaa !48, !alias.scope !905
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !894

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.ad = load i64, ptr %.0911.i.i.i, align 8, !tbaa !48, !alias.scope !905
  store i64 %i.ad, ptr %.012.i.i.i, align 8, !tbaa !48, !alias.scope !904
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !48, !alias.scope !905
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !895

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ah = add i64 %i.d, -8
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.al = and i64 %i.ai, -8                       ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %1, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec42, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.aq
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.at = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.at ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.au = getelementptr i8, ptr %next.gep46, i64 16 ; 2 uses
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !48, !alias.scope !908
  %wide.load48 = load <2 x i64>, ptr %i.au, align 8, !tbaa !48, !alias.scope !908
  %i.av = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !48, !alias.scope !909, !noalias !910
  store <2 x i64> %wide.load48, ptr %i.av, align 8, !tbaa !48, !alias.scope !909, !noalias !910
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !48, !alias.scope !908
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !48, !alias.scope !908
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.aw, label %middle.block50, label %vector.body43, !llvm.loop !902

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.ak, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i17.preheader ], [ %i.ar, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.az, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.ax = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !48, !alias.scope !907
  store i64 %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !48, !alias.scope !906
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !48, !alias.scope !907
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !903

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ag, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ar, %middle.block50 ], [ %i.az, %.lr.ph.i.i.i17 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !52
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #34
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !46
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #35
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i ; 5 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.l = add i64 %i.d, -8
  %i.m = sub i64 %i.l, %i.e                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %i.k, i64 %i.p     ; 2 uses
  %i.r = getelementptr i8, ptr %i.a, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.s ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.a, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep31, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep31, align 8, !tbaa !48
  %wide.load32 = load <2 x i64>, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !48
  store <2 x i64> %wide.load32, ptr %i.u, align 8, !tbaa !48
  store <2 x ptr> splat (ptr null), ptr %next.gep31, align 8, !tbaa !48
  store <2 x ptr> splat (ptr null), ptr %i.t, align 8, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !911

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.i.preheader34:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %middle.block ]
  %.sroa.08.011.i.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader34 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader34 ] ; 3 uses
  %i.w = load i64, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !48
  store i64 %i.w, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !48
  store ptr null, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !912

_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.z, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %.09) #33 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.q, %middle.block ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !45    ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !46 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !45
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !46
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !52
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.05.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(304) %i.ae) #33, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.ai, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit
  %i.aj = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %i.ad, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ], [ %i.ad, %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i ]
  %i.ak = phi ptr [ %i.a, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ], [ %.pre, %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #34
  br label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #37
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark13BenchmarkNameC2EOS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  %i.b = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !76
  %i.i = load i64, ptr %i.c, align 8, !tbaa !62
  store i64 %i.i, ptr %i.a, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !61
  store ptr %i.c, ptr %1, align 8, !tbaa !76
  store i64 0, ptr %i.j, align 8, !tbaa !61
  store i8 0, ptr %i.c, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !58
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.p, ptr %i.m, align 8, !tbaa !76
  %i.w = load i64, ptr %i.q, align 8, !tbaa !62
  store i64 %i.w, ptr %i.o, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.y, ptr %i.z, align 8, !tbaa !61
  store ptr %i.q, ptr %i.n, align 8, !tbaa !76
  store i64 0, ptr %i.x, align 8, !tbaa !61
  store i8 0, ptr %i.q, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !58
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !61 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !76
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !62
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.am, ptr %i.an, align 8, !tbaa !61
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !76
  store i64 0, ptr %i.al, align 8, !tbaa !61
  store i8 0, ptr %i.ae, align 8, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !58
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !76 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = load i64, ptr %i.au, align 8, !tbaa !61 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 16
end_hunk_1
