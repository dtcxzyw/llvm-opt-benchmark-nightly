inline.NumInlined: 5997
inline.NumDeleted: 1809
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6removeNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake:bb.a

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !45, !invariant.load !19, !alias.scope !137, !noalias !134 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !46, !invariant.load !19, !alias.scope !137, !noalias !134
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #46, !noalias !146
  br label %common.resume.i

.critedge.i:                                      ; preds = %_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %0, ptr noundef nonnull align 16 dereferenceable(336) %i.d, i64 336, i1 false), !noalias !137
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 336, i64 noundef 16) #46, !noalias !146
  br label %_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6removeNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE0Cs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataEIB13_DNtNtB4_3any3AnyEL_EEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.h, %bb.g
  store i128 3, ptr %0, align 16, !alias.scope !134, !noalias !137
  br label %_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6removeNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE0Cs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.a
  store i128 3, ptr %0, align 16
  br label %_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6removeNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE0Cs7p2uQeJxui2_9deltalake.exit

_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6removeNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataEIB13_DNtNtB4_3any3AnyEL_EEECs7p2uQeJxui2_9deltalake.exit.i, %.critedge.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6removeNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) @16, i64 16, i1 false)
  %i.c = call { ptr, ptr } @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SyncNtB27_4SendEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions8IdHasherEE6removeBO_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 8 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !19, !alias.scope !157, !noalias !158, !nonnull !19
  invoke void %i.g(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.d)
          to label %_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c, !noalias !155

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyEL_EECs7p2uQeJxui2_9deltalake(ptr nonnull %i.d, ptr nonnull readonly align 8 dereferenceable(32) %i.e) #48
          to label %common.resume.i unwind label %bb.d, !noalias !158

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !155
  unreachable

common.resume.i:                                  ; preds = %bb.j, %bb.i, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.q, %bb.j ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  %i.j = load i128, ptr %i.a, align 16, !noalias !155, !noundef !19
  %.not.i = icmp eq i128 %i.j, 50414489583659375177567743695916812592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsECs7p2uQeJxui2_9deltalake.exit.i
  %i.k = load ptr, ptr %i.e, align 8, !invariant.load !19, !alias.scope !150, !noalias !147 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.k(ptr noundef nonnull %i.d)
          to label %bb.g unwind label %bb.i, !noalias !159

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !45, !invariant.load !19, !alias.scope !150, !noalias !147 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsEIB13_DNtNtB4_3any3AnyEL_EEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !46, !invariant.load !19, !alias.scope !150, !noalias !147
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #46, !noalias !159
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsEIB13_DNtNtB4_3any3AnyEL_EEECs7p2uQeJxui2_9deltalake.exit.i

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !45, !invariant.load !19, !alias.scope !150, !noalias !147 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !46, !invariant.load !19, !alias.scope !150, !noalias !147
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #46, !noalias !159
  br label %common.resume.i

.critedge.i:                                      ; preds = %_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !150
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 40, i64 noundef 8) #46, !noalias !159
  br label %_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6removeNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsE0Cs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsEIB13_DNtNtB4_3any3AnyEL_EEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1000000000, ptr %i.w, align 8, !alias.scope !147, !noalias !150
  br label %_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6removeNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsE0Cs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1000000000, ptr %i.x, align 8
  br label %_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6removeNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsE0Cs7p2uQeJxui2_9deltalake.exit

_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6removeNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsEIB13_DNtNtB4_3any3AnyEL_EEECs7p2uQeJxui2_9deltalake.exit.i, %.critedge.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 16 ptr @_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) @14, i64 16, i1 false)
  %i.c = call noundef align 8 ptr @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SyncNtB27_4SendEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !align !20, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !19, !nonnull !19
  call void %i.h(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.d) #52
  %i.i = load i128, ptr %i.a, align 16, !noundef !19
  %i.j = icmp eq i128 %i.i, -58153025889993737716510685448813551899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %. = select i1 %i.j, ptr %i.d, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %., %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) @16, i64 16, i1 false)
  %i.c = call noundef align 8 ptr @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SyncNtB27_4SendEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !align !20, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !19, !nonnull !19
  call void %i.h(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.d) #52
  %i.i = load i128, ptr %i.a, align 16, !noundef !19
  %i.j = icmp eq i128 %i.i, 50414489583659375177567743695916812592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %. = select i1 %i.j, ptr %i.d, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %., %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCs9kEa9DYq95x_14datafusion_ffi14table_providerNtB6_17FFI_TableProvider3newNtNtNtB8_9execution17task_ctx_provider23FFI_TaskContextProviderECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %2, i1 noundef zeroext %3, i64 noundef range(i64 0, 3) %4, ptr %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %6, ptr noundef %7, ptr %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [144 x i8], align 8               ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %2, ptr %i.h, align 8
  store i64 %4, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %5, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(40) %6, i64 40, i1 false), !alias.scope !160
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.j = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 16, i64 noundef range(i64 1, 129) 8) #46 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.e, !prof !28

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #47
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8ojAJGM8ADl_16datafusion_proto12logical_plan21LogicalExtensionCodecNtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.t, %bb.u, %bb.o, %bb.d
  %.sroa.07.2 = phi i1 [ %i.l, %bb.d ], [ false, %bb.o ], [ false, %bb.u ], [ false, %bb.t ]
  %.pn14 = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.v, %bb.o ], [ %i.w, %bb.u ], [ %i.w, %bb.t ]
  invoke void @_RNvXs1_NtNtCs9kEa9DYq95x_14datafusion_ffi9execution17task_ctx_providerNtB5_23FFI_TaskContextProviderNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9kEa9DYq95x_14datafusion_ffi9execution17task_ctx_provider23FFI_TaskContextProviderECs7p2uQeJxui2_9deltalake.exit unwind label %bb.s

bb.d:                                             ; preds = %bb.c, %bb.q
  %i.l = phi i1 [ true, %bb.q ], [ false, %bb.c ]
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8ojAJGM8ADl_16datafusion_proto12logical_plan21LogicalExtensionCodecNtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.b
  store i64 1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %i.n = phi ptr [ @17, %bb.e ], [ %8, %bb.a ]    ; 2 uses
  %i.o = phi ptr [ %i.j, %bb.e ], [ %7, %bb.a ]   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.o, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not12 = icmp eq i64 %4, 2
  br i1 %.not12, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = trunc nuw i64 %4 to i1
  %i.r = atomicrmw add ptr %5, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0                     ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.s, label %bb.k, label %bb.n

bb.i:                                             ; preds = %bb.g
  br i1 %i.s, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.f
  store i64 2, ptr %i.b, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %9 = phi ptr [ %5, %bb.n ], [ undef, %bb.l ]
  %i.t = phi i64 [ %.sroa.0.0.i, %bb.n ], [ 2, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs2_NtNtCs9kEa9DYq95x_14datafusion_ffi9execution17task_ctx_providerNtB5_23FFI_TaskContextProviderNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.p unwind label %bb.r

bb.n:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.0.i = phi i64 [ 0, %bb.i ], [ 1, %bb.h ] ; 2 uses
  store i64 %.sroa.0.0.i, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %5, ptr %i.u, align 8
  br label %bb.m

bb.o:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8ojAJGM8ADl_16datafusion_proto12logical_plan21LogicalExtensionCodecNtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.p:                                             ; preds = %bb.m
  invoke void @_RINvMs2_NtNtCs9kEa9DYq95x_14datafusion_ffi5proto23logical_extension_codecNtB6_25FFI_LogicalExtensionCodec3newNtNtNtBa_9execution17task_ctx_provider23FFI_TaskContextProviderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.d, ptr noundef nonnull %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.n, i64 noundef %i.t, ptr %9, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMs2_NtCs9kEa9DYq95x_14datafusion_ffi14table_providerNtB5_17FFI_TableProvider18new_with_ffi_codec(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %2, i1 noundef zeroext %3, i64 noundef %4, ptr %5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9kEa9DYq95x_14datafusion_ffi9execution17task_ctx_provider23FFI_TaskContextProviderECs7p2uQeJxui2_9deltalake.exit21 unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9kEa9DYq95x_14datafusion_ffi9execution17task_ctx_provider23FFI_TaskContextProviderECs7p2uQeJxui2_9deltalake.exit21: ; preds = %bb.q
  call void @_RNvXs1_NtNtCs9kEa9DYq95x_14datafusion_ffi9execution17task_ctx_providerNtB5_23FFI_TaskContextProviderNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.r:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.b) #48
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.x, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8ojAJGM8ADl_16datafusion_proto12logical_plan21LogicalExtensionCodecNtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit, %bb.v, %bb.r
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.y = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !167
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8ojAJGM8ADl_16datafusion_proto12logical_plan21LogicalExtensionCodecNtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8ojAJGM8ADl_16datafusion_proto12logical_plan21LogicalExtensionCodecNtNtCsbvkFyIu7lgC_4core6marker4SendEL_E9drop_slowCs9kEa9DYq95x_14datafusion_ffi(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #51
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8ojAJGM8ADl_16datafusion_proto12logical_plan21LogicalExtensionCodecNtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.s

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9kEa9DYq95x_14datafusion_ffi9execution17task_ctx_provider23FFI_TaskContextProviderECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8ojAJGM8ADl_16datafusion_proto12logical_plan21LogicalExtensionCodecNtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit
  br i1 %.sroa.07.2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderNtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9kEa9DYq95x_14datafusion_ffi9execution17task_ctx_provider23FFI_TaskContextProviderECs7p2uQeJxui2_9deltalake.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.f) #48
          to label %bb.w unwind label %bb.s

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderNtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.w, %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9kEa9DYq95x_14datafusion_ffi9execution17task_ctx_provider23FFI_TaskContextProviderECs7p2uQeJxui2_9deltalake.exit
  resume { ptr, i32 } %.pn14

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.aa = load ptr, ptr %i.g, align 8, !alias.scope !178, !nonnull !19, !noundef !19
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !178
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderNtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderNtNtCsbvkFyIu7lgC_4core6marker4SendEL_E9drop_slowCs9kEa9DYq95x_14datafusion_ffi(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #51
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderNtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace8providerNtB6_21TracerProviderBuilder12with_samplerNtNtB8_7sampler7SamplerECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !179
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 24, i64 noundef range(i64 1, 129) 8) #46, !noalias !179 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e, !prof !28

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #47
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7sampler7SamplerECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #48
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body:                                            ; preds = %bb.c, %.body3
  %.pn = phi { ptr, i32 } [ %i.m, %.body3 ], [ %i.c, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace8provider21TracerProviderBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(104) %1) #48
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.val = load ptr, ptr %i.e, align 8             ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.val2 = load ptr, ptr %i.f, align 8, !nonnull !19, !align !20, !noundef !19 ; 5 uses
  %i.g = load ptr, ptr %.val2, align 8, !invariant.load !19 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.g(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !45, !invariant.load !19 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7sampler12ShouldSampleEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !46, !invariant.load !19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7sampler12ShouldSampleEL_EECs7p2uQeJxui2_9deltalake.exit

bb.i:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !45, !invariant.load !19 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body3, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !46, !invariant.load !19
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #46
  br label %.body3

.body3:                                           ; preds = %bb.i, %bb.j
  store ptr %i.a, ptr %i.e, align 8
  store ptr @19, ptr %i.f, align 8
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7sampler12ShouldSampleEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.h, %bb.g
  store ptr %i.a, ptr %i.e, align 8
  store ptr @19, ptr %i.f, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  ret void

bb.k:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.l:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace8providerNtB6_21TracerProviderBuilder17with_id_generatorNtNtB8_12id_generator17RandomIdGeneratorECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !19, !align !20, !noundef !19 ; 5 uses
  %i.c = load ptr, ptr %.val2, align 8, !invariant.load !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !45, !invariant.load !19 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace12id_generator11IdGeneratorEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !46, !invariant.load !19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace12id_generator11IdGeneratorEL_EECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !45, !invariant.load !19 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !46, !invariant.load !19
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #46
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
end_hunk_0
