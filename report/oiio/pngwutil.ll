inline.NumInlined: 101
inline.NumDeleted: 13
begin_hunk_0_@png_write_sPLT:bb.a
png_write_chunk_header.exit:                      ; preds = %bb.c
  %i.n = trunc nuw nsw i64 %i.h to i32
  %i.o = mul i32 %i.j, %i.n
  %i.p = add i32 %i.l, 2
  %i.q = add i32 %i.p, %i.o                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1196 ; 2 uses
  store i32 34, ptr %i.r, align 4, !tbaa !8, !alias.scope !131
  %i.s = lshr i32 %i.q, 24
end_hunk_0
begin_hunk_1_@png_write_tEXt:bb.a
  %i.b = alloca [8 x i8], align 1                 ; 9 uses
  %i.c = alloca [80 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.d = call i32 @png_check_keyword(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.c) #13 ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

end_hunk_1
begin_hunk_2_@png_write_tEXt:bb.a

png_write_chunk_header.exit:                      ; preds = %.thread
  %i.m = trunc nuw i64 %.024 to i32
  %i.n = add i32 %i.d, 1                          ; 3 uses
  %i.o = add i32 %i.n, %i.m                       ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1196 ; 2 uses
  store i32 34, ptr %i.p, align 4, !tbaa !8, !alias.scope !192
  %i.q = lshr i32 %i.o, 24
  %i.r = trunc nuw i32 %i.q to i8
  store i8 %i.r, ptr %i.b, align 1, !tbaa !7, !noalias !192
  %i.s = lshr i32 %i.o, 16
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !7, !noalias !192
  %i.v = lshr i32 %i.o, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !7, !noalias !192
  %i.y = trunc i32 %i.o to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.y, ptr %i.z, align 1, !tbaa !7, !noalias !192
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
end_hunk_2
begin_hunk_3_@png_write_tEXt:bb.a
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, i64 noundef 4) #13
  store i32 66, ptr %i.p, align 4, !tbaa !8, !alias.scope !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !192
  %.not26 = icmp eq i32 %i.n, 0
  br i1 %.not26, label %png_write_chunk_data.exit, label %bb.g

bb.g:                                             ; preds = %png_write_chunk_header.exit
  %i.ac = zext i32 %i.n to i64                    ; 2 uses
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %i.ac) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %i.ac) #13
  br label %png_write_chunk_data.exit
end_hunk_3
begin_hunk_4_@png_write_pCAL:bb.a
  %i.k = zext i1 %i.j to i64
  %i.l = add i64 %i.i, %i.k                       ; 4 uses
  %i.m = zext i32 %i.h to i64                     ; 3 uses
  %i.n = add nuw nsw i64 %i.m, 10
  %i.o = add i64 %i.n, %i.l                       ; 2 uses
  %i.p = sext i32 %5 to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %i.q) #13 ; 4 uses
end_hunk_4
begin_hunk_5_@png_write_sCAL_s:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15 ; 3 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #15 ; 2 uses
  %i.d = add i64 %i.b, 2
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  %i.f = icmp ugt i64 %i.e, 64
  br i1 %i.f, label %bb.b, label %bb.c

end_hunk_5
