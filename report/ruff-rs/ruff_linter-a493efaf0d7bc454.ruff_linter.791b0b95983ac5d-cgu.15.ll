Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.15?download=true
inline.NumInlined: 5570
inline.NumDeleted: 2226
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 48
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction17extract_docstring:bb.a
  %i.d = tail call { ptr, i64 } @_RNvMs0_NtCs7bpTdHNYxeX_20ruff_python_semantic10definitionNtB5_6Member4body(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 1
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction14docstring_from.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.h = load i8, ptr %i.g, align 4, !range !36, !noundef !20
  %i.i = icmp eq i8 %i.h, 21
  br i1 %i.i, label %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction14docstring_from.exit.sink.split, label %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction14docstring_from.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !20
  %.not.i1 = icmp eq i64 %i.k, 0
  br i1 %.not.i1, label %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction14docstring_from.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !20, !align !34, !noundef !20 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  %i.o = load i8, ptr %i.n, align 4, !range !36, !noundef !20
  %i.p = icmp eq i8 %i.o, 21
  br i1 %i.p, label %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction14docstring_from.exit.sink.split, label %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction14docstring_from.exit

_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction14docstring_from.exit.sink.split: ; preds = %bb.e, %bb.c
  %.sink8 = phi ptr [ %i.f, %bb.c ], [ %i.m, %bb.e ]
  %i.q = load ptr, ptr %.sink8, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !range !25, !noundef !20
  %i.s = icmp eq i32 %i.r, 19
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %spec.select.i3 = select i1 %i.s, ptr %i.t, ptr null
  br label %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction14docstring_from.exit

_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction14docstring_from.exit: ; preds = %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction14docstring_from.exit.sink.split, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.d ], [ %spec.select.i3, %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction14docstring_from.exit.sink.split ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !8746 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 10 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !20 ; 2 uses
  %.idx = mul nuw nsw i64 %i.f, 96
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0EB2y_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0B9_.exit.backedge.i, %.lr.ph.i
  %i.k = phi ptr [ %i.d, %.lr.ph.i ], [ %i.l, %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0B9_.exit.backedge.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %i.m = load i32, ptr %i.k, align 8, !range !25, !noalias !8747, !noundef !20
  %i.n = icmp eq i32 %i.m, 16
  br i1 %i.n, label %bb.c, label %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0B9_.exit.backedge.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8748
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !8747, !nonnull !20, !noundef !20
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %i.p), !noalias !8747
  %i.q = load i64, ptr %i.b, align 8, !range !26, !noalias !8748, !noundef !20
  %.not.i.i = icmp eq i64 %i.q, 2
  br i1 %.not.i.i, label %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0B9_.exit.backedge.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !8748
  %i.r = load i64, ptr %i.a, align 8, !range !38, !noalias !8748, !noundef !20 ; 2 uses
  %i.s = trunc nuw i64 %i.r to i1                 ; 2 uses
  %i.t = load i64, ptr %i.h, align 8, !noalias !8748
  %i.u = load i32, ptr %i.i, align 8, !noalias !8748
  %i.v = zext i32 %i.u to i64
  %.sroa.4.0.i.i = select i1 %i.s, i64 %i.t, i64 %i.v
  %i.w = icmp eq i64 %.sroa.4.0.i.i, 2
  br i1 %i.w, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.j, align 8, !noalias !8748, !nonnull !20
  %.sroa.01.0.i.i = select i1 %i.s, ptr %i.x, ptr %i.j
  %i.y = invoke noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpReINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %.sroa.01.0.i.i, ptr noundef nonnull @186, i64 noundef 2)
          to label %bb.g unwind label %bb.f, !noalias !8747

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(144) %i.a) #53
          to label %common.resume.i.i unwind label %bb.r, !noalias !8747

bb.g:                                             ; preds = %bb.e
  %.pre.i.i = load i64, ptr %i.a, align 8, !range !38, !noalias !8748 ; 2 uses
  br i1 %i.y, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.aa = phi i64 [ %i.r, %bb.d ], [ %.pre.i.i, %bb.g ]
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.i), !noalias !8747
  br label %.sink.split.sink.split.i.i

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.k, !noalias !8747

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i.i unwind label %bb.l, !noalias !8747

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8747
  unreachable

common.resume.i.i:                                ; preds = %bb.p, %bb.k, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.ac, %bb.k ], [ %i.z, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.j
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !8747
  br label %.sink.split.sink.split.i.i

bb.m:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %.pre.i.i, 0
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.i), !noalias !8747
  br label %.sink.split.sink.split.i.thread.i

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i7.i.i unwind label %bb.p, !noalias !8747

bb.p:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i.i unwind label %bb.q, !noalias !8747

bb.q:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8747
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i7.i.i: ; preds = %bb.o
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !8747
  br label %.sink.split.sink.split.i.thread.i

.sink.split.sink.split.i.thread.i:                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i7.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8748
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0EB2y_.exit

.sink.split.sink.split.i.i:                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8748
  br label %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0B9_.exit.backedge.sink.split.i

_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0B9_.exit.backedge.sink.split.i: ; preds = %.sink.split.sink.split.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8748
  br label %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0B9_.exit.backedge.i

_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0B9_.exit.backedge.i: ; preds = %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0B9_.exit.backedge.sink.split.i, %bb.b
  %.not10.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0EB2y_.exit, label %bb.b

bb.r:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8747
  unreachable

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0EB2y_.exit: ; preds = %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0B9_.exit.backedge.i, %bb.a, %.sink.split.sink.split.i.thread.i
  %i.ai = phi i1 [ true, %.sink.split.sink.split.i.thread.i ], [ false, %bb.a ], [ false, %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor20has_conditional_body0B9_.exit.backedge.i ]
  ret i1 %i.ai
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules16flake8_datetimez7helpers22followed_by_astimezone(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !8757 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel19current_expressions(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.b)
  %.sroa.01.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 4 uses
  %.sroa.01.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.01.sroa.2.0.copyload = load i32, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.01.sroa.4.0.copyload = load ptr, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.01.sroa.0.0.copyload, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.01.sroa.0.0.copyload, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.sroa.4.0.copyload, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.01.sroa.4.0.copyload, i64 72
  %.not.i.i.i.peel85 = icmp eq i32 %.sroa.01.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.peel85, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.sroa.0.0.copyload) ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer
  %.sroa.06.0.ph89 = phi i64 [ %.sroa.06.1, %.outer ], [ -1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.3.0.ph88 = phi ptr [ %.sroa.3.1, %.outer ], [ undef, %.lr.ph.preheader ] ; 2 uses
  %.sroa.5.0.ph87 = phi i32 [ %.lcssa5273, %.outer ], [ %.sroa.01.sroa.2.0.copyload, %.lr.ph.preheader ]
  %.sroa.9.0.ph86 = phi i64 [ %i.ca, %.outer ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !noalias !8758, !noundef !20 ; 3 uses
  %i.h = add i32 %.sroa.5.0.ph87, -1
  %i.i = zext i32 %i.h to i64                     ; 7 uses
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %.loopexit55

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %i.d, align 8, !noalias !8758, !nonnull !20, !noundef !20 ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i32, ptr %i.m, align 8, !noalias !8758, !noundef !20 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.sroa.4.0.copyload) ]
  %i.o = load i64, ptr %i.e, align 8, !noalias !8759, !noundef !20 ; 3 uses
  %i.p = icmp ugt i64 %i.o, %i.i
  br i1 %i.p, label %bb.c, label %.loopexit56

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.f, align 8, !noalias !8759, !nonnull !20, !noundef !20 ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.i
  %i.s = load i64, ptr %i.r, align 8, !range !38, !noalias !8759, !noundef !20
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %.sroa.9.0.ph86, 0
  br i1 %i.u, label %.peel.next, label %.loopexit57

.peel.next:                                       ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.peel.next
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.sroa.0.0.copyload) ]
  %i.v = add i32 %i.n, -1
  %i.w = zext i32 %i.v to i64                     ; 7 uses
  %i.x = icmp ugt i64 %i.g, %i.w
  br i1 %i.x, label %bb.f, label %.loopexit55

.loopexit55:                                      ; preds = %.lr.ph, %bb.e
  %.lcssa = phi i64 [ %i.w, %bb.e ], [ %i.i, %.lr.ph ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #52, !noalias !8758
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !noalias !8758, !noundef !20
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.sroa.4.0.copyload) ]
  %i.ab = icmp ugt i64 %i.o, %i.w
  br i1 %i.ab, label %bb.g, label %.loopexit56

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.w
  %i.ad = load i64, ptr %i.ac, align 8, !range !38, !noalias !8759, !noundef !20
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %.loopexit57.thread, label %.loopexit

.loopexit57.thread:                               ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.w
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !8759, !nonnull !20, !align !34, !noundef !20
  br label %bb.h

.loopexit56:                                      ; preds = %bb.b, %bb.f
  %.lcssa44 = phi i64 [ %i.w, %bb.f ], [ %i.i, %bb.b ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa44, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #52, !noalias !8759
  unreachable

.loopexit:                                        ; preds = %bb.c, %.outer, %bb.g, %.peel.next, %bb.n, %bb.i, %bb.k, %bb.j, %bb.h, %bb.a, %bb.m
  %.sroa.0.0 = phi i1 [ %i.bz, %bb.m ], [ false, %bb.a ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.n ], [ false, %.peel.next ], [ false, %bb.g ], [ false, %.outer ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

.loopexit57:                                      ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !8759, !nonnull !20, !align !34, !noundef !20 ; 3 uses
  %i.al = add i64 %.sroa.9.0.ph86, 1              ; 2 uses
  %i.am = and i64 %.sroa.9.0.ph86, 1
  %.not13 = icmp eq i64 %i.am, 0
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit57.thread, %.loopexit57
  %i.an = phi i64 [ 2, %.loopexit57.thread ], [ %i.al, %.loopexit57 ]
  %i.ao = phi ptr [ %i.ah, %.loopexit57.thread ], [ %i.ak, %.loopexit57 ] ; 5 uses
  %.lcssa5274 = phi i32 [ %i.aa, %.loopexit57.thread ], [ %i.n, %.loopexit57 ]
  %i.ap = load i32, ptr %i.ao, align 8, !range !25, !noundef !20
  %i.aq = icmp eq i32 %i.ap, 25
  br i1 %i.aq, label %bb.j, label %.loopexit

bb.i:                                             ; preds = %.loopexit57
  %i.ar = load i32, ptr %i.ak, align 8, !range !25, !noundef !20
  %i.as = icmp ne i32 %i.ar, 16
  %.not14 = icmp eq i64 %.sroa.06.0.ph89, -1
  %or.cond = select i1 %i.as, i1 true, i1 %.not14
  br i1 %or.cond, label %.loopexit, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 31
  %i.av = load i8, ptr %i.au, align 1, !range !29, !alias.scope !8760, !noundef !20 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !8760, !noundef !20
  %i.ay = and i64 %i.ax, 72057594037927935
  %i.az = icmp ult i8 %i.av, -48
  %i.ba = zext i8 %i.av to i64
  %i.bb = add nsw i64 %i.ba, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 16)
  %.sroa.0.0.i16 = select i1 %i.az, i64 %spec.store.select.i, i64 %i.ay
  %i.bc = icmp ugt i8 %i.av, -49
  %i.bd = load ptr, ptr %i.at, align 8, !alias.scope !8760
  %.sroa.01.0.i = select i1 %i.bc, ptr %i.bd, ptr %i.at ; 4 uses
  switch i64 %.sroa.0.0.i16, label %.loopexit [
    i64 7, label %bb.k
    i64 10, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.be = load i32, ptr %.sroa.01.0.i, align 1
  %i.bf = xor i32 %i.be, 1819305330
  %i.bg = getelementptr i8, ptr %.sroa.01.0.i, i64 3
  %i.bh = load i32, ptr %i.bg, align 1
  %i.bi = xor i32 %i.bh, 1701011820
  %i.bj = or i32 %i.bf, %i.bi
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.bn = tail call { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.ao) ; 2 uses
  %i.bo = extractvalue { i64, ptr } %i.bn, 0
  %i.bp = extractvalue { i64, ptr } %i.bn, 1
  br label %.outer

bb.m:                                             ; preds = %bb.j
  %i.bq = load i64, ptr %.sroa.01.0.i, align 1
  %i.br = xor i64 %i.bq, 8032844405963780961
  %i.bs = getelementptr i8, ptr %.sroa.01.0.i, i64 8
  %i.bt = load i16, ptr %i.bs, align 1
  %i.bu = zext i16 %i.bt to i64
  %i.bv = xor i64 %i.bu, 25966
  %i.bw = or i64 %i.br, %i.bv
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br label %.loopexit

.outer:                                           ; preds = %bb.n, %bb.l
  %i.ca = phi i64 [ %i.an, %bb.l ], [ %i.al, %bb.n ]
  %.lcssa5273 = phi i32 [ %.lcssa5274, %bb.l ], [ %i.n, %bb.n ] ; 2 uses
  %.sroa.3.1 = phi ptr [ %i.bp, %bb.l ], [ %.sroa.3.0.ph88, %bb.n ]
  %.sroa.06.1 = phi i64 [ %i.bo, %bb.l ], [ %.sroa.06.0.ph89, %bb.n ]
  %.not.i.i.i.peel = icmp eq i32 %.lcssa5273, 0
  br i1 %.not.i.i.i.peel, label %.loopexit, label %.lr.ph

bb.n:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !20, !noundef !20
  %i.cd = tail call { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.cc) ; 2 uses
  %i.ce = extractvalue { i64, ptr } %i.cd, 0
  %i.cf = extractvalue { i64, ptr } %i.cd, 1
  %i.cg = tail call noundef zeroext i1 @_RNvMst_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB7_9generated10AnyNodeRef6ptr_eq(i64 noundef %.sroa.06.0.ph89, ptr noundef %.sroa.3.0.ph88, i64 noundef %i.ce, ptr noundef %i.cf)
  br i1 %i.cg, label %.outer, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pie5rules16non_unique_enums16non_unique_enums(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 104811045873349726) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !8786 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 9 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.k = load i8, ptr %i.j, align 4, !range !36, !noundef !20
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.b, label %.loopexit17

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !align !34, !noundef !20 ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.loopexit17, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !20 ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %.loopexit17, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %.sroa.gep3.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.gep6.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.w = phi ptr [ %i.o, %.lr.ph.i ], [ %i.x, %.backedge.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8787
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.i, ptr noundef nonnull align 8 %i.w), !noalias !8788
  %i.y = load i64, ptr %i.b, align 8, !range !26, !noalias !8787, !noundef !20
  %.not.i.i = icmp eq i64 %i.y, 2
  br i1 %.not.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pie5rules16non_unique_enums16non_unique_enums0Bb_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !8787
  call void @llvm.experimental.noalias.scope.decl(metadata !8789)
  %i.z = load i64, ptr %i.a, align 8, !range !38, !alias.scope !8789, !noalias !8787, !noundef !20 ; 2 uses
  %i.aa = trunc nuw i64 %i.z to i1                ; 5 uses
  %i.ab = load ptr, ptr %i.t, align 8, !alias.scope !8789, !noalias !8787, !nonnull !20 ; 4 uses
  %i.ac = load i64, ptr %i.u, align 8, !alias.scope !8789, !noalias !8787
  %i.ad = load i32, ptr %i.v, align 8, !alias.scope !8789, !noalias !8787
  %i.ae = zext i32 %i.ad to i64
  %.sroa.7.0.i.i.i = select i1 %i.aa, i64 %i.ac, i64 %i.ae
  %.sroa.01.0.i.i.i = select i1 %i.aa, ptr %i.ab, ptr %i.t
  %i.af = icmp eq i64 %.sroa.7.0.i.i.i, 2
  br i1 %i.af, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.01.0.i.sroa.sel.i.i = select i1 %i.aa, ptr %.sroa.gep.i.i, ptr %i.u
  %i.ag = load i64, ptr %.sroa.01.0.i.sroa.sel.i.i, align 8, !noalias !8788, !noundef !20
  %i.ah = icmp eq i64 %i.ag, 4
  br i1 %i.ah, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %.sroa.01.0.i.i.i, align 8, !noalias !8788, !nonnull !20, !noundef !20
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = icmp ne i32 %i.aj, 1836412517
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.sroa.gep2.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.01.0.i.sroa.sel4.i.i = select i1 %i.aa, ptr %.sroa.gep2.i.i, ptr %.sroa.gep3.i.i
  %i.an = load i64, ptr %.sroa.01.0.i.sroa.sel4.i.i, align 8, !noalias !8788, !noundef !20
end_hunk_0
