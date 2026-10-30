Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/wasm_bindgen_shared-cc411fa93b7a7d93.wasm_bindgen_shared.b2b6210c8e09629b-cgu.0?download=true
inline.NumInlined: 460
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCsflha3QUX5Q5_19wasm_bindgen_shared16struct_field_get:bb.a
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCsflha3QUX5Q5_19wasm_bindgen_shared16struct_field_set(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !197
  %i.g = tail call dereferenceable_or_null(10) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 range(i64 0, -9223372036854775807) 10, i64 1) #32, !noalias !197 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 1, i64 10) #33, !noalias !197
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.k, %bb.j, %bb.d
  %.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.u, %bb.j ], [ %i.u, %bb.k ]
  %i.i = load i64, ptr %i.f, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit
  %i.k = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.k, i64 %i.i, i64 1) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.d:                                             ; preds = %bb.h, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, %bb.f, %.noexc, %bb.e, %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(10) @9, i64 10, i1 false), !noalias !197
  store i64 10, ptr %i.f, align 8, !alias.scope !197
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !197
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  store i64 10, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !197
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store i64 0, ptr %i.e, align 8
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr %1, ptr %.sroa.3.0..sroa_idx.i2, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters7flatten7FlatMapNtNtNtB8_3str4iter5CharsNtNtB8_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared16struct_field_set0ENtB2_12IntoIterator9into_iterB2b_(ptr nonnull sret([96 x i8]) align 8 %i.c, ptr nonnull align 8 %i.e)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.e
  invoke void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapNtNtNtBb_3str4iter5CharsNtNtBb_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared16struct_field_set0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
          to label %.noexc3 unwind label %bb.d

.noexc3:                                          ; preds = %.noexc
  %i.n = load i64, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, label %bb.f

bb.f:                                             ; preds = %.noexc3
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.f, i64 10, i64 %i.n, i64 1, i64 1)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i unwind label %bb.d

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i: ; preds = %bb.f, %.noexc3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  invoke void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapNtNtNtBc_3str4iter5CharsNtNtBc_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared16struct_field_set0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB3z_6StringINtNtB2N_7collect6ExtendcE6extendB3_E0EB1Q_(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.f)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.o = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8 ; 4 uses
  %i.p = load i64, ptr %i.f, align 8
  %i.q = icmp eq i64 %i.p, %i.o
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.f, i64 %i.o, i64 1, i64 1, i64 1)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.r = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  store i8 95, ptr %i.s, align 1
  %i.t = add i64 %i.o, 1
  store i64 %i.t, ptr %.sroa.3.0..sroa_idx.i, align 8
  invoke fastcc void @_RNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix(ptr noalias align 8 %i.d, ptr %3, i64 %4)
          to label %bb.l unwind label %bb.d

bb.j:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load i64, ptr %i.d, align 8              ; 2 uses
  %.off.i = add i64 %i.v, -1
  %switch.i = icmp ult i64 %.off.i, -2
  br i1 %switch.i, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.k:                                             ; preds = %bb.j
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %.val.pn.i, i64 %i.v, i64 1) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.l:                                             ; preds = %bb.i
  %.val1.pn.in.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.pn.i = load i64, ptr %.val1.pn.in.i, align 8 ; 5 uses
  %.val.pn.in.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.pn.i = load ptr, ptr %.val.pn.in.i, align 8 ; 3 uses
  %i.w = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8 ; 4 uses
  %i.x = load i64, ptr %i.f, align 8
  %i.y = sub i64 %i.x, %i.w
  %i.z = icmp ugt i64 %.val1.pn.i, %i.y
  br i1 %i.z, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread.i.i: ; preds = %bb.l
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.f, i64 %i.w, i64 %.val1.pn.i, i64 1, i64 1)
          to label %.noexc8 unwind label %bb.j

.noexc8:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread.i.i
  %.pre.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8
  br label %bb.m

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i: ; preds = %bb.l
  %.not.i.i = icmp eq i64 %.val1.pn.i, 0
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i, %.noexc8
  %i.aa = phi i64 [ %.pre.i.i, %.noexc8 ], [ %i.w, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i ]
  %i.ab = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr readonly align 1 %.val.pn.i, i64 %.val1.pn.i, i1 false)
  %.pre2.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i
  %i.ad = phi i64 [ %.pre2.i.i, %bb.m ], [ %i.w, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i ]
  %i.ae = add i64 %i.ad, %.val1.pn.i
  store i64 %i.ae, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.af = load i64, ptr %i.d, align 8             ; 2 uses
  %.off.i9 = add i64 %i.af, -1
  %switch.i10 = icmp ult i64 %.off.i9, -2
  br i1 %switch.i10, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit11

bb.o:                                             ; preds = %bb.n
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %.val.pn.i, i64 %i.af, i64 1) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit11

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit11: ; preds = %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsflha3QUX5Q5_19wasm_bindgen_shared.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.c = icmp samesign eq i64 %2, 0
  %.not.not.i.i.i.i38 = icmp eq ptr %1, null
  %or.cond2539 = or i1 %i.c, %.not.not.i.i.i.i38
  br i1 %or.cond2539, label %._crit_edge, label %.lr.ph

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %.not.i.i.i = icmp slt i64 %2, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvXs7_NtNtCs4NRVxsYgnAr_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0EB1A_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !200
  %i.p = tail call ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 range(i64 0, -9223372036854775807) %2, i64 1) #32, !noalias !200 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %_RINvXs7_NtNtCs4NRVxsYgnAr_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0EB1A_.exit
  %.sroa.2.0.ph.i.i = phi i64 [ 1, %bb.c ], [ 0, %_RINvXs7_NtNtCs4NRVxsYgnAr_4core3str4iterNtB6_5BytesNtNtNtNtBa_4iter6traits8iterator8Iterator3allNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0EB1A_.exit ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %.sroa.2.0.ph.i.i, i64 %2) #33, !noalias !200
  unreachable

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.s, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.p

bb.e:                                             ; preds = %bb.ag, %bb.ae, %bb.v
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load i64, ptr %i.a, align 8              ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.w, i64 %i.u, i64 1) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.g:                                             ; preds = %bb.c
  store i64 %2, ptr %i.a, align 8, !alias.scope !200
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %i.p, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !200
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !200
  %i.x = icmp samesign eq i64 %2, 0
  br i1 %i.x, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i: ; preds = %bb.g, %.backedge
  %3 = phi ptr [ %4, %.backedge ], [ %i.p, %bb.g ] ; 4 uses
  %i.y = phi ptr [ %i.cw, %.backedge ], [ %i.p, %bb.g ] ; 3 uses
  %i.z = phi i64 [ %i.cx, %.backedge ], [ 0, %bb.g ] ; 14 uses
  %.sroa.017.026 = phi ptr [ %.sroa.017.1.ph, %.backedge ], [ %1, %bb.g ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 1 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.017.026, null
  br i1 %.not.i.i, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i
  %i.ab = load i8, ptr %.sroa.017.026, align 1    ; 5 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = and i8 %i.ab, 31
  %i.ae = zext nneg i8 %i.ad to i32               ; 3 uses
  %i.af = icmp eq ptr %i.aa, %i.b
  br i1 %i.af, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ag = zext nneg i8 %i.ab to i32
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 2 ; 3 uses
  %i.ai = load i8, ptr %i.aa, align 1
  %i.aj = shl nuw nsw i32 %i.ae, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32               ; 2 uses
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = icmp samesign ugt i8 %i.ab, -33
  br i1 %i.an, label %bb.l, label %bb.q

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i: ; preds = %bb.i
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @1) #32
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp eq ptr %i.ah, %i.b
  br i1 %i.ao, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 3 ; 3 uses
  %i.aq = load i8, ptr %i.ah, align 1
  %i.ar = shl nuw nsw i32 %i.al, 6
  %i.as = and i8 %i.aq, 63
  %i.at = zext nneg i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at            ; 2 uses
  %i.av = shl nuw nsw i32 %i.ae, 12
  %i.aw = or disjoint i32 %i.au, %i.av
  %i.ax = icmp samesign ugt i8 %i.ab, -17
  br i1 %i.ax, label %bb.n, label %bb.q

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i: ; preds = %bb.l
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @2) #32
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp eq ptr %i.ap, %i.b
  br i1 %i.ay, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit19.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 4
  %i.ba = load i8, ptr %i.ap, align 1
  %i.bb = shl nuw nsw i32 %i.ae, 18
  %i.bc = and i32 %i.bb, 1835008
  %i.bd = shl nuw nsw i32 %i.au, 6
  %i.be = and i8 %i.ba, 63
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf
  %i.bh = or disjoint i32 %i.bg, %i.bc
  br label %bb.q

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit19.thread.i.i: ; preds = %bb.n
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @3) #32
  unreachable

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i, %.backedge, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, %._crit_edge
  ret void

bb.q:                                             ; preds = %bb.k, %bb.m, %bb.o, %bb.j
  %.sroa.017.1.ph = phi ptr [ %i.ah, %bb.k ], [ %i.ap, %bb.m ], [ %i.az, %bb.o ], [ %i.aa, %bb.j ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i32 [ %i.am, %bb.k ], [ %i.aw, %bb.m ], [ %i.bh, %bb.o ], [ %i.ag, %bb.j ] ; 17 uses
  %i.bi = add nsw i32 %.sroa.0.0.i.i.ph, -48
  %.sroa.0.0.i = icmp ult i32 %i.bi, 10
  %i.bj = icmp samesign ugt i32 %.sroa.0.0.i.i.ph, 64
  %i.bk = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 91
  %.sroa.01.0.i = select i1 %i.bj, i1 %i.bk, i1 %.sroa.0.0.i
  %i.bl = icmp samesign ugt i32 %.sroa.0.0.i.i.ph, 96
  %i.bm = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 123
  %.sroa.02.0.i = select i1 %i.bl, i1 %i.bm, i1 %.sroa.01.0.i
  %i.bn = icmp eq i32 %.sroa.0.0.i.i.ph, 95
  %or.cond = or i1 %i.bn, %.sroa.02.0.i
  br i1 %or.cond, label %bb.r, label %bb.ac

bb.r:                                             ; preds = %bb.q
  %i.bo = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 128 ; 2 uses
  br i1 %i.bo, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 2048
  br i1 %i.bp, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 65536
  %..i = select i1 %i.bq, i64 3, i64 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i8 = phi i64 [ 2, %bb.s ], [ %..i, %bb.t ], [ 1, %bb.r ] ; 3 uses
  %i.br = load i64, ptr %i.a, align 8
  %i.bs = sub i64 %i.br, %i.z
  %i.bt = icmp ugt i64 %.sroa.0.0.i8, %i.bs
  br i1 %i.bt, label %bb.v, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.a, i64 %i.z, i64 %.sroa.0.0.i8, i64 1, i64 1)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i unwind label %bb.e

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i: ; preds = %bb.v, %bb.u
  %i.bu = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.z ; 10 uses
  br i1 %i.bo, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i
  %i.bw = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 2048
  %i.bx = trunc i32 %.sroa.0.0.i.i.ph to i8
  %i.by = and i8 %i.bx, 63
  %i.bz = or disjoint i8 %i.by, -128              ; 3 uses
  %i.ca = lshr i32 %.sroa.0.0.i.i.ph, 6
  %i.cb = trunc i32 %i.ca to i8                   ; 2 uses
  %i.cc = and i8 %i.cb, 63
  %i.cd = or disjoint i8 %i.cc, -128              ; 2 uses
  %i.ce = lshr i32 %.sroa.0.0.i.i.ph, 12
  %i.cf = trunc i32 %i.ce to i8                   ; 2 uses
  %i.cg = and i8 %i.cf, 63
  %i.ch = or disjoint i8 %i.cg, -128
  %i.ci = lshr i32 %.sroa.0.0.i.i.ph, 18
  %i.cj = trunc nuw nsw i32 %i.ci to i8
  %i.ck = or i8 %i.cj, -16
  br i1 %i.bw, label %bb.y, label %bb.z

bb.x:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i
  %i.cl = trunc nuw nsw i32 %.sroa.0.0.i.i.ph to i8
  store i8 %i.cl, ptr %i.bv, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.y:                                             ; preds = %bb.w
  %i.cm = or disjoint i8 %i.cb, -64
  store i8 %i.cm, ptr %i.bv, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.bz, ptr %i.cn, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.z:                                             ; preds = %bb.w
  %i.co = icmp samesign ult i32 %.sroa.0.0.i.i.ph, 65536
  br i1 %i.co, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cp = or disjoint i8 %i.cf, -32
  store i8 %i.cp, ptr %i.bv, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.cd, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 %i.bz, ptr %i.cr, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.ab:                                            ; preds = %bb.z
  store i8 %i.ck, ptr %i.bv, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.ch, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 %i.cd, ptr %i.ct, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  store i8 %i.bz, ptr %i.cu, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.x, %bb.y, %bb.aa, %bb.ab
  %i.cv = add i64 %.sroa.0.0.i8, %i.z
  br label %.backedge.sink.split

bb.ac:                                            ; preds = %bb.q
  switch i32 %.sroa.0.0.i.i.ph, label %bb.ad [
    i32 46, label %bb.af
    i32 91, label %.backedge
    i32 93, label %.backedge
  ]

.backedge.sink.split:                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit
  %.sink = phi i64 [ %i.cv, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit ], [ %i.dc, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12 ], [ %i.dh, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16 ] ; 2 uses
  %.ph = phi ptr [ %i.bu, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit ], [ %5, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12 ], [ %6, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16 ]
  %.ph.a = phi ptr [ %i.bu, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit ], [ %5, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12 ], [ %i.df, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16 ]
  store i64 %.sink, ptr %.sroa.3.0..sroa_idx.i, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.ac, %bb.ac
  %4 = phi ptr [ %3, %bb.ac ], [ %3, %bb.ac ], [ %.ph, %.backedge.sink.split ]
  %i.cw = phi ptr [ %i.y, %bb.ac ], [ %i.y, %bb.ac ], [ %.ph.a, %.backedge.sink.split ]
  %i.cx = phi i64 [ %i.z, %bb.ac ], [ %i.z, %bb.ac ], [ %.sink, %.backedge.sink.split ]
  %i.cy = icmp eq ptr %.sroa.017.1.ph, %i.b
  br i1 %i.cy, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cz = load i64, ptr %i.a, align 8
  %i.da = icmp eq i64 %i.cz, %i.z
  br i1 %i.da, label %bb.ae, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.a, i64 %i.z, i64 1, i64 1, i64 1)
          to label %._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12_crit_edge unwind label %bb.e

._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12_crit_edge: ; preds = %bb.ae
  %.pre27 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12: ; preds = %._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12_crit_edge, %bb.ad
  %5 = phi ptr [ %.pre27, %._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit12_crit_edge ], [ %3, %bb.ad ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 %i.z
  store i8 95, ptr %i.db, align 1
  %i.dc = add i64 %i.z, 1
  br label %.backedge.sink.split

bb.af:                                            ; preds = %bb.ac
  %i.dd = load i64, ptr %i.a, align 8
  %i.de = icmp eq i64 %i.dd, %i.z
  br i1 %i.de, label %bb.ag, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16

bb.ag:                                            ; preds = %bb.af
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.a, i64 %i.z, i64 1, i64 1, i64 1)
          to label %._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16_crit_edge unwind label %bb.e

._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16_crit_edge: ; preds = %bb.ag
  %.pre = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16: ; preds = %._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16_crit_edge, %bb.af
  %6 = phi ptr [ %.pre, %._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16_crit_edge ], [ %3, %bb.af ]
  %i.df = phi ptr [ %.pre, %._RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCsflha3QUX5Q5_19wasm_bindgen_shared.exit16_crit_edge ], [ %i.y, %bb.af ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.z
  store i8 95, ptr %i.dg, align 1
  %i.dh = add i64 %i.z, 1
  br label %.backedge.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCsflha3QUX5Q5_19wasm_bindgen_shared21dynamic_union_variant(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, i32 %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !205
  %i.g = tail call dereferenceable_or_null(20) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 range(i64 0, -9223372036854775807) 20, i64 1) #32, !noalias !205 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 1, i64 20) #33, !noalias !205
  unreachable

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit11, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit11 ]
  %i.i = load i64, ptr %i.f, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.k, i64 %i.i, i64 1) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.e:                                             ; preds = %bb.m, %bb.j, %bb.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, %bb.g, %.noexc, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(20) @10, i64 20, i1 false), !noalias !205
  store i64 20, ptr %i.f, align 8, !alias.scope !205
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !205
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  store i64 20, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !205
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store i64 0, ptr %i.e, align 8
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr %1, ptr %.sroa.3.0..sroa_idx.i3, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters7flatten7FlatMapNtNtNtB8_3str4iter5CharsNtNtB8_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared21dynamic_union_variant0ENtB2_12IntoIterator9into_iterB2b_(ptr nonnull sret([96 x i8]) align 8 %i.d, ptr nonnull align 8 %i.e)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.f
  invoke void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapNtNtNtBb_3str4iter5CharsNtNtBb_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared21dynamic_union_variant0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.d)
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %.noexc
  %i.n = load i64, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, label %bb.g

bb.g:                                             ; preds = %.noexc4
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.f, i64 20, i64 %i.n, i64 1, i64 1)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i unwind label %bb.e

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i: ; preds = %bb.g, %.noexc4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  invoke void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapNtNtNtBc_3str4iter5CharsNtNtBc_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared21dynamic_union_variant0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB3E_6StringINtNtB2S_7collect6ExtendcE6extendB3_E0EB1Q_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.o = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8 ; 4 uses
  %i.p = load i64, ptr %i.f, align 8
  %i.q = icmp eq i64 %i.p, %i.o
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.f, i64 %i.o, i64 1, i64 1, i64 1)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.r = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  store i8 95, ptr %i.s, align 1
  %i.t = add i64 %i.o, 1
  store i64 %i.t, ptr %.sroa.3.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = invoke { ptr, i64 } @_RNvMsa_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impm4__fmt(i32 %3, ptr nonnull %i.a, i64 10)
          to label %.noexc9 unwind label %bb.e    ; 2 uses

.noexc9:                                          ; preds = %bb.j
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1        ; 11 uses
  %.not.i.i.i.i.i = icmp slt i64 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc9
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.thread28, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !206
  %i.y = call ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 range(i64 0, -9223372036854775807) %i.w, i64 1) #32, !noalias !206 ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %.noexc9
  %.sroa.2.0.ph.i.i.i.i = phi i64 [ 1, %bb.l ], [ 0, %.noexc9 ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %.sroa.2.0.ph.i.i.i.i, i64 %i.w) #33
          to label %.noexc10 unwind label %bb.e

.noexc10:                                         ; preds = %bb.m
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit11: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.y, i64 %i.w, i64 1) #32
  br label %bb.c

.thread28:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit13

.thread:                                          ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr readonly align 1 %i.v, i64 %i.w, i1 false), !noalias !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8 ; 3 uses
  %i.ac = load i64, ptr %i.f, align 8
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = icmp ugt i64 %i.w, %i.ad
  br i1 %i.ae, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread.i.i, label %bb.n

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread.i.i: ; preds = %.thread
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.f, i64 %i.ab, i64 %i.w, i64 1, i64 1)
          to label %.noexc12 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit11

.noexc12:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread.i.i
  %.pre.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8
  br label %bb.n

bb.n:                                             ; preds = %.thread, %.noexc12
  %i.af = phi i64 [ %.pre.i.i, %.noexc12 ], [ %i.ab, %.thread ]
  %i.ag = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull readonly align 1 %i.y, i64 %i.w, i1 false)
  %.pre2.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.ai = add i64 %.pre2.i.i, %i.w
  store i64 %i.ai, ptr %.sroa.3.0..sroa_idx.i, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.y, i64 %i.w, i64 1) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit13

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit13: ; preds = %.thread28, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCsflha3QUX5Q5_19wasm_bindgen_shared25free_function_export_name(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call fastcc void @_RNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix(ptr noalias align 8 %i.a, ptr %1, i64 %2)
  %i.b = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i64 %i.b, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %_RNvMs1_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweE10into_ownedCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %.not.i.i.i.i.i = icmp slt i64 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsflha3QUX5Q5_19wasm_bindgen_shared:bb.a
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  store i64 %1, ptr %i.m, align 8
  store ptr %.pn10, ptr %i.n, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsflha3QUX5Q5_19wasm_bindgen_shared(i64 %0, i64 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %0) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 4 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %1
  %.not.i = icmp ugt i64 %i.b, %i.d
  %or.cond.i = select i1 %i.c, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %1 to ptr
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.g = tail call ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 range(i64 0, -9223372036854775807) %i.b, i64 %1) #32 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sroa.2.0.ph = phi i64 [ %1, %bb.d ], [ 0, %bb.a ]
  %.sroa.8.0.ph = phi i64 [ %i.b, %bb.d ], [ undef, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %.sroa.2.0.ph, i64 %.sroa.8.0.ph) #33
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.d, %bb.c
  %.sroa.2.0 = phi i64 [ 0, %bb.c ], [ %0, %bb.d ]
  %.sroa.8.0 = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.2.0, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.8.0, 1
  ret { i64, ptr } %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define i32 @_RNvMs6_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitcEE9next_backCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nofree align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %0, i64 %i.b, i64 %2, i64 1, i64 1)
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit
  %i.f = phi i64 [ %.pre2, %bb.c ], [ %i.b, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit ]
  %i.g = add i64 %i.f, %2
  store i64 %i.g, ptr %i.a, align 8
  ret void

bb.c:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit
  %i.h = phi i64 [ %.pre, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread ], [ %i.b, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %2, i1 false)
  %.pre2 = load i64, ptr %i.a, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 1, i64 1)
  br label %bb.b
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvNtCs4NRVxsYgnAr_4core10intrinsics9cold_pathCsflha3QUX5Q5_19wasm_bindgen_shared() unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i, %bb.a
  %.idx = phi i64 [ 0, %bb.a ], [ %.add, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i ] ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @59, i64 %.idx ; 2 uses
  %.add = add nuw nsw i64 %.idx, 16               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.ptr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, %1
  br i1 %i.c, label %.split.i.i.i, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %bb.b
  %i.d = load ptr, ptr %.ptr, align 8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %i.d, ptr readonly %0, i64 %1)
  %i.e = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.e, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe8containsCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i

_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %bb.b
  %.not4.i.i.i = icmp eq i64 %.add, 752
  br i1 %.not4.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe8containsCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.b

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe8containsCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %.split.i.i.i, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i
  %.lcssa.i.i.i = phi i1 [ false, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i ], [ true, %.split.i.i.i ]
  ret i1 %.lcssa.i.i.i
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14is_id_continue(i32 %0) unnamed_addr #8 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 890, label %bb.c
    i32 12443, label %bb.c
    i32 12444, label %bb.c
    i32 64606, label %bb.c
    i32 64607, label %bb.c
    i32 64608, label %bb.c
    i32 64609, label %bb.c
    i32 64610, label %bb.c
    i32 64611, label %bb.c
    i32 65018, label %bb.c
    i32 65019, label %bb.c
    i32 65136, label %bb.c
    i32 65138, label %bb.c
    i32 65140, label %bb.c
    i32 65142, label %bb.c
    i32 65144, label %bb.c
    i32 65146, label %bb.c
    i32 65148, label %bb.c
    i32 65150, label %bb.c
    i32 36, label %bb.c
    i32 8204, label %bb.c
    i32 8205, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @_RNvCs1dwOdj1368s_13unicode_ident15is_xid_continue(i32 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14is_valid_ident(ptr %0, i64 %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call fastcc void @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_chars(ptr noalias align 8 %i.a, ptr %0, i64 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8
  %cond = icmp eq i32 %i.c, -1
  br i1 %cond, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBa_7sources4once4OnceINtNtBc_6option6OptioncEEINtNtB8_3map3MapNtNtNtBc_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENtNtNtBa_6traits8iterator8Iterator3allNCNvB2u_14is_valid_ident0EB2w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not6.i.i = icmp eq ptr %i.d, null
  br i1 %.not6.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBa_7sources4once4OnceINtNtBc_6option6OptioncEEINtNtB8_3map3MapNtNtNtBc_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENtNtNtBa_6traits8iterator8Iterator3allNCNvB2u_14is_valid_ident0EB2w_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBa_7sources4once4OnceINtNtBc_6option6OptioncEEINtNtB8_3map3MapNtNtNtBc_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENtNtNtBa_6traits8iterator8Iterator3allNCNvB2u_14is_valid_ident0EB2w_.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.preheader

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.preheader: ; preds = %bb.c, %thread-pre-split
  %i.h = phi ptr [ %.pr2, %thread-pre-split ], [ %i.d, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  %i.j = load i8, ptr %i.h, align 1               ; 5 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.preheader
  %i.l = and i8 %i.j, 31
  %i.m = zext nneg i8 %i.l to i32                 ; 3 uses
  %i.n = icmp eq ptr %i.i, %i.f
  br i1 %i.n, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i.i, label %bb.f

bb.e:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.preheader
  %i.o = zext nneg i8 %i.j to i32
  br label %thread-pre-split

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 3 uses
  %i.q = load i8, ptr %i.i, align 1
  %i.r = shl nuw nsw i32 %i.m, 6
  %i.s = and i8 %i.q, 63
  %i.t = zext nneg i8 %i.s to i32                 ; 2 uses
  %i.u = or disjoint i32 %i.r, %i.t
  %i.v = icmp samesign ugt i8 %i.j, -33
  br i1 %i.v, label %bb.g, label %thread-pre-split

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i.i: ; preds = %bb.d
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @1) #32
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.w = icmp eq ptr %i.p, %i.f
  br i1 %i.w, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 3 ; 3 uses
  %i.y = load i8, ptr %i.p, align 1
  %i.z = shl nuw nsw i32 %i.t, 6
  %i.aa = and i8 %i.y, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab             ; 2 uses
  %i.ad = shl nuw nsw i32 %i.m, 12
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = icmp samesign ugt i8 %i.j, -17
  br i1 %i.af, label %bb.i, label %thread-pre-split

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i.i: ; preds = %bb.g
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @2) #32
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp eq ptr %i.x, %i.f
  br i1 %i.ag, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit19.thread.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ai = load i8, ptr %i.x, align 1
  %i.aj = shl nuw nsw i32 %i.m, 18
  %i.ak = and i32 %i.aj, 1835008
  %i.al = shl nuw nsw i32 %i.ac, 6
  %i.am = and i8 %i.ai, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = or disjoint i32 %i.ao, %i.ak
  br label %thread-pre-split

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit19.thread.i.i.i: ; preds = %bb.i
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @3) #32
  unreachable

thread-pre-split:                                 ; preds = %bb.j, %bb.h, %bb.f, %bb.e
  %.pr2 = phi ptr [ %i.p, %bb.f ], [ %i.x, %bb.h ], [ %i.ah, %bb.j ], [ %i.i, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i.ph.i = phi i32 [ %i.u, %bb.f ], [ %i.ae, %bb.h ], [ %i.ap, %bb.j ], [ %i.o, %bb.e ]
  %i.aq = tail call zeroext i1 @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14is_id_continue(i32 %.sroa.0.0.i.i.ph.i) ; 2 uses
  %i.ar = icmp ne ptr %.pr2, %i.f
  %or.cond.not = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond.not, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.preheader, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBa_7sources4once4OnceINtNtBc_6option6OptioncEEINtNtB8_3map3MapNtNtNtBc_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENtNtNtBa_6traits8iterator8Iterator3allNCNvB2u_14is_valid_ident0EB2w_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBa_7sources4once4OnceINtNtBc_6option6OptioncEEINtNtB8_3map3MapNtNtNtBc_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENtNtNtBa_6traits8iterator8Iterator3allNCNvB2u_14is_valid_ident0EB2w_.exit: ; preds = %thread-pre-split, %bb.a, %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ %i.aq, %thread-pre-split ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call fastcc void @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_chars(ptr noalias align 8 %i.c, ptr %1, i64 %2)
  call void @_RINvXs5_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBR_8adapters3map3MapINtNtB21_5chain5ChainINtNtNtBR_7sources4once4OnceINtNtBT_6option6OptioncEEIB1X_NtNtNtBT_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENCNvB46_14to_valid_ident0EEB48_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull readonly align 8 %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.val3 = load ptr, ptr %i.e, align 8            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val4 = load i64, ptr %i.f, align 8            ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit.thread
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i64, ptr %i.d, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.j, i64 %i.h, i64 1) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.d:                                             ; preds = %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i.i, %bb.a
  %.idx.i = phi i64 [ 0, %bb.a ], [ %.add.i, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i.i ] ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr @59, i64 %.idx.i ; 2 uses
  %.add.i = add nuw nsw i64 %.idx.i, 16           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.l, %.val4
  br i1 %i.m, label %.split.i.i.i.i, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.d
  %i.n = load ptr, ptr %.ptr.i, align 8
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %i.n, ptr readonly %.val3, i64 %.val4)
  %i.o = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.o, label %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit.thread, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i.i

_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i.i, %bb.d
  %.not4.i.i.i.i = icmp eq i64 %.add.i, 752
  br i1 %.not4.i.i.i.i, label %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit, label %bb.d

_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit: ; preds = %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i.i
  %i.p = tail call zeroext i1 @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier23is_non_value_js_keyword(ptr %.val3, i64 %.val4)
  br i1 %i.p, label %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit6

_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit.thread: ; preds = %.split.i.i.i.i, %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsflha3QUX5Q5_19wasm_bindgen_shared, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull @60, ptr nonnull %i.a)
          to label %.critedge unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit6: ; preds = %bb.f, %.critedge, %bb.e
  ret void

.critedge:                                        ; preds = %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.q = load i64, ptr %i.d, align 8              ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit6, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.s = load ptr, ptr %i.e, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.s, i64 %i.q, i64 1) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_chars(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign eq i64 %2, 0
  br i1 %i.a, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i
  %i.c = load i8, ptr %1, align 1                 ; 5 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i8 %i.c, 31
  %i.f = zext nneg i8 %i.e to i32                 ; 3 uses
  %i.g = icmp samesign eq i64 %2, 1
  br i1 %i.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = zext nneg i8 %i.c to i32
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.j = load i8, ptr %i.b, align 1
  %i.k = shl nuw nsw i32 %i.f, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.c, -33
  br i1 %i.o, label %bb.f, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i: ; preds = %bb.c
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @1) #32
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = icmp samesign eq i64 %2, 2
  br i1 %i.p, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.r = load i8, ptr %i.i, align 1
  %i.s = shl nuw nsw i32 %i.m, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = shl nuw nsw i32 %i.f, 12
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = icmp samesign ugt i8 %i.c, -17
  br i1 %i.y, label %bb.h, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i: ; preds = %bb.f
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @2) #32
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.z = icmp samesign eq i64 %2, 3
  br i1 %i.z, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit19.thread.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.q, align 1
  %i.ac = shl nuw nsw i32 %i.f, 18
  %i.ad = and i32 %i.ac, 1835008
  %i.ae = shl nuw nsw i32 %i.v, 6
  %i.af = and i8 %i.ab, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ad
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit19.thread.i.i: ; preds = %bb.h
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @3) #32
  unreachable

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.a, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i, %bb.d, %bb.e, %bb.g, %bb.i
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.b, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i ], [ %i.b, %bb.d ], [ %i.aa, %bb.i ], [ %i.q, %bb.g ], [ %i.i, %bb.e ]
  %.sroa.0.0.i.i = phi i32 [ -1, %bb.a ], [ -1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i ], [ %i.h, %bb.d ], [ %i.ai, %bb.i ], [ %i.x, %bb.g ], [ %i.n, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ak = tail call i32 @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6filterNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_chars0EBX_(i32 %.sroa.0.0.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ak, ptr %i.al, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.am, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier23is_non_value_js_keyword(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i, %bb.a
  %.idx = phi i64 [ 0, %bb.a ], [ %.add, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i ] ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @59, i64 %.idx ; 2 uses
  %.add = add nuw nsw i64 %.idx, 16               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.ptr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, %1
  br i1 %i.c, label %.split.i.i.i, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %bb.b
  %i.d = load ptr, ptr %.ptr, align 8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %i.d, ptr readonly %0, i64 %1)
  %i.e = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.e, label %.preheader.preheader, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i

.preheader.preheader:                             ; preds = %.split.i.i.i
  switch i64 %1, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i1.6 [
    i64 4, label %.split.i.i.i4
    i64 5, label %.split.i.i.i4.1
end_hunk_1
