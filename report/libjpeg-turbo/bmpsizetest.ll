Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/bmpsizetest?download=true
begin_hunk_0_@test_read_BMP:bb.a
  store i8 0, ptr %i.v, align 1, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.x = trunc nuw i32 %1 to i16
  store i16 %i.x, ptr %i.w, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.y, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i8 24, ptr %i.z, align 4, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.aa, i8 0, i64 25, i1 false)
  %i.ab = call ptr @jinit_read_bmp(ptr noundef nonnull %4, i32 noundef %3) #15 ; 5 uses
  %.not36 = icmp eq ptr %i.ab, null
  br i1 %.not36, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = call noalias ptr @fmemopen(ptr noundef nonnull %i.a, i64 noundef 54, ptr noundef nonnull @.str.47) #15 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = call ptr @__errno_location() #17
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = call ptr @strerror(i32 noundef %i.af) #15
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error_str, i64 noundef 200, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %i.ag) #15 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ai = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not37 = icmp eq i32 %i.ai, 0
  br i1 %.not37, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ac, ptr %i.aj, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  store i32 %2, ptr %i.ak, align 4, !tbaa !43
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !44
  call void %i.al(ptr noundef nonnull %4, ptr noundef nonnull %i.ab) #15
  br label %bb.g

.thread:                                          ; preds = %bb.a, %bb.d, %bb.b
  call void @jpeg_destroy_compress(ptr noundef nonnull %4) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.033 = phi i32 [ -1, %bb.e ], [ 0, %bb.f ]
  call void @jpeg_destroy_compress(ptr noundef nonnull %4) #15
  %i.am = call i32 @fclose(ptr noundef nonnull %i.ac) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.03342 = phi i32 [ -1, %.thread ], [ %.033, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.03342
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @test_write_BMP(i32 noundef range(i32 65500, 65502) %0, i32 noundef range(i32 65500, 65502) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.jpeg_decompress_struct, align 8 ; 15 uses
  %4 = alloca %struct.my_error_mgr, align 8       ; 9 uses
  %i.a = alloca [54 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call ptr @jpeg_std_error(ptr noundef nonnull %4) #15
  store ptr %i.b, ptr %3, align 8, !tbaa !61
  store ptr @my_error_exit, ptr %4, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @my_output_message, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.e = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @jpeg_CreateDecompress(ptr noundef nonnull %3, i32 noundef 62, i64 noundef 632) #15
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 152
  store ptr @cdjpeg_message_table, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i32 1000, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 164
  store i32 1055, ptr %i.h, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 2, ptr %i.i, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 108
  store i32 0, ptr %i.j, align 4, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %0, ptr %i.k, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %1, ptr %i.l, align 4, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 1, ptr %i.m, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 1, ptr %i.n, align 4, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 202, ptr %i.o, align 4, !tbaa !68
  %i.p = call ptr @jinit_write_bmp(ptr noundef nonnull %3, i32 noundef 0, i32 noundef %2) #15 ; 4 uses
  %.not19 = icmp eq ptr %i.p, null
  br i1 %.not19, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = call noalias ptr @fmemopen(ptr noundef nonnull %i.a, i64 noundef 54, ptr noundef nonnull @.str.104) #15 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = call ptr @__errno_location() #17
  %i.t = load i32, ptr %i.s, align 4, !tbaa !39
  %i.u = call ptr @strerror(i32 noundef %i.t) #15
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error_str, i64 noundef 200, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %i.u) #15 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.w = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not20 = icmp eq i32 %i.w, 0
  br i1 %.not20, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.q, ptr %i.x, align 8, !tbaa !70
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !71
  call void %i.y(ptr noundef nonnull %3, ptr noundef nonnull %i.p) #15
  br label %bb.g

.thread:                                          ; preds = %bb.a, %bb.d, %bb.b
  call void @jpeg_destroy_decompress(ptr noundef nonnull %3) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.016 = phi i32 [ -1, %bb.e ], [ 0, %bb.f ]
  call void @jpeg_destroy_decompress(ptr noundef nonnull %3) #15
  %i.z = call i32 @fclose(ptr noundef nonnull %i.q) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.01625 = phi i32 [ -1, %.thread ], [ %.016, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.01625
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 1) i32 @test_read_GIF(i32 noundef range(i32 1000, 65502) %0, i32 noundef range(i32 1000, 65502) %1, i32 noundef range(i32 0, 1000000001) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.jpeg_compress_struct, align 8 ; 11 uses
  %5 = alloca %struct.my_error_mgr, align 8       ; 9 uses
  %i.a = alloca [30 x i8], align 16               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call ptr @jpeg_std_error(ptr noundef nonnull %5) #15
  store ptr %i.b, ptr %4, align 8, !tbaa !28
  store ptr @my_error_exit, ptr %5, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @my_output_message, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 3 uses
  %i.e = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @jpeg_CreateCompress(ptr noundef nonnull %4, i32 noundef 62, i64 noundef 520) #15
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 152
  store ptr @cdjpeg_message_table, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i32 1000, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 164
  store i32 1055, ptr %i.h, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 2, ptr %i.i, align 4, !tbaa !38
  call void @jpeg_set_defaults(ptr noundef nonnull %4) #15
  store <4 x i8> <i8 71, i8 73, i8 70, i8 56>, ptr %i.a, align 16, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 55, ptr %i.j, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 97, ptr %i.k, align 1, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %i.m = lshr i32 %0, 1
  %i.n = trunc nuw nsw i32 %i.m to i16            ; 2 uses
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.p = lshr i32 %1, 1
  %i.q = trunc nuw nsw i32 %i.p to i16            ; 2 uses
  store i16 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 -128, ptr %i.r, align 2, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.s, i8 0, i64 5, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i8> <i8 -1, i8 -1, i8 -1, i8 44>, ptr %i.t, align 16, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.v = trunc nuw i32 %0 to i16                  ; 2 uses
  store i16 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 26 ; 2 uses
  %i.x = trunc nuw i32 %1 to i16                  ; 2 uses
  store i16 %i.x, ptr %i.w, align 2
  %.not41 = icmp eq i32 %3, 0
  %6 = select i1 %.not41, i8 0, i8 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i8 %6, ptr %i.y, align 4, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  store i8 2, ptr %i.z, align 1, !tbaa !11
  %i.aa = call ptr @jinit_read_gif(ptr noundef nonnull %4) #15 ; 7 uses
  %.not42 = icmp eq ptr %i.aa, null
  br i1 %.not42, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = call noalias ptr @fmemopen(ptr noundef nonnull %i.a, i64 noundef 30, ptr noundef nonnull @.str.47) #15 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = call ptr @__errno_location() #17
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !39
  %i.af = call ptr @strerror(i32 noundef %i.ae) #15
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error_str, i64 noundef 200, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %i.af) #15 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ah = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not43 = icmp eq i32 %i.ah, 0
  br i1 %.not43, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.ab, ptr %i.ai, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 68
  store i32 %2, ptr %i.aj, align 4, !tbaa !43
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !44
  call void %i.ak(ptr noundef nonnull %4, ptr noundef nonnull %i.aa) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.037 = phi i32 [ 0, %bb.f ], [ -1, %bb.e ]     ; 2 uses
  %i.al = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not44 = icmp eq i32 %i.al, 0
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = add nsw i32 %.037, -1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i16 %i.v, ptr %i.l, align 2
  store i16 %i.x, ptr %i.o, align 8
  store i16 %i.n, ptr %i.u, align 8
  store i16 %i.q, ptr %i.w, align 2
  %i.an = call i32 @fseek(ptr noundef nonnull %i.ab, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !44
  call void %i.ao(ptr noundef nonnull %4, ptr noundef nonnull %i.aa) #15
  br label %bb.j

.thread:                                          ; preds = %bb.a, %bb.d, %bb.b
  call void @jpeg_destroy_compress(ptr noundef nonnull %4) #15
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1 = phi i32 [ %i.am, %bb.h ], [ %.037, %bb.i ]
  call void @jpeg_destroy_compress(ptr noundef nonnull %4) #15
  %i.ap = call i32 @fclose(ptr noundef nonnull %i.ab) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %.149 = phi i32 [ -1, %.thread ], [ %.1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.149
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @test_write_GIF(i32 noundef range(i32 65500, 65502) %0, i32 noundef range(i32 65500, 65502) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.jpeg_decompress_struct, align 8 ; 15 uses
  %3 = alloca %struct.my_error_mgr, align 8       ; 9 uses
  %i.a = alloca [30 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call ptr @jpeg_std_error(ptr noundef nonnull %3) #15
  store ptr %i.b, ptr %2, align 8, !tbaa !61
  store ptr @my_error_exit, ptr %3, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @my_output_message, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.e = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @jpeg_CreateDecompress(ptr noundef nonnull %2, i32 noundef 62, i64 noundef 632) #15
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 152
  store ptr @cdjpeg_message_table, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i32 1000, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 164
  store i32 1055, ptr %i.h, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 2, ptr %i.i, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 108
  store i32 0, ptr %i.j, align 4, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %0, ptr %i.k, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %1, ptr %i.l, align 4, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 1, ptr %i.m, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 1, ptr %i.n, align 4, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 202, ptr %i.o, align 4, !tbaa !68
  %i.p = call ptr @jinit_write_gif(ptr noundef nonnull %2, i32 noundef 0) #15 ; 4 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = call noalias ptr @fmemopen(ptr noundef nonnull %i.a, i64 noundef 30, ptr noundef nonnull @.str.104) #15 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = call ptr @__errno_location() #17
  %i.t = load i32, ptr %i.s, align 4, !tbaa !39
  %i.u = call ptr @strerror(i32 noundef %i.t) #15
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error_str, i64 noundef 200, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %i.u) #15 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.w = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not19 = icmp eq i32 %i.w, 0
  br i1 %.not19, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.q, ptr %i.x, align 8, !tbaa !70
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !71
  call void %i.y(ptr noundef nonnull %2, ptr noundef nonnull %i.p) #15
  br label %bb.g

.thread:                                          ; preds = %bb.a, %bb.d, %bb.b
  call void @jpeg_destroy_decompress(ptr noundef nonnull %2) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.015 = phi i32 [ -1, %bb.e ], [ 0, %bb.f ]
  call void @jpeg_destroy_decompress(ptr noundef nonnull %2) #15
  %i.z = call i32 @fclose(ptr noundef nonnull %i.q) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.01524 = phi i32 [ -1, %.thread ], [ %.015, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %.01524
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @test_read_PNG(i32 noundef range(i32 1000, 65502) %0, i32 noundef range(i32 1000, 65502) %1, i32 noundef range(i32 0, 1000000001) %2, i32 noundef range(i32 8, 18) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.jpeg_compress_struct, align 8 ; 14 uses
  %5 = alloca %struct.my_error_mgr, align 8       ; 9 uses
  %i.a = alloca [33 x i8], align 16               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.a, i8 0, i64 33, i1 false)
  %i.b = call ptr @jpeg_std_error(ptr noundef nonnull %5) #15
  store ptr %i.b, ptr %4, align 8, !tbaa !28
  store ptr @my_error_exit, ptr %5, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @my_output_message, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.e = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.thread55

bb.b:                                             ; preds = %bb.a
  call void @jpeg_CreateCompress(ptr noundef nonnull %4, i32 noundef 62, i64 noundef 520) #15
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 152
  store ptr @cdjpeg_message_table, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i32 1000, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 164
  store i32 1055, ptr %i.h, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 2, ptr %i.i, align 4, !tbaa !38
  call void @jpeg_set_defaults(ptr noundef nonnull %4) #15
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %3, ptr %i.j, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store <16 x i8> <i8 -119, i8 80, i8 78, i8 71, i8 13, i8 10, i8 26, i8 10, i8 0, i8 0, i8 0, i8 13, i8 73, i8 72, i8 68, i8 82>, ptr %i.a, align 16, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.l, align 16, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 0, ptr %i.m, align 1, !tbaa !11
  %i.n = lshr i32 %0, 8
  %i.o = trunc nuw i32 %i.n to i8
end_hunk_0
begin_hunk_1_@test_read_PPM:bb.a
  br i1 %.not27, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call noalias ptr @fmemopen(ptr noundef nonnull %i.a, i64 noundef 80, ptr noundef nonnull @.str.47) #15 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = call ptr @__errno_location() #17
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39
  %i.v = call ptr @strerror(i32 noundef %i.u) #15
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error_str, i64 noundef 200, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %i.v) #15 ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.x = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not28 = icmp eq i32 %i.x, 0
  br i1 %.not28, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.023, i64 32
  store ptr %i.r, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %.023, i64 68
  store i32 %2, ptr %i.z, align 4, !tbaa !43
  %i.aa = load ptr, ptr %.023, align 8, !tbaa !44
  call void %i.aa(ptr noundef nonnull %4, ptr noundef nonnull %.023) #15
  br label %bb.l

.thread:                                          ; preds = %bb.i, %bb.a
  call void @jpeg_destroy_compress(ptr noundef nonnull %4) #15
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.022 = phi i32 [ 0, %bb.k ], [ -1, %bb.j ]
  call void @jpeg_destroy_compress(ptr noundef nonnull %4) #15
  %i.ab = call i32 @fclose(ptr noundef nonnull %i.r) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %bb.g
  %.024 = phi i32 [ -1, %bb.g ], [ %.022, %bb.l ], [ -1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @test_write_PPM(i32 noundef range(i32 65500, 65502) %0, i32 noundef range(i32 65500, 65502) %1, i32 noundef range(i32 8, 18) %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.jpeg_decompress_struct, align 8 ; 18 uses
  %4 = alloca %struct.my_error_mgr, align 8       ; 9 uses
  %i.a = alloca [80 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call ptr @jpeg_std_error(ptr noundef nonnull %4) #15
  store ptr %i.b, ptr %3, align 8, !tbaa !61
  store ptr @my_error_exit, ptr %4, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @my_output_message, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.e = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @jpeg_CreateDecompress(ptr noundef nonnull %3, i32 noundef 62, i64 noundef 632) #15
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 152
  store ptr @cdjpeg_message_table, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i32 1000, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 164
  store i32 1055, ptr %i.h, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 2, ptr %i.i, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 108
  store i32 0, ptr %i.j, align 4, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %0, ptr %i.k, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %1, ptr %i.l, align 4, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 1, ptr %i.m, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 1, ptr %i.n, align 4, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 296
  store i32 %2, ptr %i.o, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 202, ptr %i.p, align 4, !tbaa !68
  %i.q = icmp samesign ult i32 %2, 9
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = call ptr @jinit_write_ppm(ptr noundef nonnull %3) #15
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %2, 13
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = call ptr @j12init_write_ppm(ptr noundef nonnull %3) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = call ptr @j16init_write_ppm(ptr noundef nonnull %3) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.019 = phi ptr [ %i.r, %bb.c ], [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 4 uses
  %.not22 = icmp eq ptr %.019, null
  br i1 %.not22, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call noalias ptr @fmemopen(ptr noundef nonnull %i.a, i64 noundef 80, ptr noundef nonnull @.str.104) #15 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = call ptr @__errno_location() #17
  %i.y = load i32, ptr %i.x, align 4, !tbaa !39
  %i.z = call ptr @strerror(i32 noundef %i.y) #15
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error_str, i64 noundef 200, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %i.z) #15 ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ab = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not23 = icmp eq i32 %i.ab, 0
  br i1 %.not23, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.019, i64 40
  store ptr %i.v, ptr %i.ac, align 8, !tbaa !70
  %i.ad = load ptr, ptr %.019, align 8, !tbaa !71
  call void %i.ad(ptr noundef nonnull %3, ptr noundef nonnull %.019) #15
  br label %bb.l

.thread:                                          ; preds = %bb.a, %bb.i, %bb.g
  call void @jpeg_destroy_decompress(ptr noundef nonnull %3) #15
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.018 = phi i32 [ -1, %bb.j ], [ 0, %bb.k ]
  call void @jpeg_destroy_decompress(ptr noundef nonnull %3) #15
  %i.ae = call i32 @fclose(ptr noundef nonnull %i.v) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %.01828 = phi i32 [ -1, %.thread ], [ %.018, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.01828
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @test_read_TGA(i32 noundef range(i32 1000, 65502) %0, i32 noundef range(i32 1000, 65502) %1, i32 noundef range(i32 0, 1000000001) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.jpeg_compress_struct, align 8 ; 10 uses
  %5 = alloca %struct.my_error_mgr, align 8       ; 9 uses
  %i.a = alloca [18 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call ptr @jpeg_std_error(ptr noundef nonnull %5) #15
  store ptr %i.b, ptr %4, align 8, !tbaa !28
  store ptr @my_error_exit, ptr %5, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @my_output_message, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.e = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @jpeg_CreateCompress(ptr noundef nonnull %4, i32 noundef 62, i64 noundef 520) #15
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 152
  store ptr @cdjpeg_message_table, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i32 1000, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 164
  store i32 1055, ptr %i.h, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 2, ptr %i.i, align 4, !tbaa !38
  call void @jpeg_set_defaults(ptr noundef nonnull %4) #15
  store i8 0, ptr %i.a, align 16, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.j, align 1, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 2, ptr %i.k, align 2, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.n = trunc nuw i32 %0 to i16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.l, i8 0, i64 9, i1 false)
  store i16 %i.n, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.p = trunc nuw i32 %1 to i16
  store i16 %i.p, ptr %i.o, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 24, ptr %i.q, align 16, !tbaa !11
  %.not23 = icmp eq i32 %3, 0
  %6 = select i1 %.not23, i8 0, i8 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %6, ptr %i.r, align 1, !tbaa !11
  %i.s = call ptr @jinit_read_targa(ptr noundef nonnull %4) #15 ; 5 uses
  %.not24 = icmp eq ptr %i.s, null
  br i1 %.not24, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = call noalias ptr @fmemopen(ptr noundef nonnull %i.a, i64 noundef 18, ptr noundef nonnull @.str.47) #15 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = call ptr @__errno_location() #17
  %i.w = load i32, ptr %i.v, align 4, !tbaa !39
  %i.x = call ptr @strerror(i32 noundef %i.w) #15
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error_str, i64 noundef 200, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %i.x) #15 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.z = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not25 = icmp eq i32 %i.z, 0
  br i1 %.not25, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.aa, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  store i32 %2, ptr %i.ab, align 4, !tbaa !43
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !44
  call void %i.ac(ptr noundef nonnull %4, ptr noundef nonnull %i.s) #15
  br label %bb.g

.thread:                                          ; preds = %bb.a, %bb.d, %bb.b
  call void @jpeg_destroy_compress(ptr noundef nonnull %4) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.020 = phi i32 [ -1, %bb.e ], [ 0, %bb.f ]
  call void @jpeg_destroy_compress(ptr noundef nonnull %4) #15
  %i.ad = call i32 @fclose(ptr noundef nonnull %i.t) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.02030 = phi i32 [ -1, %.thread ], [ %.020, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.02030
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @test_write_TGA(i32 noundef range(i32 65500, 65502) %0, i32 noundef range(i32 65500, 65502) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.jpeg_decompress_struct, align 8 ; 15 uses
  %3 = alloca %struct.my_error_mgr, align 8       ; 9 uses
  %i.a = alloca [18 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call ptr @jpeg_std_error(ptr noundef nonnull %3) #15
  store ptr %i.b, ptr %2, align 8, !tbaa !61
  store ptr @my_error_exit, ptr %3, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @my_output_message, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.e = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @jpeg_CreateDecompress(ptr noundef nonnull %2, i32 noundef 62, i64 noundef 632) #15
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 152
  store ptr @cdjpeg_message_table, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i32 1000, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 164
  store i32 1055, ptr %i.h, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 2, ptr %i.i, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 108
  store i32 0, ptr %i.j, align 4, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %0, ptr %i.k, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %1, ptr %i.l, align 4, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 1, ptr %i.m, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 1, ptr %i.n, align 4, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 202, ptr %i.o, align 4, !tbaa !68
  %i.p = call ptr @jinit_write_targa(ptr noundef nonnull %2) #15 ; 4 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = call noalias ptr @fmemopen(ptr noundef nonnull %i.a, i64 noundef 18, ptr noundef nonnull @.str.104) #15 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = call ptr @__errno_location() #17
  %i.t = load i32, ptr %i.s, align 4, !tbaa !39
  %i.u = call ptr @strerror(i32 noundef %i.t) #15
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error_str, i64 noundef 200, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %i.u) #15 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.w = call i32 @_setjmp(ptr noundef nonnull %i.d) #16
  %.not19 = icmp eq i32 %i.w, 0
  br i1 %.not19, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.q, ptr %i.x, align 8, !tbaa !70
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !71
  call void %i.y(ptr noundef nonnull %2, ptr noundef nonnull %i.p) #15
  br label %bb.g

.thread:                                          ; preds = %bb.a, %bb.d, %bb.b
  call void @jpeg_destroy_decompress(ptr noundef nonnull %2) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.015 = phi i32 [ -1, %bb.e ], [ 0, %bb.f ]
  call void @jpeg_destroy_decompress(ptr noundef nonnull %2) #15
  %i.z = call i32 @fclose(ptr noundef nonnull %i.q) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.01524 = phi i32 [ -1, %.thread ], [ %.015, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %.01524
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define internal void @my_error_exit(ptr noundef %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  tail call void %i.c(ptr noundef nonnull %0) #15
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  tail call void @longjmp(ptr noundef nonnull %i.d, i32 noundef 1) #18
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @my_output_message(ptr noundef %0) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull @error_str) #15
  ret void
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #6

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #4

declare ptr @jinit_read_bmp(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias ptr @fmemopen(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare void @jpeg_destroy_compress(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @jpeg_CreateDecompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @jinit_write_bmp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

end_hunk_1
