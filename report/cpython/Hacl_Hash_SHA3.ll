inline.NumInlined: 790
inline.NumDeleted: 5
begin_hunk_0
@.str.1 = private unnamed_addr constant [34 x i8] c"../Modules/_hacl/Hacl_Hash_SHA3.c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"KaRaMeL incomplete match at %s:%d\0A\00", align 1
@switch.table.digest_.21 = private unnamed_addr constant [6 x i64] [i64 136, i64 144, i64 104, i64 72, i64 168, i64 136], align 8
@switch.table.digest_.22 = private unnamed_addr constant [4 x i32] [i32 136, i32 144, i32 104, i32 72], align 4
@switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len = private unnamed_addr constant [6 x i32] [i32 136, i32 144, i32 104, i32 72, i32 168, i32 136], align 4
@switch.table._Py_LibHacl_Hacl_Hash_SHA3_hash_len = private unnamed_addr constant [4 x i32] [i32 32, i32 28, i32 48, i32 64], align 4

end_hunk_0
begin_hunk_1_@_Py_LibHacl_Hacl_Hash_SHA3_malloc:bb.a

block_len.exit:                                   ; preds = %bb.a
  %i.c = zext nneg i8 %0 to i64
  %i.d = getelementptr [8 x i8], ptr @switch.table.digest_.21, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -64
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.e = tail call noalias ptr @calloc(i64 noundef %switch.load, i64 noundef 1) #21 ; 4 uses
end_hunk_1
begin_hunk_2_@_Py_LibHacl_Hacl_Hash_SHA3_copy:bb.a
block_len.exit:                                   ; preds = %bb.a
  %switch.tableidx = add i64 %.sroa.038.0.copyload, 248
  %i.c = and i64 %switch.tableidx, 255
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.21, i64 %i.c
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.d = tail call noalias ptr @calloc(i64 noundef %switch.load, i64 noundef 1) #21 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
end_hunk_2
begin_hunk_3_@_Py_LibHacl_Hacl_Hash_SHA3_copy:bb.a
switch.lookup:                                    ; preds = %block_len.exit
  %switch.tableidx56 = add i64 %.sroa.038.0.copyload, 248
  %i.f = and i64 %switch.tableidx56, 255
  %switch.gep57 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.21, i64 %i.f
  %switch.load58 = load i64, ptr %switch.gep57, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.540.0.copyload, i64 %switch.load58, i1 false)
  %i.g = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 25, i64 noundef 8) #21 ; 4 uses
end_hunk_3
begin_hunk_4_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a
  %3 = alloca %struct.Hacl_Hash_SHA3_hash_buf_s, align 8 ; 2 uses
  %.sroa.697 = alloca [7 x i8], align 1           ; 2 uses
  %4 = alloca %struct.Hacl_Hash_SHA3_hash_buf_s, align 8 ; 3 uses
  %.sroa.0159.0.copyload = load i8, ptr %0, align 8, !tbaa !18 ; 27 uses
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
end_hunk_4
begin_hunk_5_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a

switch.lookup:                                    ; preds = %bb.b
  %i.g = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.21, i64 %i.g
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.h = urem i64 %.sroa.5162.0.copyload, %switch.load
  %i.i = icmp eq i64 %i.h, 0
end_hunk_5
begin_hunk_6_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a

switch.lookup398:                                 ; preds = %switch.lookup
  %i.k = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.l = getelementptr [8 x i8], ptr @switch.table.digest_.21, i64 %i.k
  %switch.gep399 = getelementptr i8, ptr %i.l, i64 -64
  %switch.load400 = load i64, ptr %switch.gep399, align 8
  %i.m = urem i64 %.sroa.5162.0.copyload, %switch.load400
end_hunk_6
begin_hunk_7_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a
  unreachable

block_len.exit212:                                ; preds = %bb.d, %block_len.exit208.thread279, %block_len.exit208.thread276, %block_len.exit208.thread273, %block_len.exit208, %bb.e, %bb.f, %bb.g, %bb.h
  %.0194272 = phi i32 [ %.0194, %block_len.exit208 ], [ %.0194, %bb.e ], [ %.0194, %bb.h ], [ %.0194, %bb.f ], [ %.0194, %bb.g ], [ 104, %block_len.exit208.thread273 ], [ 72, %block_len.exit208.thread276 ], [ 168, %block_len.exit208.thread279 ], [ 144, %bb.d ] ; 3 uses
  %.0.i211 = phi i32 [ 144, %block_len.exit208 ], [ 136, %bb.e ], [ 168, %bb.h ], [ 104, %bb.f ], [ 72, %bb.g ], [ 104, %block_len.exit208.thread273 ], [ 72, %block_len.exit208.thread276 ], [ 168, %block_len.exit208.thread279 ], [ 144, %bb.d ]
  %i.o = sub nsw i32 %.0.i211, %.0194272
  %.not = icmp ugt i32 %2, %i.o
end_hunk_7
begin_hunk_8_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %.sroa.4119.0.copyload = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.p = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.q = getelementptr [8 x i8], ptr @switch.table.digest_.21, i64 %i.p
  %switch.gep403 = getelementptr i8, ptr %i.q, i64 -64
  %switch.load404 = load i64, ptr %switch.gep403, align 8
  %i.r = urem i64 %.sroa.5162.0.copyload, %switch.load404
end_hunk_8
begin_hunk_9_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a
  br i1 %or.cond3, label %switch.lookup406, label %switch.lookup410

switch.lookup406:                                 ; preds = %switch.lookup402
  %switch.gep407 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.21, i64 %i.t
  %switch.load408 = load i64, ptr %switch.gep407, align 8
  br label %block_len.exit216

switch.lookup410:                                 ; preds = %switch.lookup402
  %switch.gep411 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.21, i64 %i.t
  %switch.load412 = load i64, ptr %switch.gep411, align 8
  %i.u = urem i64 %.sroa.5162.0.copyload, %switch.load412
  br label %block_len.exit216
end_hunk_9
begin_hunk_10_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a

bb.i:                                             ; preds = %block_len.exit212
  %i.x = icmp eq i32 %.0194272, 0
  br i1 %i.x, label %switch.lookup414, label %block_len.exit244

switch.lookup414:                                 ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.697, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4160.0..sroa_idx, i64 7, i1 false)
end_hunk_10
begin_hunk_11_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a
  %.sroa.5103.0.copyload = load ptr, ptr %.sroa.5103.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %.sroa.6104.0.copyload = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21 ; 3 uses
  %i.y = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.z = getelementptr [8 x i8], ptr @switch.table.digest_.21, i64 %i.y
  %switch.gep415 = getelementptr i8, ptr %i.z, i64 -64
  %switch.load416 = load i64, ptr %switch.gep415, align 8
  %i.aa = urem i64 %.sroa.5162.0.copyload, %switch.load416
end_hunk_11
begin_hunk_12_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a

switch.lookup418:                                 ; preds = %switch.lookup414
  %i.ac = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.ad = getelementptr [8 x i8], ptr @switch.table.digest_.21, i64 %i.ac
  %switch.gep419 = getelementptr i8, ptr %i.ad, i64 -64
  %switch.load420 = load i64, ptr %switch.gep419, align 8
  %i.ae = urem i64 %.sroa.5162.0.copyload, %switch.load420
end_hunk_12
begin_hunk_13_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a

block_len.exit238.thread:                         ; preds = %block_len.exit236.thread, %block_len.exit236
  %.ph313 = phi i32 [ %i.as, %block_len.exit236.thread ], [ %i.aw, %block_len.exit236 ]
  %i.ax = mul i32 %.ph313, 144
  br label %block_len.exit240

block_len.exit238.thread317:                      ; preds = %block_len.exit236.thread303, %block_len.exit236
  %.ph316 = phi i32 [ %i.at, %block_len.exit236.thread303 ], [ %i.aw, %block_len.exit236 ]
  %i.ay = mul nuw i32 %.ph316, 104
  br label %block_len.exit240

block_len.exit238.thread321:                      ; preds = %block_len.exit236.thread307, %block_len.exit236
  %.ph320 = phi i32 [ %i.au, %block_len.exit236.thread307 ], [ %i.aw, %block_len.exit236 ]
  %i.az = mul nuw i32 %.ph320, 72
  br label %block_len.exit240

block_len.exit238.thread325:                      ; preds = %block_len.exit236.thread311, %block_len.exit236
  %.ph324 = phi i32 [ %i.av, %block_len.exit236.thread311 ], [ %i.aw, %block_len.exit236 ]
  %i.ba = mul i32 %.ph324, 168
  br label %block_len.exit240

block_len.exit238:                                ; preds = %block_len.exit236, %block_len.exit236
  %i.bb = mul nuw i32 %i.aw, 136                  ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable370 [
    i8 9, label %block_len.exit240
    i8 8, label %bb.k
end_hunk_13
begin_hunk_14_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a
  unreachable

block_len.exit240:                                ; preds = %block_len.exit238.thread325, %block_len.exit238.thread321, %block_len.exit238.thread317, %block_len.exit238.thread, %block_len.exit238, %bb.k, %bb.l, %bb.m, %bb.n
  %i.bc = phi i32 [ %i.bb, %block_len.exit238 ], [ %i.bb, %bb.k ], [ %i.ax, %block_len.exit238.thread ], [ %i.bb, %bb.l ], [ %i.bb, %bb.m ], [ %i.ay, %block_len.exit238.thread317 ], [ %i.az, %block_len.exit238.thread321 ], [ %i.ba, %block_len.exit238.thread325 ], [ %i.bb, %bb.n ] ; 3 uses
  %.0.i239 = phi i32 [ 144, %block_len.exit238 ], [ 136, %bb.k ], [ 144, %block_len.exit238.thread ], [ 104, %bb.l ], [ 72, %bb.m ], [ 104, %block_len.exit238.thread317 ], [ 72, %block_len.exit238.thread321 ], [ 168, %block_len.exit238.thread325 ], [ 168, %bb.n ]
  %i.bd = sub i32 %2, %i.bc
  %.pn395 = zext i32 %i.bc to i64
  %5 = getelementptr i8, ptr %1, i64 %.pn395
  %i.be = udiv i32 %i.bc, %.0.i239
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0159.0.copyload, ptr noundef %.sroa.5103.0.copyload, ptr noundef %1, i32 noundef %i.be)
  %i.bf = zext i32 %i.bd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6104.0.copyload, ptr align 1 %5, i64 %i.bf, i1 false)
  %i.bg = add i64 %.sroa.5162.0.copyload, %i.a
  store i8 %.sroa.0159.0.copyload, ptr %0, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4160.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.697, i64 7, i1 false)
  store ptr %.sroa.5103.0.copyload, ptr %.sroa.5103.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

block_len.exit244:                                ; preds = %bb.i
  %.sroa.454.0.copyload328 = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %switch.tableidx431 = add nsw i8 %.sroa.0159.0.copyload, -8 ; 2 uses
  %6 = zext nneg i8 %switch.tableidx431 to i64
  %switch.gep433 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %6
  %switch.load434 = load i32, ptr %switch.gep433, align 4
  %7 = zext nneg i8 %switch.tableidx431 to i64
  %switch.gep435 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.21, i64 %7
  %switch.load436 = load i64, ptr %switch.gep435, align 8
  %8 = sub nsw i32 %switch.load434, %.0194272     ; 3 uses
  %9 = zext i32 %8 to i64                         ; 3 uses
  %10 = getelementptr i8, ptr %1, i64 %9          ; 2 uses
  %i.bh = urem i64 %.sroa.5162.0.copyload, %switch.load436
  %i.bi = icmp eq i64 %i.bh, 0
  %or.cond10 = and i1 %i.j, %i.bi
  %switch.tableidx429 = add nsw i8 %.sroa.0159.0.copyload, -8
end_hunk_14
begin_hunk_15_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a
  br i1 %or.cond10, label %switch.lookup430, label %switch.lookup434

switch.lookup430:                                 ; preds = %block_len.exit244
  %switch.gep431 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.21, i64 %i.bj
  %switch.load432 = load i64, ptr %switch.gep431, align 8
  br label %block_len.exit246

switch.lookup434:                                 ; preds = %block_len.exit244
  %switch.gep435.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.21, i64 %i.bj
  %switch.load436.a = load i64, ptr %switch.gep435.a, align 8
  %i.bk = urem i64 %.sroa.5162.0.copyload, %switch.load436.a
  br label %block_len.exit246
end_hunk_15
begin_hunk_16_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a
block_len.exit246:                                ; preds = %switch.lookup430, %switch.lookup434
  %.0198 = phi i64 [ %i.bk, %switch.lookup434 ], [ %switch.load432, %switch.lookup430 ]
  %i.bl = getelementptr i8, ptr %.sroa.454.0.copyload328, i64 %.0198
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %1, i64 %9, i1 false)
  %i.bm = add i64 %.sroa.5162.0.copyload, %9      ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  store ptr %.sroa.454.0.copyload328, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21
  store i64 %i.bm, ptr %.sroa.5162.0..sroa_idx, align 8, !tbaa !15
end_hunk_16
begin_hunk_17_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %i.bo = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.bp = getelementptr [8 x i8], ptr @switch.table.digest_.21, i64 %i.bo
  %switch.gep439 = getelementptr i8, ptr %i.bp, i64 -64
  %switch.load440 = load i64, ptr %switch.gep439, align 8
  %i.bq = urem i64 %i.bm, %switch.load440
end_hunk_17
begin_hunk_18_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a

switch.lookup442:                                 ; preds = %block_len.exit246
  %i.bt = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.bu = getelementptr [8 x i8], ptr @switch.table.digest_.21, i64 %i.bt
  %switch.gep443 = getelementptr i8, ptr %i.bu, i64 -64
  %switch.load444 = load i64, ptr %switch.gep443, align 8
  %i.bv = urem i64 %i.bm, %switch.load444
end_hunk_18
begin_hunk_19_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a
  br label %switch.lookup448

switch.lookup448:                                 ; preds = %switch.lookup460.a, %switch.lookup442
  %i.cd = sub i32 %2, %8                          ; 9 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.cg = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.cf
end_hunk_19
begin_hunk_20_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a
  %switch.load450 = load i32, ptr %switch.gep449, align 4
  %i.ch = urem i32 %i.cd, %switch.load450
  %i.ci = icmp ne i32 %i.ch, 0
  %.not203 = icmp eq i32 %2, %8
  %or.cond206 = select i1 %i.ci, i1 true, i1 %.not203
  br i1 %or.cond206, label %switch.lookup452, label %bb.p

end_hunk_20
begin_hunk_21_@_Py_LibHacl_Hacl_Hash_SHA3_update:bb.a
switch.lookup456:                                 ; preds = %block_len.exit268
  %i.da = mul i32 %.0.i267, %i.cw                 ; 3 uses
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr i8, ptr %10, i64 %i.db
  %i.dd = sub i32 %i.cd, %i.da
  %i.de = zext nneg i8 %switch.tableidx455 to i64
  %switch.gep457 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.de
  %switch.load458 = load i32, ptr %switch.gep457, align 4
  %i.df = udiv i32 %i.da, %switch.load458
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0.0.copyload, ptr noundef %.sroa.5.0.copyload, ptr noundef %10, i32 noundef %i.df)
  %i.dg = zext i32 %i.dd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.454.0.copyload328, ptr align 1 %i.dc, i64 %i.dg, i1 false)
  %i.dh = add i64 %i.bm, %i.ce
end_hunk_21
begin_hunk_22_@digest_:bb.a

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.21, i64 %i.e
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.f = urem i64 %.sroa.6.0.copyload, %switch.load
  %i.g = icmp eq i64 %i.f, 0
end_hunk_22
begin_hunk_23_@digest_:bb.a

switch.lookup112:                                 ; preds = %switch.lookup
  %i.i = zext nneg i8 %0 to i64
  %i.j = getelementptr [8 x i8], ptr @switch.table.digest_.21, i64 %i.i
  %switch.gep113 = getelementptr i8, ptr %i.j, i64 -64
  %switch.load114 = load i64, ptr %switch.gep113, align 8
  %i.k = urem i64 %.sroa.6.0.copyload, %switch.load114
end_hunk_23
begin_hunk_24_@digest_:bb.a
switch.lookup118:                                 ; preds = %block_len.exit67
  %switch.tableidx117 = add nsw i8 %0, -8         ; 2 uses
  %i.al = zext nneg i8 %switch.tableidx117 to i64
  %switch.gep119 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.digest_.22, i64 %i.al
  %switch.load120 = load i32, ptr %switch.gep119, align 4
  %i.am = zext nneg i8 %switch.tableidx117 to i64
  %switch.gep121 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_hash_len, i64 %i.am
end_hunk_24
