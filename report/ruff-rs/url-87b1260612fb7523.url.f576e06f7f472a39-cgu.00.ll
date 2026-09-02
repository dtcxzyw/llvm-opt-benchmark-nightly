Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/url-87b1260612fb7523.url.f576e06f7f472a39-cgu.00?download=true
inline.NumInlined: 293
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url18restore_after_path:bb.a
  %i.g = trunc i64 %.sroa.02.0.insert.insert to i1
  br i1 %i.g, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtCsl4BgoAJVhPh_3url6parser10ParseErrorE6unwrapBM_.exit, !prof !57

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !600
  store i8 9, ptr %i.a, align 1, !noalias !600
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #15
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtCsl4BgoAJVhPh_3url6parser10ParseErrorE6unwrapBM_.exit: ; preds = %bb.a
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.02.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !range !127, !noundef !4
  %i.j = trunc nuw i32 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtCsl4BgoAJVhPh_3url6parser10ParseErrorE6unwrapBM_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = sub i32 %.sroa.6.0.extract.trunc.i, %1
  %i.n = add i32 %i.m, %i.l
  store i32 %i.n, ptr %i.k, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtCsl4BgoAJVhPh_3url6parser10ParseErrorE6unwrapBM_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !range !127, !noundef !4
  %i.q = trunc nuw i32 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !noundef !4
  %i.t = sub i32 %.sroa.6.0.extract.trunc.i, %1
  %i.u = add i32 %i.t, %i.s
  store i32 %i.u, ptr %i.r, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %3)
  %i.v = load i64, ptr %i.b, align 8, !alias.scope !603, !noundef !4 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !603, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %2, i64 %3, i1 false)
  %.pre.i = load i64, ptr %i.b, align 8, !alias.scope !603
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit: ; preds = %bb.f, %bb.g
  %i.aa = phi i64 [ %.pre.i, %bb.g ], [ %i.v, %bb.f ]
  %i.ab = add i64 %i.aa, %3
  store i64 %i.ab, ptr %i.b, align 8, !alias.scope !603
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url31restore_already_parsed_fragment(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !range !47, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsl4BgoAJVhPh_3url.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !range !127, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.h, label %bb.g, !prof !61

bb.c:                                             ; preds = %bb.n, %.noexc11
  %i.f = phi i64 [ %.pre.i, %bb.n ], [ %i.z, %.noexc11 ]
  %i.g = add i64 %i.f, %i.y
  store i64 %i.g, ptr %i.k, align 8, !alias.scope !606
  %.pr = load i64, ptr %1, align 8, !alias.scope !609
  %i.h = icmp eq i64 %.pr, -1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsl4BgoAJVhPh_3url.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl4BgoAJVhPh_3url.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.q, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl4BgoAJVhPh_3url.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsl4BgoAJVhPh_3url.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsl4BgoAJVhPh_3url.exit: ; preds = %bb.a, %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl4BgoAJVhPh_3url.exit.i
  ret void

bb.g:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #15
          to label %bb.k unwind label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 5 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %i.l, 4294967296
  %i.o = shl nuw i64 %i.l, 32
  %.sroa.04.0.insert.insert = select i1 %i.n, i64 %i.o, i64 2305 ; 2 uses
  %i.p = trunc i64 %.sroa.04.0.insert.insert to i1
  br i1 %i.p, label %bb.i, label %bb.l, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !612
  store i8 9, ptr %i.a, align 1, !noalias !612
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #15
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsl4BgoAJVhPh_3url(ptr noalias noundef align 8 dereferenceable(24) %1) #17
          to label %common.resume unwind label %bb.o

bb.k:                                             ; preds = %bb.g
  unreachable

bb.l:                                             ; preds = %bb.h
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.04.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  store i32 1, ptr %i.c, align 8
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.e, align 4
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !615, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.l
  store i8 35, ptr %i.t, align 1
  %i.u = add nuw i64 %i.l, 1
  store i64 %i.u, ptr %i.k, align 8, !alias.scope !615
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.y)
          to label %.noexc11 unwind label %bb.j

.noexc11:                                         ; preds = %bb.m
  %i.z = load i64, ptr %i.k, align 8, !alias.scope !606, !noundef !4 ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.c, label %bb.n

bb.n:                                             ; preds = %.noexc11
  %i.ab = load ptr, ptr %i.r, align 8, !alias.scope !606, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.w, i64 %i.y, i1 false)
  %.pre.i = load i64, ptr %i.k, align 8, !alias.scope !606
  br label %bb.c

bb.o:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url38strip_trailing_spaces_from_opaque_path(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !alias.scope !618, !noundef !4
  %i.e = add i32 %i.d, 1                          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !618, !nonnull !4, !noundef !4 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.g, align 8, !alias.scope !618, !noundef !4 ; 10 uses
  %i.h = zext i32 %i.e to i64                     ; 6 uses
  %i.i = icmp eq i32 %i.e, 0
  br i1 %i.i, label %_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url16cannot_be_a_base.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp ugt i64 %.val1.i, %i.h
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.b
  %i.j = icmp eq i64 %.val1.i, %i.h
  br i1 %i.j, label %_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url16cannot_be_a_base.exit, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.h
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !621, !noalias !618, !noundef !4
  %i.m = icmp sgt i8 %i.l, -65
  br i1 %i.m, label %_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url16cannot_be_a_base.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef range(i64 0, 4294967296) %i.h, i64 noundef %.val1.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #15, !noalias !618
  unreachable

_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url16cannot_be_a_base.exit: ; preds = %bb.a, %.split.i.i.i.i.i, %bb.c
  %i.n = sub nuw i64 %.val1.i, %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !618
  store i32 47, ptr %i.a, align 4, !noalias !618
  %i.p = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !618
  br i1 %i.p, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url16cannot_be_a_base.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !range !127, !noundef !4
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.f, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate.exit: ; preds = %.split.i, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMs_Csl4BgoAJVhPh_3urlNtB1X_3Url38strip_trailing_spaces_from_opaque_path0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B35_5count0EB1X_.exit, %bb.f, %bb.e, %_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url16cannot_be_a_base.exit
  ret void

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !range !127, !noundef !4
  %.not1 = icmp eq i32 %i.t, 0
  br i1 %.not1, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMs_Csl4BgoAJVhPh_3urlNtB1X_3Url38strip_trailing_spaces_from_opaque_path0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B35_5count0EB1X_.exit, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate.exit

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMs_Csl4BgoAJVhPh_3urlNtB1X_3Url38strip_trailing_spaces_from_opaque_path0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B35_5count0EB1X_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val1.i
  store ptr %.val.i, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i8 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.y = call { i64, i64 } @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2e_9TakeWhileppEB1l_8try_fold5checkcjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNvMs_Csl4BgoAJVhPh_3urlNtB40_3Url38strip_trailing_spaces_from_opaque_path0NCINvMB3d_B3a_10wrap_mut_2jcNCNvYIB2w_BM_B3T_EB1l_5count0E0E0INtNtB3f_12control_flow11ControlFlowB3a_jEEB40_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, ptr noalias noundef nonnull %i.x, ptr noalias noundef nonnull dereferenceable(1) %i.w)
  %i.z = extractvalue { i64, i64 } %i.y, 1        ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = icmp sgt i64 %.val1.i, -1
  call void @llvm.assume(i1 %i.aa)
  %i.ab = sub nuw nsw i64 %.val1.i, %i.z          ; 2 uses
  %.not.i = icmp ugt i64 %i.z, %.val1.i
  br i1 %.not.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate.exit, label %bb.g

bb.g:                                             ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMs_Csl4BgoAJVhPh_3urlNtB1X_3Url38strip_trailing_spaces_from_opaque_path0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B35_5count0EB1X_.exit
  %i.ac = icmp ne i64 %.val1.i, %i.z
  %.not2.i = icmp ne i64 %i.z, 0
  %or.cond.i = and i1 %i.ac, %.not2.i
  br i1 %or.cond.i, label %bb.h, label %.split.i

.split.i:                                         ; preds = %bb.h, %bb.g
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE8truncateCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab), !noalias !628
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !631, !noundef !4
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %.split.i, label %bb.i, !prof !61

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #15, !noalias !633
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url4host(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !149, !noundef !4
  switch i8 %i.b, label %default.unreachable15 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

default.unreachable15:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i32, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i64, ptr %i.h, align 8, !noundef !4 ; 5 uses
  %i.i = zext i32 %i.d to i64                     ; 6 uses
  %i.j = zext i32 %i.f to i64                     ; 5 uses
  %.not.i.i.i.i = icmp ugt i32 %i.d, %i.f
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.d, 0
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not5.i.i.i.i = icmp ugt i64 %.val10, %i.i
  br i1 %.not5.i.i.i.i, label %bb.g, label %.split.i.i.i.i

bb.f:                                             ; preds = %bb.g, %.split.i.i.i.i, %bb.d
  %i.l = icmp eq i32 %i.f, 0
  br i1 %i.l, label %_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangemEEB5_.exit, label %bb.h

.split.i.i.i.i:                                   ; preds = %bb.e
  %i.m = icmp eq i64 %.val10, %i.i
  br i1 %i.m, label %bb.f, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !634, !noundef !4
  %i.p = icmp sgt i8 %i.o, -65
  br i1 %i.p, label %bb.f, label %bb.j

bb.h:                                             ; preds = %bb.f
  %.not6.i.i.i.i = icmp ugt i64 %.val10, %i.j
  br i1 %.not6.i.i.i.i, label %bb.i, label %.split7.i.i.i.i

.split7.i.i.i.i:                                  ; preds = %bb.h
  %i.q = icmp eq i64 %.val10, %i.j
  br i1 %i.q, label %_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangemEEB5_.exit, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !634, !noundef !4
  %i.t = icmp sgt i8 %i.s, -65
  br i1 %i.t, label %_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangemEEB5_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.split7.i.i.i.i, %bb.g, %.split.i.i.i.i, %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val10, i64 noundef range(i64 0, 4294967296) %i.i, i64 noundef range(i64 0, 4294967296) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #15
  unreachable

_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangemEEB5_.exit: ; preds = %bb.f, %.split7.i.i.i.i, %bb.i
  %i.u = sub nuw nsw i64 %i.j, %i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i
  store i8 0, ptr %0, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 65
  %.sroa.02.0.copyload = load i32, ptr %i.w, align 1
  store i8 1, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.02.0.copyload, ptr %.sroa.45.0..sroa_idx, align 1
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 65
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %i.x, i64 16, i1 false)
  store i8 2, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangemEEB5_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url4path(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !range !127, !noundef !4
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !range !127, !noundef !4
  %i.h = trunc nuw i32 %i.g to i1
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = load i32, ptr %i.i, align 4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8 = load i64, ptr %i.l, align 8, !noundef !4 ; 5 uses
  %i.m = zext i32 %i.j to i64                     ; 6 uses
  %i.n = icmp eq i32 %i.j, 0
  br i1 %i.n, label %_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFrommEEB5_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp ugt i64 %.val8, %i.m
  br i1 %.not.i.i.i.i, label %bb.f, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.e
  %i.o = icmp eq i64 %.val8, %i.m
  br i1 %i.o, label %_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFrommEEB5_.exit, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !641, !noundef !4
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFrommEEB5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val8, i64 noundef range(i64 0, 4294967296) %i.m, i64 noundef %.val8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #15
  unreachable

_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFrommEEB5_.exit: ; preds = %bb.d, %.split.i.i.i.i, %bb.f
  %i.s = sub nuw i64 %.val8, %i.m
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  br label %bb.h

bb.h:                                             ; preds = %_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangemEEB5_.exit, %_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFrommEEB5_.exit
  %.pn16 = phi ptr [ %i.al, %_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangemEEB5_.exit ], [ %i.t, %_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFrommEEB5_.exit ] ; 2 uses
  %.pn14 = phi i64 [ %i.ak, %_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangemEEB5_.exit ], [ %i.s, %_RINvMs_Csl4BgoAJVhPh_3urlNtB5_3Url5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFrommEEB5_.exit ]
  %.pn13 = insertvalue { ptr, i64 } poison, ptr %.pn16, 0
  %.pn = insertvalue { ptr, i64 } %.pn13, i64 %.pn14, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn16) ]
  ret { ptr, i64 } %.pn

bb.i:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  %.sroa.06.0 = load i32, ptr %.sroa.06.0.in, align 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.v = load i32, ptr %i.u, align 4, !noundef !4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load i64, ptr %i.x, align 8, !noundef !4 ; 5 uses
  %i.y = zext i32 %i.v to i64                     ; 6 uses
  %i.z = zext i32 %.sroa.06.0 to i64              ; 5 uses
  %.not.i.i.i.i11 = icmp ugt i32 %i.v, %.sroa.06.0
  br i1 %.not.i.i.i.i11, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp eq i32 %i.v, 0
  br i1 %i.aa, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not5.i.i.i.i = icmp ugt i64 %.val10, %i.y
end_hunk_0
