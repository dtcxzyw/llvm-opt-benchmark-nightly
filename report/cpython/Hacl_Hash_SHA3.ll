inline.NumInlined: 790
inline.NumDeleted: 5
begin_hunk_0_@llvm.lifetime.end.p0
; Function Attrs: nofree nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = alloca [256 x i8], align 16              ; 9 uses
  %i.c = alloca [256 x i8], align 16              ; 18 uses
  %i.d = alloca [256 x i8], align 16              ; 9 uses
  %i.e = and i8 %0, -2
  %or.cond = icmp eq i8 %i.e, 12
  %. = select i1 %or.cond, i8 31, i8 6            ; 2 uses
  %.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.0.i.sroa.gep1358 = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.0.i.sroa.gep1397 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  switch i8 %0, label %bb.b [
    i8 9, label %switch.lookup
    i8 8, label %4
    i8 10, label %5
    i8 11, label %6
    i8 12, label %7
    i8 13, label %4
  ]

4:                                                ; preds = %bb.a, %bb.a
  %.0.i.sroa.gep1398 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.0.i.sroa.gep1359 = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %.0.i.sroa.gep1353 = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  br label %switch.lookup

5:                                                ; preds = %bb.a
  %.0.i.sroa.gep1399 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.0.i.sroa.gep1360 = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.0.i.sroa.gep1354 = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  br label %switch.lookup

6:                                                ; preds = %bb.a
  %.0.i.sroa.gep1400 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.0.i.sroa.gep1361 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.0.i.sroa.gep1355 = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  br label %switch.lookup

7:                                                ; preds = %bb.a
  %.0.i.sroa.gep1401 = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.0.i.sroa.gep1362 = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.0.i.sroa.gep1356 = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  br label %switch.lookup

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !10
end_hunk_0
begin_hunk_1_@_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3:bb.a
  tail call void @exit(i32 noundef 253) #19
  unreachable

switch.lookup:                                    ; preds = %bb.a, %4, %5, %6, %7
  %.0.i.sroa.phi = phi ptr [ %.0.i.sroa.gep, %bb.a ], [ %.0.i.sroa.gep1353, %4 ], [ %.0.i.sroa.gep1354, %5 ], [ %.0.i.sroa.gep1355, %6 ], [ %.0.i.sroa.gep1356, %7 ]
  %.0.i.sroa.phi1357 = phi ptr [ %.0.i.sroa.gep1358, %bb.a ], [ %.0.i.sroa.gep1359, %4 ], [ %.0.i.sroa.gep1360, %5 ], [ %.0.i.sroa.gep1361, %6 ], [ %.0.i.sroa.gep1362, %7 ]
  %.0.i.sroa.phi1396 = phi ptr [ %.0.i.sroa.gep1397, %bb.a ], [ %.0.i.sroa.gep1398, %4 ], [ %.0.i.sroa.gep1399, %5 ], [ %.0.i.sroa.gep1400, %6 ], [ %.0.i.sroa.gep1401, %7 ]
  %.0.i = phi i64 [ 144, %bb.a ], [ 136, %4 ], [ 104, %5 ], [ 72, %6 ], [ 168, %7 ] ; 2 uses
  %8 = phi i32 [ 144, %bb.a ], [ 136, %4 ], [ 104, %5 ], [ 72, %6 ], [ 168, %7 ] ; 2 uses
  %i.h = icmp eq i32 %3, %8
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %9 = sub nuw nsw i64 256, %.0.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.0.i.sroa.phi1396, i8 0, i64 %9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 %.0.i, i1 false)
  call fastcc void @absorb_inner_32(ptr noundef %i.a, ptr noundef %1)
  %.sroa.0.sroa.0.0.insert.ext = zext nneg i8 %. to i64
  %i.i = load i64, ptr %1, align 8, !tbaa !15
end_hunk_1
begin_hunk_2_@_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3:bb.a
  store i64 %i.j, ptr %1, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.k = getelementptr i8, ptr %.0.i.sroa.phi1357, i64 -1
  store i8 -128, ptr %i.k, align 1, !tbaa !18
  call fastcc void @absorb_inner_32(ptr noundef %i.b, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
end_hunk_2
begin_hunk_3_@_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3:bb.a
bb.d:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.l = urem i32 %3, %8
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  %i.o = zext nneg i32 %i.l to i64                ; 3 uses
end_hunk_3
begin_hunk_4_@_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3:bb.a
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  %i.cc = getelementptr i8, ptr %.0.i.sroa.phi, i64 -1
  store i8 -128, ptr %i.cc, align 1, !tbaa !18
  call fastcc void @absorb_inner_32(ptr noundef %i.d, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
end_hunk_4
