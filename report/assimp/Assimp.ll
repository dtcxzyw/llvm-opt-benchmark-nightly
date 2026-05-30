inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@assimp_stbi_info:bb.a
  %.0 = phi i32 [ %i.c, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 0, 2) i32 @assimp_stbi_info_from_file(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.stbi__png, align 8          ; 9 uses
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.a = tail call i64 @ftell(ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.g, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = call noundef i32 %i.j(ptr noundef %0, ptr noundef nonnull %i.g, i32 noundef 128), !inline_history !26 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr %i.f, align 8
  %i.s = add nsw i32 %i.r, %i.q
  store i32 %i.s, ptr %i.f, align 8
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.g, align 8
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

bb.c:                                             ; preds = %bb.a
  %i.v = sext i32 %i.k to i64
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 %i.v
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.u, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  store ptr %i.g, ptr %i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  store ptr %5, ptr %4, align 8
  %i.z = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %4, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit
  %.not14.i.i.i = icmp eq ptr %1, null
  br i1 %.not14.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %4, align 8
  %i.ab = load i32, ptr %i.aa, align 8
  store i32 %i.ab, ptr %1, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not15.i.i.i = icmp eq ptr %2, null
  br i1 %.not15.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %4, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  store i32 %i.ae, ptr %2, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not16.i.i.i = icmp eq ptr %3, null
  br i1 %.not16.i.i.i, label %_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %4, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  store i32 %i.ah, ptr %3, align 4
  br label %_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i

_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br label %_ZL15stbi__info_mainP13stbi__contextPiS1_S1_.exit

bb.j:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit
  %i.ai = load ptr, ptr %4, align 8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 208
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  %i.al = load <2 x ptr>, ptr %i.aj, align 8
  store <2 x ptr> %i.al, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.5, ptr %i.am, align 8
  br label %_ZL15stbi__info_mainP13stbi__contextPiS1_S1_.exit

_ZL15stbi__info_mainP13stbi__contextPiS1_S1_.exit: ; preds = %_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i, %bb.j
  %.0.i = phi i32 [ 0, %bb.j ], [ 1, %_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i ]
  %i.an = call i32 @fseek(ptr noundef %0, i64 noundef %i.a, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret i32 %.0.i
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define hidden range(i32 0, 2) i32 @assimp_stbi_is_16_bit(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.3) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.4, ptr %i.b, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @assimp_stbi_is_16_bit_from_file(ptr noundef nonnull %i.a)
  %i.d = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 0, 2) i32 @assimp_stbi_is_16_bit_from_file(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.stbi__png, align 8          ; 6 uses
  %2 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.a = tail call i64 @ftell(ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 128, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i32 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 3 uses
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  store ptr %i.g, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = call noundef i32 %i.j(ptr noundef %0, ptr noundef nonnull %i.g, i32 noundef 128), !inline_history !26 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr %i.f, align 8
  %i.s = add nsw i32 %i.r, %i.q
  store i32 %i.s, ptr %i.f, align 8
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 57
  store i8 0, ptr %i.g, align 8
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

bb.c:                                             ; preds = %bb.a
  %i.v = sext i32 %i.k to i64
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 %i.v
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.u, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  store ptr %i.g, ptr %i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %.sink.i.i.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 216
  store ptr %.sink.i.i.i, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr %2, ptr %1, align 8
  %i.z = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %1, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = trunc nuw i32 %i.z to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %.not1.i.i = icmp eq i32 %i.ab, 16
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond.i.i, label %_ZL16stbi__is_16_mainP13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit
  %i.ac = load ptr, ptr %1, align 8               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  %i.af = load <2 x ptr>, ptr %i.ad, align 8
  store <2 x ptr> %i.af, ptr %i.ae, align 8
  br label %_ZL16stbi__is_16_mainP13stbi__context.exit

_ZL16stbi__is_16_mainP13stbi__context.exit:       ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit, %bb.d
  %i.ag = phi i32 [ 0, %bb.d ], [ 1, %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.ah = call i32 @fseek(ptr noundef %0, i64 noundef %i.a, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret i32 %i.ag
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 0, 2) i32 @assimp_stbi_info_from_memory(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__png, align 8          ; 9 uses
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %6, ptr %5, align 8
  %i.j = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %5, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not14.i.i.i = icmp eq ptr %2, null
  br i1 %.not14.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %5, align 8
  %i.l = load i32, ptr %i.k, align 8
  store i32 %i.l, ptr %2, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not15.i.i.i = icmp eq ptr %3, null
  br i1 %.not15.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4
  store i32 %i.o, ptr %3, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not16.i.i.i = icmp eq ptr %4, null
  br i1 %.not16.i.i.i, label %_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8
  store i32 %i.r, ptr %4, align 4
  br label %_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i

_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  br label %_ZL15stbi__info_mainP13stbi__contextPiS1_S1_.exit

bb.h:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %5, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.v = load <2 x ptr>, ptr %i.t, align 8
  store <2 x ptr> %i.v, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.w = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.5, ptr %i.w, align 8
  br label %_ZL15stbi__info_mainP13stbi__contextPiS1_S1_.exit

_ZL15stbi__info_mainP13stbi__contextPiS1_S1_.exit: ; preds = %_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i, %bb.h
  %.0.i = phi i32 [ 0, %bb.h ], [ 1, %_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 0, 2) i32 @assimp_stbi_info_from_callbacks(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__png, align 8          ; 9 uses
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !39 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %6, ptr %5, align 8
  %i.y = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %5, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit
  %.not14.i.i.i = icmp eq ptr %2, null
  br i1 %.not14.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %5, align 8
  %i.aa = load i32, ptr %i.z, align 8
  store i32 %i.aa, ptr %2, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not15.i.i.i = icmp eq ptr %3, null
  br i1 %.not15.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %5, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  store i32 %i.ad, ptr %3, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not16.i.i.i = icmp eq ptr %4, null
  br i1 %.not16.i.i.i, label %_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %5, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  store i32 %i.ag, ptr %4, align 4
  br label %_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i

_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  br label %_ZL15stbi__info_mainP13stbi__contextPiS1_S1_.exit

bb.j:                                             ; preds = %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit
  %i.ah = load ptr, ptr %5, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 192
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8
  store <2 x ptr> %i.ak, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.al = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.5, ptr %i.al, align 8
  br label %_ZL15stbi__info_mainP13stbi__contextPiS1_S1_.exit

_ZL15stbi__info_mainP13stbi__contextPiS1_S1_.exit: ; preds = %_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i, %bb.j
  %.0.i = phi i32 [ 0, %bb.j ], [ 1, %_ZL14stbi__png_infoP13stbi__contextPiS1_S1_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 0, 2) i32 @assimp_stbi_is_16_bit_from_memory(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.stbi__png, align 8          ; 6 uses
  %3 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %0, ptr %i.e, align 8
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 216
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.g, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %3, ptr %2, align 8
  %i.j = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = trunc nuw i32 %i.j to i1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %.not1.i.i = icmp eq i32 %i.l, 16
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond.i.i, label %_ZL16stbi__is_16_mainP13stbi__context.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %2, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.p = load <2 x ptr>, ptr %i.n, align 8
  store <2 x ptr> %i.p, ptr %i.o, align 8
  br label %_ZL16stbi__is_16_mainP13stbi__context.exit

_ZL16stbi__is_16_mainP13stbi__context.exit:       ; preds = %bb.a, %bb.b
  %i.q = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  ret i32 %i.q
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 0, 2) i32 @assimp_stbi_is_16_bit_from_callbacks(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.stbi__png, align 8          ; 6 uses
  %3 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 128, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !39 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 0, ptr %i.f, align 8
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %3, ptr %2, align 8
  %i.y = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = trunc nuw i32 %i.y to i1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i32, ptr %i.z, align 8
  %.not1.i.i = icmp eq i32 %i.aa, 16
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond.i.i, label %_ZL16stbi__is_16_mainP13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.ae = load <2 x ptr>, ptr %i.ac, align 8
  store <2 x ptr> %i.ae, ptr %i.ad, align 8
  br label %_ZL16stbi__is_16_mainP13stbi__context.exit

_ZL16stbi__is_16_mainP13stbi__context.exit:       ; preds = %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit, %bb.d
  %i.af = phi i32 [ 0, %bb.d ], [ 1, %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  ret i32 %i.af
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 56) #45
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, int>, std::_Select1st<std::pair<const unsigned int, int>>, std::less<unsigned int>>::_Reuse_or_alloc_node", align 8 ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  store ptr %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %i.c, align 8
  br label %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit

_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit: ; preds = %bb.c, %.sink.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8
  store ptr %i.j, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d, %.noexc
  %.0.i.i.i = phi ptr [ %i.q, %.noexc ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc, !llvm.loop !61

_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc
  store ptr %.0.i.i.i, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i, label %bb.f, label %bb.e, !llvm.loop !62

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8
  store i64 %i.u, ptr %i.l, align 8
  store ptr %i.o, ptr %i.a, align 8
  %.pre = load ptr, ptr %i.f, align 8
  %.pre7 = load ptr, ptr %2, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit ]
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #44
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !63, !align !64
  %i.c = load ptr, ptr %0, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  store ptr %i.d, ptr %i.a, align 8
  %.not9.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_M_clone_nodeILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_RT0_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.j, %bb.d ] ; 3 uses
end_hunk_0
