Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/derive_where-6567573bf0f58ec7.derive_where.3c4b0b299126a9ae-cgu.02?download=true
inline.NumInlined: 79
inline.NumDeleted: 45
begin_hunk_0_@_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data11iter_fields:bb.a

_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data4skip.exit.thread6: ; preds = %bb.a, %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data4skip.exit
  %i.k = tail call { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5Field4iterBA_(ptr nonnull align 8 inttoptr (i64 8 to ptr), i64 0) #23
  br label %bb.i

bb.g:                                             ; preds = %bb.f, %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data4skip.exit.thread
  %i.l = tail call { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5Field4iterBA_(ptr nonnull align 8 inttoptr (i64 8 to ptr), i64 0) #23
  br label %bb.i

bb.h:                                             ; preds = %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data4skip.exit.thread, %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data4skip.exit.thread, %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data4skip.exit.thread, %bb.f
  %.sroa.3.0.i9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = tail call { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefBL_(ptr nonnull align 8 %.sroa.3.0.i9) #23 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  %i.p = tail call { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5Field4iterBA_(ptr align 8 %i.n, i64 %i.o) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data4skip.exit.thread6
  %.pn = phi { ptr, ptr } [ %i.k, %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data4skip.exit.thread6 ], [ %i.l, %bb.g ], [ %i.p, %bb.h ] ; 2 uses
  %.sroa.0.0 = extractvalue { ptr, ptr } %.pn, 0
  %.sroa.4.0 = extractvalue { ptr, ptr } %.pn, 1
  tail call void @_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator6filterNCNvMBN_NtBN_4Data11iter_fields0EBP_(ptr sret([24 x i8]) align 8 %0, ptr %.sroa.0.0, ptr %.sroa.4.0, i8 %2) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, ptr } @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data11simple_type(ptr align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = add i64 %i.a, -3
  %.inv = icmp ult i64 %i.a, 3
  %i.c = select i1 %.inv, i64 3, i64 %i.b         ; 2 uses
  switch i64 %i.c, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.c
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.c, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.g, %bb.e, %bb.d
  %.sroa.5.0 = phi ptr [ %.sroa.01.0, %bb.d ], [ %.sroa.02.0, %bb.e ], [ %.sroa.03.0, %bb.g ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %bb.e ], [ 3, %bb.g ], [ %i.c, %bb.a ]
  %i.d = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.e

bb.g:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i32, i32 } @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data12default_span(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  switch i64 %i.a, label %bb.c [
    i64 6, label %bb.b
    i64 2, label %bb.b
    i64 1, label %bb.b
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.e = load i32, ptr %i.d, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.g = insertvalue { i32, i32 } %i.f, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data12from_variant(ptr sret([504 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2, i64 %3, ptr align 8 %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8
  %i.c = alloca [24 x i8], align 8
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [48 x i8], align 8                ; 2 uses
  %i.i = alloca [392 x i8], align 8               ; 2 uses
  %i.j = alloca [392 x i8], align 8               ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 2 uses
  %i.l = alloca [392 x i8], align 8               ; 2 uses
  %i.m = alloca [392 x i8], align 8               ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 3 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [40 x i8], align 8                ; 2 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.t = tail call { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefBJ_(ptr nonnull align 8 %i.s) #23 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  call void @_RNvMNtNtCs5aWdnx8MJVa_12derive_where4attr7variantNtB2_11VariantAttr10from_attrs(ptr nonnull sret([40 x i8]) align 8 %i.p, ptr align 8 %i.u, i64 %i.v, ptr align 8 %2, i64 %3, ptr align 8 %4)
  call void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs5aWdnx8MJVa_12derive_where4attr7variant11VariantAttrNtNtCsgFSQ9XOTBNe_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([40 x i8]) align 8 %i.q, ptr nonnull align 8 %i.p) #23
  %i.w = load i64, ptr %i.q, align 8
  %i.x = icmp eq i64 %i.w, -1
  %.sink66.sroa.gep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink66.sroa.gep67 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCs5aWdnx8MJVa_12derive_where4data4DataNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualBO_(ptr sret([504 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @12) #23
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 264 ; 4 uses
  store ptr %1, ptr %i.n, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  invoke void @_RNvNtCs5aWdnx8MJVa_12derive_where4util16path_from_idents(ptr nonnull sret([48 x i8]) align 8 %i.o, ptr nonnull align 8 %i.n, i64 2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.p, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %4, align 8
  switch i64 %i.ac, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXs21_NtNtCsgFSQ9XOTBNe_3syn3gen5cloneNtNtBa_4path4PathNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr nonnull sret([48 x i8]) align 8 %i.k, ptr nonnull align 8 %i.o)
          to label %bb.k unwind label %bb.j

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvXs21_NtNtCsgFSQ9XOTBNe_3syn3gen5cloneNtNtBa_4path4PathNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr nonnull sret([48 x i8]) align 8 %i.h, ptr nonnull align 8 %i.o)
          to label %bb.q unwind label %bb.j

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE3newBG_(ptr nonnull sret([24 x i8]) align 8 %i.g)
          to label %bb.w unwind label %bb.j

bb.j:                                             ; preds = %.invoke, %bb.r, %bb.q, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.k:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void @_RNvMNtNtCs5aWdnx8MJVa_12derive_where4data6fieldsNtB2_6Fields10from_named(ptr nonnull sret([392 x i8]) align 8 %i.l, ptr align 8 %2, i64 %3, ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.ae)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs5aWdnx8MJVa_12derive_where4data6fields6FieldsNtNtCsgFSQ9XOTBNe_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([392 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l)
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.af = load i64, ptr %i.m, align 8
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ai = load i64, ptr %i.ah, align 8
  %.not.i = icmp eq i64 %i.ai, -1                 ; 2 uses
  %..i = select i1 %.not.i, ptr null, ptr %5
  %6 = getelementptr inbounds nuw i8, ptr %..i, i64 8
  %spec.select.i = select i1 %.not.i, ptr null, ptr %6
  store i64 0, ptr %0, align 8
  %.sroa.01.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.01.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(392) %i.m, i64 392, i1 false)
  %.sroa.01.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 %.sroa.2.0.copyload, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 %.sroa.3.0.copyload, ptr %.sroa.01.sroa.4.0..sroa_idx, align 4
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 %.sroa.4.0.copyload, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 484
  store i32 %.sroa.5.0.copyload, ptr %.sroa.53.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.z, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %spec.select.i, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.v

bb.o:                                             ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.p:                                             ; preds = %.invoke
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4path4PathEBF_(ptr nonnull align 8 %i.o)
          to label %bb.u unwind label %bb.d

bb.q:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void @_RNvMNtNtCs5aWdnx8MJVa_12derive_where4data6fieldsNtB2_6Fields12from_unnamed(ptr nonnull sret([392 x i8]) align 8 %i.i, ptr align 8 %2, i64 %3, ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.ak)
          to label %bb.r unwind label %bb.j

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs5aWdnx8MJVa_12derive_where4data6fields6FieldsNtNtCsgFSQ9XOTBNe_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([392 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
          to label %bb.s unwind label %bb.j

bb.s:                                             ; preds = %bb.r
  %i.al = load i64, ptr %i.j, align 8
  %i.am = icmp eq i64 %i.al, -1
  br i1 %i.am, label %.invoke, label %bb.t

.invoke:                                          ; preds = %bb.s, %bb.m
  %.sink66.sroa.phi = phi ptr [ %.sink66.sroa.gep, %bb.m ], [ %.sink66.sroa.gep67, %bb.s ]
  %.sink = phi ptr [ %i.c, %bb.m ], [ %i.b, %bb.s ] ; 2 uses
  %i.an = phi ptr [ @10, %bb.m ], [ @11, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sink, ptr noundef nonnull align 8 dereferenceable(24) %.sink66.sroa.phi, i64 24, i1 false)
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCs5aWdnx8MJVa_12derive_where4data4DataNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualBO_(ptr sret([504 x i8]) align 8 %0, ptr nonnull align 8 %.sink, ptr nonnull align 8 %i.an)
          to label %bb.p unwind label %bb.j

bb.t:                                             ; preds = %bb.s
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ap = load i64, ptr %i.ao, align 8
  %.not.i36 = icmp eq i64 %i.ap, -1               ; 2 uses
  %..i37 = select i1 %.not.i36, ptr null, ptr %7
  %8 = getelementptr inbounds nuw i8, ptr %..i37, i64 8
  %spec.select.i39 = select i1 %.not.i36, ptr null, ptr %8
  store i64 1, ptr %0, align 8
  %.sroa.06.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.06.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(392) %i.j, i64 392, i1 false)
  %.sroa.06.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 %.sroa.2.0.copyload, ptr %.sroa.06.sroa.3.0..sroa_idx, align 8
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 %.sroa.3.0.copyload, ptr %.sroa.06.sroa.4.0..sroa_idx, align 4
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.06.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  %.sroa.06.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 %.sroa.4.0.copyload, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 484
  store i32 %.sroa.5.0.copyload, ptr %.sroa.58.0..sroa_idx, align 4
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.z, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %spec.select.i39, ptr %.sroa.710.0..sroa_idx, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs5aWdnx8MJVa_12derive_where4attr4skip4SkipEBH_(ptr nonnull align 8 %i.r)
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %bb.t, %bb.y, %bb.u, %bb.b
  ret void

bb.w:                                             ; preds = %bb.i
  store i32 2, ptr %i.f, align 8
  invoke void @_RNvXs21_NtNtCsgFSQ9XOTBNe_3syn3gen5cloneNtNtBa_4path4PathNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr nonnull align 8 %i.o)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgFSQ9XOTBNe_3syn4path5QSelfEEB11_(ptr nonnull align 8 %i.f) #25
          to label %bb.z unwind label %bb.o

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.au = load i64, ptr %i.at, align 8
  %.not.i40 = icmp eq i64 %i.au, -1               ; 2 uses
  %..i41 = select i1 %.not.i40, ptr null, ptr %9
  %10 = getelementptr inbounds nuw i8, ptr %..i41, i64 8
  %spec.select.i43 = select i1 %.not.i40, ptr null, ptr %10
  store i64 2, ptr %0, align 8
  %.sroa.016.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775802, ptr %.sroa.016.sroa.2.0..sroa_idx, align 8
  %.sroa.016.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.016.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false)
  %.sroa.016.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 %.sroa.2.0.copyload, ptr %.sroa.016.sroa.5.0..sroa_idx, align 8
  %.sroa.016.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 %.sroa.3.0.copyload, ptr %.sroa.016.sroa.6.0..sroa_idx, align 4
  %.sroa.016.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.016.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  %.sroa.016.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 %.sroa.4.0.copyload, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 484
  store i32 %.sroa.5.0.copyload, ptr %.sroa.518.0..sroa_idx, align 4
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.z, ptr %.sroa.619.0..sroa_idx, align 8
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %spec.select.i43, ptr %.sroa.720.0..sroa_idx, align 8
  br label %bb.v

bb.z:                                             ; preds = %bb.x
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.g) #25
          to label %bb.aa unwind label %bb.o

bb.aa:                                            ; preds = %bb.j, %bb.z
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.aq, %bb.z ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4path4PathEBF_(ptr nonnull align 8 %i.o) #25
          to label %bb.ab unwind label %bb.o

.thread49:                                        ; preds = %bb.ab
  resume { ptr, i32 } %.pn33.ph

bb.ab:                                            ; preds = %bb.d, %bb.aa
  %.pn33.ph = phi { ptr, i32 } [ %.pn, %bb.aa ], [ %i.ab, %bb.d ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs5aWdnx8MJVa_12derive_where4attr4skip4SkipEBH_(ptr nonnull align 8 %i.r) #25
          to label %.thread49 unwind label %bb.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden nonnull align 8 ptr @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data12self_pattern(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = add i64 %i.a, -3
  %.inv.i = icmp ult i64 %i.a, 3
  %i.c = select i1 %.inv.i, i64 3, i64 %i.b
  switch i64 %i.c, label %bb.b [
    i64 0, label %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit
    i64 1, label %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit
    i64 2, label %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit
    i64 3, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.a, 2
  br i1 %i.d, label %bb.d, label %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  br label %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit

_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ 8, %bb.d ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.a ], [ 32, %bb.c ]
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.i
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data14any_skip_trait(ptr align 8 %0, i8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = tail call zeroext i1 @_RNvMs_NtNtCs5aWdnx8MJVa_12derive_where4attr4skipNtB4_4Skip13trait_skipped(ptr nonnull align 8 %i.a, i8 %1)
  br i1 %i.b, label %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %i.d = add i64 %i.c, -3
  %.inv.i = icmp ult i64 %i.c, 3
  %i.e = select i1 %.inv.i, i64 3, i64 %i.d
  switch i64 %i.e, label %bb.c [
    i64 0, label %bb.e
    i64 1, label %bb.e
    i64 2, label %bb.e
    i64 3, label %bb.d
    i64 4, label %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.c, 2
  br i1 %i.f, label %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.d
  %.sroa.3.0.i4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call zeroext i1 @_RNvMNtNtCs5aWdnx8MJVa_12derive_where4data6fieldsNtB2_6Fields14any_skip_trait(ptr nonnull align 8 %.sroa.3.0.i4, i8 %1)
  br label %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit

_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit: ; preds = %bb.d, %bb.b, %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.g, %bb.e ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data15is_incomparable(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data15iter_self_ident(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, i8 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data11iter_fields(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1, i8 %2)
  call void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENCNvMB1r_NtB1r_4Data11iter_fields0ENtNtNtBa_6traits8iterator8Iterator3mapRNtCs1K5DUQUZc67_11proc_macro25IdentNCNvB2h_15iter_self_ident0EB1t_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data16iter_field_ident(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, i8 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data11iter_fields(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1, i8 %2)
  call void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENCNvMB1r_NtB1r_4Data11iter_fields0ENtNtNtBa_6traits8iterator8Iterator3mapRNtB1p_6MemberNCNvB2h_16iter_field_ident0EB1t_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data16iter_other_ident(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, i8 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data11iter_fields(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1, i8 %2)
  call void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENCNvMB1r_NtB1r_4Data11iter_fields0ENtNtNtBa_6traits8iterator8Iterator3mapRNtCs1K5DUQUZc67_11proc_macro25IdentNCNvB2h_16iter_other_ident0EB1t_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data4skip(ptr align 8 %0, i8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = tail call zeroext i1 @_RNvMs_NtNtCs5aWdnx8MJVa_12derive_where4attr4skipNtB4_4Skip13trait_skipped(ptr nonnull align 8 %i.a, i8 %1)
  br i1 %i.b, label %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %i.d = add i64 %i.c, -3
  %.inv.i = icmp ult i64 %i.c, 3
  %i.e = select i1 %.inv.i, i64 3, i64 %i.d
  switch i64 %i.e, label %bb.c [
    i64 0, label %bb.e
    i64 1, label %bb.e
    i64 2, label %bb.e
    i64 3, label %bb.d
    i64 4, label %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.c, 2
  br i1 %i.f, label %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.d
  %.sroa.3.0.i4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call zeroext i1 @_RNvMNtNtCs5aWdnx8MJVa_12derive_where4data6fieldsNtB2_6Fields4skip(ptr nonnull align 8 %.sroa.3.0.i4, i8 %1)
  br label %_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit

_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields.exit: ; preds = %bb.d, %bb.b, %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.g, %bb.e ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, ptr } @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data6fields(ptr align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = add i64 %i.a, -3
  %.inv = icmp ult i64 %i.a, 3
  %i.c = select i1 %.inv, i64 3, i64 %i.b
  switch i64 %i.c, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.d
    i64 2, label %bb.d
    i64 3, label %bb.c
    i64 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

end_hunk_0
