Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls_pki_types-7fe5f30be5e0bf1b.rustls_pki_types.ac7a2e1cc206a212-cgu.0?download=true
inline.NumInlined: 152
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMsU_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_8UnixTime3now:bb.a
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call { i64, i32 } @_RNvMs5_NtCsaKJjC64KgbL_3std4timeNtB5_10SystemTime3now() ; 2 uses
  %i.e = extractvalue { i64, i32 } %i.d, 0
  %i.f = extractvalue { i64, i32 } %i.d, 1
  store i64 %i.e, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.f, ptr %i.g, align 8
  call void @_RNvMs5_NtCsaKJjC64KgbL_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.h = load i64, ptr %i.c, align 8, !range !9, !alias.scope !122, !noundef !7
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtB4_4time8DurationNtNtCsaKJjC64KgbL_3std4time15SystemTimeErrorE6unwrapCseO5Jl7W60Eg_16rustls_pki_types.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !122, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load i32, ptr %i.l, align 8, !range !123, !alias.scope !122, !noundef !7
  store i64 %i.k, ptr %i.a, align 8, !noalias !122
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.m, ptr %i.n, align 8, !noalias !122
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #27, !noalias !122
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtB4_4time8DurationNtNtCsaKJjC64KgbL_3std4time15SystemTimeErrorE6unwrapCseO5Jl7W60Eg_16rustls_pki_types.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !122, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CseO5Jl7W60Eg_16rustls_pki_typesNtB4_13PrivateKeyDer9clone_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !14, !noundef !7 ; 2 uses
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.43.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  switch i64 %i.a, label %default.unreachable25 [
    i64 0, label %bb.b
    i64 1, label %bb.g
    i64 2, label %bb.l
  ]

default.unreachable25:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.0.in.i, align 8, !alias.scope !139, !noalias !140, !nonnull !7, !noundef !7
  %.sroa.43.0.i = load i64, ptr %.sroa.43.0.in.i, align 8, !alias.scope !139, !noalias !140, !noundef !7 ; 7 uses
  %.not.i.i = icmp slt i64 %.sroa.43.0.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i64 %.sroa.43.0.i, 0
  br i1 %i.b, label %_RNvMs6_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs1KeyDer9clone_key.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !141
  %i.c = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.43.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !141 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.43.0.i) #26, !noalias !142
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %.sroa.01.0.i, i64 %.sroa.43.0.i, i1 false), !noalias !142
  br label %_RNvMs6_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs1KeyDer9clone_key.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %.sroa.01.0.i2 = load ptr, ptr %.sroa.01.0.in.i, align 8, !alias.scope !143, !noalias !144, !nonnull !7, !noundef !7
  %.sroa.43.0.i4 = load i64, ptr %.sroa.43.0.in.i, align 8, !alias.scope !143, !noalias !144, !noundef !7 ; 7 uses
  %.not.i.i5 = icmp slt i64 %.sroa.43.0.i4, 0
  br i1 %.not.i.i5, label %bb.j, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.e = icmp eq i64 %.sroa.43.0.i4, 0
  br i1 %i.e, label %_RNvMs6_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs1KeyDer9clone_key.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !145
  %i.f = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.43.0.i4, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !145 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.4.0.ph.i8 = phi i64 [ 1, %bb.i ], [ 0, %bb.g ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i8, i64 %.sroa.43.0.i4) #26, !noalias !146
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %.sroa.01.0.i2, i64 %.sroa.43.0.i4, i1 false), !noalias !146
  br label %_RNvMs6_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs1KeyDer9clone_key.exit

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %.sroa.01.0.i10 = load ptr, ptr %.sroa.01.0.in.i, align 8, !alias.scope !147, !noalias !148, !nonnull !7, !noundef !7
  %.sroa.43.0.i12 = load i64, ptr %.sroa.43.0.in.i, align 8, !alias.scope !147, !noalias !148, !noundef !7 ; 7 uses
  %.not.i.i13 = icmp slt i64 %.sroa.43.0.i12, 0
  br i1 %.not.i.i13, label %bb.o, label %bb.m, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.h = icmp eq i64 %.sroa.43.0.i12, 0
  br i1 %i.h, label %_RNvMs6_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs1KeyDer9clone_key.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !149
  %i.i = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.43.0.i12, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !149 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.l
  %.sroa.4.0.ph.i16 = phi i64 [ 1, %bb.n ], [ 0, %bb.l ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i16, i64 %.sroa.43.0.i12) #26, !noalias !150
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %.sroa.01.0.i10, i64 %.sroa.43.0.i12, i1 false), !noalias !150
  br label %_RNvMs6_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs1KeyDer9clone_key.exit

_RNvMs6_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs1KeyDer9clone_key.exit: ; preds = %bb.p, %bb.m, %bb.k, %bb.h, %bb.f, %bb.c
  %.sroa.43.0.i12.sink27 = phi i64 [ %.sroa.43.0.i4, %bb.k ], [ %.sroa.43.0.i, %bb.f ], [ %.sroa.43.0.i, %bb.c ], [ %.sroa.43.0.i4, %bb.h ], [ %.sroa.43.0.i12, %bb.m ], [ %.sroa.43.0.i12, %bb.p ] ; 2 uses
  %.sink26 = phi ptr [ %i.f, %bb.k ], [ %i.c, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.h ], [ inttoptr (i64 1 to ptr), %bb.m ], [ %i.i, %bb.p ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.43.0.i12.sink27, ptr %i.k, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink26, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.43.0.i12.sink27, ptr %.sroa.522.0..sroa_idx, align 8
  store i64 %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCseO5Jl7W60Eg_16rustls_pki_types(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !8, !noundef !7
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseO5Jl7W60Eg_16rustls_pki_types(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCseO5Jl7W60Eg_16rustls_pki_types(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !7
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName12try_from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvNtCseO5Jl7W60Eg_16rustls_pki_types11server_name8validate(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.53.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ -1, %bb.b ], [ -2, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName18to_lowercase_owned(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !7 ; 14 uses
  %.not.i.i.i = icmp slt i64 %.sroa.3.0, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.a = icmp samesign eq i64 %.sroa.3.0, 0
  br i1 %i.a, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCseO5Jl7W60Eg_16rustls_pki_types.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !174
  %i.b = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !174 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %.sroa.3.0, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.prol, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %.sroa.3.0, 32
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %.sroa.3.0, 24
  %n.vec = and i64 %.sroa.3.0, 9223372036854775776 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !noalias !175 ; 2 uses
  %wide.load9 = load <16 x i8>, ptr %i.f, align 1, !noalias !175 ; 2 uses
  %i.g = add <16 x i8> %wide.load, splat (i8 -65)
  %i.h = add <16 x i8> %wide.load9, splat (i8 -65)
  %i.i = icmp ult <16 x i8> %i.g, splat (i8 26)
  %i.j = icmp ult <16 x i8> %i.h, splat (i8 26)
  %i.k = select <16 x i1> %i.i, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.l = select <16 x i1> %i.j, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.m = or <16 x i8> %i.k, %wide.load
  %i.n = or <16 x i8> %i.l, %wide.load9
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <16 x i8> %i.m, ptr %i.o, align 1, !noalias !176
  store <16 x i8> %i.n, ptr %i.p, align 1, !noalias !176
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.3.0, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCseO5Jl7W60Eg_16rustls_pki_types.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.prol, label %vec.epilog.ph, !prof !179

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %.sroa.3.0, 9223372036854775800 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %index11
  %wide.load12 = load <8 x i8>, ptr %i.r, align 1, !noalias !175 ; 2 uses
  %i.s = add <8 x i8> %wide.load12, splat (i8 -65)
  %i.t = icmp ult <8 x i8> %i.s, splat (i8 26)
  %i.u = select <8 x i1> %i.t, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.v = or <8 x i8> %i.u, %wide.load12
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %index11
  store <8 x i8> %i.v, ptr %i.w, align 1, !noalias !176
  %index.next13 = add nuw i64 %index11, 8         ; 2 uses
  %i.x = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.x, label %.preheader.i.i.i.preheader.a, label %vec.epilog.vector.body, !llvm.loop !172

.preheader.i.i.i.preheader.a:                     ; preds = %vec.epilog.vector.body
  %lcmp.mod.not = icmp eq i64 %.sroa.3.0, %n.vec10
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCseO5Jl7W60Eg_16rustls_pki_types.exit, label %.preheader.i.i.i.prol

.preheader.i.i.i.prol:                            ; preds = %iter.check, %vec.epilog.iter.check, %.preheader.i.i.i.preheader.a
  %.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %.preheader.i.i.i.preheader.a ]
  br label %.preheader.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.3.0) #26, !noalias !180
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.prol, %.preheader.i.i.i
  %i.y = phi i64 [ %i.ae, %.preheader.i.i.i ], [ %.ph, %.preheader.i.i.i.prol ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.y
  %.val15.i.i.i.i.i.i.1 = load i8, ptr %i.z, align 1, !noalias !175, !noundef !7 ; 2 uses
  %i.aa = add i8 %.val15.i.i.i.i.i.i.1, -65
  %i.ab = icmp ult i8 %i.aa, 26
  %i.ac = select i1 %i.ab, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i.1 = or i8 %i.ac, %.val15.i.i.i.i.i.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i.1, ptr %i.ad, align 1, !noalias !176
  %i.ae = add nuw nsw i64 %i.y, 1                 ; 2 uses
  %i.af = icmp eq i64 %i.ae, %.sroa.3.0
  br i1 %i.af, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCseO5Jl7W60Eg_16rustls_pki_types.exit, label %.preheader.i.i.i, !llvm.loop !173

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCseO5Jl7W60Eg_16rustls_pki_types.exit: ; preds = %.preheader.i.i.i, %middle.block, %.preheader.i.i.i.preheader.a, %bb.b
  %2 = phi ptr [ inttoptr (i64 1 to ptr), %bb.b ], [ %i.b, %middle.block ], [ %i.b, %.preheader.i.i.i.preheader.a ], [ %i.b, %.preheader.i.i.i ]
  store i64 %.sroa.3.0, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.56.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName8to_owned(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !12, !noundef !7
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !7 ; 7 uses
  %.not.i = icmp slt i64 %i.f, 0
  br i1 %.not.i, label %bb.f, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread8, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !183
  %i.h = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !183 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.ph = phi i64 [ 1, %bb.e ], [ 0, %bb.c ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.f) #26
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread8: ; preds = %bb.d, %bb.g
  %i.j = phi ptr [ %i.h, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.d ]
  store i64 %i.f, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.f, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.d, i64 %i.f, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread8

bb.h:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread8, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsc_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_17PrivateSec1KeyDer9clone_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0 = load ptr, ptr %.sroa.01.0.in, align 8, !nonnull !7, !noundef !7
  %.sroa.43.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.43.0 = load i64, ptr %.sroa.43.0.in, align 8, !noundef !7 ; 7 uses
  %.not.i = icmp slt i64 %.sroa.43.0, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %.sroa.43.0, 0
  br i1 %i.a, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread16, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !186
  %i.b = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.43.0, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !186 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.43.0) #26
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread16: ; preds = %bb.b, %bb.e
  %i.d = phi ptr [ %i.b, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %.sroa.43.0, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.43.0, ptr %.sroa.59.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %.sroa.01.0, i64 %.sroa.43.0, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread16
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsi_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs8KeyDer9clone_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0 = load ptr, ptr %.sroa.01.0.in, align 8, !nonnull !7, !noundef !7
  %.sroa.43.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.43.0 = load i64, ptr %.sroa.43.0.in, align 8, !noundef !7 ; 7 uses
  %.not.i = icmp slt i64 %.sroa.43.0, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %.sroa.43.0, 0
  br i1 %i.a, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread16, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !189
  %i.b = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.43.0, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !189 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.43.0) #26
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread16: ; preds = %bb.b, %bb.e
  %i.d = phi ptr [ %i.b, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %.sroa.43.0, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.43.0, ptr %.sroa.59.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %.sroa.01.0, i64 %.sroa.43.0, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread16
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMso_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_11TrustAnchor8to_owned(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0 = load ptr, ptr %.sroa.01.0.in, align 8, !nonnull !7, !noundef !7
  %.sroa.43.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.43.0 = load i64, ptr %.sroa.43.0.in, align 8, !noundef !7 ; 9 uses
  %.not.i = icmp slt i64 %.sroa.43.0, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %.sroa.43.0, 0
  br i1 %i.a, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread57, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !202
  %i.b = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.43.0, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !202 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.43.0) #26
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread57: ; preds = %bb.b, %bb.g
  %i.d = phi ptr [ %i.b, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  %.sroa.08.0.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.08.0 = load ptr, ptr %.sroa.08.0.in, align 8, !nonnull !7, !noundef !7
  %.sroa.410.0.in = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.410.0 = load i64, ptr %.sroa.410.0.in, align 8, !noundef !7 ; 9 uses
  %.not.i32 = icmp slt i64 %.sroa.410.0, 0
  br i1 %.not.i32, label %bb.i, label %bb.e, !prof !13

bb.e:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread57
  %i.e = icmp eq i64 %.sroa.410.0, 0
  br i1 %i.e, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit34.thread68, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !203
  %i.f = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.410.0, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !203 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %.sroa.01.0, i64 %.sroa.43.0, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread57

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit38: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i37, %bb.p, %bb.h
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.s, %bb.p ], [ %i.s, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i37 ]
  %.not76 = icmp eq i64 %.sroa.43.0, 0
  br i1 %.not76, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit38
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %.sroa.43.0, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !204
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit

bb.h:                                             ; preds = %bb.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit38

bb.i:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread57, %bb.f
  %.sroa.446.0.ph = phi i64 [ 1, %bb.f ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread57 ]
end_hunk_0
begin_hunk_1_@llvm.bswap.v8i16
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { noinline noreturn }
attributes #28 = { inlinehint }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = distinct !{!1, !15}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!6 = !{!"address", !"read_provenance"}
!7 = !{}
!8 = !{i64 0, i64 -9223372036854775808}
!9 = !{i64 0, i64 2}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 -1, i64 -9223372036854775808}
!13 = !{!"branch_weights", i32 2002, i32 2000}
!14 = !{i64 0, i64 3}
!15 = !{!"llvm.loop.peeled.count", i32 1}
!16 = !{i64 8}
!17 = distinct !{!17, !"_RINvNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_chunks21eq_ignore_ascii_innerKj10_ECseO5Jl7W60Eg_16rustls_pki_types"}
!18 = distinct !{!18, !17, !"_RINvNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_chunks21eq_ignore_ascii_innerKj10_ECseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!19 = distinct !{!19, !17, !"_RINvNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_chunks21eq_ignore_ascii_innerKj10_ECseO5Jl7W60Eg_16rustls_pki_types: argument 1"}
!20 = distinct !{!20, !"_RINvNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_chunks21eq_ignore_ascii_innerKj10_ECseO5Jl7W60Eg_16rustls_pki_types"}
!21 = distinct !{!21, !20, !"_RINvNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_chunks21eq_ignore_ascii_innerKj10_ECseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!22 = distinct !{!22, !20, !"_RINvNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_chunks21eq_ignore_ascii_innerKj10_ECseO5Jl7W60Eg_16rustls_pki_types: argument 1"}
!23 = !{!18}
!24 = !{!19}
!25 = !{!21}
!26 = !{!22}
!27 = distinct !{!27, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types"}
!28 = distinct !{!28, !27, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!29 = !{!28}
!30 = distinct !{!30, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCseO5Jl7W60Eg_16rustls_pki_types"}
!31 = distinct !{!31, !30, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!32 = !{!31}
!33 = !{i64 0, i64 -9223372036854775807}
!34 = distinct !{!34, !"_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtB5_12SpecToString14spec_to_stringCseO5Jl7W60Eg_16rustls_pki_types"}
!35 = distinct !{!35, !34, !"_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtB5_12SpecToString14spec_to_stringCseO5Jl7W60Eg_16rustls_pki_types: argument 1"}
!36 = distinct !{!36, !34, !"_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtB5_12SpecToString14spec_to_stringCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!37 = distinct !{!37, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECseO5Jl7W60Eg_16rustls_pki_types"}
!38 = distinct !{!38, !37, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!39 = distinct !{!39, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types"}
!40 = distinct !{!40, !39, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!41 = !{!36, !35}
!42 = !{!36}
!43 = !{!38}
!44 = !{!40, !38, !36}
!45 = distinct !{!45, !"_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName8to_owned"}
!46 = distinct !{!46, !45, !"_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName8to_owned: argument 1"}
!47 = distinct !{!47, !45, !"_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName8to_owned: argument 0"}
!48 = distinct !{!48, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!49 = distinct !{!49, !48, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!50 = !{!46}
!51 = !{!47}
!52 = !{!49, !47, !46}
!53 = !{!47, !46}
!54 = distinct !{!54, !"_RNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB4_6Parser14read_ipv4_addr0B8_"}
!55 = distinct !{!55, !54, !"_RNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB4_6Parser14read_ipv4_addr0B8_: argument 0"}
!56 = distinct !{!56, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatorhNCNCNvB4_14read_ipv4_addr00E0B9_"}
!57 = distinct !{!57, !56, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatorhNCNCNvB4_14read_ipv4_addr00E0B9_: argument 0"}
!58 = distinct !{!58, !"_RNCNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB6_6Parser14read_ipv4_addr00Ba_"}
!59 = distinct !{!59, !58, !"_RNCNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB6_6Parser14read_ipv4_addr00Ba_: argument 0"}
!60 = distinct !{!60, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser11read_numberhE0B9_"}
!61 = distinct !{!61, !60, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser11read_numberhE0B9_: argument 1"}
!62 = distinct !{!62, !60, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser11read_numberhE0B9_: argument 0"}
!63 = distinct !{!63, !56, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatorhNCNCNvB4_14read_ipv4_addr00E0B9_: argument 0:It1"}
!64 = distinct !{!64, !58, !"_RNCNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB6_6Parser14read_ipv4_addr00Ba_: argument 0:It1"}
!65 = distinct !{!65, !60, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser11read_numberhE0B9_: argument 1:It1"}
!66 = distinct !{!66, !56, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatorhNCNCNvB4_14read_ipv4_addr00E0B9_: argument 0:It2"}
!67 = distinct !{!67, !58, !"_RNCNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB6_6Parser14read_ipv4_addr00Ba_: argument 0:It2"}
!68 = distinct !{!68, !60, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser11read_numberhE0B9_: argument 1:It2"}
!69 = distinct !{!69, !56, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatorhNCNCNvB4_14read_ipv4_addr00E0B9_: argument 0:It3"}
!70 = distinct !{!70, !58, !"_RNCNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB6_6Parser14read_ipv4_addr00Ba_: argument 0:It3"}
!71 = distinct !{!71, !60, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser11read_numberhE0B9_: argument 1:It3"}
!72 = !{!55}
!73 = !{!62, !61, !59, !57, !55}
!74 = !{!63}
!75 = !{!63, !55}
!76 = !{!64}
!77 = !{!65}
!78 = !{!62, !65, !64, !63, !55}
!79 = !{!65, !64, !63, !55}
!80 = !{!62}
!81 = !{!66, !55}
!82 = !{!62, !68, !67, !66, !55}
!83 = !{!69}
!84 = !{!69, !55}
!85 = !{!70}
!86 = !{!71}
!87 = !{!62, !71, !70, !69, !55}
!88 = !{!71, !70, !69, !55}
!89 = !{!70, !69, !55}
!90 = distinct !{!90, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!91 = distinct !{!91, !90, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!92 = !{!91}
!93 = distinct !{!93, !"_RNvMs11_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInner10into_owned"}
!94 = distinct !{!94, !93, !"_RNvMs11_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInner10into_owned: argument 1"}
!95 = distinct !{!95, !93, !"_RNvMs11_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInner10into_owned: argument 0"}
!96 = distinct !{!96, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!97 = distinct !{!97, !96, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!98 = !{!94}
!99 = !{!95}
!100 = !{!97, !95, !94}
!101 = !{!95, !94}
!102 = distinct !{!102, !"_RNvMs11_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInner10into_owned"}
!103 = distinct !{!103, !102, !"_RNvMs11_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInner10into_owned: argument 1"}
!104 = distinct !{!104, !102, !"_RNvMs11_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInner10into_owned: argument 0"}
!105 = distinct !{!105, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!106 = distinct !{!106, !105, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!107 = !{!103}
!108 = !{!104}
!109 = !{!106, !104, !103}
!110 = !{!104, !103}
!111 = distinct !{!111, !"_RNvMs11_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInner10into_owned"}
!112 = distinct !{!112, !111, !"_RNvMs11_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInner10into_owned: argument 1"}
!113 = distinct !{!113, !111, !"_RNvMs11_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInner10into_owned: argument 0"}
!114 = distinct !{!114, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!115 = distinct !{!115, !114, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!116 = !{!112}
!117 = !{!113}
!118 = !{!115, !113, !112}
!119 = !{!113, !112}
!120 = distinct !{!120, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtB4_4time8DurationNtNtCsaKJjC64KgbL_3std4time15SystemTimeErrorE6unwrapCseO5Jl7W60Eg_16rustls_pki_types"}
!121 = distinct !{!121, !120, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtB4_4time8DurationNtNtCsaKJjC64KgbL_3std4time15SystemTimeErrorE6unwrapCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!122 = !{!121}
!123 = !{i32 0, i32 1000000000}
!124 = distinct !{!124, !"_RNvMs6_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs1KeyDer9clone_key"}
!125 = distinct !{!125, !124, !"_RNvMs6_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs1KeyDer9clone_key: argument 1"}
!126 = distinct !{!126, !124, !"_RNvMs6_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs1KeyDer9clone_key: argument 0"}
!127 = distinct !{!127, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!128 = distinct !{!128, !127, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!129 = distinct !{!129, !"_RNvMsc_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_17PrivateSec1KeyDer9clone_key"}
!130 = distinct !{!130, !129, !"_RNvMsc_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_17PrivateSec1KeyDer9clone_key: argument 1"}
!131 = distinct !{!131, !129, !"_RNvMsc_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_17PrivateSec1KeyDer9clone_key: argument 0"}
!132 = distinct !{!132, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!133 = distinct !{!133, !132, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!134 = distinct !{!134, !"_RNvMsi_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs8KeyDer9clone_key"}
!135 = distinct !{!135, !134, !"_RNvMsi_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs8KeyDer9clone_key: argument 1"}
!136 = distinct !{!136, !134, !"_RNvMsi_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs8KeyDer9clone_key: argument 0"}
!137 = distinct !{!137, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!138 = distinct !{!138, !137, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!139 = !{!125}
!140 = !{!126}
!141 = !{!128, !126, !125}
!142 = !{!126, !125}
!143 = !{!130}
!144 = !{!131}
!145 = !{!133, !131, !130}
!146 = !{!131, !130}
!147 = !{!135}
!148 = !{!136}
!149 = !{!138, !136, !135}
!150 = !{!136, !135}
!151 = distinct !{!151, !"_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCseO5Jl7W60Eg_16rustls_pki_types"}
!152 = distinct !{!152, !151, !"_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!153 = distinct !{!153, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!154 = distinct !{!154, !153, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!155 = distinct !{!155, !"_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE11spec_extendCseO5Jl7W60Eg_16rustls_pki_types"}
!156 = distinct !{!156, !155, !"_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE11spec_extendCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!157 = distinct !{!157, !"_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EECseO5Jl7W60Eg_16rustls_pki_types"}
!158 = distinct !{!158, !157, !"_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EECseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!159 = distinct !{!159, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCs4wP2HXfJTCR_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtB1s_3vecINtB36_3VechE14extend_trustedB3_E0ECseO5Jl7W60Eg_16rustls_pki_types"}
!160 = distinct !{!160, !159, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCs4wP2HXfJTCR_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtB1s_3vecINtB36_3VechE14extend_trustedB3_E0ECseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!161 = distinct !{!161, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCs4wP2HXfJTCR_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callhNCINvMsk_NtB1y_3vecINtB3z_3VechE14extend_trustedBN_E0E0ECseO5Jl7W60Eg_16rustls_pki_types"}
!162 = distinct !{!162, !161, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCs4wP2HXfJTCR_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callhNCINvMsk_NtB1y_3vecINtB3z_3VechE14extend_trustedBN_E0E0ECseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!163 = distinct !{!163, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCs4wP2HXfJTCR_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECseO5Jl7W60Eg_16rustls_pki_types"}
!164 = distinct !{!164, !163, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCs4wP2HXfJTCR_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!165 = distinct !{!165, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRhhuNCNvMs_NtCs4wP2HXfJTCR_5alloc5sliceSh18to_ascii_lowercase0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsk_NtB17_3vecINtB2X_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0E0CseO5Jl7W60Eg_16rustls_pki_types"}
!166 = distinct !{!166, !165, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRhhuNCNvMs_NtCs4wP2HXfJTCR_5alloc5sliceSh18to_ascii_lowercase0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsk_NtB17_3vecINtB2X_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0E0CseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!167 = distinct !{!167, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterhENCNvMs_NtB1r_5sliceSh18to_ascii_lowercase0EE0E0CseO5Jl7W60Eg_16rustls_pki_types"}
!168 = distinct !{!168, !167, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterhENCNvMs_NtB1r_5sliceSh18to_ascii_lowercase0EE0E0CseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!169 = distinct !{!169, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterhENCNvMs_NtBa_5sliceSh18to_ascii_lowercase0EE0CseO5Jl7W60Eg_16rustls_pki_types"}
!170 = distinct !{!170, !169, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterhENCNvMs_NtBa_5sliceSh18to_ascii_lowercase0EE0CseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!171 = distinct !{!171, !177, !178}
!172 = distinct !{!172, !177, !178}
!173 = distinct !{!173, !178, !177}
!174 = !{!154, !152}
!175 = !{!164, !162, !160, !158, !156, !152}
!176 = !{!170, !168, !166, !164, !162, !160, !158, !156, !152}
!177 = !{!"llvm.loop.isvectorized", i32 1}
!178 = !{!"llvm.loop.unroll.runtime.disable"}
!179 = !{!"branch_weights", i32 8, i32 24}
!180 = !{!152}
!181 = distinct !{!181, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!182 = distinct !{!182, !181, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!183 = !{!182}
!184 = distinct !{!184, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!185 = distinct !{!185, !184, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!186 = !{!185}
!187 = distinct !{!187, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!188 = distinct !{!188, !187, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!189 = !{!188}
!190 = distinct !{!190, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!191 = distinct !{!191, !190, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!192 = distinct !{!192, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!193 = distinct !{!193, !192, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!194 = distinct !{!194, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types"}
!195 = distinct !{!195, !194, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!196 = distinct !{!196, !"_RNCNvMso_CseO5Jl7W60Eg_16rustls_pki_typesNtB7_11TrustAnchor8to_owned0B7_"}
!197 = distinct !{!197, !196, !"_RNCNvMso_CseO5Jl7W60Eg_16rustls_pki_typesNtB7_11TrustAnchor8to_owned0B7_: argument 0"}
!198 = distinct !{!198, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types"}
!199 = distinct !{!199, !198, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!200 = distinct !{!200, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types"}
!201 = distinct !{!201, !200, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!202 = !{!191}
!203 = !{!193}
!204 = !{!195}
!205 = !{i64 -2, i64 -9223372036854775808}
!206 = !{!199, !197}
!207 = !{!197}
!208 = !{!201}
!209 = distinct !{!209, !15}
!210 = distinct !{!210, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_"}
!211 = distinct !{!211, !210, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_: argument 0:Peel0"}
!212 = distinct !{!212, !"_RNCNvNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB6_6Parser14read_ipv6_addr11read_groupss_0Ba_"}
!213 = distinct !{!213, !212, !"_RNCNvNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB6_6Parser14read_ipv6_addr11read_groupss_0Ba_: argument 0:Peel0"}
!214 = distinct !{!214, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser11read_numbertE0B9_"}
!215 = distinct !{!215, !214, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser11read_numbertE0B9_: argument 1:Peel0"}
!216 = distinct !{!216, !214, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser11read_numbertE0B9_: argument 0"}
!217 = distinct !{!217, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatorNtB7_8Ipv4AddrNCNvNvMB5_BZ_14read_ipv6_addr11read_groups0E0B9_"}
!218 = distinct !{!218, !217, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatorNtB7_8Ipv4AddrNCNvNvMB5_BZ_14read_ipv6_addr11read_groups0E0B9_: argument 0"}
!219 = distinct !{!219, !210, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_: argument 0"}
!220 = distinct !{!220, !212, !"_RNCNvNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB6_6Parser14read_ipv6_addr11read_groupss_0Ba_: argument 0"}
!221 = distinct !{!221, !214, !"_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser11read_numbertE0B9_: argument 1"}
!222 = distinct !{!222, !15}
!223 = !{!211}
!224 = !{!213}
!225 = !{!215}
!226 = !{!216, !215, !213, !211}
!227 = !{!215, !213, !211}
!228 = !{!216}
!229 = !{!213, !211}
!230 = !{!218}
!231 = !{!219}
!232 = !{!220}
!233 = !{!221}
!234 = !{!216, !221, !220, !219}
!235 = !{!221, !220, !219}
!236 = !{!220, !219}
!237 = distinct !{!237, !"_RNvXs7_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs1KeyDerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize"}
!238 = distinct !{!238, !237, !"_RNvXs7_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs1KeyDerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize: argument 0"}
!239 = distinct !{!239, !"_RNvXs12_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInnerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize"}
!240 = distinct !{!240, !239, !"_RNvXs12_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInnerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize: argument 0"}
!241 = distinct !{!241, !"_RNvXsd_CshEiLVZluVSb_7zeroizeINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_7Zeroize7zeroizeCseO5Jl7W60Eg_16rustls_pki_types"}
!242 = distinct !{!242, !241, !"_RNvXsd_CshEiLVZluVSb_7zeroizeINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_7Zeroize7zeroizeCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!243 = distinct !{!243, !"_RNvXsd_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_17PrivateSec1KeyDerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize"}
!244 = distinct !{!244, !243, !"_RNvXsd_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_17PrivateSec1KeyDerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize: argument 0"}
!245 = distinct !{!245, !"_RNvXs12_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInnerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize"}
!246 = distinct !{!246, !245, !"_RNvXs12_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInnerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize: argument 0"}
!247 = distinct !{!247, !"_RNvXsd_CshEiLVZluVSb_7zeroizeINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_7Zeroize7zeroizeCseO5Jl7W60Eg_16rustls_pki_types"}
!248 = distinct !{!248, !247, !"_RNvXsd_CshEiLVZluVSb_7zeroizeINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_7Zeroize7zeroizeCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!249 = distinct !{!249, !"_RNvXsj_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs8KeyDerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize"}
!250 = distinct !{!250, !249, !"_RNvXsj_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs8KeyDerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize: argument 0"}
!251 = distinct !{!251, !"_RNvXs12_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInnerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize"}
!252 = distinct !{!252, !251, !"_RNvXs12_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInnerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize: argument 0"}
!253 = distinct !{!253, !"_RNvXsd_CshEiLVZluVSb_7zeroizeINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_7Zeroize7zeroizeCseO5Jl7W60Eg_16rustls_pki_types"}
!254 = distinct !{!254, !253, !"_RNvXsd_CshEiLVZluVSb_7zeroizeINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_7Zeroize7zeroizeCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!255 = !{!238}
!256 = !{!240}
!257 = !{!240, !238}
!258 = !{!242}
!259 = !{!242, !240, !238}
!260 = !{!244}
!261 = !{!246}
!262 = !{!246, !244}
!263 = !{!248}
!264 = !{!248, !246, !244}
!265 = !{!250}
!266 = !{!252}
!267 = !{!252, !250}
!268 = !{!254}
!269 = !{!254, !252, !250}
!270 = distinct !{!270, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types"}
!271 = distinct !{!271, !270, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!272 = !{!271}
!273 = distinct !{!273, !"_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName15try_from_string"}
!274 = distinct !{!274, !273, !"_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName15try_from_string: argument 0"}
!275 = distinct !{!275, !273, !"_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName15try_from_string: argument 1"}
!276 = distinct !{!276, !"_RNvXsk_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_6IpAddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from"}
!277 = distinct !{!277, !276, !"_RNvXsk_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_6IpAddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 1"}
!278 = distinct !{!278, !276, !"_RNvXsk_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_6IpAddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 0"}
!279 = distinct !{!279, !"_RNvXsq_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_8Ipv4AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from"}
!280 = distinct !{!280, !279, !"_RNvXsq_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_8Ipv4AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 0"}
!281 = distinct !{!281, !"_RINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB3_6Parser10parse_withNtB5_8Ipv4AddrNCNvXsq_B5_B1l_INtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0EB7_"}
!282 = distinct !{!282, !281, !"_RINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB3_6Parser10parse_withNtB5_8Ipv4AddrNCNvXsq_B5_B1l_INtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0EB7_: argument 0"}
!283 = distinct !{!283, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECseO5Jl7W60Eg_16rustls_pki_types"}
!284 = distinct !{!284, !283, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!285 = distinct !{!285, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types"}
!286 = distinct !{!286, !285, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!287 = distinct !{!287, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECseO5Jl7W60Eg_16rustls_pki_types"}
!288 = distinct !{!288, !287, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!289 = distinct !{!289, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types"}
!290 = distinct !{!290, !289, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!291 = !{!274}
!292 = !{!275}
!293 = !{!274, !275}
!294 = !{!280, !278, !277}
!295 = !{!278}
!296 = !{!282}
!297 = !{!278, !277}
!298 = !{!286, !284}
!299 = !{!277}
!300 = !{!290, !288}
!301 = distinct !{!301, !"_RINvCseO5Jl7W60Eg_16rustls_pki_types3hexRShEB2_"}
!302 = distinct !{!302, !301, !"_RINvCseO5Jl7W60Eg_16rustls_pki_types3hexRShEB2_: argument 0"}
!303 = !{!302}
!304 = distinct !{!304, !"_RINvCseO5Jl7W60Eg_16rustls_pki_types3hexRShEB2_"}
!305 = distinct !{!305, !304, !"_RINvCseO5Jl7W60Eg_16rustls_pki_types3hexRShEB2_: argument 0"}
!306 = !{!305}
!307 = distinct !{!307, !"_RNvXsd_CshEiLVZluVSb_7zeroizeINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_7Zeroize7zeroizeCseO5Jl7W60Eg_16rustls_pki_types"}
!308 = distinct !{!308, !307, !"_RNvXsd_CshEiLVZluVSb_7zeroizeINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_7Zeroize7zeroizeCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!309 = !{!308}
!310 = distinct !{!310, !"_RNvXs2_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_10ServerNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from"}
!311 = distinct !{!311, !310, !"_RNvXs2_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_10ServerNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 0"}
!312 = distinct !{!312, !310, !"_RNvXs2_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_10ServerNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 1"}
!313 = distinct !{!313, !"_RNvXsc_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from"}
!314 = distinct !{!314, !313, !"_RNvXsc_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 1"}
!315 = distinct !{!315, !"_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName12try_from_str"}
!316 = distinct !{!316, !315, !"_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName12try_from_str: argument 1"}
!317 = distinct !{!317, !313, !"_RNvXsc_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 0"}
!318 = distinct !{!318, !315, !"_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName12try_from_str: argument 0"}
!319 = distinct !{!319, !"_RNvXsk_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_6IpAddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from"}
!320 = distinct !{!320, !319, !"_RNvXsk_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_6IpAddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 1"}
!321 = distinct !{!321, !319, !"_RNvXsk_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_6IpAddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 0"}
!322 = distinct !{!322, !"_RNvXsq_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_8Ipv4AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from"}
!323 = distinct !{!323, !322, !"_RNvXsq_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_8Ipv4AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 0"}
!324 = distinct !{!324, !"_RINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB3_6Parser10parse_withNtB5_8Ipv4AddrNCNvXsq_B5_B1l_INtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0EB7_"}
!325 = distinct !{!325, !324, !"_RINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB3_6Parser10parse_withNtB5_8Ipv4AddrNCNvXsq_B5_B1l_INtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0EB7_: argument 0"}
!326 = !{!311}
!327 = !{!312}
!328 = !{!316, !314, !312}
!329 = !{!318, !317, !311}
!330 = !{!323, !321, !320, !311, !312}
!331 = !{!321, !311}
!332 = !{!325}
!333 = !{!321, !320, !311, !312}
!334 = !{!320, !311, !312}
!335 = !{!311, !312}
!336 = distinct !{!336, !"_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCseO5Jl7W60Eg_16rustls_pki_types"}
!337 = distinct !{!337, !336, !"_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCseO5Jl7W60Eg_16rustls_pki_types: argument 0"}
!338 = distinct !{!338, !336, !"_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCseO5Jl7W60Eg_16rustls_pki_types: argument 1"}
!339 = !{!337}
!340 = !{!338}
!341 = !{!337, !338}
!342 = distinct !{!342, !"_RNvXs10_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB6_8Ipv4AddrNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt"}
!343 = distinct !{!343, !342, !"_RNvXs10_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB6_8Ipv4AddrNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 1"}
!344 = distinct !{!344, !342, !"_RNvXs10_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB6_8Ipv4AddrNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 0"}
!345 = !{!344, !343}
!346 = distinct !{!346, !"_RNvXs18_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB6_8Ipv6AddrNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt"}
!347 = distinct !{!347, !346, !"_RNvXs18_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB6_8Ipv6AddrNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 1"}
!348 = distinct !{!348, !346, !"_RNvXs18_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB6_8Ipv6AddrNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 0"}
!349 = !{!348, !347}
!350 = distinct !{!350, !"_RNvXsc_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from"}
!351 = distinct !{!351, !350, !"_RNvXsc_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 1"}
!352 = distinct !{!352, !"_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName12try_from_str"}
!353 = distinct !{!353, !352, !"_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName12try_from_str: argument 1"}
!354 = distinct !{!354, !350, !"_RNvXsc_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 0"}
!355 = distinct !{!355, !352, !"_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName12try_from_str: argument 0"}
!356 = distinct !{!356, !"_RNvXsk_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_6IpAddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from"}
!357 = distinct !{!357, !356, !"_RNvXsk_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_6IpAddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 1"}
!358 = distinct !{!358, !356, !"_RNvXsk_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_6IpAddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 0"}
!359 = distinct !{!359, !"_RNvXsq_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_8Ipv4AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from"}
!360 = distinct !{!360, !359, !"_RNvXsq_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_8Ipv4AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from: argument 0"}
!361 = distinct !{!361, !"_RINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB3_6Parser10parse_withNtB5_8Ipv4AddrNCNvXsq_B5_B1l_INtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0EB7_"}
!362 = distinct !{!362, !361, !"_RINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB3_6Parser10parse_withNtB5_8Ipv4AddrNCNvXsq_B5_B1l_INtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0EB7_: argument 0"}
!363 = !{!353, !351}
!364 = !{!355, !354}
!365 = !{!360, !358, !357}
!366 = !{!358}
!367 = !{!362}
!368 = !{!358, !357}
!369 = !{!357}
!370 = distinct !{!370, !"_RNvXs4_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_13PrivateKeyDerINtNtCsj6eKBz9Db1c_4core7convert7TryFromRShE8try_from"}
!371 = distinct !{!371, !370, !"_RNvXs4_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_13PrivateKeyDerINtNtCsj6eKBz9Db1c_4core7convert7TryFromRShE8try_from: argument 1"}
!372 = distinct !{!372, !370, !"_RNvXs4_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_13PrivateKeyDerINtNtCsj6eKBz9Db1c_4core7convert7TryFromRShE8try_from: argument 0"}
!373 = distinct !{!373, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types"}
end_hunk_1
