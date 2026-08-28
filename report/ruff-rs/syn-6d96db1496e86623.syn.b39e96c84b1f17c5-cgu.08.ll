Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/syn-6d96db1496e86623.syn.b39e96c84b1f17c5-cgu.08?download=true
inline.NumInlined: 308
inline.NumDeleted: 18
begin_hunk_0_@_RINvMs9_NtCsfq6Q4Do6HaX_3syn5parseNtB6_11ParseBuffer4stepNCNvXNtNtB8_3lit7parsingNtB10_3LitNtB6_5Parse5parse0B1h_EB8_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCsfq6Q4Do6HaX_3syn3lit3LitNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1e_EE13from_residualBO_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @3)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.33.0.copyload = load ptr, ptr %.sroa.33.0..sroa_idx, align 8
  invoke void @_RNvMs7_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorE3setBK_(ptr nonnull align 8 %1, ptr %.sroa.22.0.copyload, ptr %.sroa.33.0.copyload)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn3lit3LitEBF_(ptr nonnull align 8 %i.e) #22
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs9_NtCsfq6Q4Do6HaX_3syn5parseNtB6_11ParseBuffer4stepNCNvXNtNtB8_5ident7parsingNtCsghEUimwObfx_11proc_macro25IdentNtB6_5Parse5parse0B1j_EB8_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call { ptr, ptr } @_RNvMs8_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorE3getBK_(ptr align 8 %1) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  store ptr %i.i, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.g, ptr %.sroa.3.0..sroa_idx, align 8
  call void @_RNCNvXNtNtCsfq6Q4Do6HaX_3syn5ident7parsingNtCsghEUimwObfx_11proc_macro25IdentNtNtB8_5parse5Parse5parse0B8_(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtCsghEUimwObfx_11proc_macro25IdentNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorENtNtB1o_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1o_(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  %i.k = load i64, ptr %i.d, align 8
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsghEUimwObfx_11proc_macro25IdentNtNtCsfq6Q4Do6HaX_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1j_EE13from_residualB1n_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @3)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.33.0.copyload = load ptr, ptr %.sroa.33.0..sroa_idx, align 8
  invoke void @_RNvMs7_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorE3setBK_(ptr nonnull align 8 %1, ptr %.sroa.22.0.copyload, ptr %.sroa.33.0.copyload)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.e) #22
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs9_NtCsfq6Q4Do6HaX_3syn5parseNtB6_11ParseBuffer4stepNCNvXNtNtB8_8lifetime7parsingNtB10_8LifetimeNtB6_5Parse5parse0B1m_EB8_(ptr sret([40 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call { ptr, ptr } @_RNvMs8_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorE3getBK_(ptr align 8 %1) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  store ptr %i.i, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.g, ptr %.sroa.3.0..sroa_idx, align 8
  call void @_RNCNvXNtNtCsfq6Q4Do6HaX_3syn8lifetime7parsingNtB6_8LifetimeNtNtB8_5parse5Parse5parse0B8_(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtBP_6buffer6CursorENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i8, ptr %i.k, align 8
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1o_EE13from_residualBO_(ptr sret([40 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @3)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.33.0.copyload = load ptr, ptr %.sroa.33.0..sroa_idx, align 8
  invoke void @_RNvMs7_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorE3setBK_(ptr nonnull align 8 %1, ptr %.sroa.22.0.copyload, ptr %.sroa.33.0.copyload)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeEBF_(ptr nonnull align 8 %i.e) #22
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs9_NtCsfq6Q4Do6HaX_3syn5parseNtB6_11ParseBuffer4stepNCNvXs2_NtB8_5tokenNtB11_10UnderscoreNtB6_5Parse5parse0B1c_EB8_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call { ptr, ptr } @_RNvMs8_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorE3getBK_(ptr align 8 %1) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  store ptr %i.h, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 8
  call void @_RNCNvXs2_NtCsfq6Q4Do6HaX_3syn5tokenNtB7_10UnderscoreNtNtB9_5parse5Parse5parse0B9_(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtCsfq6Q4Do6HaX_3syn5token10UnderscoreNtNtBP_6buffer6CursorENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  %i.j = load i64, ptr %i.d, align 8
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCsfq6Q4Do6HaX_3syn5token10UnderscoreNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1o_EE13from_residualBO_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i32, ptr %i.l, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.25.0.copyload = load ptr, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.36.0.copyload = load ptr, ptr %.sroa.36.0..sroa_idx, align 8
  call void @_RNvMs7_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorE3setBK_(ptr nonnull align 8 %1, ptr %.sroa.25.0.copyload, ptr %.sroa.36.0.copyload)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.03.0.copyload, ptr %i.m, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs9_NtCsfq6Q4Do6HaX_3syn5parseNtB6_11ParseBuffer4stepNCNvXs_NtB6_11discouragedBw_NtB10_12AnyDelimiter19parse_any_delimiter0TNtCsghEUimwObfx_11proc_macro29DelimiterNtNtB24_5extra9DelimSpanBw_EEB8_(ptr sret([48 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8
  %i.j = tail call { ptr, ptr } @_RNvMs8_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorE3getBK_(ptr align 8 %1) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs_NtCsfq6Q4Do6HaX_3syn6bufferNtB4_6Cursor9any_group(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr %i.k, ptr %i.l), !noalias !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.n = load i8, ptr %i.m, align 4, !noalias !6  ; 2 uses
  %.not.i = icmp eq i8 %i.n, -1
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.c, align 8, !noalias !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %i.r, i64 12, i1 false), !noalias !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !noalias !6
  %i.u = call i32 @_RNvMNtCsghEUimwObfx_11proc_macro25extraNtB2_9DelimSpan5close(ptr nonnull align 4 %i.b), !noalias !6
  %i.v = call ptr @_RNvNtCsfq6Q4Do6HaX_3syn5parse14get_unexpected(ptr align 8 %2), !noalias !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6
  store ptr %i.v, ptr %i.a, align 8, !noalias !6
  %i.w = invoke { ptr, ptr } @_RNvMs7_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorE3newBK_(ptr %i.o, ptr %i.q)
          to label %_RNvNtCsfq6Q4Do6HaX_3syn5parse16new_parse_buffer.exit.i unwind label %bb.c, !noalias !6 ; 2 uses

common.resume:                                    ; preds = %bb.h, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.c ], [ %i.ai, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell4CellNtNtCsfq6Q4Do6HaX_3syn5parse10UnexpectedEEEB1r_(ptr nonnull align 8 %i.a) #22
          to label %common.resume unwind label %bb.d, !noalias !6

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !6
  unreachable

_RNvNtCsfq6Q4Do6HaX_3syn5parse16new_parse_buffer.exit.i: ; preds = %bb.b
  %i.z = call ptr @_RNvMs7_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellINtNtB7_6option6OptionINtNtCscdodAO9FK5_5alloc2rc2RcIBw_NtNtCsfq6Q4Do6HaX_3syn5parse10UnexpectedEEEE3newB1E_(ptr nonnull %i.v), !noalias !6
  %i.aa = extractvalue { ptr, ptr } %i.w, 1
  %i.ab = extractvalue { ptr, ptr } %i.w, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i8 %i.n, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4, !alias.scope !6
  %.sroa.0.sroa.3.sroa.2.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ab, ptr %.sroa.0.sroa.3.sroa.2.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !6
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.aa, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !6
  %.sroa.0.sroa.3.sroa.4.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.z, ptr %.sroa.0.sroa.3.sroa.4.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !6
  %.sroa.0.sroa.3.sroa.5.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 %i.u, ptr %.sroa.0.sroa.3.sroa.5.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !6
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store <2 x ptr> %i.t, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !6
  br label %_RNCNvXs_NtNtCsfq6Q4Do6HaX_3syn5parse11discouragedNtB8_11ParseBufferNtB6_12AnyDelimiter19parse_any_delimiter0Ba_.exit

bb.e:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @_RINvNtCsfq6Q4Do6HaX_3syn5error6new_atReEB4_(ptr nonnull sret([24 x i8]) align 8 %i.ac, i32 %i.i, ptr %i.k, ptr %i.l, ptr nonnull @12, i64 22)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i8 -1, ptr %i.ad, align 4, !alias.scope !6
  br label %_RNCNvXs_NtNtCsfq6Q4Do6HaX_3syn5parse11discouragedNtB8_11ParseBufferNtB6_12AnyDelimiter19parse_any_delimiter0Ba_.exit

_RNCNvXs_NtNtCsfq6Q4Do6HaX_3syn5parse11discouragedNtB8_11ParseBufferNtB6_12AnyDelimiter19parse_any_delimiter0Ba_.exit: ; preds = %_RNvNtCsfq6Q4Do6HaX_3syn5parse16new_parse_buffer.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTTNtCsghEUimwObfx_11proc_macro29DelimiterNtNtBO_5extra9DelimSpanNtNtCsfq6Q4Do6HaX_3syn5parse11ParseBufferENtNtB1Q_6buffer6CursorENtNtB1Q_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1Q_(ptr nonnull sret([64 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNCNvXs_NtNtCsfq6Q4Do6HaX_3syn5parse11discouragedNtB8_11ParseBufferNtB6_12AnyDelimiter19parse_any_delimiter0Ba_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtCsghEUimwObfx_11proc_macro29DelimiterNtNtBN_5extra9DelimSpanNtNtCsfq6Q4Do6HaX_3syn5parse11ParseBufferENtNtB1P_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2r_EE13from_residualB1P_(ptr sret([48 x i8]) align 8 %0, ptr nonnull align 8 %i.d, ptr nonnull align 8 @3)
  br label %bb.j

bb.g:                                             ; preds = %_RNCNvXs_NtNtCsfq6Q4Do6HaX_3syn5parse11discouragedNtB8_11ParseBufferNtB6_12AnyDelimiter19parse_any_delimiter0Ba_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.33.0.copyload = load ptr, ptr %.sroa.33.0..sroa_idx, align 8
  invoke void @_RNvMs7_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorE3setBK_(ptr nonnull align 8 %1, ptr %.sroa.22.0.copyload, ptr %.sroa.33.0.copyload)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCsghEUimwObfx_11proc_macro29DelimiterNtNtBE_5extra9DelimSpanNtNtCsfq6Q4Do6HaX_3syn5parse11ParseBufferEEB1G_(ptr nonnull align 8 %i.g) #22
          to label %common.resume unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  ret void

bb.k:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs9_NtCsfq6Q4Do6HaX_3syn5parseNtB6_11ParseBuffer4stepNCNvXsc_B6_NtCsghEUimwObfx_11proc_macro211TokenStreamNtB6_5Parse5parse0B14_EB8_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = tail call { ptr, ptr } @_RNvMs8_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorE3getBK_(ptr align 8 %1) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCsfq6Q4Do6HaX_3syn6bufferNtB4_6Cursor12token_stream(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr %i.g, ptr %i.h), !noalias !9
  %i.i = invoke { ptr, ptr } @_RNvMs_NtCsfq6Q4Do6HaX_3syn6bufferNtB4_6Cursor5empty()
          to label %_RNCNvXsc_NtCsfq6Q4Do6HaX_3syn5parseNtCsghEUimwObfx_11proc_macro211TokenStreamNtB7_5Parse5parse0B9_.exit unwind label %bb.b, !noalias !9 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.a) #22
          to label %common.resume unwind label %bb.c, !noalias !9

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !9
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNCNvXsc_NtCsfq6Q4Do6HaX_3syn5parseNtCsghEUimwObfx_11proc_macro211TokenStreamNtB7_5Parse5parse0B9_.exit: ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.i, 0
  %i.m = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.l, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !9
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.m, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtCsghEUimwObfx_11proc_macro211TokenStreamNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorENtNtB1v_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1v_(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  %i.n = load i64, ptr %i.d, align 8
  %i.o = icmp eq i64 %i.n, -2
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNCNvXsc_NtCsfq6Q4Do6HaX_3syn5parseNtCsghEUimwObfx_11proc_macro211TokenStreamNtB7_5Parse5parse0B9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsghEUimwObfx_11proc_macro211TokenStreamNtNtCsfq6Q4Do6HaX_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @3)
  br label %bb.h

bb.e:                                             ; preds = %_RNCNvXsc_NtCsfq6Q4Do6HaX_3syn5parseNtCsghEUimwObfx_11proc_macro211TokenStreamNtB7_5Parse5parse0B9_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.33.0.copyload = load ptr, ptr %.sroa.33.0..sroa_idx, align 8
  invoke void @_RNvMs7_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCsfq6Q4Do6HaX_3syn6buffer6CursorE3setBK_(ptr align 8 %1, ptr %.sroa.22.0.copyload, ptr %.sroa.33.0.copyload)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.e) #22
          to label %common.resume unwind label %bb.i
end_hunk_0
