Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/wasm_bindgen_shared-cc411fa93b7a7d93.wasm_bindgen_shared.b2b6210c8e09629b-cgu.0?download=true
inline.NumInlined: 442
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCsflha3QUX5Q5_19wasm_bindgen_shared16struct_field_get:bb.a
  %.sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.8..i.i.i.i.i.i = load i64, ptr %.sroa.2.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.8..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, label %bb.p

bb.p:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i
  %.sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i.i.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i.i.i, align 8 ; 2 uses
  %i.ae = icmp eq i64 %.sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i.i.i.i.i.i, 0
  br i1 %i.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %.sroa.0.0.i.i.i.i.i.i, i64 %.sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i.i.i.i.i.i, i64 %.sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.8..i.i.i.i.i.i) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit.i: ; preds = %bb.q, %bb.p, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCsflha3QUX5Q5_19wasm_bindgen_shared16struct_field_set(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.2.i.i.i.i.i.i = alloca i64, align 8      ; 5 uses
  %.sroa.6.i.i.i.i.i.i = alloca i64, align 8      ; 4 uses
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !195
  %i.g = tail call dereferenceable_or_null(10) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 range(i64 0, -9223372036854775807) 10, i64 1) #32, !noalias !195 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 1, i64 10) #33, !noalias !195
  unreachable

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.r, %bb.j ]
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.f) #34
  resume { ptr, i32 } %.pn

bb.d:                                             ; preds = %bb.h, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, %bb.f, %.noexc, %bb.e, %bb.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(10) @9, i64 10, i1 false), !noalias !195
  store i64 10, ptr %i.f, align 8, !alias.scope !195
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !195
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  store i64 10, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !195
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store i64 0, ptr %i.e, align 8
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr %1, ptr %.sroa.3.0..sroa_idx.i2, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters7flatten7FlatMapNtNtNtB8_3str4iter5CharsNtNtB8_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared16struct_field_set0ENtB2_12IntoIterator9into_iterB2b_(ptr nonnull sret([96 x i8]) align 8 %i.c, ptr nonnull align 8 %i.e)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.e
  invoke void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapNtNtNtBb_3str4iter5CharsNtNtBb_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared16struct_field_set0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
          to label %.noexc3 unwind label %bb.d

.noexc3:                                          ; preds = %.noexc
  %i.k = load i64, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, label %bb.f

bb.f:                                             ; preds = %.noexc3
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.f, i64 10, i64 %i.k, i64 1, i64 1)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i unwind label %bb.d

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i: ; preds = %bb.f, %.noexc3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  invoke void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapNtNtNtBc_3str4iter5CharsNtNtBc_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared16struct_field_set0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB3z_6StringINtNtB2N_7collect6ExtendcE6extendB3_E0EB1Q_(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.f)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8 ; 4 uses
  %i.m = load i64, ptr %i.f, align 8
  %i.n = icmp eq i64 %i.m, %i.l
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.f, i64 %i.l, i64 1, i64 1, i64 1)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.o = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 95, ptr %i.p, align 1
  %i.q = add i64 %i.l, 1
  store i64 %i.q, ptr %.sroa.3.0..sroa_idx.i, align 8
  invoke fastcc void @_RNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix(ptr noalias align 8 %i.d, ptr %3, i64 %4)
          to label %bb.k unwind label %bb.d

bb.j:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.d) #34
  br label %bb.c

bb.k:                                             ; preds = %bb.i
  %.val1.pn.in.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.pn.i = load i64, ptr %.val1.pn.in.i, align 8 ; 5 uses
  %.val.pn.in.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.pn.i = load ptr, ptr %.val.pn.in.i, align 8 ; 2 uses
  %i.s = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8 ; 4 uses
  %i.t = load i64, ptr %i.f, align 8
  %i.u = sub i64 %i.t, %i.s
  %i.v = icmp ugt i64 %.val1.pn.i, %i.u
  br i1 %i.v, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread.i.i: ; preds = %bb.k
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.f, i64 %i.s, i64 %.val1.pn.i, i64 1, i64 1)
          to label %.noexc8 unwind label %bb.j

.noexc8:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread.i.i
  %.pre.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8
  br label %bb.l

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i: ; preds = %bb.k
  %.not.i.i = icmp eq i64 %.val1.pn.i, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i, %.noexc8
  %i.w = phi i64 [ %.pre.i.i, %.noexc8 ], [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i ]
  %i.x = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr readonly align 1 %.val.pn.i, i64 %.val1.pn.i, i1 false)
  %.pre2.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i
  %i.z = phi i64 [ %.pre2.i.i, %bb.l ], [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i ]
  %i.aa = add i64 %i.z, %.val1.pn.i
  store i64 %i.aa, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.ab = load i64, ptr %i.d, align 8             ; 3 uses
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 1, ptr %.sroa.2.i.i.i.i.i.i, align 8
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.val.pn.i, %bb.o ], [ undef, %bb.n ]
  %.sink3.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i.i.i, %bb.o ], [ %.sroa.2.i.i.i.i.i.i, %bb.n ]
  store i64 %i.ab, ptr %.sink3.i.sroa.phi.i.i.i.i.i.i, align 8
  %.sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.8..i.i.i.i.i.i = load i64, ptr %.sroa.2.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.8..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, label %bb.p

bb.p:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i
  %.sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i.i.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i.i.i, align 8 ; 2 uses
  %i.ae = icmp eq i64 %.sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i.i.i.i.i.i, 0
  br i1 %i.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %.sroa.0.0.i.i.i.i.i.i, i64 %.sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i.i.i.i.i.i, i64 %.sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.8..i.i.i.i.i.i) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit.i: ; preds = %bb.q, %bb.p, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.c = icmp samesign eq i64 %2, 0
  %.not.not.i.i.i.i40 = icmp eq ptr %1, null
  %or.cond2541 = or i1 %i.c, %.not.not.i.i.i.i40
  br i1 %or.cond2541, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.g = load i8, ptr %i.f, align 1               ; 6 uses
  %i.h = icmp ugt i8 %i.g, 64
  %i.i = icmp ugt i8 %i.g, 96
  %i.j = icmp ugt i8 %i.g, 122
  %i.k = icmp ugt i8 %i.g, 90
  %i.l = add i8 %i.g, -58
  %i.m = icmp ult i8 %i.l, -10
  %i.n = select i1 %i.h, i1 %i.k, i1 %i.m
  %.sroa.02.0.i.i.not.i.i.i.i.i.i = select i1 %i.i, i1 %i.j, i1 %i.n
  %i.o = icmp ne i8 %i.g, 95
  %.sroa.0.0.i.not.i.i.i.i.i.i = and i1 %i.o, %.sroa.02.0.i.i.not.i.i.i.i.i.i
  br i1 %.sroa.0.0.i.not.i.i.i.i.i.i, label %_RINvXs7_NtNtCs4NRVxsYgnAr_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0EB1A_.exit, label %bb.b

_RINvXs7_NtNtCs4NRVxsYgnAr_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0EB1A_.exit: ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %.not.i.i.i = icmp slt i64 %2, 0
  br i1 %.not.i.i.i, label %bb.d, label %3

3:                                                ; preds = %_RINvXs7_NtNtCs4NRVxsYgnAr_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0EB1A_.exit
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %.thread, label %bb.c

.thread:                                          ; preds = %3
  store i64 %2, ptr %i.a, align 8, !alias.scope !198
  %.sroa.2.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.2.0..sroa_idx.i37, align 8, !alias.scope !198
  %.sroa.3.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i38, align 8, !alias.scope !198
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.c:                                             ; preds = %3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !198
  %i.p = tail call ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 range(i64 0, -9223372036854775807) %2, i64 1) #32, !noalias !198 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.preheader

bb.d:                                             ; preds = %bb.c, %_RINvXs7_NtNtCs4NRVxsYgnAr_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0EB1A_.exit
  %.sroa.2.0.ph.i.i = phi i64 [ 1, %bb.c ], [ 0, %_RINvXs7_NtNtCs4NRVxsYgnAr_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0EB1A_.exit ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %.sroa.2.0.ph.i.i, i64 %2) #33, !noalias !198
  unreachable

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.s, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.e:                                             ; preds = %bb.ae, %bb.ac, %bb.t
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.a) #34
  resume { ptr, i32 } %i.t

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.preheader: ; preds = %bb.c
  store i64 %2, ptr %i.a, align 8, !alias.scope !198
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.p, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !198
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !198
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.preheader, %.backedge
  %i.u = phi ptr [ %i.cs, %.backedge ], [ %i.p, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.preheader ] ; 3 uses
  %i.v = phi i64 [ %i.ct, %.backedge ], [ 0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.preheader ] ; 14 uses
  %.sroa.017.026 = phi ptr [ %.sroa.017.1.ph, %.backedge ], [ %1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.preheader ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 1 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.017.026, null
  br i1 %.not.i.i, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i
  %i.x = load i8, ptr %.sroa.017.026, align 1     ; 5 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = and i8 %i.x, 31
  %i.aa = zext nneg i8 %i.z to i32                ; 3 uses
  %i.ab = icmp eq ptr %i.w, %i.b
  br i1 %i.ab, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = zext nneg i8 %i.x to i32
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 2 ; 3 uses
  %i.ae = load i8, ptr %i.w, align 1
  %i.af = shl nuw nsw i32 %i.aa, 6
  %i.ag = and i8 %i.ae, 63
  %i.ah = zext nneg i8 %i.ag to i32               ; 2 uses
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = icmp samesign ugt i8 %i.x, -33
  br i1 %i.aj, label %bb.j, label %bb.o

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i: ; preds = %bb.g
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @1) #32
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp eq ptr %i.ad, %i.b
  br i1 %i.ak, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 3 ; 3 uses
  %i.am = load i8, ptr %i.ad, align 1
  %i.an = shl nuw nsw i32 %i.ah, 6
  %i.ao = and i8 %i.am, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap            ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aa, 12
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = icmp samesign ugt i8 %i.x, -17
  br i1 %i.at, label %bb.l, label %bb.o

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i: ; preds = %bb.j
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @2) #32
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.au = icmp eq ptr %i.al, %i.b
  br i1 %i.au, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit19.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 4
  %i.aw = load i8, ptr %i.al, align 1
  %i.ax = shl nuw nsw i32 %i.aa, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.aq, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.o

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit19.thread.i.i: ; preds = %bb.l
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @3) #32
  unreachable

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i, %.backedge, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, %._crit_edge
  ret void

bb.o:                                             ; preds = %bb.i, %bb.k, %bb.m, %bb.h
  %.sroa.017.1.ph = phi ptr [ %i.ad, %bb.i ], [ %i.al, %bb.k ], [ %i.av, %bb.m ], [ %i.w, %bb.h ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i32 [ %i.ai, %bb.i ], [ %i.as, %bb.k ], [ %i.bd, %bb.m ], [ %i.ac, %bb.h ] ; 17 uses
  %i.be = add nsw i32 %.sroa.0.0.i.i.ph, -48
  %.sroa.0.0.i = icmp ult i32 %i.be, 10
  %i.bf = icmp samesign ugt i32 %.sroa.0.0.i.i.ph, 64
  %i.bg = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 91
  %.sroa.01.0.i = select i1 %i.bf, i1 %i.bg, i1 %.sroa.0.0.i
  %i.bh = icmp samesign ugt i32 %.sroa.0.0.i.i.ph, 96
  %i.bi = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 123
  %.sroa.02.0.i = select i1 %i.bh, i1 %i.bi, i1 %.sroa.01.0.i
  %i.bj = icmp eq i32 %.sroa.0.0.i.i.ph, 95
  %or.cond = or i1 %i.bj, %.sroa.02.0.i
  br i1 %or.cond, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.bk = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 128 ; 2 uses
  br i1 %i.bk, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 2048
  br i1 %i.bl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 65536
  %..i = select i1 %i.bm, i64 3, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i8 = phi i64 [ 2, %bb.q ], [ %..i, %bb.r ], [ 1, %bb.p ] ; 3 uses
  %i.bn = load i64, ptr %i.a, align 8
  %i.bo = sub i64 %i.bn, %i.v
  %i.bp = icmp ugt i64 %.sroa.0.0.i8, %i.bo
  br i1 %i.bp, label %bb.t, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.a, i64 %i.v, i64 %.sroa.0.0.i8, i64 1, i64 1)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i unwind label %bb.e

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i: ; preds = %bb.t, %bb.s
  %i.bq = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.v ; 10 uses
  br i1 %i.bk, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i
  %i.bs = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 2048
  %i.bt = trunc i32 %.sroa.0.0.i.i.ph to i8
  %i.bu = and i8 %i.bt, 63
  %i.bv = or disjoint i8 %i.bu, -128              ; 3 uses
  %i.bw = lshr i32 %.sroa.0.0.i.i.ph, 6
  %i.bx = trunc i32 %i.bw to i8                   ; 2 uses
  %i.by = and i8 %i.bx, 63
  %i.bz = or disjoint i8 %i.by, -128              ; 2 uses
  %i.ca = lshr i32 %.sroa.0.0.i.i.ph, 12
  %i.cb = trunc i32 %i.ca to i8                   ; 2 uses
  %i.cc = and i8 %i.cb, 63
  %i.cd = or disjoint i8 %i.cc, -128
  %i.ce = lshr i32 %.sroa.0.0.i.i.ph, 18
  %i.cf = trunc nuw nsw i32 %i.ce to i8
  %i.cg = or i8 %i.cf, -16
  br i1 %i.bs, label %bb.w, label %bb.x

bb.v:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i
  %i.ch = trunc nuw nsw i32 %.sroa.0.0.i.i.ph to i8
  store i8 %i.ch, ptr %i.br, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.w:                                             ; preds = %bb.u
  %i.ci = or disjoint i8 %i.bx, -64
  store i8 %i.ci, ptr %i.br, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.bv, ptr %i.cj, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.x:                                             ; preds = %bb.u
  %i.ck = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 65536
  br i1 %i.ck, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cl = or disjoint i8 %i.cb, -32
  store i8 %i.cl, ptr %i.br, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.bz, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.bv, ptr %i.cn, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.z:                                             ; preds = %bb.x
  store i8 %i.cg, ptr %i.br, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.cd, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.bz, ptr %i.cp, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.br, i64 3
  store i8 %i.bv, ptr %i.cq, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.v, %bb.w, %bb.y, %bb.z
  %i.cr = add i64 %.sroa.0.0.i8, %i.v
  br label %.backedge.sink.split

bb.aa:                                            ; preds = %bb.o
  switch i32 %.sroa.0.0.i.i.ph, label %bb.ab [
    i32 46, label %bb.ad
    i32 91, label %.backedge
    i32 93, label %.backedge
  ]

.backedge.sink.split:                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit
  %.sink = phi i64 [ %i.cr, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit ], [ %i.cz, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12 ], [ %i.de, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16 ] ; 2 uses
  %.ph = phi ptr [ %i.bq, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit ], [ %i.cx, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12 ], [ %i.dc, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16 ]
  store i64 %.sink, ptr %.sroa.3.0..sroa_idx.i, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.aa, %bb.aa
  %i.cs = phi ptr [ %i.u, %bb.aa ], [ %i.u, %bb.aa ], [ %.ph, %.backedge.sink.split ]
  %i.ct = phi i64 [ %i.v, %bb.aa ], [ %i.v, %bb.aa ], [ %.sink, %.backedge.sink.split ]
  %i.cu = icmp eq ptr %.sroa.017.1.ph, %i.b
  br i1 %i.cu, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.cv = load i64, ptr %i.a, align 8
  %i.cw = icmp eq i64 %i.cv, %i.v
  br i1 %i.cw, label %bb.ac, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.a, i64 %i.v, i64 1, i64 1, i64 1)
          to label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12 unwind label %bb.e

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12: ; preds = %bb.ac, %bb.ab
  %i.cx = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.v
  store i8 95, ptr %i.cy, align 1
  %i.cz = add i64 %i.v, 1
  br label %.backedge.sink.split

bb.ad:                                            ; preds = %bb.aa
  %i.da = load i64, ptr %i.a, align 8
  %i.db = icmp eq i64 %i.da, %i.v
  br i1 %i.db, label %bb.ae, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.a, i64 %i.v, i64 1, i64 1, i64 1)
          to label %._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16_crit_edge unwind label %bb.e

._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16_crit_edge: ; preds = %bb.ae
  %.pre = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16: ; preds = %._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16_crit_edge, %bb.ad
  %i.dc = phi ptr [ %.pre, %._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16_crit_edge ], [ %i.u, %bb.ad ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.v
  store i8 95, ptr %i.dd, align 1
  %i.de = add i64 %i.v, 1
  br label %.backedge.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCsflha3QUX5Q5_19wasm_bindgen_shared21dynamic_union_variant(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, i32 %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.2.i.i.i.i.i = alloca i64, align 8        ; 6 uses
  %.sroa.6.i.i.i.i.i = alloca i64, align 8        ; 5 uses
  %i.a = alloca [10 x i8], align 1                ; 3 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [96 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !201
  %i.h = tail call dereferenceable_or_null(20) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 range(i64 0, -9223372036854775807) 20, i64 1) #32, !noalias !201 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 1, i64 20) #33, !noalias !201
  unreachable

bb.c:                                             ; preds = %bb.n, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.y, %bb.n ]
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.g) #34
  resume { ptr, i32 } %.pn

bb.d:                                             ; preds = %bb.l, %bb.i, %bb.h, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, %bb.f, %.noexc, %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(20) @10, i64 20, i1 false), !noalias !201
  store i64 20, ptr %i.g, align 8, !alias.scope !201
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.h, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !201
end_hunk_0
