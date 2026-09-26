Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_core-9d716076194cd758.wasmi_core.40db9b99ef49cf4e-cgu.0?download=true
inline.NumInlined: 96
inline.NumDeleted: 57
begin_hunk_0_@_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table4init:bb.a
  %i.m = sub nuw i64 %i.i, %2
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2
  %.not39 = icmp ult i64 %i.m, %i.g
  br i1 %.not39, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.f
  br i1 %i.q, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !nonnull !5, !align !16, !noundef !5
  %i.s = sub nuw i64 %i.p, %i.f
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.f
  %.not40 = icmp ult i64 %i.s, %i.g
  br i1 %.not40, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq i32 %4, 0
  br i1 %i.u, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not41 = icmp eq ptr %5, null
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call { i64, i64 } @_RINvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB6_4Fuel15consume_fuel_ifNCNvMNtB8_5tableNtB19_5Table4inits0_0EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  switch i64 %i.w, label %_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit [
    i64 2, label %bb.i
    i64 0, label %bb.j
  ], !prof !13

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = shl nuw nsw i64 %i.g, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr nonnull readonly align 4 %i.t, i64 %i.x, i1 false), !alias.scope !66, !noalias !67
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22
  unreachable

_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit: ; preds = %bb.h
  %i.y = extractvalue { i64, i64 } %i.v, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a, %_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit, %bb.i
  %.sroa.7.0 = phi i64 [ undef, %bb.i ], [ undef, %bb.d ], [ undef, %bb.f ], [ undef, %bb.a ], [ %i.y, %_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit ], [ undef, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.03.0 = phi i64 [ -1, %bb.i ], [ 5, %bb.d ], [ -1, %bb.f ], [ 9, %bb.a ], [ 10, %_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit ], [ 5, %bb.e ], [ 5, %bb.c ], [ 5, %bb.b ]
  %i.z = insertvalue { i64, i64 } poison, i64 %.sroa.03.0, 0
  %i.aa = insertvalue { i64, i64 } %i.z, i64 %.sroa.7.0, 1
  ret { i64, i64 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table8fill_raw(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %_RNvXs_NtNtCskKLDkoKarTP_4core5slice10specializeSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefINtB4_8SpecFillBK_E9spec_fillBQ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = sub nuw i64 %i.c, %1
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %1 ; 4 uses
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %_RNvXs_NtNtCskKLDkoKarTP_4core5slice10specializeSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefINtB4_8SpecFillBK_E9spec_fillBQ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not20 = icmp eq ptr %4, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call { i64, i64 } @_RINvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB6_4Fuel15consume_fuel_ifNCNvMNtB8_5tableNtB19_5Table8fill_raws_0EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  switch i64 %i.j, label %_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit [
    i64 2, label %bb.e
    i64 0, label %bb.f
  ], !prof !13

bb.e:                                             ; preds = %bb.d, %bb.c
  %.idx.i = shl i64 %3, 2                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %i.l = icmp eq i64 %3, 0
  br i1 %i.l, label %_RNvXs_NtNtCskKLDkoKarTP_4core5slice10specializeSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefINtB4_8SpecFillBK_E9spec_fillBQ_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.m = add i64 %.idx.i, -4                      ; 2 uses
  %i.n = lshr exact i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.o, 9223372036854775800      ; 3 uses
  %i.p = shl i64 %n.vec, 2
  %i.q = getelementptr i8, ptr %i.h, i64 %i.p
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !alias.scope !72
  store <4 x i32> %broadcast.splat, ptr %i.s, align 4, !alias.scope !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCskKLDkoKarTP_4core5slice10specializeSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefINtB4_8SpecFillBK_E9spec_fillBQ_.exit, label %.lr.ph.i.preheader25

.lr.ph.i.preheader25:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.01.04.i.ph = phi ptr [ %i.h, %.lr.ph.i.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader25, %.lr.ph.i
  %.sroa.01.04.i = phi ptr [ %i.u, %.lr.ph.i ], [ %.sroa.01.04.i.ph, %.lr.ph.i.preheader25 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 4 ; 2 uses
  store i32 %2, ptr %.sroa.01.04.i, align 4, !alias.scope !72
  %i.v = icmp eq ptr %i.u, %i.k
  br i1 %i.v, label %_RNvXs_NtNtCskKLDkoKarTP_4core5slice10specializeSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefINtB4_8SpecFillBK_E9spec_fillBQ_.exit, label %.lr.ph.i, !llvm.loop !71

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22
  unreachable

_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit: ; preds = %bb.d
  %i.w = extractvalue { i64, i64 } %i.i, 1
  br label %_RNvXs_NtNtCskKLDkoKarTP_4core5slice10specializeSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefINtB4_8SpecFillBK_E9spec_fillBQ_.exit

_RNvXs_NtNtCskKLDkoKarTP_4core5slice10specializeSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefINtB4_8SpecFillBK_E9spec_fillBQ_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.e, %bb.a, %bb.b, %_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %i.w, %_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit ], [ undef, %bb.b ], [ undef, %bb.e ], [ undef, %middle.block ], [ undef, %.lr.ph.i ]
  %.sroa.02.0 = phi i64 [ 6, %bb.a ], [ 10, %_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit ], [ 6, %bb.b ], [ -1, %bb.e ], [ -1, %middle.block ], [ -1, %.lr.ph.i ]
  %i.x = insertvalue { i64, i64 } poison, i64 %.sroa.02.0, 0
  %i.y = insertvalue { i64, i64 } %i.x, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.y
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table8grow_raw(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.f, align 8
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.j = icmp ult i64 %i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.k, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 6 uses
  %i.o = icmp ult i64 %i.n, 2305843009213693952
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i64 %i.n, %2                         ; 7 uses
  %i.q = icmp ult i64 %i.p, %i.n
  br i1 %i.q, label %bb.f, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.l, %bb.p, %bb.y, %bb.ac, %bb.f, %bb.h, %bb.z, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.s = load i8, ptr %i.r, align 1, !range !10, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  %.not38 = icmp ult i64 %i.p, 4294967296
  %.not = or i1 %.not38, %i.t
  br i1 %.not, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  store i64 4, ptr %0, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.u = load i64, ptr %1, align 8, !range !9, !noundef !5 ; 2 uses
  %i.v = trunc nuw i64 %i.u to i1                 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = load ptr, ptr %5, align 8, !noundef !5   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.not23 = icmp eq ptr %i.y, null                ; 3 uses
  br i1 %.not23, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.e
  store i64 4, ptr %0, align 8
  br label %bb.d

bb.i:                                             ; preds = %bb.g
  %.sroa.5.0 = select i1 %i.v, i64 %i.x, i64 undef
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !5, !nonnull !5
  %i.ad = tail call noundef i8 %i.ac(ptr noundef nonnull %i.y, i64 noundef %i.n, i64 noundef %i.p, i64 noundef %i.u, i64 %.sroa.5.0) #24
  switch i8 %i.ad, label %.thread [
    i8 2, label %bb.l
    i8 0, label %bb.k
  ]

bb.j:                                             ; preds = %bb.g
  %i.ae = icmp ugt i64 %i.p, %i.x
  %or.cond = select i1 %i.v, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

.thread:                                          ; preds = %bb.i
  %i.af = icmp ugt i64 %i.p, %i.x
  %or.cond33 = select i1 %i.v, i1 %i.af, i1 false
  br i1 %or.cond33, label %bb.o, label %bb.m

bb.k:                                             ; preds = %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %storemerge31 = phi i64 [ 4, %bb.k ], [ 3, %bb.i ]
  store i64 %storemerge31, ptr %0, align 8
  br label %bb.d

bb.m:                                             ; preds = %.thread, %bb.j
  %.not24 = icmp eq ptr %4, null
  br i1 %.not24, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.p

bb.o:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 4, ptr %i.d, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !5, !nonnull !5
  %i.ai = call noundef zeroext i1 %i.ah(ptr noundef nonnull %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) #24
  %spec.select = select i1 %i.ai, i64 3, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %storemerge30 = phi i64 [ 4, %bb.n ], [ %spec.select, %bb.o ]
  store i64 %storemerge30, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB6_4Fuel12consume_fuelNCNvMNtB8_5tableNtB16_5Table8grow_raws_0EB8_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  %i.aj = load i64, ptr %i.e, align 8, !range !77, !noundef !5
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.t, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.al = load i64, ptr %i.l, align 8, !range !4, !alias.scope !78, !noundef !5 ; 3 uses
  %i.am = sub nsw i64 %i.al, %i.n
  %i.an = icmp ugt i64 %2, %i.am
  br i1 %i.an, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.ao = shl nuw i64 %i.al, 1
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.p, i64 range(i64 0, -1) %i.ao)
  %..i14.i.i = call noundef i64 @llvm.umax.i64(i64 %..i.i.i, i64 range(i64 0, -1) 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.val13.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !80
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.al, ptr %.val13.i.i, i64 noundef %..i14.i.i, i64 noundef range(i64 1, -9223372036854775807) 4, i64 noundef 4), !noalias !80
  %i.aq = load i64, ptr %i.a, align 8, !range !9, !noalias !80, !noundef !5
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.aa, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5zeGauAcNNa_10wasmi_core.exit.i

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5zeGauAcNNa_10wasmi_core.exit.i: ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !80, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80
  store ptr %i.at, ptr %i.ap, align 8, !alias.scope !80
  %i.au = icmp sgt i64 %..i14.i.i, -1
  call void @llvm.assume(i1 %i.au)
  store i64 %..i14.i.i, ptr %i.l, align 8, !alias.scope !80
  br label %bb.z

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.r

bb.u:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 10, ptr %i.c, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.aw, ptr %i.ax, align 8
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = load ptr, ptr %i.z, align 8, !nonnull !5, !align !7, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !5, !nonnull !5
  %i.bb = call noundef zeroext i1 %i.ba(ptr noundef nonnull %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #24
  br i1 %i.bb, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i64 10, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aw, ptr %i.bc, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  store i64 3, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.z:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5zeGauAcNNa_10wasmi_core.exit.i, %bb.r
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE6resizeBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.p, i32 noundef %3)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.bd, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.aa:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  br i1 %.not23, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.be = load ptr, ptr %i.z, align 8, !nonnull !5, !align !7, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !5, !nonnull !5
  %i.bh = call noundef zeroext i1 %i.bg(ptr noundef nonnull %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #24
  %spec.select32 = select i1 %i.bh, i64 3, i64 0
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %storemerge = phi i64 [ 0, %bb.aa ], [ %spec.select32, %bb.ab ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table2tyNtB2_9TableType3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, i32 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %i.b = trunc nuw i32 %3 to i1
  br i1 %i.b, label %.split4, label %.split

.split4:                                          ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %.not.i.i.i = icmp ugt i32 %2, %4
  br i1 %.not.i.i.i, label %bb.b, label %_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table2tyNtB2_9TableType8new_impl.exit, !prof !12

bb.b:                                             ; preds = %.split4
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 63, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22, !noalias !85
  unreachable

_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table2tyNtB2_9TableType8new_impl.exit: ; preds = %.split4
  %i.c = zext i32 %4 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = zext i1 %1 to i8
  store i8 %i.e, ptr %i.d, align 8, !alias.scope !85
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.f, align 8, !alias.scope !85
  store i64 1, ptr %0, align 8, !alias.scope !85
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.g, align 8, !alias.scope !85
  br label %bb.c

.split:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = zext i1 %1 to i8
  store i8 %i.i, ptr %i.h, align 8, !alias.scope !86
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.j, align 8, !alias.scope !86
  store i64 0, ptr %0, align 8, !alias.scope !86
  br label %bb.c

bb.c:                                             ; preds = %.split, %_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table2tyNtB2_9TableType8new_impl.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.k, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table2tyNtB2_9TableType5new64(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.a = trunc nuw i64 %3 to i1
  %.not.i.i.i = icmp ugt i64 %2, %4
  %or.cond = select i1 %i.a, i1 %.not.i.i.i, i1 false, !prof !90
  br i1 %or.cond, label %bb.b, label %_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table2tyNtB2_9TableType8new_impl.exit, !prof !90

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 63, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22, !noalias !89
  unreachable

_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table2tyNtB2_9TableType8new_impl.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = zext i1 %1 to i8
  store i8 %i.c, ptr %i.b, align 8, !alias.scope !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.d, align 8, !alias.scope !89
  store i64 %3, ptr %0, align 8, !alias.scope !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %i.e, align 8, !alias.scope !89
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25
end_hunk_0
