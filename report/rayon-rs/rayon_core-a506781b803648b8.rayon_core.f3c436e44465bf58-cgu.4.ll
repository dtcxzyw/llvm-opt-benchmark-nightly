Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.4?download=true
inline.NumInlined: 202
inline.NumDeleted: 122
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2O_:bb.a
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i.i.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.o) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i.i.i.i unwind label %bb.e, !noalias !55

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i.i.i.i: ; preds = %bb.d, %.lr.ph12.i.i.i.i
  %i.t = icmp eq i64 %i.p, %i.e
  br i1 %i.t, label %.body.i.i, label %.lr.ph12.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !81
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i.i.i.i, %bb.c
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB26_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.body.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB26_.exit.i.i: ; preds = %.body.i.i
  resume { ptr, i32 } %i.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2o_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit.i.i.i.i, %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !82, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch14CountLatchKindEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !85
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch14CountLatchKindEBF_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch14CountLatchKindEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch14CountLatchKindEBF_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5scope9ScopeBaseEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !96, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !96
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !103, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !104
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !115, !noundef !4 ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.j, null
  br i1 %.not.i.i2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !116
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.i) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit3: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std3env3varReECskVyUMSjkkSy_10rayon_core(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNvNtCsaL1QbXo9JQH_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECskVyUMSjkkSy_10rayon_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskVyUMSjkkSy_10rayon_core5scopeNtB2_5Scope3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef align 128 %1, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not9.i = icmp eq ptr %1, null
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef nonnull align 8 ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry15global_registry(), !noalias !121
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.05.0.i = phi ptr [ %i.d, %bb.d ], [ %i.c, %bb.c ], [ %2, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !121
  %i.e = load ptr, ptr %.sroa.05.0.i, align 8, !noalias !125, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !121
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %.sroa.05.0.i, align 8, !noalias !125, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %i.h, ptr %i.b, align 8, !noalias !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121
  invoke void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef align 128 %1)
          to label %_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase3new.exit unwind label %bb.h, !noalias !121

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !126
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit.i unwind label %bb.j, !noalias !121

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !121
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.i

_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase3new.exit: ; preds = %bb.f
  %3 = ptrtoint ptr %i.h to i64
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !121
  store i64 %3, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase12job_panicked(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %bb.s, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.ac, %bb.s ], [ %i.r, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.p = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #22 ; 7 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.l, !prof !131

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #25
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core(ptr nonnull %1, ptr nonnull %2) #26
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.e, %bb.d, %bb.t, %bb.l
  ret void

bb.l:                                             ; preds = %bb.h
  store ptr %1, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %2, ptr %i.t, align 8
  %i.u = cmpxchg ptr %i.a, ptr null, ptr %i.p release monotonic, align 8
  %i.v = extractvalue { ptr, i1 } %i.u, 1
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i = load ptr, ptr %i.p, align 8           ; 5 uses
  %.val1.i = load ptr, ptr %i.t, align 8, !nonnull !4, !align !132, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val1.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.w(ptr noundef nonnull %.val.i)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !10, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #22
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !10, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 16, i64 noundef 8) #22
  br label %common.resume

bb.t:                                             ; preds = %bb.p, %bb.o
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 16, i64 noundef 8) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase21maybe_propagate_panic(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw xchg ptr %i.a, ptr null monotonic, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !132, !noundef !4
  invoke void @_RNvNtCskVyUMSjkkSy_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f) #25
          to label %bb.d unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 16, i64 noundef 8) #22
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE16into_boxed_sliceB1D_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load i64, ptr %.sroa.410.0..sroa_idx, align 8 ; 2 uses
  %1 = inttoptr i64 %.sroa.410.0.copyload to ptr
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 576460752303423488
  tail call void @llvm.assume(i1 %i.f)
  %2 = icmp ne i64 %.sroa.410.0.copyload, 0
  tail call void @llvm.assume(i1 %2)
  %i.g = insertvalue { ptr, i64 } poison, ptr %1, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtBT_3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1R_.exit unwind label %bb.g

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit._crit_edge, label %bb.e, !prof !133

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit._crit_edge: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #25
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1R_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCskVyUMSjkkSy_10rayon_core5scopeNtB4_9ScopeFifo3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef align 128 %1, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not9.i = icmp eq ptr %1, null
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 272
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry15global_registry(), !noalias !137
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.05.0.i = phi ptr [ %i.h, %bb.d ], [ %i.g, %bb.c ], [ %2, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !137
  %i.i = load ptr, ptr %.sroa.05.0.i, align 8, !noalias !134, !nonnull !4, !noundef !4
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !137
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %.sroa.05.0.i, align 8, !noalias !134, !nonnull !4, !noundef !4 ; 4 uses
  store ptr %i.l, ptr %i.e, align 8, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !137
  invoke void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef align 128 %1)
          to label %_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase3new.exit unwind label %bb.h, !noalias !137

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !139
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.e) #24
          to label %common.resume unwind label %bb.j, !noalias !137

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !137
  unreachable

common.resume:                                    ; preds = %.body, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase3new.exit: ; preds = %bb.f
  store ptr %i.l, ptr %i.f, align 8, !alias.scope !134, !noalias !144
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.q, align 8, !alias.scope !134, !noalias !144
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !137
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 520
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 4 uses
  %i.u = icmp ult i64 %i.t, 192153584101141163
  call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !145
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 192153584101141163) %i.t, i1 noundef zeroext false, i64 noundef 128, i64 noundef 256)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase3new.exit
  %i.v = load i64, ptr %i.b, align 8, !range !8, !noalias !145, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !148, !noalias !145, !noundef !4 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.w, label %bb.k, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCNvMs_NtBK_5scopeNtB31_9ScopeFifo3new0EEBK_.exit.i.i, !prof !131

bb.k:                                             ; preds = %.noexc
  %i.aa = load i64, ptr %i.z, align 8, !noalias !145
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #25
          to label %.noexc1 unwind label %bb.n

.noexc1:                                          ; preds = %bb.k
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCNvMs_NtBK_5scopeNtB31_9ScopeFifo3new0EEBK_.exit.i.i: ; preds = %.noexc
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !145, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = icmp ule i64 %i.t, %i.y
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !145
  store i64 %i.y, ptr %i.c, align 8, !noalias !145
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ab, ptr %i.ad, align 8, !noalias !145
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.ae, align 8, !noalias !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !149
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ab, ptr %i.af, align 8, !noalias !149
  store ptr %i.ae, ptr %i.a, align 8, !noalias !149
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.ag, align 8, !noalias !149
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCskVyUMSjkkSy_10rayon_core5scopeNtB1w_9ScopeFifo3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2q_8for_each4callNtNtB1y_3job7JobFifoNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3W_3VecB3t_E14extend_trustedBN_E0E0EB1y_(i64 noundef 0, i64 noundef range(i64 0, 192153584101141163) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.o unwind label %bb.l, !noalias !145

bb.l:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCNvMs_NtBK_5scopeNtB31_9ScopeFifo3new0EEBK_.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #26
          to label %.body unwind label %bb.m, !noalias !145

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !145
  unreachable

bb.n:                                             ; preds = %bb.k, %_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase3new.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.ah, %bb.l ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5scope9ScopeBaseEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #26
          to label %common.resume unwind label %bb.p

bb.o:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCNvMs_NtBK_5scopeNtB31_9ScopeFifo3new0EEBK_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !145
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.p:                                             ; preds = %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke void @_RNvXs2_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull align 128 dereferenceable(256) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB2s_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 384, i64 noundef range(i64 1, 536870913) 128) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB2s_.exit: ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit2, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB2s_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit2

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 384, i64 noundef range(i64 1, 536870913) 128) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB2s_.exit, %bb.e, %bb.f
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit: ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB5_6PacketuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !157, !noundef !4 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !160
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.b) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit.i unwind label %bb.p

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !168, !noundef !4 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !169
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit3.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.b) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit3.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.h, %bb.d, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.c, %bb.d ], [ %i.c, %bb.b ], [ %i.c, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #26
          to label %.body unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit3.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.o = load i64, ptr %i.n, align 8, !range !8, !alias.scope !180, !noundef !4
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECskVyUMSjkkSy_10rayon_core.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit3.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !180, !noundef !4 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val1.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !180 ; 6 uses
  %i.s = icmp eq ptr %.val.i.i.i, null
end_hunk_0
