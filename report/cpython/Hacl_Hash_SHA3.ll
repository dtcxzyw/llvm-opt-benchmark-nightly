inline.NumInlined: 790
inline.NumDeleted: 5
begin_hunk_0_@llvm.lifetime.end.p0
; Function Attrs: nofree nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 18 uses
  %i.d = alloca [256 x i8], align 16              ; 5 uses
  %i.e = and i8 %0, -2
  %or.cond = icmp eq i8 %i.e, 12
  %. = select i1 %or.cond, i8 31, i8 6            ; 2 uses
  %switch.tableidx = add i8 %0, -8                ; 2 uses
  %4 = icmp ult i8 %switch.tableidx, 6
  br i1 %4, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !10
end_hunk_0
begin_hunk_1_@_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3:bb.a
  tail call void @exit(i32 noundef 253) #19
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %5 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %5
  %switch.load = load i32, ptr %switch.gep, align 4 ; 3 uses
  %i.h = icmp eq i32 %3, %switch.load
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %6 = zext nneg i32 %3 to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 %6, i1 false)
  call fastcc void @absorb_inner_32(ptr noundef %i.a, ptr noundef %1)
  %.sroa.0.sroa.0.0.insert.ext = zext nneg i8 %. to i64
  %i.i = load i64, ptr %1, align 8, !tbaa !15
end_hunk_1
begin_hunk_2_@_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3:bb.a
  store i64 %i.j, ptr %1, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %7 = getelementptr i8, ptr %i.b, i64 %6
  %i.k = getelementptr i8, ptr %7, i64 -1
  store i8 -128, ptr %i.k, align 1, !tbaa !18
  call fastcc void @absorb_inner_32(ptr noundef %i.b, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
end_hunk_2
begin_hunk_3_@_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3:bb.a
bb.d:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.l = urem i32 %3, %switch.load
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  %i.o = zext nneg i32 %i.l to i64                ; 3 uses
end_hunk_3
begin_hunk_4_@_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3:bb.a
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  %8 = zext nneg i32 %switch.load to i64
  %9 = getelementptr i8, ptr %i.d, i64 %8
  %i.cc = getelementptr i8, ptr %9, i64 -1
  store i8 -128, ptr %i.cc, align 1, !tbaa !18
  call fastcc void @absorb_inner_32(ptr noundef %i.d, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
end_hunk_4
