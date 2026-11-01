Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.09?download=true
inline.NumInlined: 410
inline.NumDeleted: 264
begin_hunk_0_@_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileINtB2_8CoffFileRShNtNtB8_2pe22AnonObjectHeaderBigobjE5parseCs4phXRVW1pDQ_9dwarfdump:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %i.z, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.414.sroa.8.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.sroa.8.0..sroa.414.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.626.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.v, ptr %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.7.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %.sroa.414.sroa.7.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.9.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %.sroa.414.sroa.9.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %2, ptr %.sroa.616.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileNtB2_8CoffFile5parseCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXs1_NtNtNtCs9Jn0q30Ea0B_6object4read4coff4fileNtNtBc_2pe15ImageFileHeaderNtB6_10CoffHeader5parseRShECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = load i64, ptr %i.c, align 8, !noundef !5
  %i.k = getelementptr i8, ptr %i.i, i64 2
  %.val = load i16, ptr %i.k, align 1, !alias.scope !154
  %i.l = zext i16 %.val to i64
  %i.m = call { ptr, i64 } @_RINvYRShNtNtNtCs9Jn0q30Ea0B_6object4read8read_ref7ReadRef13read_slice_atNtNtBc_2pe18ImageSectionHeaderECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %i.j, i64 noundef %i.l), !noalias !155 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = extractvalue { ptr, i64 } %i.m, 1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 31, ptr %i.r, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtNtNtCs9Jn0q30Ea0B_6object4read4coff6symbolNtB4_11SymbolTable5parseCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2)
  %i.s = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %i.z, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.414.sroa.8.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.sroa.8.0..sroa.414.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.626.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.v, ptr %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.7.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %.sroa.414.sroa.7.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.9.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %.sroa.414.sroa.9.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %2, ptr %.sroa.616.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB6_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2s_5ErrorEEE13new_uninit_inCs4phXRVW1pDQ_9dwarfdump() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(376) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 377) 376, i64 noundef 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 376) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB6_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2n_5ErrorEEE13new_uninit_inCs4phXRVW1pDQ_9dwarfdump() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 377) 280, i64 noundef 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 280) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs9Jn0q30Ea0B_6object4read4wasmNtB4_8WasmFile5parseCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [64 x i8], align 8                ; 15 uses
  %i.e = alloca [224 x i8], align 8               ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [48 x i8], align 8                ; 10 uses
  %.sroa.8788.sroa.6.sroa.0 = alloca [16 x i8], align 8 ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [48 x i8], align 8                ; 12 uses
  %i.m = alloca [40 x i8], align 8                ; 11 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 10 uses
  %i.q = alloca [56 x i8], align 8                ; 10 uses
  %i.r = alloca [48 x i8], align 8                ; 12 uses
  %i.s = alloca [40 x i8], align 8                ; 11 uses
  %i.t = alloca [96 x i8], align 8                ; 13 uses
  %i.u = alloca [48 x i8], align 8                ; 12 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 12 uses
  %i.x = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.7428.sroa.5 = alloca [24 x i8], align 8  ; 2 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [56 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [48 x i8], align 8               ; 13 uses
  %i.ac = alloca [48 x i8], align 8               ; 10 uses
  %i.ad = alloca [64 x i8], align 8               ; 8 uses
  %i.ae = alloca [48 x i8], align 8               ; 10 uses
  %i.af = alloca [48 x i8], align 8               ; 10 uses
  %i.ag = alloca [48 x i8], align 8               ; 7 uses
  %i.ah = alloca [48 x i8], align 8               ; 12 uses
  %i.ai = alloca [40 x i8], align 8               ; 8 uses
  %i.aj = alloca [48 x i8], align 8               ; 12 uses
  %i.ak = alloca [48 x i8], align 8               ; 12 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [128 x i8], align 8              ; 18 uses
  %i.an = alloca [24 x i8], align 8               ; 13 uses
  %i.ao = alloca [40 x i8], align 8               ; 11 uses
  %i.ap = alloca [24 x i8], align 8               ; 13 uses
  %i.aq = alloca [24 x i8], align 8               ; 16 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [88 x i8], align 8               ; 46 uses
  %i.at = alloca [128 x i8], align 8              ; 19 uses
  %i.au = icmp eq i64 %2, 0
  %.sroa.0.0.i = select i1 %i.au, ptr inttoptr (i64 1 to ptr), ptr %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 0, ptr %i.at, align 8
  %.sroa.4880.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4880.0..sroa_idx, align 8
  %.sroa.5881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 0, ptr %.sroa.5881.0..sroa_idx, align 8
  %.sroa.6882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i32 0, ptr %.sroa.6882.0..sroa_idx, align 8
  %.sroa.8884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i32 0, ptr %.sroa.8884.0..sroa_idx, align 8
  %.sroa.10886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i32 0, ptr %.sroa.10886.0..sroa_idx, align 8
  %.sroa.12888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store i32 0, ptr %.sroa.12888.0..sroa_idx, align 8
  %.sroa.14890.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store i8 0, ptr %.sroa.14890.0..sroa_idx, align 8
  %.sroa.16892.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16892.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 -1, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  store i32 0, ptr %.sroa.19893.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 100
  store i8 0, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  store ptr %.sroa.0.0.i, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  store i64 %2, ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.25895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  store i8 0, ptr %.sroa.25895.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 0, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 0, ptr %i.aw, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.ax = tail call noundef align 8 dereferenceable_or_null(224) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 377) 224, i64 noundef 8) #23 ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 224) #27
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXsR_NtCskKLDkoKarTP_4core5arrayAINtNtB7_6option6OptionjEje_NtNtB7_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.e)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef 224, i64 noundef 8) #23
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.d ], [ %i.az, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm13SectionHeaderEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar) #25
          to label %bb.ke unwind label %bb.eu

bb.e:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ax, ptr noundef nonnull align 8 dereferenceable(224) %i.e, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store ptr %.sroa.0.0.i, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store i64 %2, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 80 ; 3 uses
  store i8 0, ptr %i.bd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 15 uses
  store ptr %i.ax, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 81 ; 2 uses
  store i8 0, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 11 uses
  store i64 0, ptr %i.bg, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 11 uses
  store i64 0, ptr %.sroa.527.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 2 uses
  store i64 0, ptr %i.bh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 0, ptr %i.aq, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  store i64 0, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 0, ptr %i.ap, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 7 uses
  store i64 0, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr null, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 0, ptr %i.an, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 4 uses
  store i64 0, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.am, ptr noundef nonnull align 8 dereferenceable(128) %i.at, i64 128, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 120 ; 4 uses
  %i.bp = load i8, ptr %i.bo, align 8, !range !15, !alias.scope !251, !noundef !5
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit, label %.lr.ph2039

.lr.ph2039:                                       ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 104 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.3.i.sroa.8.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.3.i.sroa.9.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.3.i.sroa.10.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.3.i.sroa.11.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %.sroa.3.i.sroa.12.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.20.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.30.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.38.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.44.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 3 uses
  %.sroa.49.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %.sroa.49.sroa.7.0..sroa.49.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 28 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 14 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.4946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.sroa.21073.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.sroa.31074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.sroa.7432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.8433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.8433.sroa.6.0..sroa.8433.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.4467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.5468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.5288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.6289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.7290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.8291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.9292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %.sroa.10293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.11294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %.sroa.6298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.6298.sroa.5.0..sroa.6298.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.7303.sroa.5.0..sroa.7303.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.7303.sroa.6.0..sroa.7303.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 41
  %.sroa.2330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.4331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.6333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.7334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 41
  %.sroa.6363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %.sroa.6365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.7368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.7368.sroa.5.0..sroa.7368.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.4371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %.sroa.5372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.6373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.7374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.sroa.5244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.6245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.7246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.8247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.9248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  %.sroa.10249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.11250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %.sroa.7257.sroa.5.sroa.5.0..sroa.7257.sroa.5.0..sroa.7257.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.7233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.8234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.10235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.12236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph2039, %.thread1483
  %.sroa.0225.02037 = phi i64 [ 0, %.lr.ph2039 ], [ %.sroa.0225.1, %.thread1483 ] ; 18 uses
  %.sroa.4226.02036 = phi i64 [ undef, %.lr.ph2039 ], [ %.sroa.4226.1, %.thread1483 ] ; 18 uses
  %.sroa.5227.02035 = phi i64 [ undef, %.lr.ph2039 ], [ %.sroa.5227.1, %.thread1483 ] ; 18 uses
  %.sroa.6228.02034 = phi i64 [ undef, %.lr.ph2039 ], [ %.sroa.6228.1, %.thread1483 ] ; 18 uses
  %.sroa.7229.02033 = phi i32 [ undef, %.lr.ph2039 ], [ %.sroa.7229.1, %.thread1483 ] ; 18 uses
  %.sroa.8230.02032 = phi i32 [ undef, %.lr.ph2039 ], [ %.sroa.8230.1, %.thread1483 ] ; 18 uses
  %.sroa.0381.02031 = phi i1 [ false, %.lr.ph2039 ], [ %.sroa.0381.1, %.thread1483 ] ; 18 uses
  %.sroa.3382.02030 = phi i32 [ undef, %.lr.ph2039 ], [ %.sroa.3382.1, %.thread1483 ] ; 18 uses
  %.sroa.0384.02029 = phi i64 [ 0, %.lr.ph2039 ], [ %.sroa.0384.1, %.thread1483 ] ; 19 uses
  %.sroa.0604.02028 = phi i64 [ 0, %.lr.ph2039 ], [ %.sroa.0604.2, %.thread1483 ] ; 18 uses
  %.sroa.5605.02027 = phi i64 [ undef, %.lr.ph2039 ], [ %.sroa.5605.1, %.thread1483 ] ; 18 uses
  %.sroa.6606.02026 = phi i64 [ undef, %.lr.ph2039 ], [ %.sroa.6606.1, %.thread1483 ] ; 18 uses
  %.sroa.7607.02025 = phi i64 [ undef, %.lr.ph2039 ], [ %.sroa.7607.1, %.thread1483 ] ; 18 uses
  %.sroa.8608.02024 = phi i32 [ undef, %.lr.ph2039 ], [ %.sroa.8608.1, %.thread1483 ] ; 18 uses
  %.sroa.9609.02023 = phi i32 [ undef, %.lr.ph2039 ], [ %.sroa.9609.1, %.thread1483 ] ; 18 uses
  %.sroa.0610.02022 = phi ptr [ null, %.lr.ph2039 ], [ %.sroa.0610.2, %.thread1483 ] ; 21 uses
  %.sroa.5611.02021 = phi i64 [ undef, %.lr.ph2039 ], [ %.sroa.5611.1, %.thread1483 ] ; 21 uses
  %.sroa.7613.02020 = phi i64 [ undef, %.lr.ph2039 ], [ %.sroa.7613.1, %.thread1483 ] ; 21 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !253
  %i.ck = load ptr, ptr %i.bs, align 8, !alias.scope !252, !nonnull !5, !noundef !5
  %i.cl = load i64, ptr %i.bt, align 8, !alias.scope !252, !noundef !5
  invoke void @_RNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB2_6Parser5parse(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %i.cl, i1 noundef zeroext true)
          to label %.noexc1159 unwind label %.body1307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1159:                                       ; preds = %bb.f
  %i.cm = load i8, ptr %i.d, align 8, !range !254, !noalias !253, !noundef !5 ; 3 uses
  switch i8 %i.cm, label %bb.g [
    i8 -2, label %bb.fd
    i8 -1, label %bb.h
  ], !prof !255

bb.g:                                             ; preds = %.noexc1159
  %.sroa.3.i.sroa.0.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx.i, align 1, !noalias !253
  %.sroa.3.i.sroa.5.0.copyload = load i32, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 4, !noalias !253
  %.sroa.3.i.sroa.6.0.copyload = load ptr, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !253 ; 6 uses
  %.sroa.3.i.sroa.7.0.copyload = load i64, ptr %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !253 ; 24 uses
  %.sroa.3.i.sroa.8.0.copyload = load i64, ptr %.sroa.3.i.sroa.8.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !253 ; 7 uses
  %.sroa.3.i.sroa.9.0.copyload = load i64, ptr %.sroa.3.i.sroa.9.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !253 ; 28 uses
  %.sroa.3.i.sroa.10.0.copyload = load i32, ptr %.sroa.3.i.sroa.10.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !253 ; 9 uses
  %.sroa.3.i.sroa.11.0.copyload = load i32, ptr %.sroa.3.i.sroa.11.0..sroa.3.0..sroa_idx.i.sroa_idx, align 4, !noalias !253 ; 6 uses
  %.sroa.3.i.sroa.12.0.copyload = load i64, ptr %.sroa.3.i.sroa.12.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !253 ; 4 uses
  %i.cn = load i64, ptr %i.bu, align 8, !noalias !253, !noundef !5 ; 4 uses
  %i.co = load i64, ptr %i.bt, align 8, !alias.scope !252, !noundef !5 ; 4 uses
  %i.cp = icmp ugt i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.j, label %bb.i, !prof !12

bb.h:                                             ; preds = %.noexc1159
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #26
          to label %.noexc1160 unwind label %.body1307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1160:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cq = load ptr, ptr %i.bs, align 8, !alias.scope !252, !nonnull !5, !noundef !5
  %i.cr = sub nuw i64 %i.co, %i.cn
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  store ptr %i.cs, ptr %i.bs, align 8, !alias.scope !252, !captures !14
  store i64 %i.cr, ptr %i.bt, align 8, !alias.scope !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !253
  %i.ct = icmp eq i8 %i.cm, 17
  br i1 %i.ct, label %bb.k, label %bb.fi

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.cn, i64 noundef %i.co, i64 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
          to label %.noexc1161 unwind label %.body1307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1161:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cu = load i64, ptr %i.ci, align 8, !alias.scope !252, !noundef !5 ; 3 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.bo, align 8, !alias.scope !252
  br label %.thread1483

bb.m:                                             ; preds = %bb.k
  %i.cw = add nsw i64 %i.cu, -1                   ; 3 uses
  store i64 %i.cw, ptr %i.ci, align 8, !alias.scope !252
  %i.cx = load i64, ptr %i.am, align 8, !range !7, !alias.scope !252, !noundef !5
  %i.cy = icmp samesign ult i64 %i.cw, %i.cx
  call void @llvm.assume(i1 %i.cy)
  %i.cz = load ptr, ptr %i.cj, align 8, !alias.scope !252, !nonnull !5, !noundef !5
  %i.da = icmp ult i64 %i.cu, 115292150460684699
  call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds nuw [80 x i8], ptr %i.cz, i64 %i.cw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.br, ptr noundef nonnull align 8 dereferenceable(80) %i.db, i64 80, i1 false), !noalias !256
  br label %.thread1483

.body1200:                                        ; preds = %.body1307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body1307.thread1487, %bb.gy, %bb.fh, %bb.hz, %bb.jp, %bb.hn, %bb.gw, %.body1307.thread, %bb.if, %.body1294
  %.pn1126 = phi { ptr, i32 } [ %i.sv, %bb.if ], [ %eh.lpad-body1295, %.body1294 ], [ %eh.lpad-body13081486, %.body1307.thread ], [ %i.rr, %bb.gy ], [ %eh.lpad-body.i.i1198, %bb.fh ], [ %eh.lpad-body.i.i.i.i.i, %bb.gw ], [ %eh.lpad-body.i.i1322, %bb.jp ], [ %eh.lpad-body.i.i1296, %bb.hn ], [ %eh.lpad-body.i.i1301, %bb.hz ], [ %eh.lpad-body.i.i1310, %.body1307.thread1487 ], [ %lpad.loopexit.split-lp2417, %.body1307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB1k_6Parser9parse_all0EECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(128) %i.am) #25
          to label %.body1162 unwind label %bb.eu

_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit: ; preds = %.thread1483
  %i.dc = zext i32 %.sroa.3382.1 to i64
  br label %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit

_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit, %bb.e
  %.sroa.7613.0.lcssa = phi i64 [ undef, %bb.e ], [ %.sroa.7613.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ]
  %.sroa.5611.0.lcssa = phi i64 [ undef, %bb.e ], [ %.sroa.5611.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ] ; 2 uses
  %.sroa.0610.0.lcssa = phi ptr [ null, %bb.e ], [ %.sroa.0610.2, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ] ; 3 uses
  %.sroa.9609.0.lcssa = phi i32 [ undef, %bb.e ], [ %.sroa.9609.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ]
  %.sroa.8608.0.lcssa = phi i32 [ undef, %bb.e ], [ %.sroa.8608.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ] ; 2 uses
  %.sroa.7607.0.lcssa = phi i64 [ undef, %bb.e ], [ %.sroa.7607.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ]
  %.sroa.6606.0.lcssa = phi i64 [ undef, %bb.e ], [ %.sroa.6606.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ]
  %.sroa.5605.0.lcssa = phi i64 [ undef, %bb.e ], [ %.sroa.5605.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ]
  %.sroa.0604.0.lcssa = phi i64 [ 0, %bb.e ], [ %.sroa.0604.2, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ] ; 2 uses
  %.sroa.3382.0.lcssa = phi i64 [ 0, %bb.e ], [ %i.dc, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ] ; 2 uses
  %.sroa.0381.0.lcssa = phi i1 [ false, %bb.e ], [ %.sroa.0381.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ]
  %.sroa.8230.0.lcssa = phi i32 [ undef, %bb.e ], [ %.sroa.8230.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ]
  %.sroa.7229.0.lcssa = phi i32 [ undef, %bb.e ], [ %.sroa.7229.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ] ; 2 uses
  %.sroa.6228.0.lcssa = phi i64 [ undef, %bb.e ], [ %.sroa.6228.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ]
  %.sroa.5227.0.lcssa = phi i64 [ undef, %bb.e ], [ %.sroa.5227.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ]
  %.sroa.4226.0.lcssa = phi i64 [ undef, %bb.e ], [ %.sroa.4226.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ]
  %.sroa.0225.0.lcssa = phi i64 [ 0, %bb.e ], [ %.sroa.0225.1, %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit.loopexit ] ; 2 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3Kj8CJc7CAH_10wasmparser6parser6ParserENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtBG_6Parser9parse_all0ECs4phXRVW1pDQ_9dwarfdump.exit.i unwind label %bb.n

bb.n:                                             ; preds = %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3Kj8CJc7CAH_10wasmparser6parser6ParserENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %.body1162 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtBG_6Parser9parse_all0ECs4phXRVW1pDQ_9dwarfdump.exit.i: ; preds = %_RNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB4_6Parser9parse_all0Cs4phXRVW1pDQ_9dwarfdump.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3Kj8CJc7CAH_10wasmparser6parser6ParserENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB1k_6Parser9parse_all0EECs4phXRVW1pDQ_9dwarfdump.exit unwind label %bb.p

.body1162:                                        ; preds = %bb.gp, %bb.en, %bb.n, %bb.p, %.body1173, %.body1200
  %.sroa.0865.0 = phi i1 [ %.sroa.0865.2, %.body1173 ], [ true, %.body1200 ], [ true, %bb.n ], [ true, %bb.en ], [ %.sroa.0865.1, %bb.p ], [ true, %bb.gp ]
  %.pn1128 = phi { ptr, i32 } [ %.pn, %.body1173 ], [ %.pn1126, %.body1200 ], [ %i.dd, %bb.n ], [ %i.kv, %bb.en ], [ %i.df, %bb.p ], [ %i.qx, %bb.gp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionyEEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #25
          to label %.body1196 unwind label %bb.eu

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtBG_6Parser9parse_all0ECs4phXRVW1pDQ_9dwarfdump.exit.i1278, %bb.eo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtBG_6Parser9parse_all0ECs4phXRVW1pDQ_9dwarfdump.exit.i, %bb.ev
  %.sroa.0865.1 = phi i1 [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtBG_6Parser9parse_all0ECs4phXRVW1pDQ_9dwarfdump.exit.i1278 ], [ true, %bb.eo ], [ false, %bb.ev ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtBG_6Parser9parse_all0ECs4phXRVW1pDQ_9dwarfdump.exit.i ]
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body1162

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB1k_6Parser9parse_all0EECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtBG_6Parser9parse_all0ECs4phXRVW1pDQ_9dwarfdump.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.dg = load i64, ptr %i.bl, align 8
  %i.dh = icmp ugt i64 %i.dg, %.sroa.3382.0.lcssa
  %or.cond = select i1 %.sroa.0381.0.lcssa, i1 %i.dh, i1 false
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMNtCs3Kj8CJc7CAH_10wasmparser6parserNtB1k_6Parser9parse_all0EECs4phXRVW1pDQ_9dwarfdump.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 0, ptr %i.x, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs9Jn0q30Ea0B_6object4read4wasmNtB4_8WasmFile5parseCs4phXRVW1pDQ_9dwarfdump:bb.a

.noexc1289:                                       ; preds = %.loopexit1520
  %i.rl = load i64, ptr %i.a, align 8, !range !6, !noalias !320, !noundef !5
  %i.rm = trunc nuw i64 %i.rl to i1
  %i.rn = load i64, ptr %i.ce, align 8, !range !321, !noalias !320, !noundef !5 ; 3 uses
  br i1 %i.rm, label %bb.gx, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4phXRVW1pDQ_9dwarfdump.exit.i, !prof !12

bb.gx:                                            ; preds = %.noexc1289
  %i.ro = load i64, ptr %i.cf, align 8, !noalias !320
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.rn, i64 %i.ro) #27
          to label %.noexc1290 unwind label %.body1307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1290:                                       ; preds = %bb.gx
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4phXRVW1pDQ_9dwarfdump.exit.i: ; preds = %.noexc1289
  %i.rp = load ptr, ptr %i.cf, align 8, !noalias !320, !nonnull !5, !noundef !5
  %i.rq = icmp ule i64 %.sroa.0.0.lcssa.i, %i.rn
  call void @llvm.assume(i1 %i.rq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !320
  store i64 %i.rn, ptr %i.b, align 8, !noalias !320
  store ptr %i.rp, ptr %i.cg, align 8, !noalias !320
  store i64 0, ptr %i.ch, align 8, !noalias !320
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm17LocalFunctionKindE11extend_withCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.lcssa.i, i1 noundef zeroext false)
          to label %bb.ha unwind label %bb.gy, !noalias !320

bb.gy:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4phXRVW1pDQ_9dwarfdump.exit.i
  %i.rr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm17LocalFunctionKindEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %.body1200 unwind label %bb.gz, !noalias !320

bb.gz:                                            ; preds = %bb.gy
  %i.rs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !320
  unreachable

bb.ha:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4phXRVW1pDQ_9dwarfdump.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !320
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm17LocalFunctionKindENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.hc unwind label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.rt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm17LocalFunctionKindENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body1294 unwind label %bb.hd

bb.hc:                                            ; preds = %bb.ha
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm17LocalFunctionKindENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm17LocalFunctionKindEECs4phXRVW1pDQ_9dwarfdump.exit unwind label %bb.he

bb.hd:                                            ; preds = %bb.hb
  %i.ru = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.he:                                            ; preds = %bb.hc
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %.body1294

.body1294:                                        ; preds = %bb.hb, %bb.he
  %eh.lpad-body1295 = phi { ptr, i32 } [ %i.rv, %bb.he ], [ %i.rt, %bb.hb ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  br label %.body1200

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm17LocalFunctionKindEECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %.thread1483

bb.hf:                                            ; preds = %bb.fs, %bb.ft
  %i.rw = load ptr, ptr %i.bw, align 8, !alias.scope !284, !nonnull !5, !noundef !5
  %i.rx = getelementptr inbounds nuw [40 x i8], ptr %i.rw, i64 %i.nb ; 5 uses
  store i64 5, ptr %i.rx, align 8, !noalias !322
  %.sroa.4.0..sroa_idx.i1222 = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i1222, align 8, !noalias !322
  %.sroa.5.0..sroa_idx.i1223 = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i1223, align 8
  %.sroa.6.0..sroa_idx.i1224 = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  store i64 %.sroa.3.i.sroa.9.0.copyload, ptr %.sroa.6.0..sroa_idx.i1224, align 8
  %.sroa.7.0..sroa_idx.i1225 = getelementptr inbounds nuw i8, ptr %i.rx, i64 32
  store i64 %i.na, ptr %.sroa.7.0..sroa_idx.i1225, align 8
  %i.ry = add nuw nsw i64 %i.nb, 1
  store i64 %i.ry, ptr %i.bv, align 8, !alias.scope !284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 %i.lh, ptr %i.aj, align 8
  store i64 %.sroa.3.i.sroa.7.0.copyload, ptr %.sroa.5244.0..sroa_idx, align 8
  store i64 %.sroa.3.i.sroa.8.0.copyload, ptr %.sroa.6245.0..sroa_idx, align 8
  store i64 %.sroa.3.i.sroa.9.0.copyload, ptr %.sroa.7246.0..sroa_idx, align 8
  store i32 %.sroa.3.i.sroa.10.0.copyload, ptr %.sroa.8247.0..sroa_idx, align 8
  store i32 %.sroa.3.i.sroa.11.0.copyload, ptr %.sroa.9248.0..sroa_idx, align 4
  store i32 %.sroa.3.i.sroa.10.0.copyload, ptr %.sroa.10249.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.11250.0..sroa_idx, align 4
  br label %bb.hg

bb.hg:                                            ; preds = %bb.ho, %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke void @_RNvXs7_NtCs3Kj8CJc7CAH_10wasmparser7readersINtB5_22SectionLimitedIntoIterNtNtNtB5_4core5types10MemoryTypeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %bb.hh unwind label %.body1307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hh:                                            ; preds = %bb.hg
  %i.rz = load i64, ptr %i.ai, align 8, !range !9, !noundef !5
  switch i64 %i.rz, label %bb.ho [
    i64 -1, label %bb.hi
    i64 2, label %bb.hj
  ]

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %.thread1483

bb.hj:                                            ; preds = %bb.hh
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.6254.0.copyload = load ptr, ptr %.sroa.6254.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.6254.0.copyload, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i1297 unwind label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.sb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sa)
          to label %bb.hn unwind label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.sc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i1297: ; preds = %bb.hj
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sa)
          to label %bb.hp unwind label %bb.hm

bb.hm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i1297
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hk
  %eh.lpad-body.i.i1296 = phi { ptr, i32 } [ %i.sd, %bb.hm ], [ %i.sb, %bb.hk ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6254.0.copyload, i64 noundef 56, i64 noundef 8) #23
  br label %.body1200

bb.ho:                                            ; preds = %bb.hh
  %.sroa.7257.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.7257.sroa.5.sroa.5.0..sroa.7257.sroa.5.0..sroa.7257.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %i.se = load i8, ptr %i.bd, align 8, !range !15, !noundef !5
  %.sroa.7257.sroa.5.sroa.5.0.copyload.masked = and i8 %.sroa.7257.sroa.5.sroa.5.0.copyload, 1
  %i.sf = or i8 %i.se, %.sroa.7257.sroa.5.sroa.5.0.copyload.masked
  store i8 %i.sf, ptr %i.bd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.hg

bb.hp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i1297
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6254.0.copyload, i64 noundef 56, i64 noundef 8) #23
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @18, ptr %i.sg, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 27, ptr %i.sh, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.go

bb.hq:                                            ; preds = %bb.fw, %bb.fx
  %i.si = load ptr, ptr %i.bw, align 8, !alias.scope !291, !nonnull !5, !noundef !5
  %i.sj = getelementptr inbounds nuw [40 x i8], ptr %i.si, i64 %i.nu ; 5 uses
  store i64 6, ptr %i.sj, align 8, !noalias !323
  %.sroa.4.0..sroa_idx.i1234 = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i1234, align 8, !noalias !323
  %.sroa.5.0..sroa_idx.i1235 = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i1235, align 8
  %.sroa.6.0..sroa_idx.i1236 = getelementptr inbounds nuw i8, ptr %i.sj, i64 24
  store i64 %.sroa.3.i.sroa.9.0.copyload, ptr %.sroa.6.0..sroa_idx.i1236, align 8
  %.sroa.7.0..sroa_idx.i1237 = getelementptr inbounds nuw i8, ptr %i.sj, i64 32
  store i64 %i.nt, ptr %.sroa.7.0..sroa_idx.i1237, align 8
  %i.sk = add nuw nsw i64 %i.nu, 1
  store i64 %i.sk, ptr %i.bv, align 8, !alias.scope !291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %i.lh, ptr %i.ah, align 8
  store i64 %.sroa.3.i.sroa.7.0.copyload, ptr %.sroa.5288.0..sroa_idx, align 8
  store i64 %.sroa.3.i.sroa.8.0.copyload, ptr %.sroa.6289.0..sroa_idx, align 8
  store i64 %.sroa.3.i.sroa.9.0.copyload, ptr %.sroa.7290.0..sroa_idx, align 8
  store i32 %.sroa.3.i.sroa.10.0.copyload, ptr %.sroa.8291.0..sroa_idx, align 8
  store i32 %.sroa.3.i.sroa.11.0.copyload, ptr %.sroa.9292.0..sroa_idx, align 4
  store i32 %.sroa.3.i.sroa.10.0.copyload, ptr %.sroa.10293.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.11294.0..sroa_idx, align 4
  br label %bb.hr

bb.hr:                                            ; preds = %bb.iu, %bb.hq
  invoke void @_RNvXs7_NtCs3Kj8CJc7CAH_10wasmparser7readersINtB5_22SectionLimitedIntoIterNtNtNtB5_4core7globals6GlobalENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ah)
          to label %bb.hs unwind label %.body1307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hs:                                            ; preds = %bb.hr
  %i.sl = load i32, ptr %i.ca, align 8, !range !259, !noundef !5 ; 2 uses
  %.not1123 = icmp eq i32 %i.sl, -2
  br i1 %.not1123, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %.sroa.0296.0.copyload = load ptr, ptr %i.ag, align 8 ; 5 uses
  %.sroa.6298.sroa.0.0.copyload = load i64, ptr %.sroa.6298.0..sroa_idx, align 8
  %3 = load <2 x i32>, ptr %i.ca, align 8
  %.sroa.7303.sroa.5.0.copyload = load i8, ptr %.sroa.7303.sroa.5.0..sroa.7303.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.sm = icmp eq i32 %i.sl, -1
  br i1 %i.sm, label %bb.hv, label %bb.ia

bb.hu:                                            ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %.thread1483

bb.hv:                                            ; preds = %bb.ht
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0296.0.copyload) ]
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.0296.0.copyload, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i1302 unwind label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.so = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sn)
          to label %bb.hz unwind label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.sp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i1302: ; preds = %bb.hv
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sn)
          to label %bb.iv unwind label %bb.hy

bb.hy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i1302
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hw
  %eh.lpad-body.i.i1301 = phi { ptr, i32 } [ %i.sq, %bb.hy ], [ %i.so, %bb.hw ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0296.0.copyload, i64 noundef 56, i64 noundef 8) #23
  br label %.body1200

bb.ia:                                            ; preds = %bb.ht
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6298.sroa.5.0..sroa.6298.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7334.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7303.sroa.6.0..sroa.7303.0..sroa_idx.sroa_idx, i64 7, i1 false)
  store ptr %.sroa.0296.0.copyload, ptr %i.af, align 8
  store i64 %.sroa.6298.sroa.0.0.copyload, ptr %.sroa.2330.0..sroa_idx, align 8
  store <2 x i32> %3, ptr %.sroa.4331.0..sroa_idx, align 8
  store i8 %.sroa.7303.sroa.5.0.copyload, ptr %.sroa.6333.0..sroa_idx, align 8
  %i.sr = trunc nuw i8 %.sroa.7303.sroa.5.0.copyload to i1
  br i1 %i.sr, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void @_RNvMs0_NtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core4initNtB5_9ConstExpr20get_operators_reader(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af)
          to label %bb.ie unwind label %.body1307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ic:                                            ; preds = %bb.ir, %bb.ia
  %.sroa.5336.0 = phi i64 [ undef, %bb.ia ], [ %.sroa.5336.1, %bb.ir ]
  %.sroa.0335.0 = phi i64 [ 0, %bb.ia ], [ %.sroa.0335.1, %bb.ir ]
  %i.ss = load i64, ptr %i.bn, align 8, !alias.scope !324, !noundef !5 ; 3 uses
  %i.st = load i64, ptr %i.an, align 8, !range !7, !alias.scope !324, !noundef !5
  %i.su = icmp eq i64 %i.ss, %i.st
  br i1 %i.su, label %bb.id, label %bb.iu

bb.id:                                            ; preds = %bb.ic
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionyEE8grow_oneCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an) #28
          to label %bb.iu unwind label %.body1307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ie:                                            ; preds = %bb.ib
  invoke void @_RNvMsh_NtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operatorsNtB5_15OperatorsReader4read(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %bb.ig unwind label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.sv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators15OperatorsReaderECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ad) #25
          to label %.body1200 unwind label %bb.eu

bb.ig:                                            ; preds = %bb.ie
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators9FrameKindENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators12ControlStackECs4phXRVW1pDQ_9dwarfdump.exit.i unwind label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.sw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators9FrameKindENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %.body1307.thread unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.sx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators12ControlStackECs4phXRVW1pDQ_9dwarfdump.exit.i: ; preds = %bb.ig
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators9FrameKindENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators15OperatorsReaderECs4phXRVW1pDQ_9dwarfdump.exit unwind label %.body1307.thread1490

.body1307.thread1490:                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators12ControlStackECs4phXRVW1pDQ_9dwarfdump.exit.i
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.body1307.thread

.body1307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.iq, %bb.id, %bb.ib, %bb.hr, %_RNCNvYINtNtCs3Kj8CJc7CAH_10wasmparser7readers22SectionLimitedIntoItermENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator5count0Cs4phXRVW1pDQ_9dwarfdump.exit.i, %bb.hg, %bb.gm, %bb.ja, %bb.jc, %bb.jd, %bb.jg, %bb.f, %bb.fl, %bb.fn, %bb.fp, %bb.fr, %bb.ft, %bb.fv, %bb.fx, %bb.fz, %bb.gb, %bb.gd, %bb.gf, %bb.gh, %bb.gj, %bb.gl, %bb.gr, %.loopexit1520, %bb.ix, %bb.ji, %bb.h, %bb.j, %bb.gx
  %lpad.loopexit.split-lp2417 = landingpad { ptr, i32 }
          cleanup
  br label %.body1200

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators15OperatorsReaderECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators12ControlStackECs4phXRVW1pDQ_9dwarfdump.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %.sroa.0361.0.copyload = load i16, ptr %i.ae, align 8 ; 3 uses
  %.sroa.6365.0.copyload = load ptr, ptr %.sroa.6365.0..sroa_idx, align 8 ; 6 uses
  %i.sz = icmp eq i16 %.sroa.0361.0.copyload, -1
  br i1 %i.sz, label %bb.ij, label %bb.in

bb.ij:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators15OperatorsReaderECs4phXRVW1pDQ_9dwarfdump.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6365.0.copyload) ]
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.6365.0.copyload, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ta)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i1311 unwind label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.tb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ta)
          to label %.body1307.thread1487 unwind label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.tc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i1311: ; preds = %bb.ij
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ta)
          to label %bb.is unwind label %bb.im

bb.im:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i1311
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %.body1307.thread1487

.body1307.thread1487:                             ; preds = %bb.ik, %bb.im
  %eh.lpad-body.i.i1310 = phi { ptr, i32 } [ %i.td, %bb.im ], [ %i.tb, %bb.ik ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6365.0.copyload, i64 noundef 56, i64 noundef 8) #23
  br label %.body1200

bb.in:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators15OperatorsReaderECs4phXRVW1pDQ_9dwarfdump.exit
  %.sroa.7368.sroa.0.0.copyload = load i64, ptr %.sroa.7368.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4371.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6363.0..sroa_idx, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7374.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7368.sroa.5.0..sroa.7368.0..sroa_idx.sroa_idx, i64 24, i1 false)
  store i16 %.sroa.0361.0.copyload, ptr %i.ac, align 8
  store ptr %.sroa.6365.0.copyload, ptr %.sroa.5372.0..sroa_idx, align 8
  store i64 %.sroa.7368.sroa.0.0.copyload, ptr %.sroa.6373.0..sroa_idx, align 8
  switch i16 %.sroa.0361.0.copyload, label %bb.iq [
    i16 45, label %bb.io
    i16 46, label %bb.ip
  ]

bb.io:                                            ; preds = %bb.in
  %i.te = load i32, ptr %i.cb, align 4, !noundef !5
  %i.tf = sext i32 %i.te to i64
  br label %bb.iq

bb.ip:                                            ; preds = %bb.in
  %i.tg = ptrtoint ptr %.sroa.6365.0.copyload to i64
  br label %bb.iq

bb.iq:                                            ; preds = %bb.in, %bb.ip, %bb.io
  %.sroa.5336.1 = phi i64 [ %i.tg, %bb.ip ], [ %i.tf, %bb.io ], [ undef, %bb.in ]
  %.sroa.0335.1 = phi i64 [ 1, %bb.ip ], [ 1, %bb.io ], [ 0, %bb.in ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators8OperatorECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ac)
          to label %bb.ir unwind label %.body1307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ic

bb.is:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i1311
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6365.0.copyload, i64 noundef 56, i64 noundef 8) #23
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @19, ptr %i.th, align 8
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 32, ptr %i.ti, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.it

bb.it:                                            ; preds = %bb.iv, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.go

.body1307.thread:                                 ; preds = %bb.ih, %.body1307.thread1490
  %eh.lpad-body13081486 = phi { ptr, i32 } [ %i.sy, %.body1307.thread1490 ], [ %i.sw, %bb.ih ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core9operators8OperatorNtNtB15_13binary_reader17BinaryReaderErrorEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae) #25
          to label %.body1200 unwind label %bb.eu

bb.iu:                                            ; preds = %bb.ic, %bb.id
  %i.tj = load ptr, ptr %i.bm, align 8, !alias.scope !324, !nonnull !5, !noundef !5
  %i.tk = getelementptr inbounds nuw [16 x i8], ptr %i.tj, i64 %i.ss ; 2 uses
  store i64 %.sroa.0335.0, ptr %i.tk, align 8
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  store i64 %.sroa.5336.0, ptr %i.tl, align 8
  %i.tm = add i64 %i.ss, 1
  store i64 %i.tm, ptr %i.bn, align 8, !alias.scope !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.hr

bb.iv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i1302
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0296.0.copyload, i64 noundef 56, i64 noundef 8) #23
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @20, ptr %i.tn, align 8
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 27, ptr %i.to, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.it

bb.iw:                                            ; preds = %bb.gm
  %i.tp = extractvalue { ptr, i64 } %i.qu, 1
  %i.tq = add i64 %.sroa.3.i.sroa.12.0.copyload, %.sroa.3.i.sroa.9.0.copyload ; 2 uses
  %i.tr = sub i64 %i.tq, %i.tp
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.ts = load i64, ptr %i.bv, align 8, !alias.scope !325, !noundef !5 ; 5 uses
  %i.tt = icmp ult i64 %i.ts, 230584300921369396
  call void @llvm.assume(i1 %i.tt)
  %i.tu = load ptr, ptr %i.be, align 8, !alias.scope !325, !nonnull !5, !noundef !5 ; 2 uses
  store i64 1, ptr %i.tu, align 8, !noalias !326
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  store i64 %i.ts, ptr %i.tv, align 8, !noalias !326
  %i.tw = load i64, ptr %i.as, align 8, !range !7, !alias.scope !327, !noundef !5
  %i.tx = icmp eq i64 %i.ts, %i.tw
  br i1 %i.tx, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9Jn0q30Ea0B_6object4read4wasm13SectionHeaderE8grow_oneCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.as) #28
          to label %bb.iy unwind label %.body1307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.iy:                                            ; preds = %bb.iw, %bb.ix
  %i.ty = load ptr, ptr %i.bw, align 8, !alias.scope !327, !nonnull !5, !noundef !5
  %i.tz = getelementptr inbounds nuw [40 x i8], ptr %i.ty, i64 %i.ts ; 5 uses
  store i64 0, ptr %i.tz, align 8, !noalias !328
  %.sroa.4.0..sroa_idx.i1316 = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
end_hunk_1
