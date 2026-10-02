Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.01?download=true
inline.NumInlined: 6768
inline.NumDeleted: 4140
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtCs33K2ylI4knu_10hir_expand4name4NamejEE16into_boxed_sliceCsileJQcQObtj_7hir_def:bb.a
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.c, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 576460752303423488
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs33K2ylI4knu_10hir_expand4name4NamejEEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #33
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit._crit_edge, label %bb.e, !prof !17

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit._crit_edge: ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #37
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE16into_boxed_sliceCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.f = icmp sgt i64 %.sroa.511.0.copyload, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsileJQcQObtj_7hir_def.exit unwind label %bb.g

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit._crit_edge, label %bb.e, !prof !17

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit._crit_edge: ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #37
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !noundef !9
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE8truncateCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.c, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsileJQcQObtj_7hir_def.exit unwind label %bb.g

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit._crit_edge, label %bb.e, !prof !17

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit._crit_edge: ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #37
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB2q_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3T_9generated5nodes4ExprEENCNvNvMs2_NtNtB1s_10expr_store5lowerNtB5e_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EE9from_iterB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4569
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4570
  store ptr %1, ptr %i.e, align 8, !noalias !4571
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !noalias !4571
  %.sroa.4.0..sroa_idx1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.k = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc.i unwind label %bb.d, !noalias !4567 ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %.not.i.i.not.not.not.not.i.not.not.not.i.not.i = icmp eq i64 %i.l, -1
  br i1 %.not.i.i.not.not.not.not.i.not.not.not.i.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.m = extractvalue { i64, ptr } %i.k, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !4572)
  %i.n = load ptr, ptr %i.j, align 8, !alias.scope !4572, !noalias !4571, !nonnull !9, !align !26, !noundef !9
  %i.o = load i64, ptr %i.n, align 8, !noalias !4573, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4574
  store i64 %i.o, ptr %i.d, align 8, !noalias !4575
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx1.i.i.i.i.i.i, align 8, !noalias !4575
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !4575
  %i.p = invoke { i32, i32 } @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtBY_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0INtB7_5FnMutTTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEE8call_mutB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc7.i unwind label %bb.d, !noalias !4567 ; 2 uses

.noexc7.i:                                        ; preds = %bb.c
  %i.q = extractvalue { i32, i32 } %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4574
  %i.r = load ptr, ptr %i.j, align 8, !alias.scope !4572, !noalias !4571, !nonnull !9, !align !26, !noundef !9 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noalias !4567, !noundef !9
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !noalias !4567
  %i.u = trunc i32 %i.q to i1
  br i1 %i.u, label %bb.i, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4570
  store i64 0, ptr %0, align 8, !alias.scope !4567, !noalias !4568
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.w, align 8, !alias.scope !4567, !noalias !4568
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.x, align 8, !alias.scope !4567, !noalias !4568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4569
  %.val6.i = load ptr, ptr %i.h, align 8, !alias.scope !4568, !noalias !4567, !noundef !9 ; 3 uses
  %i.y = icmp eq ptr %.val6.i, null
  br i1 %i.y, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB2E_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB47_9generated5nodes4ExprEENCNvNvMs2_NtNtB1z_10expr_store5lowerNtB5s_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EE9from_iterB1z_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.val6.i, i64 48 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !noalias !4567, !noundef !9
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !noalias !4567
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB2E_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB47_9generated5nodes4ExprEENCNvNvMs2_NtNtB1z_10expr_store5lowerNtB5s_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EE9from_iterB1z_.exit

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6.i) #30, !noalias !4567
  br label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB2E_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB47_9generated5nodes4ExprEENCNvNvMs2_NtNtB1z_10expr_store5lowerNtB5s_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EE9from_iterB1z_.exit

bb.h:                                             ; preds = %bb.j, %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.i:                                             ; preds = %.noexc7.i
  %i.ae = extractvalue { i32, i32 } %i.p, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4569
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc8.i unwind label %bb.h, !noalias !4567

.noexc8.i:                                        ; preds = %bb.i
  %i.af = load i64, ptr %i.c, align 8, !range !16, !noalias !4569, !noundef !9
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !38, !noalias !4569, !noundef !9 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %.noexc8.i
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !4569
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #37
          to label %.noexc9.i unwind label %bb.h, !noalias !4567

.noexc9.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc8.i
  %i.al = load ptr, ptr %i.aj, align 8, !noalias !4569, !nonnull !9, !noundef !9 ; 2 uses
  %i.am = icmp ugt i64 %i.ai, 3
  call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4569
  store i32 %i.ae, ptr %i.al, align 4, !noalias !4567
  store i64 %i.ai, ptr %i.g, align 8, !noalias !4569
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4569
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !4567
  call void @llvm.experimental.noalias.scope.decl(metadata !4576)
  call void @llvm.experimental.noalias.scope.decl(metadata !4577)
  call void @llvm.experimental.noalias.scope.decl(metadata !4578)
  call void @llvm.experimental.noalias.scope.decl(metadata !4579)
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx1.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %2 = insertelement <2 x ptr> poison, ptr %i.f, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %i.ao, i64 1
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEE7reserveB1c_.exit.i.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4580
  store <2 x ptr> %3, ptr %i.b, align 16, !noalias !4581
  br label %bb.m

bb.m:                                             ; preds = %.noexc6.i.i.i, %bb.l
  %i.aq = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !4567 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.m
  %i.ar = extractvalue { i64, ptr } %i.aq, 0      ; 2 uses
  %.not.i.i.not.not.not.not.i.not.not.not.i.not.i.i.i = icmp eq i64 %i.ar, -1
  br i1 %.not.i.i.not.not.not.not.i.not.not.not.i.not.i.i.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.noexc.i.i.i
  %i.as = extractvalue { i64, ptr } %i.aq, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !4582)
  %i.at = load ptr, ptr %i.ap, align 8, !alias.scope !4582, !noalias !4581, !nonnull !9, !align !26, !noundef !9
  %i.au = load i64, ptr %i.at, align 8, !noalias !4583, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4584
  store i64 %i.au, ptr %i.a, align 8, !noalias !4585
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx1.i.i.i.i.i.i.i.i, align 8, !noalias !4585
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i, align 8, !noalias !4585
  %i.av = invoke { i32, i32 } @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtBY_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0INtB7_5FnMutTTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEE8call_mutB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc6.i.i.i unwind label %bb.r, !noalias !4567 ; 2 uses

.noexc6.i.i.i:                                    ; preds = %bb.n
  %i.aw = extractvalue { i32, i32 } %i.av, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4584
  %i.ax = load ptr, ptr %i.ap, align 8, !alias.scope !4582, !noalias !4581, !nonnull !9, !align !26, !noundef !9 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !4567, !noundef !9
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !noalias !4567
  %i.ba = trunc i32 %i.aw to i1
  br i1 %i.ba, label %bb.s, label %bb.m

bb.o:                                             ; preds = %bb.w, %bb.r
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.w ], [ %i.bg, %bb.r ] ; 3 uses
  %.val5.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !4586, !noalias !4587, !noundef !9 ; 3 uses
  %i.bb = icmp eq ptr %.val5.i.i.i, null
  br i1 %i.bb, label %.body.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !noalias !4567, !noundef !9
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4, !noalias !4567
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.q, label %.body.i

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.i.i) #30
          to label %.body.i unwind label %bb.y, !noalias !4567

bb.r:                                             ; preds = %bb.n, %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.s:                                             ; preds = %.noexc6.i.i.i
  %i.bh = extractvalue { i32, i32 } %i.av, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4580
  %i.bi = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4588, !noalias !4589, !noundef !9 ; 5 uses
  %i.bj = icmp ult i64 %i.bi, 2305843009213693952
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load i64, ptr %i.g, align 8, !range !10, !alias.scope !4588, !noalias !4589, !noundef !9
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.x, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEE7reserveB1c_.exit.i.i.i

bb.t:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4580
  %.val.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !4586, !noalias !4587, !noundef !9 ; 3 uses
  %i.bm = icmp eq ptr %.val.i.i.i, null
  br i1 %i.bm, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB2l_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3O_9generated5nodes4ExprEENCNvNvMs2_NtNtB1p_10expr_store5lowerNtB59_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EE11spec_extendB1p_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !4567, !noundef !9
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4, !noalias !4567
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.v, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB2l_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3O_9generated5nodes4ExprEENCNvNvMs2_NtNtB1p_10expr_store5lowerNtB59_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EE11spec_extendB1p_.exit.i

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i) #30
          to label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB2l_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3O_9generated5nodes4ExprEENCNvNvMs2_NtNtB1p_10expr_store5lowerNtB59_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EE11spec_extendB1p_.exit.i unwind label %bb.z, !noalias !4567

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEE7reserveB1c_.exit.i.i.i: ; preds = %bb.x, %bb.s
  %i.br = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4588, !noalias !4589, !nonnull !9, !noundef !9
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bi
  store i32 %i.bh, ptr %i.bs, align 4, !noalias !4567
  %i.bt = add nuw nsw i64 %i.bi, 1
  store i64 %i.bt, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4588, !noalias !4589
  br label %bb.l

bb.w:                                             ; preds = %bb.x
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.x:                                             ; preds = %bb.s
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bi, i64 noundef 1, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEE7reserveB1c_.exit.i.i.i unwind label %bb.w, !noalias !4567

bb.y:                                             ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !4567
  unreachable

bb.z:                                             ; preds = %bb.v
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.z, %bb.q, %bb.p, %bb.o
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bw, %bb.z ], [ %.pn.i.i.i, %bb.q ], [ %.pn.i.i.i, %bb.p ], [ %.pn.i.i.i, %bb.o ]
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1S_9generated5nodes4ExprEENCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB3d_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EEB3h_.exit13.i unwind label %bb.aa, !noalias !4567

_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB2l_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3O_9generated5nodes4ExprEENCNvNvMs2_NtNtB1p_10expr_store5lowerNtB59_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EE11spec_extendB1p_.exit.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !4568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4569
  br label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB2E_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB47_9generated5nodes4ExprEENCNvNvMs2_NtNtB1z_10expr_store5lowerNtB5s_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EE9from_iterB1z_.exit

bb.aa:                                            ; preds = %bb.ad, %.body.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !4567
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1S_9generated5nodes4ExprEENCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB3d_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EEB3h_.exit13.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %.body.i
  %.pn16.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.ad ], [ %.pn.ph.i, %bb.ab ], [ %.pn.ph.i, %bb.ac ]
  resume { ptr, i32 } %.pn16.i

bb.ab:                                            ; preds = %bb.h, %bb.d
  %.pn.ph.i = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.ad, %bb.h ] ; 3 uses
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !4568, !noalias !4567, !noundef !9 ; 3 uses
  %i.by = icmp eq ptr %.val.i, null
  br i1 %i.by, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1S_9generated5nodes4ExprEENCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB3d_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EEB3h_.exit13.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !noalias !4567, !noundef !9
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4, !noalias !4567
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1S_9generated5nodes4ExprEENCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB3d_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EEB3h_.exit13.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1S_9generated5nodes4ExprEENCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB3d_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EEB3h_.exit13.i unwind label %bb.aa, !noalias !4567

_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB2E_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB47_9generated5nodes4ExprEENCNvNvMs2_NtNtB1z_10expr_store5lowerNtB5s_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EE9from_iterB1z_.exit: ; preds = %bb.e, %bb.f, %bb.g, %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB2l_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3O_9generated5nodes4ExprEENCNvNvMs2_NtNtB1p_10expr_store5lowerNtB59_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EE11spec_extendB1p_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3c_9generated5nodes3PatENCNvMs2_NtNtB1s_10expr_store5lowerNtB4t_13ExprCollector14collect_ty_pat0EE9from_iterB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(1120) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 16               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4603)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 16, !noalias !4604
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %2, ptr %i.e, align 8, !noalias !4604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4604
  %i.f = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes3PatENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc.i unwind label %bb.c, !noalias !4603 ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, -1
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %i.h = extractvalue { i64, ptr } %i.f, 1
  %.val.i.i = load ptr, ptr %i.d, align 16, !alias.scope !4605, !noalias !4604, !nonnull !9, !align !26, !noundef !9
  %i.i = invoke noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector14collect_ty_pat(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %.val.i.i, i64 noundef range(i64 0, 18) %i.g, ptr noundef %i.h)
          to label %bb.h unwind label %bb.c, !noalias !4603

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.d:                                             ; preds = %.noexc.i
  store i64 0, ptr %0, align 8, !alias.scope !4603, !noalias !4606
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.k, align 8, !alias.scope !4603, !noalias !4606
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !alias.scope !4603, !noalias !4606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4604
  %.val6.i = load ptr, ptr %i.e, align 8, !noalias !4604, !noundef !9 ; 3 uses
  %i.m = icmp eq ptr %.val6.i, null
  br i1 %i.m, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3q_9generated5nodes3PatENCNvMs2_NtNtB1z_10expr_store5lowerNtB4H_13ExprCollector14collect_ty_pat0EE9from_iterB1z_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.val6.i, i64 48 ; 2 uses
end_hunk_0
