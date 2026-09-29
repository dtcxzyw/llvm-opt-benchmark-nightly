Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/benchmark_register?download=true
inline.NumInlined: 5083
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EE7reserveEm:bb.a

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sink7.i.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.aa, %bb.d ]
  %.sink6.i.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.ac, %bb.d ]
  %.sink.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.af, %bb.d ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %i.x, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 336
  store ptr %.sink7.i.i.i.i, ptr %i.ah, align 8, !tbaa !119, !alias.scope !455, !noalias !456
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 344
  store ptr %.sink6.i.i.i.i, ptr %i.ai, align 8, !tbaa !120, !alias.scope !455, !noalias !456
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 352
  store i64 %.sink.i.i.i.i, ptr %i.aj, align 8, !tbaa !118, !alias.scope !455, !noalias !456
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.t, align 8, !tbaa !115, !alias.scope !455, !noalias !456
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 360
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.ak, ptr noundef nonnull align 8 dereferenceable(44) %i.al, i64 44, i1 false), !alias.scope !457
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 408 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 432
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i8 0, i64 24, i1 false), !alias.scope !455, !noalias !456
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !123, !alias.scope !456, !noalias !455
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !123, !alias.scope !455, !noalias !456
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 424 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !124, !alias.scope !456, !noalias !455 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZNSt8functionIFvRKN9benchmark5StateEEEC2EOS5_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 408
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 424
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 16, i1 false), !tbaa.struct !125, !alias.scope !457
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !124, !alias.scope !455, !noalias !456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false), !alias.scope !456, !noalias !455
  br label %_ZNSt8functionIFvRKN9benchmark5StateEEEC2EOS5_.exit.i.i.i.i.i

_ZNSt8functionIFvRKN9benchmark5StateEEEC2EOS5_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 440 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 464
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 24, i1 false), !alias.scope !455, !noalias !456
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !123, !alias.scope !456, !noalias !455
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !123, !alias.scope !455, !noalias !456
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 456 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !124, !alias.scope !456, !noalias !455 ; 2 uses
  %.not.i.i.not.i7.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.not.i7.i.i.i.i.i, label %_ZSt19__relocate_object_aIN9benchmark8internal17BenchmarkInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZN9benchmark8internal17BenchmarkInstanceC2EOS1_.exit.i.i.i.i

_ZN9benchmark8internal17BenchmarkInstanceC2EOS1_.exit.i.i.i.i: ; preds = %_ZNSt8functionIFvRKN9benchmark5StateEEEC2EOS5_.exit.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 440
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 456
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 16, i1 false), !tbaa.struct !125, !alias.scope !457
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !124, !alias.scope !455, !noalias !456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false), !alias.scope !456, !noalias !455
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
  %i.j = load ptr, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, align 8, !tbaa !45 ; 10 uses
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
          to label %.noexc8 unwind label %_ZN9benchmark9MutexLockD2Ev.exit4.i ; 10 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store i64 %i.f, ptr %i.x, align 8, !tbaa !48
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc8
  %i.y = add i64 %i.m, -8
  %i.z = sub i64 %i.y, %i.n                       ; 3 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader18, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = and i64 %i.z, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ad
  %scevgep14 = getelementptr i8, ptr %i.j, i64 %i.ad
  %bound0 = icmp ult ptr %i.w, %scevgep14
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.j, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ah ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.j, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.ai = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !48, !alias.scope !469, !noalias !467
  %wide.load16 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !48, !alias.scope !469, !noalias !467
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !48, !alias.scope !470, !noalias !469
  store <2 x i64> %wide.load16, ptr %i.aj, align 8, !tbaa !48, !alias.scope !470, !noalias !469
  %i.ak = getelementptr i8, ptr %next.gep15, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !48, !alias.scope !469, !noalias !467
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !48, !alias.scope !469, !noalias !467
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader18

.lr.ph.i.i.i.i.preheader18:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader18, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader18 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !48, !alias.scope !468, !noalias !467
  store i64 %i.am, ptr %.012.i.i.i.i, align 8, !tbaa !48, !alias.scope !467, !noalias !468
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !48, !alias.scope !468, !noalias !467
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.i
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !465

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %.noexc8 ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 16), align 8, !tbaa !52
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.as) #34
  br label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.h
  store ptr %i.w, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, align 8, !tbaa !45
  store ptr %i.ap, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 8), align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.at, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 16), align 8, !tbaa !52
  br label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit

_ZN9benchmark9MutexLockD2Ev.exit4.i:              ; preds = %_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 24)) #33 ; 0 uses
  br label %.body

_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %bb.e
  %i.aw = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 24)) #33 ; 0 uses
  ret ptr %i.a

bb.i:                                             ; preds = %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN9benchmark9MutexLockD2Ev.exit4.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.i ], [ %i.au, %_ZN9benchmark9MutexLockD2Ev.exit4.i ]
  %.not.i4 = icmp eq i64 %i.f, 0
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit6, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5: ; preds = %.body
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(304) %i.g) #33, !inline_history !466
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

end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl:bb.a
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !108
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #34
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ee = load ptr, ptr %2, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i1 %i.ca

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.g ], [ %i.bx, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ej = load ptr, ptr %2, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %.body
  %i.ek = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21: ; preds = %.body, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !895

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
  %i.c = load ptr, ptr %0, align 8, !tbaa !45     ; 10 uses
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !48
  store i64 %i.r, ptr %i.q, align 8, !tbaa !48
  store ptr null, ptr %2, align 8, !tbaa !48
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = and i64 %i.t, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !48, !alias.scope !914, !noalias !912
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !48, !alias.scope !914, !noalias !912
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !48, !alias.scope !915, !noalias !914
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !tbaa !48, !alias.scope !915, !noalias !914
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !48, !alias.scope !914, !noalias !912
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !48, !alias.scope !914, !noalias !912
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !902

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !48, !alias.scope !913, !noalias !912
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !48, !alias.scope !912, !noalias !913
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !48, !alias.scope !913, !noalias !912
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !903

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ak = add i64 %i.d, -8
  %i.al = sub i64 %i.ak, %i.m                     ; 3 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.al, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ao = and i64 %i.al, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.an, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !48, !alias.scope !918, !noalias !916
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !tbaa !48, !alias.scope !918, !noalias !916
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !48, !alias.scope !919, !noalias !918
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !tbaa !48, !alias.scope !919, !noalias !918
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !48, !alias.scope !918, !noalias !916
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !48, !alias.scope !918, !noalias !916
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !910

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.an, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !48, !alias.scope !917, !noalias !916
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !48, !alias.scope !916, !noalias !917
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !48, !alias.scope !917, !noalias !916
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !911

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !52
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #34
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 9 uses
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
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i ; 8 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.l = add i64 %i.d, -8
  %i.m = sub i64 %i.l, %i.e                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader35, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.p = and i64 %i.m, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.q
  %scevgep31 = getelementptr i8, ptr %i.a, i64 %i.q
  %bound0 = icmp ult ptr %i.k, %scevgep31
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.r = shl i64 %n.vec, 3                        ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 %i.r     ; 2 uses
  %i.t = getelementptr i8, ptr %i.a, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.u ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.u ; 4 uses
  %i.v = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 8, !tbaa !48, !alias.scope !925
  %wide.load33 = load <2 x i64>, ptr %i.v, align 8, !tbaa !48, !alias.scope !925
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !48, !alias.scope !926, !noalias !925
  store <2 x i64> %wide.load33, ptr %i.w, align 8, !tbaa !48, !alias.scope !926, !noalias !925
  %i.x = getelementptr i8, ptr %next.gep32, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep32, align 8, !tbaa !48, !alias.scope !925
  store <2 x ptr> splat (ptr null), ptr %i.x, align 8, !tbaa !48, !alias.scope !925
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !923

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i.preheader35

.lr.ph.i.i.i.i.i.i.preheader35:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.s, %middle.block ]
  %.sroa.08.011.i.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader35, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader35 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader35 ] ; 3 uses
  %i.z = load i64, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !48
  store i64 %i.z, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !48
  store ptr null, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !924

_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.ac, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %.09) #33 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.s, %middle.block ], [ %i.ab, %.lr.ph.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !45    ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !46 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !45
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !46
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !52
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.al, %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ] ; 2 uses
  %i.ah = load ptr, ptr %.05.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(304) %i.ah) #33, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.al, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit
  %i.am = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %i.ag, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ], [ %i.ag, %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i ]
  %i.an = phi ptr [ %i.a, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ], [ %.pre, %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #34
  br label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
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
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFdRKS_IdSaIdEEERNS0_13StatisticUnitEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !61, !alias.scope !973, !noalias !972 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !974
  br label %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %.012.i.i.i, align 8, !tbaa !76, !alias.scope !972, !noalias !973
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !62, !alias.scope !973, !noalias !972
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !62, !alias.scope !972, !noalias !973
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !61, !alias.scope !973, !noalias !972
  br label %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.as = phi i64 [ %i.ao, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.as, ptr %i.au, align 8, !tbaa !61, !alias.scope !972, !noalias !973
  store ptr %i.al, ptr %.0911.i.i.i, align 8, !tbaa !76, !alias.scope !973, !noalias !972
  store i64 0, ptr %i.at, align 8, !tbaa !61, !alias.scope !973, !noalias !972
  store i8 0, ptr %i.al, align 8, !tbaa !62, !alias.scope !973, !noalias !972
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 8 dereferenceable(12) %i.aw, i64 12, i1 false), !alias.scope !974
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !968

_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.ay, %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.az, %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i31 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 3 uses
  store ptr %i.ba, ptr %.012.i.i.i30, align 8, !tbaa !58, !alias.scope !975, !noalias !976
  %i.bb = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !76, !alias.scope !976, !noalias !975 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32

bb.g:                                             ; preds = %.lr.ph.i.i.i29
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !61, !alias.scope !976, !noalias !975 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false), !alias.scope !977
  br label %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.bb, ptr %.012.i.i.i30, align 8, !tbaa !76, !alias.scope !975, !noalias !976
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !62, !alias.scope !976, !noalias !975
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !62, !alias.scope !975, !noalias !976
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !61, !alias.scope !976, !noalias !975
  br label %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32, %bb.g
  %i.bj = phi i64 [ %i.bf, %bb.g ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !61, !alias.scope !975, !noalias !976
  store ptr %i.bc, ptr %.0911.i.i.i31, align 8, !tbaa !76, !alias.scope !976, !noalias !975
  store i64 0, ptr %i.bk, align 8, !tbaa !61, !alias.scope !976, !noalias !975
  store i8 0, ptr %i.bc, align 8, !tbaa !62, !alias.scope !976, !noalias !975
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bm, ptr noundef nonnull align 8 dereferenceable(12) %i.bn, i64 12, i1 false), !alias.scope !977
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 48 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 48 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bo, %i.c
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !968

_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit38: ; preds = %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.az, %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bp, %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.d, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit38
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !168
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bt) #34
  br label %_ZNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit38, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !174
  store ptr %.0.lcssa.i.i.i37, ptr %i.b, align 8, !tbaa !167
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !168
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  %i.by = call ptr @__cxa_begin_catch(ptr %i.bx) #33 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #34
  invoke void @__cxa_rethrow() #35
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bv

bb.l:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #37
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9benchmark8internal16AddNegatedPowersIiEEvPSt6vectorIT_SaIS3_EES3_S3_i(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, !prof !41

bb.d:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i11 = icmp eq i32 %i.f, 0
  br i1 %.not.i11, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12

_ZN9benchmark8internal18GetNullLogInstanceEv.exit12: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.d, %bb.e
  %i.g = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.f, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14, !prof !41

bb.f:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i13 = icmp eq i32 %i.i, 0
  br i1 %.not.i13, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14

_ZN9benchmark8internal18GetNullLogInstanceEv.exit14: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, %bb.f, %bb.g
  %i.j = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.h, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16, !prof !41

bb.h:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i15 = icmp eq i32 %i.l, 0
  br i1 %.not.i15, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16

_ZN9benchmark8internal18GetNullLogInstanceEv.exit16: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14, %bb.h, %bb.i
  %i.m = sub nsw i32 0, %1
  %i.n = sub nsw i32 0, %2
  %i.o = tail call ptr @_ZN9benchmark8internal9AddPowersIiEENSt6vectorIT_SaIS3_EE8iteratorEPS5_S3_S3_i(ptr noundef %0, i32 noundef %i.n, i32 noundef %i.m, i32 noundef %3) ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98   ; 8 uses
  %.not4.i = icmp eq ptr %i.o, %i.q
  br i1 %.not4.i, label %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = ptrtoaddr ptr %i.o to i64
  %i.t = add i64 %i.r, -4
  %i.u = sub i64 %i.t, %i.s                       ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.z ; 3 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !83
  %wide.load19 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !83
  %i.ab = sub nsw <4 x i32> zeroinitializer, %wide.load
  %i.ac = sub nsw <4 x i32> zeroinitializer, %wide.load19
  store <4 x i32> %i.ab, ptr %next.gep, align 4, !tbaa !83
  store <4 x i32> %i.ac, ptr %i.aa, align 4, !tbaa !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !978

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit, label %.lr.ph.i.preheader38

.lr.ph.i.preheader38:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.01.05.i.ph = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader38, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.sroa.01.05.i.ph, %.lr.ph.i.preheader38 ] ; 3 uses
  %i.ae = load i32, ptr %.sroa.01.05.i, align 4, !tbaa !83
  %i.af = sub nsw i32 0, %i.ae
  store i32 %i.af, ptr %.sroa.01.05.i, align 4, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 4 ; 2 uses
  %.not.i17 = icmp eq ptr %i.ag, %i.q
  br i1 %.not.i17, label %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit, label %.lr.ph.i, !llvm.loop !979

_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16
  %i.ah = icmp ne ptr %i.o, %i.q
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 5 uses
  %i.ai = icmp ult ptr %i.o, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit
  %4 = ptrtoaddr ptr %i.q to i64
  %i.aj = add i64 %4, -8
  %5 = ptrtoaddr ptr %i.o to i64                  ; 3 uses
  %i.ak = add i64 %5, 4
  %i.al = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak)
  %i.am = add i64 %i.al, -4                       ; 2 uses
  %i.an = icmp ne i64 %i.am, %5
  %i.ao = zext i1 %i.an to i64                    ; 3 uses
  %i.ap = add i64 %5, %i.ao
  %i.aq = sub i64 %i.am, %i.ap                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, %i.ao            ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check22 = icmp samesign ult i64 %i.as, 31
  br i1 %min.iters.check22, label %.lr.ph.i.i.preheader37, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.au = lshr i64 %i.aq, 3
  %i.av = add nuw nsw i64 %i.au, %i.ao
  %i.aw = shl nuw i64 %i.av, 2                    ; 2 uses
  %i.ax = getelementptr i8, ptr %i.o, i64 %i.aw
  %scevgep = getelementptr i8, ptr %i.ax, i64 4
  %i.ay = sub nuw nsw i64 -4, %i.aw
  %scevgep20 = getelementptr i8, ptr %i.q, i64 %i.ay
  %bound0 = icmp ult ptr %i.o, %i.q
  %bound1 = icmp ult ptr %scevgep20, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader37, label %vector.ph23

vector.ph23:                                      ; preds = %vector.memcheck
  %n.vec24 = and i64 %i.at, 9223372036854775804   ; 4 uses
  %i.az = mul i64 %n.vec24, -4
  %i.ba = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.az
  %i.bb = shl i64 %n.vec24, 2
  %i.bc = getelementptr i8, ptr %i.o, i64 %i.bb
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph23
  %index26 = phi i64 [ 0, %vector.ph23 ], [ %index.next32, %vector.body25 ] ; 3 uses
  %i.bd = mul i64 %index26, -4
  %next.gep27 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.bd
  %i.be = shl i64 %index26, 2
  %next.gep28 = getelementptr i8, ptr %i.o, i64 %i.be ; 2 uses
  %wide.load29 = load <4 x i32>, ptr %next.gep28, align 4, !tbaa !83, !alias.scope !985, !noalias !986
  %i.bf = getelementptr i8, ptr %next.gep27, i64 -12 ; 2 uses
  %wide.load30 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !83, !alias.scope !986
  %reverse = shufflevector <4 x i32> %wide.load30, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep28, align 4, !tbaa !83, !alias.scope !985, !noalias !986
  %reverse31 = shufflevector <4 x i32> %wide.load29, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse31, ptr %i.bf, align 4, !tbaa !83, !alias.scope !986
  %index.next32 = add nuw i64 %index26, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next32, %n.vec24
  br i1 %i.bg, label %middle.block33, label %vector.body25, !llvm.loop !983

middle.block33:                                   ; preds = %vector.body25
  %cmp.n34 = icmp eq i64 %i.at, %n.vec24
  br i1 %cmp.n34, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %.lr.ph.i.i.preheader37

.lr.ph.i.i.preheader37:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block33
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.ba, %middle.block33 ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.preheader ], [ %i.bc, %middle.block33 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader37, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader37 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader37 ] ; 3 uses
  %i.bh = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !83
  %i.bi = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !83
  store i32 %i.bi, ptr %.sroa.05.09.i.i, align 4, !tbaa !83
  store i32 %i.bh, ptr %.sroa.0.010.i.i, align 4, !tbaa !83
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %.sroa.0.0.i.i
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, !llvm.loop !984

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block33, %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN9benchmark8internal9AddPowersIiEENSt6vectorIT_SaIS3_EE8iteratorEPS5_S3_S3_i(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10, !prof !41

bb.d:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i9 = icmp eq i32 %i.f, 0
  br i1 %.not.i9, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10

_ZN9benchmark8internal18GetNullLogInstanceEv.exit10: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.d, %bb.e
  %i.g = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.f, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, !prof !41

bb.f:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i11 = icmp eq i32 %i.i, 0
  br i1 %.not.i11, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12

_ZN9benchmark8internal18GetNullLogInstanceEv.exit12: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10, %bb.f, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !178  ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !172    ; 3 uses
  %.not16 = icmp slt i32 %2, 1
  br i1 %.not16, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.lr.ph
  %i.n = phi ptr [ %i.l, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.o = phi ptr [ %i.k, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %storemerge17 = phi i32 [ 1, %.lr.ph ], [ %i.an, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %.not8 = icmp slt i32 %storemerge17, %1
  br i1 %.not8, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !173
  %.not.i13 = icmp eq ptr %i.o, %i.p
  br i1 %.not.i13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %storemerge17, ptr %i.o, align 4, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !178
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %bb.i
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775804
  br i1 %i.u, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #35
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.v = ashr exact i64 %i.t, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2305843009213693951)
  %i.z = select i1 %i.x, i64 2305843009213693951, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #36 ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  store i32 %storemerge17, ptr %i.ac, align 4, !tbaa !83
  %i.ad = icmp sgt i64 %i.t, 0
  br i1 %i.ad, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.n, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !173
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ah) #34
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !172
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !178
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ai, ptr %i.m, align 8, !tbaa !173
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.j, %bb.h
  %i.aj = phi ptr [ %i.ab, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.n, %bb.j ], [ %i.n, %bb.h ]
  %i.ak = phi ptr [ %i.ae, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.q, %bb.j ], [ %i.o, %bb.h ]
  %i.al = sdiv i32 2147483647, %3
  %i.am = icmp sgt i32 %storemerge17, %i.al
  %i.an = mul nsw i32 %storemerge17, %3           ; 2 uses
  %.not = icmp sgt i32 %i.an, %2
  %or.cond = select i1 %i.am, i1 true, i1 %.not
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.loopexit, label %bb.h, !llvm.loop !987

_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !98
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge

end_hunk_2
