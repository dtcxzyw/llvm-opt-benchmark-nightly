Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.03?download=true
inline.NumInlined: 2355
inline.NumDeleted: 813
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvNtCs8frGy5WneL6_4fish8complete15complete_remove:bb.a
  br i1 %i.t, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_.exit
  %i.am = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc15, !prof !14

.noexc15:                                         ; preds = %bb.v
  %i.ap = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.ap, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.w

bb.w:                                             ; preds = %.noexc15
  store atomic i8 1, ptr %i.al monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.w, %.noexc15, %bb.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_.exit
  %i.aq = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB2x_15CompletionEntryEEEB2z_.exit, !prof !11

bb.x:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB2x_15CompletionEntryEEEB2z_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB2x_15CompletionEntryEEEB2z_.exit: ; preds = %bb.x, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret void

bb.y:                                             ; preds = %.body12, %.thread22, %.body10
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

.thread:                                          ; preds = %.body12, %.thread22
  %.pn521 = phi { ptr, i32 } [ %.pn, %.body12 ], [ %eh.lpad-body25, %.thread22 ]
  resume { ptr, i32 } %.pn521

.thread22:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body25 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %i.n, %bb.e ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #35
          to label %.thread unwind label %bb.y
}

; Function Attrs: nonlazybind uwtable
define { ptr, i1 } @_RNvNtCs8frGy5WneL6_4fish8complete17complete_wrap_map() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs8frGy5WneL6_4fish8complete11WRAPPER_MAP, i64 56) acquire, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs8frGy5WneL6_4fish8complete11WRAPPER_MAP, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs8frGy5WneL6_4fish8complete11WRAPPER_MAP, i64 56), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.b
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtBb_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB1D_EEE4lockCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 @_RNvNtCs8frGy5WneL6_4fish8complete11WRAPPER_MAP)
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  %i.g = load i64, ptr %i.d, align 8, !range !6, !alias.scope !2306, !noalias !2307, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBQ_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2i_EEEINtBM_11PoisonErrorBH_EE6unwrapCs8frGy5WneL6_4fish.exit, !prof !11

bb.c:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2308
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2306, !noalias !2307, !nonnull !5, !align !19, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i8, ptr %i.k, align 8, !range !4, !alias.scope !2306, !noalias !2307, !noundef !5
  store ptr %i.j, ptr %i.c, align 8, !noalias !2308
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.l, ptr %i.m, align 8, !noalias !2308
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #34
          to label %bb.e unwind label %bb.d, !noalias !2306

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtBI_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2v_EEEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #35
          to label %bb.g unwind label %bb.f, !noalias !2306

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !noalias !2306
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBQ_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2i_EEEINtBM_11PoisonErrorBH_EE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2306, !noalias !2307, !nonnull !5, !align !19, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !4, !alias.scope !2306, !noalias !2307, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = insertvalue { ptr, i1 } poison, ptr %i.q, 0
  %i.v = insertvalue { ptr, i1 } %i.u, i1 %i.t, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { ptr, i1 } %i.v
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish8complete19complete_remove_all(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 11 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1Y_15CompletionEntryEE4lockB20_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 8 @_RNvNtCs8frGy5WneL6_4fish8complete14COMPLETION_MAP)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread54

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2321)
  %i.m = load i64, ptr %i.l, align 8, !range !6, !alias.scope !2321, !noalias !2322, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.h, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2323
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2321, !noalias !2322, !nonnull !5, !align !19, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !4, !alias.scope !2321, !noalias !2322, !noundef !5
  store ptr %i.p, ptr %i.c, align 8, !noalias !2323
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.r, ptr %i.s, align 8, !noalias !2323
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @231, i64 noundef 14, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #34
          to label %bb.f unwind label %bb.e, !noalias !2321

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB2Q_15CompletionEntryEEEEB2S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #35
          to label %.thread54 unwind label %bb.g, !noalias !2321

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !noalias !2321
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !2321, !noalias !2322, !nonnull !5, !align !19, !noundef !5 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !4, !alias.scope !2321, !noalias !2322, !noundef !5 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.ab = zext i1 %1 to i8
  store i8 %i.ab, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  invoke void @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1a_15CompletionEntryE6removeB18_EB1c_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
          to label %bb.j unwind label %.thread81

.thread81:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_.exit.i, %bb.ag, %bb.ac, %bb.h, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit, %bb.n, %bb.aa
  %lpad.thr_comm79 = landingpad { ptr, i32 }
          cleanup
  br label %.thread74

bb.i:                                             ; preds = %bb.aq, %bb.as
  %lpad.thr_comm.split-lp80 = landingpad { ptr, i32 }
          cleanup
  br label %.thread65

bb.j:                                             ; preds = %bb.h
  %i.ad = load i64, ptr %i.j, align 8, !range !8, !noundef !5 ; 2 uses
  %i.ae = icmp ne i64 %i.ad, -1
  %.not84 = icmp eq i64 %i.ad, -1
  br i1 %.not84, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEEB11_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.thread74 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEEB11_.exit unwind label %.thread81

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEEB11_.exit: ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ah = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs8frGy5WneL6_4fish8complete11WRAPPER_MAP, i64 56) acquire, align 8
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit, label %bb.n, !prof !14

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEEB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs8frGy5WneL6_4fish8complete11WRAPPER_MAP, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs8frGy5WneL6_4fish8complete11WRAPPER_MAP, i64 56), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
          to label %.noexc29 unwind label %.thread81

.noexc29:                                         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit: ; preds = %.noexc29, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEEB11_.exit
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtBb_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB1D_EEE4lockCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 @_RNvNtCs8frGy5WneL6_4fish8complete11WRAPPER_MAP)
          to label %bb.o unwind label %.thread81

bb.o:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  %i.aj = load i64, ptr %i.h, align 8, !range !6, !alias.scope !2324, !noalias !2325, !noundef !5
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.p, label %bb.t, !prof !11

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2326
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !2324, !noalias !2325, !nonnull !5, !align !19, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ao = load i8, ptr %i.an, align 8, !range !4, !alias.scope !2324, !noalias !2325, !noundef !5
  store ptr %i.am, ptr %i.e, align 8, !noalias !2326
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %i.ao, ptr %i.ap, align 8, !noalias !2326
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #34
          to label %bb.r unwind label %bb.q, !noalias !2324

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtBI_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2v_EEEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #35
          to label %.thread74 unwind label %bb.s, !noalias !2324

bb.r:                                             ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !noalias !2324
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !2324, !noalias !2325, !nonnull !5, !align !19, !noundef !5 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.av = load i8, ptr %i.au, align 8, !range !4, !alias.scope !2324, !noalias !2325, !noundef !5 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBO_ENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6removeBO_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i, %bb.t
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body30

.body30:                                          ; preds = %bb.x, %bb.u
  %eh.lpad-body31 = phi { ptr, i32 } [ %i.ay, %bb.u ], [ %i.bb, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish(ptr nonnull %i.at, i8 %i.av) #35
          to label %.thread74 unwind label %bb.aw

bb.v:                                             ; preds = %bb.t
  %i.az = load i64, ptr %i.i, align 8, !range !8, !alias.scope !2327, !noundef !5
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body30 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.w
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit unwind label %bb.u

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br i1 %i.aw, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit
  %i.be = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bf = and i64 %i.be, 9223372036854775807
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.aa, !prof !14

bb.aa:                                            ; preds = %bb.z
  %i.bh = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #36
          to label %.noexc33 unwind label %.thread81

.noexc33:                                         ; preds = %bb.aa
  br i1 %i.bh, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %.noexc33
  store atomic i8 1, ptr %i.bd monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.ab, %.noexc33, %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit
  %i.bi = atomicrmw xchg ptr %i.at, i32 0 release, align 4
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %bb.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish.exit, !prof !11

bb.ac:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.at)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish.exit unwind label %.thread81

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not = xor i1 %2, true
  %brmerge = or i1 %i.ae, %.not
  %i.bk = load i8, ptr %i.aa, align 8, !range !4
  %i.bl = trunc nuw i8 %i.bk to i1
  %or.cond = select i1 %brmerge, i1 true, i1 %i.bl
  br i1 %or.cond, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread65 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.ax

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8BTreeSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE4lockCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 @_RNvNtCs8frGy5WneL6_4fish8complete21COMPLETION_TOMBSTONES)
          to label %bb.ah unwind label %.thread81

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  %i.bo = load i64, ptr %i.g, align 8, !range !6, !alias.scope !2328, !noalias !2329, !noundef !5
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %bb.ai, label %bb.am, !prof !11

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2330
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !2328, !noalias !2329, !nonnull !5, !align !19, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 16
end_hunk_0
begin_hunk_1_@_RNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is:bb.a
  %i.by = load i8, ptr %i.y, align 8, !range !4
  %i.bz = trunc nuw i8 %i.by to i1                ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val54 = load i8, ptr %i.p, align 1            ; 2 uses
  %.val55 = load i8, ptr %i.q, align 2            ; 3 uses
  %i.cd = trunc nuw i8 %.val55 to i1
  %i.ce = and i32 %i.af, 3
  %brmerge117.not = icmp eq i32 %i.ce, 0
  %spec.select.i.i.i.i.mux = select i1 %.not70.i.i.i.i, i32 %spec.select.i.i.i.i, i32 2 ; 2 uses
  %i.cf = insertelement <4 x i1> poison, i1 %i.bi, i64 0
  %i.cg = insertelement <4 x i1> %i.cf, i1 %i.bj, i64 1
  %i.ch = shufflevector <2 x i1> %i.bn, <2 x i1> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x i1> %i.cg, <4 x i1> %i.ch, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %.backedge.outer.backedge, %bb.h
  %.sroa.0.0.ph = phi ptr [ %i.an, %bb.h ], [ %.us-phi111, %.backedge.outer.backedge ]
  %.sroa.08.0.ph = phi i64 [ 0, %bb.h ], [ %i.eo, %.backedge.outer.backedge ] ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.at
  %.sroa.0.0 = phi ptr [ %.us-phi111, %bb.at ], [ %.sroa.0.0.ph, %.backedge.outer ] ; 4 uses
  br i1 %or.cond.i.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %.backedge
  %i.cj = icmp eq ptr %.sroa.0.0, %i.aq
  br i1 %i.cj, label %.split110.us, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit.split.us

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit.split.us: ; preds = %.split.us
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit

.split:                                           ; preds = %.backedge, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i
  %i.cl = phi ptr [ %i.cn, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i ], [ %.sroa.0.0, %.backedge ] ; 5 uses
  %i.cm = icmp eq ptr %i.cl, %i.aq
  br i1 %i.cm, label %.split110.us, label %bb.i

bb.i:                                             ; preds = %.split
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.01.0.i.i.i = load ptr, ptr %.sroa.01.0.in.i.i.i, align 8, !noalias !3254, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.3.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.3.0.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i, align 8, !noalias !3254, !noundef !5 ; 4 uses
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not69.i.i.i.i, label %bb.l, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE9is_ok_andNvMsm_BL_BJ_10is_symlinkECs8frGy5WneL6_4fish.exit.i.i.i.i

bb.k:                                             ; preds = %bb.q, %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i, %bb.i
  %.sroa.11.0.i.i.i.i = phi i32 [ undef, %bb.i ], [ %.sroa.6.sroa.5.0.copyload.i.i.i.i, %bb.q ], [ %.sroa.6.sroa.5.0.copyload.i.i.i.i, %bb.p ], [ %.sroa.6.sroa.5.0.copyload.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i ]
  %.sroa.9.0.i.i.i.i = phi i32 [ undef, %bb.i ], [ %.sroa.6.sroa.0.0.copyload.i.i.i.i, %bb.q ], [ %.sroa.6.sroa.0.0.copyload.i.i.i.i, %bb.p ], [ %.sroa.6.sroa.0.0.copyload.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i ]
  %.sroa.7.0.i.i.i.i = phi i32 [ undef, %bb.i ], [ %.sroa.519.0.copyload.i.i.i.i, %bb.q ], [ %.sroa.519.0.copyload.i.i.i.i, %bb.p ], [ %.sroa.519.0.copyload.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i ]
  br i1 %i.ae, label %bb.u, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i.i.i.i, %bb.j
  %.sroa.023.0.i.i.i.i = phi i1 [ %.sroa.04.0.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i.i.i.i ], [ false, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3255
  invoke void @_RNvNtCs8frGy5WneL6_4fish5wutil5wstat(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.01.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.l
  %i.co = load i64, ptr %i.e, align 8, !range !13, !noalias !3255, !noundef !5
  %i.cp = icmp eq i64 %i.co, 2
  br i1 %i.cp, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE9is_ok_andNvMsm_BL_BJ_10is_symlinkECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3255
  invoke void @_RNvNtCs8frGy5WneL6_4fish5wutil6lwstat(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.01.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i)
          to label %.noexc56 unwind label %.loopexit

.noexc56:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE9is_ok_andNvMsm_BL_BJ_10is_symlinkECs8frGy5WneL6_4fish.exit.i.i.i.i
  %i.cq = load i64, ptr %i.f, align 8, !range !13, !noalias !3255, !noundef !5
  %i.cr = icmp ne i64 %i.cq, 2                    ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %.sroa.gep114.i.i.i.i, align 8, !noalias !3255
  %i.cs = and i32 %.val.i.i.i.i.i, 61440
  %i.ct = icmp eq i32 %i.cs, 40960
  %.sroa.04.0.i.i.i.i.i = select i1 %i.cr, i1 %i.ct, i1 false
  %.val103.i.i.i.i = load ptr, ptr %i.as, align 8, !noalias !3255 ; 4 uses
  br i1 %i.cr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3255
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val103.i.i.i.i) ]
  %i.cu = ptrtoint ptr %.val103.i.i.i.i to i64    ; 2 uses
  %i.cv = and i64 %i.cu, 3
  switch i64 %i.cv, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i.i.i
    i64 3, label %bb.n
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i.i.i
    i64 1, label %bb.o
  ], !prof !22

default.unreachable:                              ; preds = %bb.ag, %bb.r, %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp ult ptr %.val103.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.cx = and i64 %i.cu, 1095216660480
  %i.cy = icmp ne i64 %i.cx, 1095216660480
  call void @llvm.assume(i1 %i.cw)
  call void @llvm.assume(i1 %i.cy)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cz = getelementptr i8, ptr %.val103.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  store ptr %i.cz, ptr %i.at, align 8, !alias.scope !3256, !noalias !3255
  store i8 3, ptr %i.c, align 8, !alias.scope !3256, !noalias !3255
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i.i.i unwind label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3255
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i.i.i, %.noexc56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3255
  br label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i: ; preds = %.noexc
  %.sroa.519.0.copyload.i.i.i.i = load i32, ptr %.sroa.519.0..sroa_idx.i.i.i.i, align 8, !noalias !3255 ; 4 uses
  %.sroa.6.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 4, !noalias !3255 ; 3 uses
  %.sroa.6.sroa.5.0.copyload.i.i.i.i = load i32, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3255 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3255
  br i1 %.sroa.023.0.i.i.i.i, label %bb.k, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i
  %i.da = and i32 %.sroa.519.0.copyload.i.i.i.i, 61440 ; 3 uses
  %i.db = icmp eq i32 %i.da, 32768
  %or.cond.i.i.i.i = and i1 %i.bg, %i.db
  br i1 %or.cond.i.i.i.i, label %bb.k, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = insertelement <4 x i32> poison, i32 %i.da, i64 0
  %i.dd = shufflevector <4 x i32> %i.dc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.de = icmp eq <4 x i32> %i.dd, <i32 16384, i32 24576, i32 8192, i32 4096>
  %i.df = and <4 x i1> %i.de, %i.ci
  %i.dg = icmp eq i32 %i.da, 49152
  %or.cond11.i.i.i.i = and i1 %i.bp, %i.dg
  %i.dh = freeze <4 x i1> %i.df
  %i.di = bitcast <4 x i1> %i.dh to i4
  %i.dj = icmp ne i4 %i.di, 0
  %op.rdx = select i1 %i.dj, i1 true, i1 %or.cond11.i.i.i.i
  br i1 %op.rdx, label %bb.k, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i

bb.r:                                             ; preds = %.noexc
  %.val99.i.i.i.i = load ptr, ptr %i.az, align 8, !noalias !3255, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3255
  %i.dk = ptrtoint ptr %.val99.i.i.i.i to i64     ; 2 uses
  %i.dl = and i64 %i.dk, 3
  switch i64 %i.dl, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i
    i64 3, label %bb.s
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i
    i64 1, label %bb.t
  ], !prof !22

bb.s:                                             ; preds = %bb.r
  %i.dm = icmp ult ptr %.val99.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.dn = and i64 %i.dk, 1095216660480
  %i.do = icmp ne i64 %i.dn, 1095216660480
  call void @llvm.assume(i1 %i.dm)
  call void @llvm.assume(i1 %i.do)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.dp = getelementptr i8, ptr %.val99.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ]
  store ptr %i.dp, ptr %i.ba, align 8, !alias.scope !3257, !noalias !3255
  store i8 3, ptr %i.b, align 8, !alias.scope !3257, !noalias !3255
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i unwind label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3255
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i

bb.u:                                             ; preds = %bb.k
  br i1 %brmerge117.not, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %.not74.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %.sroa.029.1.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.mux, %bb.y ], [ 0, %bb.v ]
  %i.dq = or i32 %.sroa.029.1.i.i.i.i, 1
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  br i1 %.not76.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i, label %bb.aa

bb.y:                                             ; preds = %bb.u
  br i1 %.not74.i.i.i.i, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y, %bb.w
  %.sroa.029.3.i.i.i.i = phi i32 [ %i.dq, %bb.w ], [ %spec.select.i.i.i.i.mux, %bb.y ]
  %i.dr = invoke noundef i32 @_RNvNtCs8frGy5WneL6_4fish5wutil7waccess(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.01.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i, i32 noundef %.sroa.029.3.i.i.i.i)
          to label %.noexc59 unwind label %.loopexit ; 2 uses

.noexc59:                                         ; preds = %bb.z
  %.not75.i.i.i.i = icmp ne i32 %i.dr, -1
  %brmerge116 = select i1 %.not75.i.i.i.i, i1 true, i1 %.not76.i.i.i.i
  %.not75.i.i.i.i.not = icmp eq i32 %i.dr, -1
  br i1 %brmerge116, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc59, %bb.x
  br i1 %i.bc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3255
  invoke void @_RNvNtCs8frGy5WneL6_4fish5wutil5wstat(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.01.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i)
          to label %.noexc60 unwind label %.loopexit

.noexc60:                                         ; preds = %bb.ab
  %i.ds = load i64, ptr %i.d, align 8, !range !13, !noalias !3255, !noundef !5
  %i.dt = icmp eq i64 %i.ds, 2
  br i1 %i.dt, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit5.i

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit5.i, %bb.aa
  %.sroa.054.0.i.i.i.i = phi i32 [ %i.dy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit5.i ], [ %.sroa.11.0.i.i.i.i, %bb.aa ]
  %.sroa.053.0.i.i.i.i = phi i32 [ %i.dx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit5.i ], [ %.sroa.9.0.i.i.i.i, %bb.aa ]
  %.sroa.051.0.i.i.i.i = phi i32 [ %i.dw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit5.i ], [ %.sroa.7.0.i.i.i.i, %bb.aa ] ; 2 uses
  %i.du = and i32 %.sroa.051.0.i.i.i.i, 2048
  %i.dv = icmp eq i32 %i.du, 0
  %or.cond86.i.i.i.i = select i1 %.not77.i.i.i.i, i1 %i.dv, i1 false
  br i1 %or.cond86.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i, label %bb.ad

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit5.i: ; preds = %.noexc60
  %i.dw = load i32, ptr %i.au, align 8, !noalias !3255, !noundef !5
  %i.dx = load i32, ptr %i.av, align 4, !noalias !3255, !noundef !5
  %i.dy = load i32, ptr %i.aw, align 8, !noalias !3255, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3255
  br label %bb.ac

bb.ad:                                            ; preds = %bb.ac
  %i.dz = and i32 %.sroa.051.0.i.i.i.i, 1024
  %i.ea = icmp eq i32 %i.dz, 0
  %or.cond88.i.i.i.i = select i1 %.not78.i.i.i.i, i1 %i.ea, i1 false
  br i1 %or.cond88.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not80.i.i.i.i = icmp eq i32 %.sroa.576.0, %.sroa.053.0.i.i.i.i
  %or.cond89.i.i.i.i = select i1 %storemerge, i1 %.not80.i.i.i.i, i1 false
  %or.cond93.i.i.i.i = select i1 %i.ah, i1 true, i1 %or.cond89.i.i.i.i ; 2 uses
  %or.cond93.i.i.i.i.not = xor i1 %or.cond93.i.i.i.i, true
  %brmerge = select i1 %or.cond93.i.i.i.i.not, i1 true, i1 %i.ak
  br i1 %brmerge, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not82.i.i.i.i = icmp eq i32 %.sroa.5.0, %.sroa.054.0.i.i.i.i
  %or.cond90.i.i.i.i = select i1 %storemerge40, i1 %.not82.i.i.i.i, i1 false
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i

bb.ag:                                            ; preds = %.noexc60
  %.val95.i.i.i.i = load ptr, ptr %i.ax, align 8, !noalias !3255, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3258
  %i.eb = ptrtoint ptr %.val95.i.i.i.i to i64     ; 2 uses
  %i.ec = and i64 %i.eb, 3
  switch i64 %i.ec, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i
    i64 3, label %bb.ah
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i
    i64 1, label %bb.ai
  ], !prof !22

bb.ah:                                            ; preds = %bb.ag
  %i.ed = icmp ult ptr %.val95.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ee = and i64 %i.eb, 1095216660480
  %i.ef = icmp ne i64 %i.ee, 1095216660480
  call void @llvm.assume(i1 %i.ed), !noalias !3259
  call void @llvm.assume(i1 %i.ef), !noalias !3259
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.eg = getelementptr i8, ptr %.val95.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eg) ], !noalias !3259
  store ptr %i.eg, ptr %i.ay, align 8, !alias.scope !3260, !noalias !3258
  store i8 3, ptr %i.a, align 8, !alias.scope !3260, !noalias !3258
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3255
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i: ; preds = %.noexc59, %bb.q, %bb.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i, %bb.af, %bb.ad, %bb.ac, %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i, %bb.k
  %.sroa.016.0.i.i.i.i.shrunk = phi i1 [ %or.cond90.i.i.i.i, %bb.af ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i ], [ %.not75.i.i.i.i.not, %.noexc59 ], [ false, %bb.ac ], [ false, %bb.ad ], [ %or.cond93.i.i.i.i, %bb.ae ], [ false, %bb.q ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i ], [ true, %bb.k ], [ true, %bb.x ]
  %.sroa.016.0.i.i.i.i = zext i1 %.sroa.016.0.i.i.i.i.shrunk to i8
  %.not.i = icmp eq i8 %i.bv, %.sroa.016.0.i.i.i.i
  br i1 %.not.i, label %.split, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit

.loopexit:                                        ; preds = %bb.l, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE9is_ok_andNvMsm_BL_BJ_10is_symlinkECs8frGy5WneL6_4fish.exit.i.i.i.i, %bb.o, %bb.t, %bb.z, %bb.ab, %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.loopexit.split-lp.loopexit.loopexit:             ; preds = %bb.ar
  %lpad.loopexit164 = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.loopexit.split-lp.loopexit.loopexit.split-lp:    ; preds = %bb.ay, %bb.ba, %bb.bb, %bb.bg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.av
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.body71:                                          ; preds = %.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %bb.be
  %eh.lpad-body72 = phi { ptr, i32 } [ %i.fa, %bb.be ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit164, %.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #35
          to label %.thread unwind label %bb.bj

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit.split.us
  %.us-phi111 = phi ptr [ %i.ck, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit.split.us ], [ %i.cn, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i ] ; 2 uses
  %.us-phi112 = phi ptr [ %.sroa.0.0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit.split.us ], [ %i.cl, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i ] ; 5 uses
  br i1 %or.cond, label %bb.ar, label %bb.aq

.split110.us:                                     ; preds = %.split.us, %.split
  br i1 %i.bz, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.am, %.split110.us
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEEB1g_.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread unwind label %bb.al

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEEB1g_.exit: ; preds = %bb.aj
  %.not42 = icmp eq i64 %.sroa.08.0.ph, 0
  %.50 = zext i1 %.not42 to i64
  br label %.sink.split

bb.al:                                            ; preds = %bb.ak
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.am:                                            ; preds = %.split110.us
  %i.ej = load i64, ptr %i.ao, align 8, !noundef !5 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, 288230376151711744
  call void @llvm.assume(i1 %i.ek)
  %.not41 = icmp eq i64 %.sroa.08.0.ph, %i.ej
  br i1 %.not41, label %bb.aj, label %.loopexit96

.sink.split:                                      ; preds = %.loopexit96, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEEB1g_.exit
  %.sroa.0.1.ph = phi i64 [ %.50, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEEB1g_.exit ], [ %.sroa.0.2, %.loopexit96 ]
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.el = or i64 %.sroa.0.1.ph, 4294967296
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.a
  %.sroa.0.0.insert.insert = phi i64 [ 8589934593, %bb.a ], [ %i.el, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret i64 %.sroa.0.0.insert.insert

.loopexit96:                                      ; preds = %bb.at, %bb.bi, %bb.am
  %.sroa.0.2 = phi i64 [ 1, %bb.am ], [ 1, %bb.at ], [ 0, %bb.bi ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.sink.split unwind label %bb.ao

bb.ao:                                            ; preds = %.loopexit96
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.aq:                                            ; preds = %bb.as, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit
  %i.eo = add i64 %.sroa.08.0.ph, 1
  %i.ep = icmp eq i64 %.sroa.08.0.ph, -1
  br i1 %i.ep, label %bb.av, label %bb.au

bb.ar:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %.us-phi112, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !5, !noundef !5
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %.us-phi112, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !5
  %i.eq = invoke noundef i32 @_RNvNtCs8frGy5WneL6_4fish5wutil7waccess(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.023.0, i64 noundef %.sroa.3.0, i32 noundef 0)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.er = icmp ne i32 %i.eq, -1
  %i.es = xor i1 %i.er, %i.bx
  br i1 %i.es, label %bb.at, label %bb.aq

bb.at:                                            ; preds = %bb.as
  br i1 %i.bz, label %.loopexit96, label %.backedge

bb.au:                                            ; preds = %bb.aq
  br i1 %i.bz, label %.backedge.outer.backedge, label %bb.ax

.backedge.outer.backedge:                         ; preds = %bb.au, %bb.bi
  br label %.backedge.outer

bb.av:                                            ; preds = %bb.aq
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1730) #34
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
  %.sroa.325.0.in = getelementptr inbounds nuw i8, ptr %.us-phi112, i64 16 ; 2 uses
  %.sroa.325.0 = load i64, ptr %.sroa.325.0.in, align 8, !noundef !5 ; 2 uses
  %i.et = icmp eq i64 %.sroa.325.0, 0
  br i1 %i.et, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.sroa.026.0.in = getelementptr inbounds nuw i8, ptr %.us-phi112, i64 8 ; 2 uses
  %.sroa.026.0 = load ptr, ptr %.sroa.026.0.in, align 8, !nonnull !5, !noundef !5
  %i.eu = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.026.0, i64 noundef %.sroa.325.0, i32 noundef 45)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  br i1 %i.eu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String8from_streECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1725, i64 noundef 2)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

bb.bb:                                            ; preds = %bb.az, %bb.ax
  %.val = load ptr, ptr %i.cc, align 8
  invoke fastcc void @_RINvNtNtCs8frGy5WneL6_4fish8builtins4path8path_outRINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEB6_(ptr %.val, i8 %.val54, i8 %.val55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.us-phi112)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

bb.bc:                                            ; preds = %bb.ba
  %.sroa.529.0 = load i64, ptr %.sroa.325.0.in, align 8, !noundef !5 ; 4 uses
  %.sroa.028.0 = load ptr, ptr %.sroa.026.0.in, align 8, !nonnull !5, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !3261)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef range(i64 0, 4611686018427387904) %.sroa.529.0)
          to label %.noexc.i unwind label %bb.be, !noalias !3262

.noexc.i:                                         ; preds = %bb.bc
  %i.ev = load i64, ptr %i.ca, align 8, !alias.scope !3263, !noalias !3264, !noundef !5 ; 3 uses
  %i.ew = icmp ult i64 %i.ev, 2305843009213693952
  call void @llvm.assume(i1 %i.ew)
  %.not.i.i.i69 = icmp eq i64 %.sroa.529.0, 0
  br i1 %.not.i.i.i69, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %.noexc.i
  %i.ex = load ptr, ptr %i.cb, align 8, !alias.scope !3263, !noalias !3264, !nonnull !5, !noundef !5
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ev
  %i.ez = shl nuw nsw i64 %.sroa.529.0, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ey, ptr nonnull readonly align 4 %.sroa.028.0, i64 %i.ez, i1 false), !noalias !3261
  %.pre.i.i.i70 = load i64, ptr %i.ca, align 8, !alias.scope !3263, !noalias !3264
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #35
          to label %.body71 unwind label %bb.bf, !noalias !3262

bb.bf:                                            ; preds = %bb.be
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !noalias !3262
  unreachable

bb.bg:                                            ; preds = %bb.bd, %.noexc.i
  %i.fc = phi i64 [ %.pre.i.i.i70, %bb.bd ], [ %i.ev, %.noexc.i ]
  %i.fd = add i64 %i.fc, %.sroa.529.0
  store i64 %i.fd, ptr %i.ca, align 8, !alias.scope !3263, !noalias !3264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !alias.scope !3265, !noalias !3266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val53 = load ptr, ptr %i.cc, align 8
  invoke fastcc void @_RINvNtNtCs8frGy5WneL6_4fish8builtins4path8path_outNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB6_(ptr %.val53, i8 %.val54, i8 %.val55, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

end_hunk_1
