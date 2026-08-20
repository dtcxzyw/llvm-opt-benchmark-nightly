inline.NumInlined: 17181
inline.NumDeleted: 6681
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_RNvMNtNtCs9VoZUfg37wD_6flate24zlib5writeINtB2_11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE3newCseeLknQCOKOd_13polars_python:bb.a

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9VoZUfg37wD_6flate23mem8CompressECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.d, !dbg !183285

_RNvMs2_NtCs9VoZUfg37wD_6flate23zioINtB5_6WriterQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtB7_3mem8CompressE3newCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.c
  %i.m = load ptr, ptr %i.j, align 8, !dbg !183286, !noalias !183260, !nonnull !11, !noundef !11
  %i.n = icmp samesign ugt i64 %i.i, 32767, !dbg !183287
  tail call void @llvm.assume(i1 %i.n), !dbg !183291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !183294, !noalias !183260
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !183295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false), !dbg !183296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !183297, !noalias !183260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !183298
  store i64 %i.i, ptr %0, align 8, !dbg !183295
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !183295
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !183295
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !183295
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !183295
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !183295
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !183295
  ret void, !dbg !183299
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCseeLknQCOKOd_13polars_python9dataframe12constructionNtB4_11PyDataFrame10from_dicts(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %3, i1 noundef zeroext %4, i64 noundef range(i64 0, 2) %5, i64 %6) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !183300 {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [168 x i8], align 8               ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 8 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [168 x i8], align 8               ; 10 uses
  %i.m = alloca [64 x i8], align 8                ; 6 uses
  %i.n = alloca [64 x i8], align 8                ; 5 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.524 = alloca [64 x i8], align 8          ; 7 uses
  %i.p = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.522 = alloca [64 x i8], align 8          ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.519 = alloca [64 x i8], align 8          ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 15 uses
  %i.t = alloca [72 x i8], align 8                ; 7 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 8 uses
  %i.w = alloca [72 x i8], align 8                ; 7 uses
  %i.x = alloca [64 x i8], align 8                ; 8 uses
  %i.y = alloca [64 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !183303
  %i.z = load i64, ptr %2, align 8, !dbg !183304, !range !1958, !noundef !11
  %.not = icmp eq i64 %i.z, -9223372036854775808, !dbg !183304
  br i1 %.not, label %bb.b, label %bb.d, !dbg !183307

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.y, align 8, !dbg !183308
  br label %bb.c, !dbg !183309

bb.c:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !183310
  %.sroa.0.0.copyload = load i64, ptr %3, align 8, !dbg !183312 ; 2 uses
  %.not43 = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808, !dbg !183313
  br i1 %.not43, label %bb.e, label %bb.f, !dbg !183316

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !dbg !183317
  br label %bb.c, !dbg !183319

bb.e:                                             ; preds = %bb.c, %bb.f
  store i64 %.sroa.0.0.copyload, ptr %i.x, align 8, !dbg !183320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !183321
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.h unwind label %bb.g, !dbg !183323

.body64.thread101:                                ; preds = %.body64.thread, %.body64
  %.sroa.027.0 = phi i8 [ %.sroa.027.1, %.body64 ], [ %.sroa.027.187, %.body64.thread ], !dbg !183324
  %.pn53 = phi { ptr, i32 } [ %.pn51, %.body64 ], [ %.pn5188, %.body64.thread ] ; 2 uses
  %i.aa = trunc nuw i8 %.sroa.027.0 to i1, !dbg !183325
  br i1 %i.aa, label %bb.cf, label %.body64.thread101.thread, !dbg !183325

.thread:                                          ; preds = %bb.cb
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf, !dbg !183325

bb.f:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !183312
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !183326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.479.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, i64 56, i1 false), !dbg !183328
  br label %bb.e, !dbg !183329

.body64:                                          ; preds = %bb.g, %.body.thread93
  %.sroa.027.1 = phi i8 [ %.sroa.027.3, %.body.thread93 ], [ %.sroa.026.1, %bb.g ], !dbg !183330 ; 2 uses
  %.sroa.026.0 = phi i8 [ %.sroa.026.2, %.body.thread93 ], [ %.sroa.026.1, %bb.g ], !dbg !183331
  %.pn51 = phi { ptr, i32 } [ %.pn, %.body.thread93 ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ac = trunc nuw i8 %.sroa.026.0 to i1, !dbg !183332
  br i1 %i.ac, label %.body64.thread, label %.body64.thread101, !dbg !183332

bb.g:                                             ; preds = %bb.bx, %bb.ak, %bb.l, %bb.k, %bb.e
  %.sroa.026.1 = phi i8 [ 1, %bb.e ], [ 1, %bb.ak ], [ 0, %bb.bx ], [ 1, %bb.l ], [ 1, %bb.k ], !dbg !183331 ; 2 uses
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body64

bb.h:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.w, align 8, !dbg !183333, !range !1523, !noundef !11
  %i.af = trunc nuw i64 %i.ae to i1, !dbg !183335
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !183336
  %.sroa.032.0.copyload = load i64, ptr %i.ag, align 8, !dbg !183336 ; 2 uses
  br i1 %i.af, label %bb.i, label %bb.j, !dbg !183335

bb.i:                                             ; preds = %bb.h
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !183337
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !183338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.235.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.533.0..sroa_idx, i64 56, i1 false), !dbg !183337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !183345
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !183338
  store i64 %.sroa.032.0.copyload, ptr %i.ah, align 8, !dbg !183338
  store i64 1, ptr %0, align 8, !dbg !183338
  br label %bb.cb, !dbg !183346

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !183345
  %.not44 = icmp eq i64 %.sroa.032.0.copyload, 0, !dbg !183321
  br i1 %.not44, label %bb.l, label %bb.k, !dbg !183321

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !183348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !183349
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.m unwind label %bb.g, !dbg !183350

bb.l:                                             ; preds = %bb.j, %.loopexit
  %.sroa.06.0 = phi i1 [ %.sroa.06.1, %.loopexit ], [ false, %bb.j ], !dbg !183351 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !183352
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.519), !dbg !183354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !183354
  %i.ai = load i64, ptr %i.y, align 8, !dbg !183355, !range !1958, !noundef !11
  %.not47 = icmp eq i64 %i.ai, -9223372036854775808, !dbg !183355
  %. = select i1 %.not47, ptr null, ptr %i.y, !dbg !183358
  invoke void @_RNvNtNtCseeLknQCOKOd_13polars_python9dataframe12construction16get_schema_names(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %., i64 noundef %5, i64 %6, i1 noundef zeroext %.sroa.06.0)
          to label %bb.u unwind label %bb.g, !dbg !183354

bb.m:                                             ; preds = %bb.k
  %i.aj = load i64, ptr %i.u, align 8, !dbg !183359, !range !1523, !noundef !11
  %i.ak = trunc nuw i64 %i.aj to i1, !dbg !183361
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !183362
  %.sroa.038.0.copyload = load ptr, ptr %i.al, align 8, !dbg !183362 ; 2 uses
  br i1 %i.ak, label %bb.n, label %bb.o, !dbg !183361

bb.n:                                             ; preds = %bb.m
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !183363
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !183364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.241.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.539.0..sroa_idx, i64 56, i1 false), !dbg !183363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !183370
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !183364
  store ptr %.sroa.038.0.copyload, ptr %i.am, align 8, !dbg !183364
  store i64 1, ptr %0, align 8, !dbg !183364
  br label %bb.cd, !dbg !183346

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !183370
  store ptr %.sroa.038.0.copyload, ptr %i.v, align 8, !dbg !183371
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br label %bb.p, !dbg !183374

bb.p:                                             ; preds = %bb.cc, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !183376
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.q unwind label %.thread83, !dbg !183377

.thread83:                                        ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %.val60 = load ptr, ptr %i.v, align 8, !dbg !183378, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val60) #53, !dbg !183379
  br label %.body64.thread, !dbg !183332

bb.q:                                             ; preds = %bb.p
  %i.ap = load i64, ptr %i.t, align 8, !dbg !183376, !range !2150, !noundef !11
  switch i64 %i.ap, label %bb.r [
    i64 2, label %.loopexit
    i64 0, label %bb.s
  ], !dbg !183386

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !183387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 64, i1 false), !dbg !183389
  store i64 1, ptr %0, align 8, !dbg !183387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !183390
  %.val58 = load ptr, ptr %i.v, align 8, !dbg !183378, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val58) #53, !dbg !183391
  br label %bb.cd, !dbg !183395

bb.s:                                             ; preds = %bb.q
  %i.ar = load ptr, ptr %i.an, align 8, !dbg !183396, !nonnull !11, !noundef !11 ; 3 uses
  %i.as = icmp eq ptr %i.ar, @_Py_NoneStruct, !dbg !183403
  br i1 %i.as, label %bb.cc, label %bb.t, !dbg !183406

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !183407
  %i.au = load ptr, ptr %i.at, align 8, !dbg !183407, !noundef !11
  %i.av = call noundef i64 @PyType_GetFlags(ptr noundef %i.au) #53, !dbg !183420
  call void @_Py_DecRef(ptr noundef nonnull %i.ar) #53, !dbg !183425
  %i.aw = and i64 %i.av, 536870912, !dbg !183429
  %.not46 = icmp eq i64 %i.aw, 0, !dbg !183431
  br label %.loopexit, !dbg !183432

.loopexit:                                        ; preds = %bb.q, %bb.t
  %.sroa.06.1 = phi i1 [ %.not46, %bb.t ], [ false, %bb.q ], !dbg !183434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !183390
  %.val59 = load ptr, ptr %i.v, align 8, !dbg !183378, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val59) #53, !dbg !183435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !183378
  br label %bb.l, !dbg !183321

bb.u:                                             ; preds = %bb.l
  %i.ax = load i64, ptr %i.r, align 8, !dbg !183439, !range !1523, !noundef !11
  %i.ay = trunc nuw i64 %i.ax to i1, !dbg !183441
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !183442 ; 2 uses
  br i1 %i.ay, label %bb.v, label %bb.w, !dbg !183441

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.519, ptr noundef nonnull align 8 dereferenceable(64) %i.az, i64 64, i1 false), !dbg !183443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !183444
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !183445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.519, i64 64, i1 false), !dbg !183444
  store i64 1, ptr %0, align 8, !dbg !183445
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.519), !dbg !183451
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit, !dbg !183452

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.519, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !dbg !183454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !183444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.519, i64 24, i1 false), !dbg !183354
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.519), !dbg !183451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !183455
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !183457 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !183470 ; 2 uses
  br i1 %.sroa.06.0, label %bb.y, label %bb.x, !dbg !183471

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524), !dbg !183472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !183472
  %i.bd = load ptr, ptr %i.bb, align 8, !dbg !183473, !nonnull !11, !noundef !11
  %i.be = load i64, ptr %i.bc, align 8, !dbg !183485, !noundef !11
  invoke void @_RNvNtNtCseeLknQCOKOd_13polars_python9dataframe12construction13dicts_to_rows(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bd, i64 noundef %i.be, i1 noundef zeroext %4)
          to label %bb.aa unwind label %bb.z, !dbg !183472

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.522), !dbg !183486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !183486
  %i.bf = load ptr, ptr %i.bb, align 8, !dbg !183487, !nonnull !11, !noundef !11
  %i.bg = load i64, ptr %i.bc, align 8, !dbg !183494, !noundef !11
  invoke void @_RNvNtNtCseeLknQCOKOd_13polars_python9dataframe12construction16mappings_to_rows(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bf, i64 noundef %i.bg, i1 noundef zeroext %4)
          to label %bb.am unwind label %bb.z, !dbg !183486

.body.thread93:                                   ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bq, %bb.bb, %bb.av, %bb.at, %.body, %.body.thread, %bb.z
  %.sroa.027.3 = phi i8 [ 0, %.body.thread ], [ 0, %.body ], [ 1, %bb.z ], [ 0, %bb.at ], [ 0, %bb.av ], [ 0, %bb.bb ], [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.bt ], [ 0, %bb.bu ], !dbg !183330
  %.sroa.026.2 = phi i8 [ 1, %.body.thread ], [ 0, %.body ], [ 1, %bb.z ], [ 0, %bb.at ], [ 0, %bb.av ], [ 0, %bb.bb ], [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.bt ], [ 0, %bb.bu ], !dbg !183331
  %.pn = phi { ptr, i32 } [ %eh.lpad-body92, %.body.thread ], [ %i.bz, %.body ], [ %i.bh, %bb.z ], [ %i.cj, %bb.at ], [ %i.cl, %bb.av ], [ %i.cs, %bb.bb ], [ %i.cs, %bb.bq ], [ %i.cs, %bb.br ], [ %i.cs, %bb.bt ], [ %lpad.thr_comm.i, %bb.bu ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.s) #50
          to label %.body64 unwind label %bb.ca, !dbg !183495

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread93

bb.aa:                                            ; preds = %bb.x
  %i.bi = load i64, ptr %i.o, align 8, !dbg !183496, !range !1523, !noundef !11
  %i.bj = trunc nuw i64 %i.bi to i1, !dbg !183498
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !183499 ; 2 uses
  br i1 %i.bj, label %bb.ab, label %bb.ac, !dbg !183498

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.524, ptr noundef nonnull align 8 dereferenceable(64) %i.bk, i64 64, i1 false), !dbg !183500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !183501
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !183502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.524, i64 64, i1 false), !dbg !183501
  store i64 1, ptr %0, align 8, !dbg !183502
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524), !dbg !183501
  br label %bb.ai, !dbg !183508

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.524, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !dbg !183510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !183501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.524, i64 24, i1 false), !dbg !183472
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524), !dbg !183501
  br label %bb.ad, !dbg !183511

bb.ad:                                            ; preds = %bb.ao, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !183512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !183514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false), !dbg !183514
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !183515
  %.val61 = load ptr, ptr %i.bm, align 8, !dbg !183515 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !183515
  %.val62 = load i64, ptr %i.bn, align 8, !dbg !183515
  call void @llvm.experimental.noalias.scope.decl(metadata !183516), !dbg !183515
  %i.bo = load i64, ptr %i.m, align 8, !dbg !183519, !range !1958, !alias.scope !183516, !noalias !183522, !noundef !11
  %.not.i = icmp eq i64 %i.bo, -9223372036854775808, !dbg !183519
  br i1 %.not.i, label %bb.af, label %bb.ae, !dbg !183524

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false), !dbg !183525
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE7or_elseNCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe12constructionNtB2I_11PyDataFrame10from_dictss0_0EB2K_.exit, !dbg !183526

bb.af:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val61) ]
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %.val61, i64 %.val62, !dbg !183527
  invoke void @_RINvNtNtCseeLknQCOKOd_13polars_python9dataframe12construction29columns_names_to_empty_schemaINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1B_5slice4iter4IterNtNtCsgZ49sUHp3tW_5alloc6string6StringENvMB2J_B2H_6as_strEEB6_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.n, ptr noundef nonnull %.val61, ptr noundef nonnull %i.bp)
          to label %_RNCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe12constructionNtB6_11PyDataFrame10from_dictss0_0B8_.exit.i unwind label %bb.ag, !dbg !183541, !noalias !183516

bb.ag:                                            ; preds = %bb.af
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m) #50
          to label %.body.thread unwind label %bb.ah, !dbg !183526, !noalias !183522

_RNCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe12constructionNtB6_11PyDataFrame10from_dictss0_0B8_.exit.i: ; preds = %bb.af
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE7or_elseNCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe12constructionNtB2I_11PyDataFrame10from_dictss0_0EB2K_.exit unwind label %.body.thread96, !dbg !183526

.body.thread96:                                   ; preds = %_RNCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe12constructionNtB6_11PyDataFrame10from_dictss0_0B8_.exit.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread, !dbg !183542

bb.ah:                                            ; preds = %bb.ag
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !183543, !noalias !183522
  unreachable, !dbg !183543

bb.ai:                                            ; preds = %bb.an, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !183542
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.ak unwind label %bb.aj, !dbg !183544

bb.aj:                                            ; preds = %bb.ai
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body64.thread unwind label %bb.al, !dbg !183546

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit unwind label %bb.g, !dbg !183548

bb.al:                                            ; preds = %bb.aj
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !183544
  unreachable, !dbg !183544

bb.am:                                            ; preds = %bb.y
  %i.bv = load i64, ptr %i.p, align 8, !dbg !183550, !range !1523, !noundef !11
  %i.bw = trunc nuw i64 %i.bv to i1, !dbg !183551
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !183552 ; 2 uses
  br i1 %i.bw, label %bb.an, label %bb.ao, !dbg !183551

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.522, ptr noundef nonnull align 8 dereferenceable(64) %i.bx, i64 64, i1 false), !dbg !183553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !183554
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !183555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.522, i64 64, i1 false), !dbg !183554
  store i64 1, ptr %0, align 8, !dbg !183555
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.522), !dbg !183554
  br label %bb.ai, !dbg !183508

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.522, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !dbg !183561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !183554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.522, i64 24, i1 false), !dbg !183486
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.522), !dbg !183554
  br label %bb.ad, !dbg !183511

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsbm5zPlkZccl_4pyo38internal5state13SuspendAttachECseeLknQCOKOd_13polars_python.exit3.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread93, !dbg !183542

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE7or_elseNCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe12constructionNtB2I_11PyDataFrame10from_dictss0_0EB2K_.exit: ; preds = %bb.ae, %_RNCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe12constructionNtB6_11PyDataFrame10from_dictss0_0B8_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !183562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !183563
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !183563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !183563
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !183563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !dbg !183563
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 104, !dbg !183563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, ptr noundef nonnull align 8 dereferenceable(64) %i.x, i64 64, i1 false), !dbg !183563
  store i64 %5, ptr %i.l, align 8, !dbg !183563
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !183563
  store i64 %6, ptr %i.cd, align 8, !dbg !183563
  call void @llvm.experimental.noalias.scope.decl(metadata !183565), !dbg !183568
end_hunk_0
begin_hunk_1_@_RNvMNtNtCseeLknQCOKOd_13polars_python9dataframe12constructionNtB4_11PyDataFrame10from_dicts:bb.a
          cleanup                                 ; 4 uses
  %i.ct = load i64, ptr %i.i, align 8, !dbg !183624, !range !2150, !noalias !183572, !noundef !11
  switch i64 %i.ct, label %bb.br [
    i64 2, label %.body.thread93
    i64 0, label %bb.bq
  ], !dbg !183624

bb.bc:                                            ; preds = %.noexc66
  %i.cu = load i64, ptr %i.i, align 8, !dbg !183625, !range !2150, !noalias !183572, !noundef !11
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !183626 ; 3 uses
  switch i64 %i.cu, label %bb.bf [
    i64 2, label %bb.bd
    i64 0, label %bb.be
  ], !dbg !183627

bb.bd:                                            ; preds = %bb.bc
  %i.cw = load i8, ptr %i.cv, align 8, !dbg !183625, !range !1527, !noalias !183572, !noundef !11
  %i.cx = trunc nuw i8 %i.cw to i1, !dbg !183625
  br i1 %i.cx, label %bb.bh, label %bb.bi, !dbg !183627

bb.be:                                            ; preds = %bb.bc
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !183628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cy, ptr noundef nonnull align 8 dereferenceable(56) %i.cv, i64 56, i1 false), !dbg !183630, !noalias !183631
  store i64 0, ptr %0, align 8, !dbg !183628, !alias.scope !183565, !noalias !183631
  br label %bb.bv, !dbg !183632

bb.bf:                                            ; preds = %bb.bc
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !183633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !183637, !noalias !183572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cz, ptr noundef nonnull align 8 dereferenceable(64) %i.cv, i64 64, i1 false), !dbg !183638, !noalias !183572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !183639, !noalias !183572
  store i64 18, ptr %i.f, align 8, !dbg !183633, !alias.scope !183640, !noalias !183645
  invoke void @_RNvXs2_NtCseeLknQCOKOd_13polars_python5errorNtNtCsbm5zPlkZccl_4pyo33err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_11PyPolarsErrE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.f)
          to label %bb.bg unwind label %bb.bb, !dbg !183639, !noalias !183572

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !183648, !noalias !183572
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !183649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.da, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !dbg !183649, !noalias !183631
  store i64 1, ptr %0, align 8, !dbg !183649, !alias.scope !183565, !noalias !183631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !183650, !noalias !183572
  br label %bb.bv, !dbg !183651

bb.bh:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !183652, !noalias !183572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !183652, !noalias !183572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !183653, !noalias !183572
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 46, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bl unwind label %bb.bb, !dbg !183653, !noalias !183572

bb.bi:                                            ; preds = %bb.bd
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !dbg !183678, !noalias !183572
  %i.db = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 321) 16, i64 noundef range(i64 8, 17) 8) #53, !dbg !183689, !noalias !183572 ; 4 uses
  %i.dc = icmp eq ptr %i.db, null, !dbg !183690
  br i1 %i.dc, label %bb.bj, label %bb.bk, !dbg !183691, !prof !54

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #51
          to label %.noexc.i unwind label %bb.bb, !dbg !183692, !noalias !183572

.noexc.i:                                         ; preds = %bb.bj
  unreachable, !dbg !183692

bb.bk:                                            ; preds = %bb.bi
  store ptr inttoptr (i64 1 to ptr), ptr %i.db, align 8, !dbg !183693, !noalias !183572
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8, !dbg !183693
  store i64 0, ptr %i.dd, align 8, !dbg !183693, !noalias !183572
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !183694
  %.sroa.015.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !183694
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false), !dbg !183694, !alias.scope !183565, !noalias !183631
  store i64 1, ptr %.sroa.015.sroa.5.0..sroa_idx.i, align 8, !dbg !183694, !alias.scope !183565, !noalias !183631
  %.sroa.015.sroa.5.sroa.4.0..sroa.015.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !183694
  store ptr null, ptr %.sroa.015.sroa.5.sroa.4.0..sroa.015.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !183694, !alias.scope !183565, !noalias !183631
  %.sroa.015.sroa.5.sroa.5.0..sroa.015.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !183694
  store ptr %i.db, ptr %.sroa.015.sroa.5.sroa.5.0..sroa.015.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !183694, !alias.scope !183565, !noalias !183631
  %.sroa.015.sroa.5.sroa.6.0..sroa.015.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !183694
  store ptr @89, ptr %.sroa.015.sroa.5.sroa.6.0..sroa.015.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !183694, !alias.scope !183565, !noalias !183631
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !183694
  store i32 3, ptr %.sroa.416.0..sroa_idx.i, align 8, !dbg !183694, !alias.scope !183565, !noalias !183631
  store i64 1, ptr %0, align 8, !dbg !183694, !alias.scope !183565, !noalias !183631
  br label %bb.bv, !dbg !183695

bb.bl:                                            ; preds = %bb.bh
  %i.df = load i64, ptr %i.c, align 8, !dbg !183653, !range !1523, !noalias !183572, !noundef !11
  %i.dg = trunc nuw i64 %i.df to i1, !dbg !183696
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !183697
  %i.di = load i64, ptr %i.dh, align 8, !dbg !183697, !range !1958, !noalias !183572, !noundef !11 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !183697 ; 2 uses
  br i1 %i.dg, label %bb.bm, label %bb.bn, !dbg !183696, !prof !54

bb.bm:                                            ; preds = %bb.bl
  %i.dk = load i64, ptr %i.dj, align 8, !dbg !183698, !noalias !183572
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.di, i64 %i.dk) #51
          to label %bb.bp unwind label %bb.bb, !dbg !183699, !noalias !183572

bb.bn:                                            ; preds = %bb.bl
  %i.dl = load ptr, ptr %i.dj, align 8, !dbg !183701, !noalias !183572, !nonnull !11, !noundef !11 ; 2 uses
  %i.dm = icmp samesign ugt i64 %i.di, 45, !dbg !183702
  call void @llvm.assume(i1 %i.dm), !dbg !183706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !183709, !noalias !183572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.dl, ptr noundef nonnull align 1 dereferenceable(46) @90, i64 46, i1 false), !dbg !183710, !noalias !183572
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !183652
  store i64 %i.di, ptr %i.dn, align 8, !dbg !183652, !noalias !183572
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !183652
  store ptr %i.dl, ptr %.sroa.45.0..sroa_idx.i, align 8, !dbg !183652, !noalias !183572
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !183652
  store i64 46, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !183652, !noalias !183572
  store i64 19, ptr %i.d, align 8, !dbg !183652, !noalias !183572
  invoke void @_RNvXs2_NtCseeLknQCOKOd_13polars_python5errorNtNtCsbm5zPlkZccl_4pyo33err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_11PyPolarsErrE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.d)
          to label %bb.bo unwind label %bb.bb, !dbg !183716, !noalias !183572

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !183719, !noalias !183572
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !183720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.do, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !dbg !183720, !noalias !183631
  store i64 1, ptr %0, align 8, !dbg !183720, !alias.scope !183565, !noalias !183631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !183721, !noalias !183572
  br label %bb.bv, !dbg !183721

bb.bp:                                            ; preds = %bb.bm
  unreachable

bb.bq:                                            ; preds = %bb.bb
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !183722
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dp)
          to label %.body.thread93 unwind label %bb.bs, !dbg !183725, !noalias !183572

bb.br:                                            ; preds = %bb.bb
  br i1 %.sroa.01.0.i, label %bb.bt, label %.body.thread93, !dbg !183624

bb.bs:                                            ; preds = %bb.bu, %bb.bt, %bb.bq
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !183727, !noalias !183565
  unreachable, !dbg !183727

bb.bt:                                            ; preds = %bb.br
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !183624
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo33err5PyErrECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.dr) #50
          to label %.body.thread93 unwind label %bb.bs, !dbg !183624, !noalias !183572

bb.bu:                                            ; preds = %bb.az, %bb.ay, %bb.aq, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE7or_elseNCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe12constructionNtB2I_11PyDataFrame10from_dictss0_0EB2K_.exit
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe12constructionNtBN_11PyDataFrame10from_dictss1_0EBP_(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.l) #50
          to label %.body.thread93 unwind label %bb.bs, !dbg !183728, !noalias !183565

bb.bv:                                            ; preds = %bb.bo, %bb.bk, %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !183624, !noalias !183572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !183729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !183730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !183542
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.bx unwind label %bb.bw, !dbg !183731

bb.bw:                                            ; preds = %bb.bv
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body64.thread101.thread unwind label %bb.by, !dbg !183733

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit75 unwind label %bb.g, !dbg !183735

bb.by:                                            ; preds = %bb.bw
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !183731
  unreachable, !dbg !183731

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit75: ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !183495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !183332
  br label %bb.bz, !dbg !183325

bb.bz:                                            ; preds = %bb.ce, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !183325
  ret void, !dbg !183737

.body.thread:                                     ; preds = %bb.ag, %.body.thread96
  %eh.lpad-body92 = phi { ptr, i32 } [ %i.br, %.body.thread96 ], [ %i.bq, %bb.ag ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.q) #50
          to label %.body.thread93 unwind label %bb.ca, !dbg !183542

bb.ca:                                            ; preds = %bb.cf, %.body64.thread, %.body.thread, %.body.thread93
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !183738
  unreachable, !dbg !183738

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.ak, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !183495
  br label %bb.cb, !dbg !183452

bb.cb:                                            ; preds = %bb.i, %bb.cd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(64) %i.x)
          to label %bb.ce unwind label %.thread, !dbg !183332

bb.cc:                                            ; preds = %bb.s
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #53, !dbg !183739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !183390
  br label %bb.p, !dbg !183432

bb.cd:                                            ; preds = %bb.r, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !183378
  br label %bb.cb, !dbg !183346

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !183332
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(64) %i.y), !dbg !183325
  br label %bb.bz, !dbg !183325

.body64.thread:                                   ; preds = %bb.aj, %.thread83, %.body64
  %.pn5188 = phi { ptr, i32 } [ %i.ao, %.thread83 ], [ %.pn51, %.body64 ], [ %i.bt, %bb.aj ]
  %.sroa.027.187 = phi i8 [ 1, %.thread83 ], [ %.sroa.027.1, %.body64 ], [ 1, %bb.aj ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(64) %i.x) #50
          to label %.body64.thread101 unwind label %bb.ca, !dbg !183332

bb.cf:                                            ; preds = %.thread, %.body64.thread101
  %.pn5382 = phi { ptr, i32 } [ %i.ab, %.thread ], [ %.pn53, %.body64.thread101 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(64) %i.y) #50
          to label %.body64.thread101.thread unwind label %bb.ca, !dbg !183325

.body64.thread101.thread:                         ; preds = %bb.bw, %.body64.thread101, %bb.cf
  %.pn55 = phi { ptr, i32 } [ %i.ds, %bb.bw ], [ %.pn5382, %bb.cf ], [ %.pn53, %.body64.thread101 ]
  resume { ptr, i32 } %.pn55, !dbg !183738
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCseeLknQCOKOd_13polars_python9dataframe12constructionNtB4_11PyDataFrame25from_arrow_record_batches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !183743 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [64 x i8], align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !183744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !183744
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !183745
  %i.c = load ptr, ptr %i.b, align 8, !dbg !183745, !nonnull !11, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !183758
  %i.e = load i64, ptr %i.d, align 8, !dbg !183758, !noundef !11
  invoke void @_RNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_df(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b, !dbg !183744

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %1) #50
          to label %common.resume unwind label %bb.j, !dbg !183759

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !dbg !183760, !range !1523, !noundef !11
  %i.h = trunc nuw i64 %i.g to i1, !dbg !183762
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !183763 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.g, !dbg !183762

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false), !dbg !183764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !183765
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !183766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false), !dbg !183765
  store i64 1, ptr %0, align 8, !dbg !183766
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !183773
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtBK_5types3any5PyAnyEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECseeLknQCOKOd_13polars_python.exit unwind label %bb.e, !dbg !183774

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.f, !dbg !183776

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !183774
  unreachable, !dbg !183774

common.resume:                                    ; preds = %bb.b, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.k, %bb.e ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !183778

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !183779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !183765
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !183780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !dbg !183744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !183773
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !dbg !183780
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtBK_5types3any5PyAnyEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECseeLknQCOKOd_13polars_python.exit unwind label %bb.h, !dbg !183782

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.i, !dbg !183784

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !183782
  unreachable, !dbg !183782

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.g, %bb.d
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !183786
  ret void, !dbg !183788

bb.j:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !183789
  unreachable, !dbg !183789
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCseeLknQCOKOd_13polars_python9dataframe12constructionNtB4_11PyDataFrame9from_rows(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !183790 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 8 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [104 x i8], align 8               ; 10 uses
  %.sroa.5 = alloca [56 x i8], align 8            ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !183791
  invoke void @_RINvNtCseeLknQCOKOd_13polars_python10conversion19vec_extract_wrappedNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowEB4_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.am, !dbg !183792

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !183793
  %.sroa.03.0.copyload = load i64, ptr %2, align 8, !dbg !183795 ; 2 uses
  %.not = icmp eq i64 %.sroa.03.0.copyload, -9223372036854775808, !dbg !183796
  br i1 %.not, label %bb.c, label %bb.aj, !dbg !183799

bb.c:                                             ; preds = %bb.b, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !183800
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !183800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !183800
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !183800
  store i64 %.sroa.03.0.copyload, ptr %i.o, align 8, !dbg !183800
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !183800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5, i64 56, i1 false), !dbg !183800
  store i64 %3, ptr %i.l, align 8, !dbg !183800
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !183800
  store i64 %4, ptr %i.p, align 8, !dbg !183800
  call void @llvm.experimental.noalias.scope.decl(metadata !183802), !dbg !183805
  %i.q = invoke noundef zeroext i1 @_RNvNtCseeLknQCOKOd_13polars_python7timeout18is_timeout_enabled()
          to label %bb.d unwind label %bb.ai, !dbg !183806, !noalias !183809

bb.d:                                             ; preds = %bb.c
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !183806, !prof !54

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !183811, !noalias !183809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !183811, !noalias !183809
  invoke void @_RNvNtCseeLknQCOKOd_13polars_python5utils13get_traceback(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j)
          to label %bb.k unwind label %bb.ai, !dbg !183811, !noalias !183809

bb.f:                                             ; preds = %bb.o, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.ad, %bb.o ], [ undef, %bb.d ], !dbg !183812
  %.sroa.0.0.i = phi i64 [ %i.ac, %bb.o ], [ 0, %bb.d ], !dbg !183812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !183813, !noalias !183809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !183815, !noalias !183809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %i.l, i64 104, i1 false), !dbg !183815, !noalias !183802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !183816, !noalias !183819
  %i.r = invoke { i64, ptr } @_RNvMs3_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB5_13SuspendAttach3new()
          to label %bb.g unwind label %bb.j, !dbg !183823, !noalias !183819 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.s = extractvalue { i64, ptr } %i.r, 0, !dbg !183823
  %i.t = extractvalue { i64, ptr } %i.r, 1, !dbg !183823
  store i64 %i.s, ptr %i.b, align 8, !dbg !183823, !noalias !183819
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !183823
  store ptr %i.t, ptr %i.u, align 8, !dbg !183823, !noalias !183819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !183824, !noalias !183828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.l, i64 104, i1 false), !dbg !183832, !noalias !183802
  invoke void @_RINvNtCsgjwxzEoLG5s_12polars_error5abort18catch_polars_abortINtNtCscgRAwXFJnXP_4core6result6ResultNtNtCseeLknQCOKOd_13polars_python9dataframe11PyDataFrameNtNtCsbm5zPlkZccl_4pyo33err5PyErrEINtNtNtB11_5panic11unwind_safe16AssertUnwindSafeNCNvMNtB1A_12constructionB1y_9from_rowss_0EEB1C_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsbm5zPlkZccl_4pyo38internal5state13SuspendAttachECseeLknQCOKOd_13polars_python.exit3.i.i unwind label %bb.h, !dbg !183833, !noalias !183834

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.thread unwind label %bb.i, !dbg !183835, !noalias !183819

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsbm5zPlkZccl_4pyo38internal5state13SuspendAttachECseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !183837, !noalias !183828
  call void @_RNvXs4_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !183838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !183840, !noalias !183819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !183841, !noalias !183809
  invoke void @_RNvNtCseeLknQCOKOd_13polars_python7timeout21cancel_polars_timeout(i64 noundef %.sroa.0.0.i, i64 %.sroa.3.0.i)
          to label %bb.q unwind label %bb.p, !dbg !183842, !noalias !183809

bb.i:                                             ; preds = %bb.j, %bb.h
end_hunk_1
begin_hunk_2_@_RNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB4_11PyDataFrame8map_rows:.noexc

bb.x:                                             ; preds = %bb.v
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !186374
  unreachable, !dbg !186374

bb.y:                                             ; preds = %bb.k
  %i.dz = load i64, ptr %i.bw, align 8, !dbg !186380, !range !1523, !noundef !11
  %i.ea = trunc nuw i64 %i.dz to i1, !dbg !186382
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !186383 ; 2 uses
  br i1 %i.ea, label %bb.z, label %bb.ab, !dbg !186382

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.522, ptr noundef nonnull align 8 dereferenceable(64) %i.eb, i64 64, i1 false), !dbg !186384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !186385
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !186386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.522, i64 64, i1 false), !dbg !186385
  store i64 1, ptr %0, align 8, !dbg !186386
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.522), !dbg !186392
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECseeLknQCOKOd_13polars_python.exit, !dbg !186393

bb.aa:                                            ; preds = %bb.ad, %bb.al, %bb.ab
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.bx) #50
          to label %.thread365 unwind label %bb.t, !dbg !186395

bb.ab:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.522, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false), !dbg !186396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !186385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.522, i64 24, i1 false), !dbg !186290
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.522), !dbg !186392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !dbg !186397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !dbg !186399
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i241), !dbg !186400
  %.sroa.0.i241.3.i241.3.i241.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i241, i64 3, !dbg !186400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0.i241.3.i241.3.i241.3..sroa_idx, i8 0, i64 20, i1 false), !dbg !186400, !noalias !186406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i241, ptr noundef nonnull align 1 dereferenceable(3) @514, i64 3, i1 false), !dbg !186409, !noalias !186406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.bt, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.0.i241, i64 23, i1 false), !dbg !186410
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i241), !dbg !186411
  %.sroa.4328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 23, !dbg !186412
  store i8 -61, ptr %.sroa.4328.0..sroa_idx, align 1, !dbg !186412
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bx, i64 8, !dbg !186413
  %i.ef = load ptr, ptr %i.ee, align 8, !dbg !186413, !nonnull !11, !noundef !11
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bx, i64 16, !dbg !186431
  %i.eh = load i64, ptr %i.eg, align 8, !dbg !186431, !noundef !11
  invoke void @_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core6series9any_valueNtB6_6Series25from_any_values_and_dtype(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bt, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ef, i64 noundef %i.eh, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %3, i1 noundef zeroext true)
          to label %bb.ac unwind label %bb.aa, !dbg !186397

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !dbg !186432
  %i.ei = load i64, ptr %i.bu, align 8, !dbg !186433, !range !588, !noundef !11 ; 2 uses
  %.not215 = icmp eq i64 %i.ei, 18, !dbg !186433
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !186436
  %i.ek = load ptr, ptr %i.ej, align 8, !dbg !186436 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.bu, i64 16, !dbg !186436
  %i.em = load ptr, ptr %i.el, align 8, !dbg !186436 ; 2 uses
  br i1 %.not215, label %bb.ad, label %bb.al, !dbg !186437

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !186438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !dbg !186439
  store i64 0, ptr %i.bs, align 8, !dbg !186441, !alias.scope !186444, !noalias !186447
  %.sroa.4.0..sroa_idx.i243 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8, !dbg !186441
  store ptr %i.ek, ptr %.sroa.4.0..sroa_idx.i243, align 8, !dbg !186441, !alias.scope !186444, !noalias !186447
  %.sroa.5.0..sroa_idx.i244 = getelementptr inbounds nuw i8, ptr %i.bs, i64 16, !dbg !186441
  store ptr %i.em, ptr %.sroa.5.0..sroa_idx.i244, align 8, !dbg !186441, !alias.scope !186444, !noalias !186447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !186449, !noalias !186451
  invoke void @_RNvXs7_NtCseeLknQCOKOd_13polars_python6seriesNtB5_8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bs)
          to label %.noexc246 unwind label %bb.aa, !dbg !186455

.noexc246:                                        ; preds = %bb.ad
  %i.en = load i64, ptr %i.ao, align 8, !dbg !186449, !range !1523, !noalias !186451, !noundef !11
  %i.eo = trunc nuw i64 %i.en to i1, !dbg !186456
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !186457
  %.sroa.5304.8.copyload = load ptr, ptr %i.ep, align 8, !dbg !186457, !noalias !186458
  %.sroa.2158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !186459 ; 2 uses
  br i1 %i.eo, label %bb.ae, label %bb.af, !dbg !186456

bb.ae:                                            ; preds = %.noexc246
  %.sroa.9305.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !186460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2158.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9305.8..sroa_idx, i64 56, i1 false), !dbg !186460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !186461, !noalias !186451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !186462
  br label %bb.ag, !dbg !186463

bb.af:                                            ; preds = %.noexc246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !186461, !noalias !186451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !186462
  store i8 0, ptr %.sroa.2158.0..sroa_idx, align 8, !dbg !186465
  br label %bb.ag, !dbg !186466

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %storemerge = phi i64 [ 1, %bb.ae ], [ 0, %bb.af ], !dbg !186459
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !186459
  store ptr %.sroa.5304.8.copyload, ptr %i.eq, align 8, !dbg !186459
  store i64 %storemerge, ptr %0, align 8, !dbg !186459
  br label %bb.ah, !dbg !186467

bb.ah:                                            ; preds = %bb.am, %bb.ag
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.aj unwind label %bb.ai, !dbg !186468

bb.ai:                                            ; preds = %bb.ah
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.thread365 unwind label %bb.ak, !dbg !186470

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECseeLknQCOKOd_13polars_python.exit unwind label %.thread369, !dbg !186472

bb.ak:                                            ; preds = %bb.ai
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !186468
  unreachable, !dbg !186468

bb.al:                                            ; preds = %bb.ac
  %.sroa.4335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24, !dbg !186474
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24, !dbg !186475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !186481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4335.0..sroa_idx, i64 48, i1 false), !dbg !186474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !186438
  store i64 %i.ei, ptr %i.bc, align 8, !dbg !186475
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !186475
  store ptr %i.ek, ptr %.sroa.242.0..sroa_idx, align 8, !dbg !186475
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16, !dbg !186475
  store ptr %i.em, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !186475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !186482
  invoke void @_RNvXs2_NtCseeLknQCOKOd_13polars_python5errorNtNtCsbm5zPlkZccl_4pyo33err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_11PyPolarsErrE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bc)
          to label %bb.am unwind label %bb.aa, !dbg !186482

bb.am:                                            ; preds = %bb.al
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !186484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.et, ptr noundef nonnull align 8 dereferenceable(64) %i.bb, i64 64, i1 false), !dbg !186484
  store i64 1, ptr %0, align 8, !dbg !186484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !186485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !186481
  br label %bb.ah, !dbg !186486

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.aj, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !dbg !186395
  br label %bb.u, !dbg !186393

bb.an:                                            ; preds = %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEEECseeLknQCOKOd_13polars_python.exit
  %.sroa.051.0 = phi i64 [ %i.fc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEEECseeLknQCOKOd_13polars_python.exit ], [ 0, %bb.i ], !dbg !186488 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186489), !dbg !186492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !186497
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186501), !dbg !186504
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186513), !dbg !186504
  %i.eu = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !186515, !alias.scope !186517, !noalias !186526, !noundef !11 ; 2 uses
  %i.ev = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !186530, !alias.scope !186531, !noalias !186532, !noundef !11
  %i.ew = icmp ult i64 %i.eu, %i.ev, !dbg !186515
  br i1 %i.ew, label %bb.ao, label %bb.ap, !dbg !186504

bb.ao:                                            ; preds = %bb.an
  %i.ex = add nuw i64 %i.eu, 1, !dbg !186533
  store i64 %i.ex, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !186536, !alias.scope !186537, !noalias !186538
  invoke fastcc void @_RNCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB6_11PyDataFrame8map_rowss0_0B8_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dj) #56
          to label %bb.ar unwind label %.body289.thread388.loopexit, !dbg !186539

bb.ap:                                            ; preds = %bb.an
  store i64 2, ptr %i.an, align 8, !dbg !186545, !noalias !186546
  br label %bb.ar, !dbg !186547

.thread435:                                       ; preds = %bb.fg, %bb.fc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECseeLknQCOKOd_13polars_python.exit.i163.i
  %lpad.thr_comm433 = landingpad { ptr, i32 }
          cleanup
  br label %.thread365, !dbg !186548

bb.aq:                                            ; preds = %bb.bb
  %lpad.thr_comm.split-lp434 = landingpad { ptr, i32 }
          cleanup
  br label %.body289.thread388, !dbg !186548

.body289.thread388.loopexit:                      ; preds = %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body289.thread388

.body289.thread388.loopexit.split-lp:             ; preds = %bb.at, %bb.au, %bb.ay, %bb.az, %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit, %bb.gt
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body289.thread388

.body289:                                         ; preds = %bb.fi, %bb.ge, %bb.gm
  %lpad.thr_comm.split-lp387 = landingpad { ptr, i32 }
          cleanup
  br label %.thread365, !dbg !186548

bb.ar:                                            ; preds = %bb.ao, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.br, ptr noundef nonnull align 8 dereferenceable(72) %i.an, i64 72, i1 false), !dbg !186549, !noalias !186489
  %i.ey = load i64, ptr %i.br, align 8, !dbg !186553, !range !13185, !noundef !11 ; 3 uses
  %i.ez = icmp ne i64 %i.ey, 3, !dbg !186553
  tail call void @llvm.assume(i1 %i.ez), !dbg !186556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !186557
  %cond = icmp eq i64 %i.ey, 0, !dbg !186558
  %i.fa = load ptr, ptr %.sroa.3161.0..sroa_idx, align 8 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, @_Py_NoneStruct
  %or.cond = select i1 %cond, i1 %i.fb, i1 false, !dbg !186558
  br i1 %or.cond, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEEECseeLknQCOKOd_13polars_python.exit, label %bb.as, !dbg !186558

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.ar
  %i.fc = add i64 %.sroa.051.0, 1, !dbg !186561
  store i64 3, ptr %i.br, align 8, !dbg !186562
  tail call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #53, !dbg !186571, !noalias !186577
  br label %bb.an, !dbg !186272

bb.as:                                            ; preds = %bb.ar
  switch i64 %i.ey, label %bb.aw [
    i64 2, label %bb.at
    i64 0, label %bb.ba
  ], !dbg !186582

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !186587
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromReE4fromCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @515, i64 noundef 131, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @516)
          to label %bb.au unwind label %.body289.thread388.loopexit.split-lp, !dbg !186590

bb.au:                                            ; preds = %bb.at
  %.sroa.2307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !186593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2307.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !dbg !186603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !186604
  store i64 2, ptr %i.ay, align 8, !dbg !186593, !alias.scope !186605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !186609
  invoke void @_RNvXs2_NtCseeLknQCOKOd_13polars_python5errorNtNtCsbm5zPlkZccl_4pyo33err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_11PyPolarsErrE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ax, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ay)
          to label %bb.av unwind label %.body289.thread388.loopexit.split-lp, !dbg !186609

bb.av:                                            ; preds = %bb.au
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !186615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fd, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i64 64, i1 false), !dbg !186615
  store i64 1, ptr %0, align 8, !dbg !186615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !186616
  br label %bb.gv, !dbg !186617

bb.aw:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !186619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !186623
  %i.fe = getelementptr inbounds nuw i8, ptr %i.br, i64 64, !dbg !186624
  %i.ff = load atomic i32, ptr %i.fe acquire, align 8, !dbg !186642
  %i.fg = icmp eq i32 %i.ff, 0, !dbg !186644
  br i1 %i.fg, label %bb.ax, label %bb.ay, !dbg !186644, !prof !753

bb.ax:                                            ; preds = %bb.aw
  %i.fh = getelementptr inbounds nuw i8, ptr %i.br, i64 24, !dbg !186645
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !186648, !range !1523, !noundef !11
  %i.fj = trunc nuw i64 %i.fi to i1, !dbg !186649
  %i.fk = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8
  %.not.i258 = icmp ne ptr %i.fl, null
  %or.cond440.not = select i1 %i.fj, i1 %.not.i258, i1 false, !dbg !186649
  br i1 %or.cond440.not, label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit, label %bb.az, !dbg !186649, !prof !13787

bb.ay:                                            ; preds = %bb.aw
  %i.fm = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState15make_normalized(ptr noundef nonnull align 8 %.sroa.3161.0..sroa_idx)
          to label %_RNvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB5_10PyErrState13as_normalized.exit unwind label %.body289.thread388.loopexit.split-lp, !dbg !186650

bb.az:                                            ; preds = %bb.ax
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @547) #55
          to label %.noexc260 unwind label %.body289.thread388.loopexit.split-lp, !dbg !186651

.noexc260:                                        ; preds = %bb.az
  unreachable, !dbg !186651

bb.ba:                                            ; preds = %bb.as
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 8, !dbg !186652
  %i.fo = load ptr, ptr %i.fn, align 8, !dbg !186652, !noalias !186661, !noundef !11
  %i.fp = tail call noundef i64 @PyType_GetFlags(ptr noundef %i.fo) #53, !dbg !186665, !noalias !186661
  %i.fq = and i64 %i.fp, 67108864, !dbg !186668
  %.not.i261 = icmp eq i64 %i.fq, 0, !dbg !186669
  br i1 %.not.i261, label %bb.fi, label %bb.bb, !dbg !186670

bb.bb:                                            ; preds = %bb.ba
  %i.fr = invoke noundef i64 @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.3161.0..sroa_idx)
          to label %bb.bc unwind label %bb.aq, !dbg !186671

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.661), !dbg !186672
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.667), !dbg !186672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !186672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !dbg !186674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bo, ptr noundef nonnull align 8 dereferenceable(120) %i.br, i64 120, i1 false), !dbg !186674
  call void @llvm.experimental.noalias.scope.decl(metadata !186675), !dbg !186672
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.i), !dbg !186678
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !186678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !186678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !186678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !186678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !186678, !noalias !186681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !186683, !noalias !186681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !186684, !noalias !186681
  store i8 0, ptr %i.ak, align 16, !dbg !186684, !noalias !186681
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(48) %i.ak, i64 noundef %i.fr)
          to label %bb.be unwind label %bb.fa, !dbg !186685, !noalias !186681

.body135.thread197.i:                             ; preds = %.body135.thread.i, %bb.ea, %.body135.i, %bb.bf, %bb.bd
  %.pn48.pn.i = phi { ptr, i32 } [ %i.md, %bb.ea ], [ %.pn.i, %bb.bf ], [ %i.fs, %bb.bd ], [ %lpad.thr_comm.split-lp201.i, %.body135.i ], [ %.pn48194.i, %.body135.thread.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #50
          to label %.body137.i unwind label %bb.ei, !dbg !186688, !noalias !186681

bb.bd:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowEECseeLknQCOKOd_13polars_python.exit151.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body135.thread197.i

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !186683, !noalias !186681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !186690, !noalias !186681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !186696, !noalias !186681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !186697, !noalias !186681
  store i64 0, ptr %i.aj, align 8, !dbg !186698, !noalias !186681
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !186698
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.427.0..sroa_idx.i, align 8, !dbg !186698, !noalias !186681
  %.sroa.5.0..sroa_idx.i264 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !186698
  store i64 0, ptr %.sroa.5.0..sroa_idx.i264, align 8, !dbg !186698, !noalias !186681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !186702, !noalias !186681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ai, ptr noundef nonnull align 8 dereferenceable(120) %i.bo, i64 120, i1 false), !dbg !186704, !noalias !186675
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ai, i64 120, !dbg !186705 ; 2 uses
  store ptr %i.am, ptr %i.ft, align 8, !dbg !186705, !alias.scope !186710, !noalias !186713
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ai, i64 128, !dbg !186705 ; 2 uses
  store ptr %i.aj, ptr %i.fu, align 8, !dbg !186705, !alias.scope !186710, !noalias !186713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !186717, !noalias !186681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !186719, !noalias !186681
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %bb.bg unwind label %.body135.thread202.i, !dbg !186719, !noalias !186681

bb.bf:                                            ; preds = %.body59.i
  br i1 %.sroa.024.2.i, label %.body135.thread.i, label %.body135.thread197.i, !dbg !186728

.body135.thread202.i:                             ; preds = %bb.el, %bb.bh, %bb.be
  %lpad.thr_comm200.i = landingpad { ptr, i32 }
          cleanup
  br label %.body135.thread.i, !dbg !186728

.body135.i:                                       ; preds = %bb.eb
  %lpad.thr_comm.split-lp201.i = landingpad { ptr, i32 }
          cleanup
  br label %.body135.thread197.i, !dbg !186728

bb.bg:                                            ; preds = %bb.be
  %i.fv = load i64, ptr %i.ab, align 8, !dbg !186719, !range !1523, !noalias !186681, !noundef !11
  %i.fw = trunc nuw i64 %i.fv to i1, !dbg !186729
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !186730
  %i.fy = load i64, ptr %i.fx, align 8, !dbg !186730, !range !1958, !noalias !186681, !noundef !11 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ab, i64 16, !dbg !186730 ; 2 uses
  br i1 %i.fw, label %bb.bh, label %bb.bi, !dbg !186729, !prof !54

bb.bh:                                            ; preds = %bb.bg
  %i.ga = load i64, ptr %i.fz, align 8, !dbg !186731, !noalias !186681
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.fy, i64 %i.ga) #51
          to label %bb.ez unwind label %.body135.thread202.i, !dbg !186732, !noalias !186681

bb.bi:                                            ; preds = %bb.bg
  %i.gb = load ptr, ptr %i.fz, align 8, !dbg !186734, !noalias !186681, !nonnull !11, !noundef !11
  %i.gc = icmp ule i64 %4, %i.fy, !dbg !186735
  call void @llvm.assume(i1 %i.gc), !dbg !186739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !186742, !noalias !186681
  store i64 %i.fy, ptr %i.ah, align 8, !dbg !186743, !noalias !186681
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !186743 ; 4 uses
  store ptr %i.gb, ptr %i.gd, align 8, !dbg !186743, !noalias !186681
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !186743 ; 5 uses
  store i64 0, ptr %i.ge, align 8, !dbg !186743, !noalias !186681
  %i.gf = icmp eq i64 %4, 0, !dbg !186744
  br i1 %i.gf, label %.loopexit.i, label %.lr.ph.i, !dbg !186744

.lr.ph.i:                                         ; preds = %bb.bi
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ai, i64 104 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br label %bb.bj, !dbg !186744

bb.bj:                                            ; preds = %bb.eu, %.lr.ph.i
  %.pre222.i = phi i64 [ 0, %.lr.ph.i ], [ %i.mu, %bb.eu ]
  %.sroa.0.0213.i = phi i64 [ %4, %.lr.ph.i ], [ %i.gj, %bb.eu ]
  %i.gj = add nsw i64 %.sroa.0.0213.i, -1, !dbg !186750 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ai, align 8, !dbg !186751, !alias.scope !186763, !noalias !186766 ; 3 uses
  store i64 3, ptr %i.ai, align 8, !dbg !186768, !alias.scope !186763, !noalias !186766
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 3, !dbg !186770
  br i1 %.not.i.i, label %bb.bl, label %bb.bk, !dbg !186771

bb.bk:                                            ; preds = %bb.bj
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.z, align 8, !dbg !186772, !noalias !186681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i, i64 64, i1 false), !dbg !186772, !noalias !186681
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.i, !dbg !186773

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !186774), !dbg !186777
  call void @llvm.experimental.noalias.scope.decl(metadata !186781), !dbg !186777
  %i.gk = load i64, ptr %i.gg, align 8, !dbg !186783, !alias.scope !186785, !noalias !186792, !noundef !11 ; 2 uses
  %i.gl = load i64, ptr %i.gh, align 8, !dbg !186794, !alias.scope !186795, !noalias !186796, !noundef !11
  %i.gm = icmp ult i64 %i.gk, %i.gl, !dbg !186783
  br i1 %i.gm, label %bb.bm, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.thread.i, !dbg !186777

bb.bm:                                            ; preds = %bb.bl
  %i.gn = add nuw i64 %i.gk, 1, !dbg !186797
  store i64 %i.gn, ptr %i.gg, align 8, !dbg !186800, !alias.scope !186801, !noalias !186802
  invoke fastcc void @_RNCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB6_11PyDataFrame8map_rowss0_0B8_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.gi) #56
          to label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exitthread-pre-split.i unwind label %.loopexit206.i, !dbg !186803

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCseeLknQCOKOd_13polars_python9dataframe3mapNtB1U_11PyDataFrame8map_rowss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.thread.i: ; preds = %bb.bl
  store i64 2, ptr %i.z, align 8, !dbg !186806, !noalias !186681
  br label %.loopexit.i, !dbg !186807
end_hunk_2
