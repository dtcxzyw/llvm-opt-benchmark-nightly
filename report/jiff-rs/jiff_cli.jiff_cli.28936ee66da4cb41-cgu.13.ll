Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.13?download=true
inline.NumInlined: 127
inline.NumDeleted: 69
begin_hunk_0_@_RINvXs_NtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6option6OptionmEINtB7_7ContextmzE12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate4tzdb3runs8_0EB2v_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtCsaL1QbXo9JQH_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = call noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error22construct_from_displayNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %storemerge = phi i32 [ 1, %bb.d ], [ 0, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  ret void

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.p

bb.g:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs0_NtCslhCKBzvegwQ_10regex_lite4poolINtB5_4PoolNtNtB7_6pikevm5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputBN_NtNtB1O_6marker4SendNtNtNtB1O_5panic11unwind_safe13RefUnwindSafeNtB2W_10UnwindSafeNtB2C_4SyncEL_EE3getCs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [216 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEEE4lockCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.e = load i64, ptr %i.c, align 8, !range !10, !alias.scope !81, !noalias !82, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1H_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEEEINtBM_11PoisonErrorBH_EE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !81, !noalias !82, !nonnull !6, !align !9, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !12, !alias.scope !81, !noalias !82, !noundef !6
  store ptr %i.h, ptr %i.a, align 8, !noalias !83
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.j, ptr %i.k, align 8, !noalias !83
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.d unwind label %bb.c, !noalias !81

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1U_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEEEEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %common.resume unwind label %bb.e, !noalias !81

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !81
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1H_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEEEINtBM_11PoisonErrorBH_EE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !81, !noalias !82, !nonnull !6, !align !9, !noundef !6 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !12, !alias.scope !81, !noalias !82, !noundef !6 ; 2 uses
  %i.r = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !6 ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1H_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEEEINtBM_11PoisonErrorBH_EE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val6 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.v = getelementptr i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %i.v, align 8, !nonnull !6, !align !9, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %.val7, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !6, !noalias !84, !nonnull !6
  invoke void %i.x(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(address) dereferenceable(216) %i.b, ptr noundef nonnull %.val6) #24
          to label %_RNvXsv_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheNtNtBP_6marker4SendNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtB2A_10UnwindSafeNtB2h_4SyncEL_EIBJ_uE4callCs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.h, !inline_history !78

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1H_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEEEINtBM_11PoisonErrorBH_EE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = add nsw i64 %i.t, -1                     ; 3 uses
  store i64 %i.z, ptr %i.s, align 8
  %i.aa = load i64, ptr %i.y, align 8, !range !7, !noundef !6
  %i.ab = icmp samesign ult i64 %i.z, %i.aa
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !6, !noundef !6
  %i.ae = icmp ult i64 %i.t, 1152921504606846977
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.z
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !6, !align !9, !noundef !6
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ak, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEEEECs3tZ2SXJA1qv_8jiff_cli(ptr nonnull %i.o, i8 %i.q) #21
          to label %common.resume unwind label %bb.r

_RNvXsv_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheNtNtBP_6marker4SendNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtB2A_10UnwindSafeNtB2h_4SyncEL_EIBJ_uE4callCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.f
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !85
  %i.ai = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 216, i64 noundef 8) #19, !noalias !85 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.i, label %bb.l, !prof !11

bb.i:                                             ; preds = %_RNvXsv_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheNtNtBP_6marker4SendNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtB2A_10UnwindSafeNtB2h_4SyncEL_EIBJ_uE4callCs3tZ2SXJA1qv_8jiff_cli.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 216) #22
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.b) #21
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.l:                                             ; preds = %_RNvXsv_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheNtNtBP_6marker4SendNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtB2A_10UnwindSafeNtB2h_4SyncEL_EIBJ_uE4callCs3tZ2SXJA1qv_8jiff_cli.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ai, ptr noundef nonnull align 8 dereferenceable(216) %i.b, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.sroa.01.0 = phi ptr [ %i.ai, %bb.l ], [ %i.ag, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br i1 %i.r, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.aq = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #23
  br i1 %i.aq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.am monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.ar = atomicrmw xchg ptr %i.o, i32 0 release, align 4
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEEEECs3tZ2SXJA1qv_8jiff_cli.exit, !prof !11

bb.q:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.o)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEEEECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEEEECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.q
  %i.at = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.au = insertvalue { ptr, ptr } %i.at, ptr %.sroa.01.0, 1
  ret { ptr, ptr } %i.au

bb.r:                                             ; preds = %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtB6_3vec3VechEINtNtBL_3set8BTreeSetNtNtB6_6string6StringEEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 216, 905) 640, i64 noundef 8) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(376) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 216, 905) 376, i64 noundef 8) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 376) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEE13new_uninit_inB1X_() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(904) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 216, 905) 904, i64 noundef 8) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 904) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringTB1u_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 216, 905) 728, i64 noundef 8) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeINtNtB6_3vec3VechEINtNtBL_3set8BTreeSetNtNtB6_6string6StringEEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 216, 905) 544, i64 noundef 8) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 216, 905) 280, i64 noundef 8) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 280) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEE13new_uninit_inB1S_() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(808) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 216, 905) 808, i64 noundef 8) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 808) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringTB1p_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEEE13new_uninit_inCs3tZ2SXJA1qv_8jiff_cli() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 216, 905) 632, i64 noundef 8) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden { i1, i8 } @_RNvMs_NtCs3oUPovFnLWP_4core6escapeINtB4_15EscapeIterInnerKj4_NtB4_13AlwaysEscapedE4nextCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 4 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !noundef !6  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.d = load i8, ptr %i.c, align 1, !noundef !6
  %i.e = icmp ult i8 %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw nsw i8 %i.b, 1
  store i8 %i.f, ptr %i.a, align 4
  %i.g = zext nneg i8 %i.b to i64
  %i.h = icmp ult i8 %i.b, 4
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.j = load i8, ptr %i.i, align 1, !range !86, !noundef !6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i8 [ %i.j, %bb.b ], [ undef, %bb.a ]
  %i.k = insertvalue { i1, i8 } poison, i1 %i.e, 0
  %i.l = insertvalue { i1, i8 } %i.k, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvNtCs3tZ2SXJA1qv_8jiff_cli3cmd3run(ptr noalias nofree noundef align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtCs3tZ2SXJA1qv_8jiff_cli4args15next_as_command(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 190, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
  %i.f = load i64, ptr %i.d, align 8, !range !5, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.f, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = icmp eq i64 %.sroa.510.0.copyload, 8
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 1
  %i.l = icmp ne i64 %i.k, 7310575239085057383
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8, !captures !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.510.0.copyload, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli, ptr %.sroa.414.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @11, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = invoke noundef ptr @_RNvNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate3run(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %bb.e, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #21
          to label %common.resume unwind label %bb.o

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = invoke noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error3msgNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g

bb.h:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.m ], [ %i.s, %bb.i ], [ %i.q, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit22, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit, %bb.b
  %.sroa.0.0 = phi ptr [ %i.i, %bb.b ], [ %i.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit22 ], [ %i.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.0.0

bb.l:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit22 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit22: ; preds = %bb.l
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.k

bb.o:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs8WPnInWCYsb_6anyhow9___private10format_err(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = tail call noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error3msgReECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @27, ptr noundef nonnull %0)
  %i.f = call noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error3msgNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones3run(ptr noalias nofree noundef align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 13 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
end_hunk_0
