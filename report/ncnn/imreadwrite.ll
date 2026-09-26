Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@stbi_load_16:bb.a

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i: ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !37
  %i.z = call fastcc noundef ptr @_ZL32stbi__load_and_postprocess_16bitP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %stbi_load_from_file_16.exit, label %bb.f

bb.f:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %.neg.i = sub i64 %i.ad, %i.ac
  %sext.i = shl i64 %.neg.i, 32
  %i.ae = ashr exact i64 %sext.i, 32
  %i.af = call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef %i.ae, i32 noundef 1) ; 0 uses
  br label %stbi_load_from_file_16.exit

stbi_load_from_file_16.exit:                      ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.ag = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %stbi_load_from_file_16.exit, %bb.b
  %.0 = phi ptr [ %i.z, %stbi_load_from_file_16.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load_16_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !33
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !36
  %i.j = call fastcc noundef ptr @_ZL32stbi__load_and_postprocess_16bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load_16_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !25
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !7 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !31
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !31
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !35
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !37
  %i.y = call fastcc noundef ptr @_ZL32stbi__load_and_postprocess_16bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !33
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !36
  %i.j = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !25
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !7 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !31
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !31
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !35
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !37
  %i.y = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !33
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !36
  %i.j = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !23     ; 3 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !23     ; 4 uses
  %.not14 = icmp eq i32 %4, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %3, align 4, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = phi i32 [ %i.d, %bb.c ], [ %4, %bb.b ]   ; 8 uses
  %i.f = or i32 %i.c, %i.b
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.e, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq i32 %i.c, 0
  br i1 %i.g, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.e
  %i.h = udiv i32 2147483647, %i.c
  %.not37.i.i.i = icmp sgt i32 %i.b, %i.h
  br i1 %.not37.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.e
  %i.i = mul nuw nsw i32 %i.c, %i.b               ; 8 uses
  %i.j = or i32 %i.e, %i.i
  %or.cond.not.i16.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i16.i.i.i, label %bb.f, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i
  %i.k = icmp eq i32 %i.e, 0
  br i1 %i.k, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i.i:        ; preds = %bb.f
  %i.l = udiv i32 2147483647, %i.e
  %.not.i.i.i = icmp sgt i32 %i.i, %i.l
  br i1 %.not.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %bb.f
  %i.m = mul nuw nsw i32 %i.e, %i.i               ; 2 uses
  %or.cond.i = icmp ugt i32 %i.m, 536870911
  br i1 %or.cond.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL17stbi__malloc_mad4iiiii.exit.i

_ZL17stbi__malloc_mad4iiiii.exit.i:               ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i
  %i.n = shl nuw nsw i32 %i.m, 2
  %i.o = zext nneg i32 %i.n to i64
  %i.p = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.o) #36 ; 8 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %bb.g

_ZL17stbi__malloc_mad4iiiii.exit.thread.i:        ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #35
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

bb.g:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i
  %i.r = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.r, 0                   ; 2 uses
  %i.s = sext i1 %.not.i to i32
  %.0.i = add i32 %i.e, %i.s                      ; 5 uses
  %i.t = icmp sgt i32 %i.i, 0
  br i1 %i.t, label %.preheader48.lr.ph.i, label %.loopexit.i

.preheader48.lr.ph.i:                             ; preds = %bb.g
  %i.u = icmp sgt i32 %.0.i, 0
  %i.v = load float, ptr @_ZL15stbi__l2h_gamma, align 4 ; 3 uses
  %i.w = load float, ptr @_ZL15stbi__l2h_scale, align 4 ; 3 uses
  br i1 %i.u, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %.preheader48.lr.ph.i
  %i.x = sext i32 %i.e to i64
  %wide.trip.count58.i = zext nneg i32 %i.i to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.y = icmp eq i32 %.0.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod22 = trunc i32 %.0.i to i1
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 2 uses
  %i.z = mul nuw nsw i64 %indvars.iv55.i, %i.x    ; 3 uses
  br i1 %i.y, label %.epil.preheader, label %.preheader48.i.new

.preheader48.i.new:                               ; preds = %.preheader48.i, %.preheader48.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader48.i.new ], [ 0, %.preheader48.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.i.new ], [ 0, %.preheader48.i ]
  %i.aa = add nsw i64 %indvars.iv.i, %i.z         ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.a, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = fdiv float %i.ad, 2.550000e+02
  %i.af = tail call float @powf(float noundef %i.ae, float noundef %i.v) #35
  %i.ag = fmul float %i.w, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aa
  store float %i.ag, ptr %i.ah, align 4, !tbaa !112
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ai = add nsw i64 %indvars.iv.next.i, %i.z    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.a, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.al = uitofp i8 %i.ak to float
  %i.am = fdiv float %i.al, 2.550000e+02
  %i.an = tail call float @powf(float noundef %i.am, float noundef %i.v) #35
  %i.ao = fmul float %i.w, %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ai
  store float %i.ao, ptr %i.ap, align 4, !tbaa !112
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader48.i.new, !llvm.loop !492

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader48.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader48.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.aq = add nsw i64 %indvars.iv.i.epil.init, %i.z ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.a, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = uitofp i8 %i.as to float
  %i.au = fdiv float %i.at, 2.550000e+02
  %i.av = tail call float @powf(float noundef %i.au, float noundef %i.v) #35
  %i.aw = fmul float %i.w, %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aq
  store float %i.aw, ptr %i.ax, align 4, !tbaa !112
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %._crit_edge51.split.i, label %.preheader48.i, !llvm.loop !493

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %.preheader48.lr.ph.i
  br i1 %.not.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.split.i
  %i.ay = sext i32 %i.e to i64                    ; 3 uses
  %i.az = sext i32 %.0.i to i64                   ; 3 uses
  %wide.trip.count63.i = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter23 = and i64 %wide.trip.count63.i, 1
  %i.ba = icmp eq i32 %i.i, 1
  br i1 %i.ba, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter26 = and i64 %wide.trip.count63.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next61.i.1, %.lr.ph.i ] ; 3 uses
  %niter27 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter27.next.1, %.lr.ph.i ]
  %i.bb = mul nuw nsw i64 %indvars.iv60.i, %i.ay
  %i.bc = add nsw i64 %i.bb, %i.az                ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.a, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = uitofp i8 %i.be to float
  %i.bg = fdiv float %i.bf, 2.550000e+02
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bc
  store float %i.bg, ptr %i.bh, align 4, !tbaa !112
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.bi = mul nuw nsw i64 %indvars.iv.next61.i, %i.ay
  %i.bj = add nsw i64 %i.bi, %i.az                ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.a, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !35
  %i.bm = uitofp i8 %i.bl to float
  %i.bn = fdiv float %i.bm, 2.550000e+02
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bj
  store float %i.bn, ptr %i.bo, align 4, !tbaa !112
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %niter27.next.1 = add i64 %niter27, 2           ; 2 uses
  %niter27.ncmp.1 = icmp eq i64 %niter27.next.1, %unroll_iter26
  br i1 %niter27.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !494

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv60.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next61.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.bp = mul nuw nsw i64 %indvars.iv60.i.epil.init, %i.ay
  %i.bq = add nsw i64 %i.bp, %i.az                ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !35
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = fdiv float %i.bt, 2.550000e+02
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bq
  store float %i.bu, ptr %i.bv, align 4, !tbaa !112
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %._crit_edge51.split.i, %bb.g
  tail call void @free(ptr noundef nonnull %i.a) #35
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

bb.h:                                             ; preds = %bb.a
  store ptr @.str.2, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

_ZL16stbi__ldr_to_hdrPhiii.exit:                  ; preds = %.loopexit.i, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i ], [ %i.p, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !25
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !7 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !31
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !31
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !35
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !37
  %i.y = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @.str.1, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.d, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !33
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.k = call noundef i32 %i.j(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, i32 noundef 128), !inline_history !495 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr %i.f, align 8, !tbaa !31
  %i.s = add nsw i32 %i.r, %i.q
  store i32 %i.s, ptr %i.f, align 8, !tbaa !31
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.g, align 8, !tbaa !35
  br label %stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.v = sext i32 %i.k to i64
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 %i.v
  br label %stbi_loadf_from_file.exit

stbi_loadf_from_file.exit:                        ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !37
  %i.z = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.aa = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.z, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !25
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.j = call noundef i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !0 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !31
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !31
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !35
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i, ptr %i.x, align 8, !tbaa !37
  %i.y = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  ret ptr %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @stbi_is_hdr_from_memory(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #17 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef i32 @stbi_is_hdr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @stbi_is_hdr_from_file(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #17 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @stbi_is_hdr_from_callbacks(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #17 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @stbi_ldr_to_hdr_gamma(float noundef %0) local_unnamed_addr #3 {
bb.a:
  store float %0, ptr @_ZL15stbi__l2h_gamma, align 4, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @stbi_ldr_to_hdr_scale(float noundef %0) local_unnamed_addr #3 {
bb.a:
  store float %0, ptr @_ZL15stbi__l2h_scale, align 4, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @stbi_hdr_to_ldr_gamma(float noundef %0) local_unnamed_addr #17 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @stbi_hdr_to_ldr_scale(float noundef %0) local_unnamed_addr #17 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local ptr @stbi_zlib_decode_malloc_guesssize(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #11 {
bb.a:
  %4 = alloca %struct.stbi__zbuf, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.a = sext i32 %2 to i64
  %i.b = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.a) #36 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %4, align 8, !tbaa !106
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !107
  %i.g = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %4, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef 1, i32 noundef 1)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not11 = icmp eq ptr %3, null
  br i1 %.not11, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !108
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  store i32 %i.o, ptr %3, align 4, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108
  call void @free(ptr noundef %i.q) #35
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %._crit_edge, %bb.a, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ %.pre, %._crit_edge ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr nofree noundef nonnull initializes((24, 52)) %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.stbi__zhuffman, align 4     ; 10 uses
  %i.a = alloca [455 x i8], align 16              ; 8 uses
  %i.b = alloca [19 x i8], align 16               ; 6 uses
  %i.c = alloca [4 x i8], align 2                 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !109
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !510
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i32 %3, ptr %i.i, align 8, !tbaa !511
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %_ZL23stbi__parse_zlib_headerP10stbi__zbuf.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %0, align 8, !tbaa !106 ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val2.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !107 ; 3 uses
  %.not3.i.i.i = icmp ult ptr %.val.i.i.i, %.val2.i.i.i
  br i1 %.not3.i.i.i, label %bb.c, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 1 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !106
  %i.l = load i8, ptr %.val.i.i.i, align 1, !tbaa !35
  %i.m = zext i8 %i.l to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i
end_hunk_0
begin_hunk_1_@stbi_zlib_compress:bb.a
  %i.vw = add i32 %i.vv, %i.vr
  %i.vx = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862
  %gep.3 = getelementptr i8, ptr %i.vx, i64 3
  %i.vy = load i8, ptr %gep.3, align 1, !tbaa !35
  %i.vz = zext i8 %i.vy to i32
  %i.wa = add i32 %i.vv, %i.vz                    ; 4 uses
  %i.wb = add i32 %i.wa, %i.vw                    ; 3 uses
  %indvars.iv.next863.3 = add nuw nsw i64 %indvars.iv862, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge791.loopexit.unr-lcssa, label %.lr.ph790, !llvm.loop !562

._crit_edge791.loopexit.unr-lcssa:                ; preds = %.lr.ph790
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge791.loopexit, label %.lr.ph790.epil.preheader

.lr.ph790.epil.preheader:                         ; preds = %._crit_edge791.loopexit.unr-lcssa, %.lr.ph790.preheader
  %indvars.iv862.epil.init = phi i64 [ 0, %.lr.ph790.preheader ], [ %indvars.iv.next863.3, %._crit_edge791.loopexit.unr-lcssa ]
  %.1789.epil.init = phi i32 [ %.0177796, %.lr.ph790.preheader ], [ %i.wb, %._crit_edge791.loopexit.unr-lcssa ]
  %.1179788.epil.init = phi i32 [ %.0178795, %.lr.ph790.preheader ], [ %i.wa, %._crit_edge791.loopexit.unr-lcssa ]
  %lcmp.mod1100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1100)
  br label %.lr.ph790.epil

.lr.ph790.epil:                                   ; preds = %.lr.ph790.epil, %.lr.ph790.epil.preheader
  %indvars.iv862.epil = phi i64 [ %indvars.iv862.epil.init, %.lr.ph790.epil.preheader ], [ %indvars.iv.next863.epil, %.lr.ph790.epil ] ; 2 uses
  %.1789.epil = phi i32 [ %.1789.epil.init, %.lr.ph790.epil.preheader ], [ %i.wf, %.lr.ph790.epil ]
  %.1179788.epil = phi i32 [ %.1179788.epil.init, %.lr.ph790.epil.preheader ], [ %i.we, %.lr.ph790.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph790.epil.preheader ], [ %epil.iter.next, %.lr.ph790.epil ]
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862.epil
  %i.wc = load i8, ptr %gep.epil, align 1, !tbaa !35
  %i.wd = zext i8 %i.wc to i32
  %i.we = add i32 %.1179788.epil, %i.wd           ; 3 uses
  %i.wf = add i32 %i.we, %.1789.epil              ; 2 uses
  %indvars.iv.next863.epil = add nuw nsw i64 %indvars.iv862.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge791.loopexit, label %.lr.ph790.epil, !llvm.loop !563

._crit_edge791.loopexit:                          ; preds = %.lr.ph790.epil, %._crit_edge791.loopexit.unr-lcssa
  %.lcssa1068 = phi i32 [ %i.wa, %._crit_edge791.loopexit.unr-lcssa ], [ %i.we, %.lr.ph790.epil ]
  %.lcssa = phi i32 [ %i.wb, %._crit_edge791.loopexit.unr-lcssa ], [ %i.wf, %.lr.ph790.epil ]
  %i.wg = urem i32 %.lcssa1068, 65521
  %i.wh = urem i32 %.lcssa, 65521
  br label %._crit_edge791

._crit_edge791:                                   ; preds = %._crit_edge791.loopexit, %.preheader
  %.1179.lcssa = phi i32 [ %.0178795, %.preheader ], [ %i.wg, %._crit_edge791.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0177796, %.preheader ], [ %i.wh, %._crit_edge791.loopexit ] ; 2 uses
  %i.wi = add nuw nsw i32 %.0797, %.5191794       ; 2 uses
  %i.wj = icmp slt i32 %i.wi, %1
  br i1 %i.wj, label %.preheader, label %._crit_edge798, !llvm.loop !564

._crit_edge798:                                   ; preds = %._crit_edge791, %bb.an, %.loopexit
  %.131007 = phi ptr [ %.13, %.loopexit ], [ %storemerge.lcssa, %bb.an ], [ %.13, %._crit_edge791 ] ; 4 uses
  %i.wk = phi i32 [ %i.ve, %.loopexit ], [ 2, %bb.an ], [ %i.ve, %._crit_edge791 ]
  %.0178.lcssa = phi i32 [ 1, %.loopexit ], [ 1, %bb.an ], [ %.1179.lcssa, %._crit_edge791 ] ; 2 uses
  %.0177.lcssa = phi i32 [ 0, %.loopexit ], [ 0, %bb.an ], [ %.1.lcssa, %._crit_edge791 ] ; 2 uses
  %i.wl = getelementptr inbounds i8, ptr %.131007, i64 -8
  %i.wm = add nsw i32 %i.wk, 1
  %i.wn = load i32, ptr %i.wl, align 4, !tbaa !23 ; 2 uses
  %.not228 = icmp slt i32 %i.wm, %i.wn
  br i1 %.not228, label %bb.bd, label %.thread704

.thread704:                                       ; preds = %._crit_edge798
  %i.wo = shl nsw i32 %i.wn, 1                    ; 2 uses
  %i.wp = getelementptr inbounds i8, ptr %.131007, i64 -8
  %i.wq = sext i32 %i.wo to i64
  %i.wr = add nsw i64 %i.wq, 9
  %i.ws = tail call ptr @realloc(ptr noundef nonnull %i.wp, i64 noundef %i.wr) #37 ; 3 uses
  %.not18.i478 = icmp eq ptr %i.ws, null
  br i1 %.not18.i478, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.thread704
  %i.wt = or disjoint i32 %i.wo, 1
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  store i32 %i.wt, ptr %i.ws, align 4, !tbaa !23
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge798, %.thread704, %bb.bc
  %.14 = phi ptr [ %.131007, %._crit_edge798 ], [ %.131007, %.thread704 ], [ %i.wu, %bb.bc ] ; 5 uses
  %i.wv = lshr i32 %.0177.lcssa, 8
  %i.ww = trunc nuw i32 %i.wv to i8
  %i.wx = getelementptr inbounds i8, ptr %.14, i64 -4 ; 3 uses
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !23 ; 2 uses
  %i.wz = add nsw i32 %i.wy, 1
  store i32 %i.wz, ptr %i.wx, align 4, !tbaa !23
  %i.xa = sext i32 %i.wy to i64
  %i.xb = getelementptr inbounds i8, ptr %.14, i64 %i.xa
  store i8 %i.ww, ptr %i.xb, align 1, !tbaa !35
  %i.xc = getelementptr inbounds i8, ptr %.14, i64 -8 ; 2 uses
  %i.xd = load i32, ptr %i.wx, align 4, !tbaa !23
  %i.xe = add nsw i32 %i.xd, 1
  %i.xf = load i32, ptr %i.xc, align 4, !tbaa !23 ; 2 uses
  %.not229 = icmp slt i32 %i.xe, %i.xf
  br i1 %.not229, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.xg = shl nsw i32 %i.xf, 1                    ; 2 uses
  %i.xh = sext i32 %i.xg to i64
  %i.xi = add nsw i64 %i.xh, 9
  %i.xj = tail call ptr @realloc(ptr noundef nonnull %i.xc, i64 noundef %i.xi) #37 ; 3 uses
  %.not18.i484 = icmp eq ptr %i.xj, null
  br i1 %.not18.i484, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.xk = or disjoint i32 %i.xg, 1
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store i32 %i.xk, ptr %i.xj, align 4, !tbaa !23
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %bb.be, %bb.bf
  %.15 = phi ptr [ %.14, %bb.bd ], [ %.14, %bb.be ], [ %i.xl, %bb.bf ] ; 5 uses
  %i.xm = trunc i32 %.0177.lcssa to i8
  %i.xn = getelementptr inbounds i8, ptr %.15, i64 -4 ; 3 uses
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !23 ; 2 uses
  %i.xp = add nsw i32 %i.xo, 1
  store i32 %i.xp, ptr %i.xn, align 4, !tbaa !23
  %i.xq = sext i32 %i.xo to i64
  %i.xr = getelementptr inbounds i8, ptr %.15, i64 %i.xq
  store i8 %i.xm, ptr %i.xr, align 1, !tbaa !35
  %i.xs = getelementptr inbounds i8, ptr %.15, i64 -8 ; 2 uses
  %i.xt = load i32, ptr %i.xn, align 4, !tbaa !23
  %i.xu = add nsw i32 %i.xt, 1
  %i.xv = load i32, ptr %i.xs, align 4, !tbaa !23 ; 2 uses
  %.not230 = icmp slt i32 %i.xu, %i.xv
  br i1 %.not230, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.xw = shl nsw i32 %i.xv, 1                    ; 2 uses
  %i.xx = sext i32 %i.xw to i64
  %i.xy = add nsw i64 %i.xx, 9
  %i.xz = tail call ptr @realloc(ptr noundef nonnull %i.xs, i64 noundef %i.xy) #37 ; 3 uses
  %.not18.i490 = icmp eq ptr %i.xz, null
  br i1 %.not18.i490, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ya = or disjoint i32 %i.xw, 1
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  store i32 %i.ya, ptr %i.xz, align 4, !tbaa !23
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bi
  %.16 = phi ptr [ %.15, %bb.bg ], [ %.15, %bb.bh ], [ %i.yb, %bb.bi ] ; 5 uses
  %i.yc = lshr i32 %.0178.lcssa, 8
  %i.yd = trunc nuw i32 %i.yc to i8
  %i.ye = getelementptr inbounds i8, ptr %.16, i64 -4 ; 3 uses
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !23 ; 2 uses
  %i.yg = add nsw i32 %i.yf, 1
  store i32 %i.yg, ptr %i.ye, align 4, !tbaa !23
  %i.yh = sext i32 %i.yf to i64
  %i.yi = getelementptr inbounds i8, ptr %.16, i64 %i.yh
  store i8 %i.yd, ptr %i.yi, align 1, !tbaa !35
  %i.yj = getelementptr inbounds i8, ptr %.16, i64 -8 ; 2 uses
  %i.yk = load i32, ptr %i.ye, align 4, !tbaa !23
  %i.yl = add nsw i32 %i.yk, 1
  %i.ym = load i32, ptr %i.yj, align 4, !tbaa !23 ; 2 uses
  %.not231 = icmp slt i32 %i.yl, %i.ym
  br i1 %.not231, label %_ZL14stbiw__sbgrowfPPvii.exit499, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.yn = shl nsw i32 %i.ym, 1                    ; 2 uses
  %i.yo = sext i32 %i.yn to i64
  %i.yp = add nsw i64 %i.yo, 9
  %i.yq = tail call ptr @realloc(ptr noundef nonnull %i.yj, i64 noundef %i.yp) #37 ; 3 uses
  %.not18.i496 = icmp eq ptr %i.yq, null
  br i1 %.not18.i496, label %_ZL14stbiw__sbgrowfPPvii.exit499, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.yr = or disjoint i32 %i.yn, 1
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  store i32 %i.yr, ptr %i.yq, align 4, !tbaa !23
  br label %_ZL14stbiw__sbgrowfPPvii.exit499

_ZL14stbiw__sbgrowfPPvii.exit499:                 ; preds = %bb.bl, %bb.bk, %bb.bj
  %.17 = phi ptr [ %.16, %bb.bj ], [ %.16, %bb.bk ], [ %i.ys, %bb.bl ] ; 4 uses
  %i.yt = trunc i32 %.0178.lcssa to i8
  %i.yu = getelementptr inbounds i8, ptr %.17, i64 -4 ; 3 uses
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !23 ; 2 uses
  %i.yw = add nsw i32 %i.yv, 1
  store i32 %i.yw, ptr %i.yu, align 4, !tbaa !23
  %i.yx = sext i32 %i.yv to i64
  %i.yy = getelementptr inbounds i8, ptr %.17, i64 %i.yx
  store i8 %i.yt, ptr %i.yy, align 1, !tbaa !35
  %i.yz = load i32, ptr %i.yu, align 4, !tbaa !23 ; 2 uses
  store i32 %i.yz, ptr %2, align 4, !tbaa !23
  %i.za = getelementptr inbounds i8, ptr %.17, i64 -8 ; 2 uses
  %i.zb = sext i32 %i.yz to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.za, ptr nonnull align 4 %.17, i64 %i.zb, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.a, %_ZL14stbiw__sbgrowfPPvii.exit499
  %.0198 = phi ptr [ %i.za, %_ZL14stbiw__sbgrowfPPvii.exit499 ], [ null, %bb.a ]
  ret ptr %.0198
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @stbi_write_png_to_mem(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr @stbi_write_force_png_filter, align 4, !tbaa !23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.c = icmp eq i32 %1, 0
  %i.d = mul i32 %4, %2                           ; 10 uses
  %spec.select = select i1 %i.c, i32 %i.d, i32 %1 ; 13 uses
  %i.e = icmp sgt i32 %i.b, 4
  %spec.store.select = select i1 %i.e, i32 -1, i32 %i.b ; 2 uses
  %i.f = add nsw i32 %i.d, 1                      ; 4 uses
  %i.g = mul nsw i32 %i.f, %3                     ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #36 ; 7 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %i.d to i64                     ; 4 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #36 ; 28 uses
  %.not108 = icmp eq ptr %i.k, null
  br i1 %.not108, label %bb.d, label %.preheader179

.preheader179:                                    ; preds = %bb.b
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader179
  %i.m = icmp sgt i32 %spec.store.select, -1
  br i1 %i.m, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.n = trunc i32 %i.b to i8
  %i.o = sext i32 %i.f to i64
  %wide.trip.count214 = zext nneg i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.split.us
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %bb.c ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv211 to i32
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.p, i32 noundef %4, i32 noundef %spec.store.select, ptr noundef %i.k)
  %i.q = mul nsw i64 %indvars.iv211, %i.o
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.q ; 2 uses
  store i8 %i.n, ptr %i.r, align 1, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %._crit_edge, label %bb.c, !llvm.loop !568

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.t = icmp sgt i32 %i.d, 0
  %wide.trip.count209 = zext nneg i32 %3 to i64   ; 2 uses
  br i1 %i.t, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.split
  %i.u = sext i32 %i.f to i64
  br label %bb.e

.preheader.us.preheader:                          ; preds = %.lr.ph.split
  %i.v = zext nneg i32 %i.f to i64
  %wide.trip.count203 = zext nneg i32 %i.d to i64 ; 15 uses
  %min.iters.check287 = icmp ult i32 %i.d, 8
  %n.vec289 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n299 = icmp eq i64 %n.vec289, %wide.trip.count203
  %min.iters.check271 = icmp ult i32 %i.d, 8
  %n.vec273 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n283 = icmp eq i64 %n.vec273, %wide.trip.count203
  %min.iters.check255 = icmp ult i32 %i.d, 8
  %n.vec257 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n267 = icmp eq i64 %n.vec257, %wide.trip.count203
  %min.iters.check239 = icmp ult i32 %i.d, 8
  %n.vec241 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n251 = icmp eq i64 %n.vec241, %wide.trip.count203
  %min.iters.check = icmp ult i32 %i.d, 8
  %n.vec = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count203
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit
  %indvars.iv206 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next207, %.loopexit ] ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv206 to i32  ; 6 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 0, ptr noundef %i.k)
  br i1 %min.iters.check287, label %scalar.ph286.preheader, label %vector.body290

vector.body290:                                   ; preds = %.preheader.us, %vector.body290
  %index291 = phi i64 [ %index.next296, %vector.body290 ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi292 = phi <4 x i32> [ %i.ad, %vector.body290 ], [ zeroinitializer, %.preheader.us ]
  %vec.phi293 = phi <4 x i32> [ %i.ae, %vector.body290 ], [ zeroinitializer, %.preheader.us ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 %index291 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %wide.load294 = load <4 x i8>, ptr %i.x, align 1, !tbaa !35
  %wide.load295 = load <4 x i8>, ptr %i.y, align 1, !tbaa !35
  %i.z = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load294, i1 false)
  %i.aa = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load295, i1 false)
  %i.ab = zext <4 x i8> %i.z to <4 x i32>
  %i.ac = zext <4 x i8> %i.aa to <4 x i32>
  %i.ad = add <4 x i32> %vec.phi292, %i.ab        ; 2 uses
  %i.ae = add <4 x i32> %vec.phi293, %i.ac        ; 2 uses
  %index.next296 = add nuw i64 %index291, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next296, %n.vec289
  br i1 %i.af, label %middle.block297, label %vector.body290, !llvm.loop !569

middle.block297:                                  ; preds = %vector.body290
  %bin.rdx298 = add <4 x i32> %i.ae, %i.ad
  %i.ag = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx298) ; 2 uses
  br i1 %cmp.n299, label %._crit_edge.us.us, label %scalar.ph286.preheader

scalar.ph286.preheader:                           ; preds = %.preheader.us, %middle.block297
  %indvars.iv200.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec289, %middle.block297 ]
  %.092182.us.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.ag, %middle.block297 ]
  br label %scalar.ph286

scalar.ph286:                                     ; preds = %scalar.ph286.preheader, %scalar.ph286
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %scalar.ph286 ], [ %indvars.iv200.ph, %scalar.ph286.preheader ] ; 2 uses
  %.092182.us.us = phi i32 [ %i.al, %scalar.ph286 ], [ %.092182.us.us.ph, %scalar.ph286.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35
  %i.aj = tail call i8 @llvm.abs.i8(i8 %i.ai, i1 false)
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nuw nsw i32 %.092182.us.us, %i.ak   ; 2 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge.us.us, label %scalar.ph286, !llvm.loop !570

._crit_edge.us.us:                                ; preds = %scalar.ph286, %middle.block297
  %.lcssa231 = phi i32 [ %i.ag, %middle.block297 ], [ %i.al, %scalar.ph286 ] ; 2 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 1, ptr noundef %i.k)
  br i1 %min.iters.check271, label %scalar.ph270.preheader, label %vector.body274

vector.body274:                                   ; preds = %._crit_edge.us.us, %vector.body274
  %index275 = phi i64 [ %index.next280, %vector.body274 ], [ 0, %._crit_edge.us.us ] ; 2 uses
  %vec.phi276 = phi <4 x i32> [ %i.as, %vector.body274 ], [ zeroinitializer, %._crit_edge.us.us ]
  %vec.phi277 = phi <4 x i32> [ %i.at, %vector.body274 ], [ zeroinitializer, %._crit_edge.us.us ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 %index275 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %wide.load278 = load <4 x i8>, ptr %i.am, align 1, !tbaa !35
  %wide.load279 = load <4 x i8>, ptr %i.an, align 1, !tbaa !35
  %i.ao = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load278, i1 false)
  %i.ap = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load279, i1 false)
  %i.aq = zext <4 x i8> %i.ao to <4 x i32>
  %i.ar = zext <4 x i8> %i.ap to <4 x i32>
  %i.as = add <4 x i32> %vec.phi276, %i.aq        ; 2 uses
  %i.at = add <4 x i32> %vec.phi277, %i.ar        ; 2 uses
  %index.next280 = add nuw i64 %index275, 8       ; 2 uses
  %i.au = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.au, label %middle.block281, label %vector.body274, !llvm.loop !571

middle.block281:                                  ; preds = %vector.body274
  %bin.rdx282 = add <4 x i32> %i.at, %i.as
  %i.av = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx282) ; 2 uses
  br i1 %cmp.n283, label %._crit_edge.us.us.1, label %scalar.ph270.preheader

scalar.ph270.preheader:                           ; preds = %._crit_edge.us.us, %middle.block281
  %indvars.iv200.1.ph = phi i64 [ 0, %._crit_edge.us.us ], [ %n.vec273, %middle.block281 ]
  %.092182.us.us.1.ph = phi i32 [ 0, %._crit_edge.us.us ], [ %i.av, %middle.block281 ]
  br label %scalar.ph270

scalar.ph270:                                     ; preds = %scalar.ph270.preheader, %scalar.ph270
  %indvars.iv200.1 = phi i64 [ %indvars.iv.next201.1, %scalar.ph270 ], [ %indvars.iv200.1.ph, %scalar.ph270.preheader ] ; 2 uses
  %.092182.us.us.1 = phi i32 [ %i.ba, %scalar.ph270 ], [ %.092182.us.us.1.ph, %scalar.ph270.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !35
  %i.ay = tail call i8 @llvm.abs.i8(i8 %i.ax, i1 false)
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %.092182.us.us.1, %i.az ; 2 uses
  %indvars.iv.next201.1 = add nuw nsw i64 %indvars.iv200.1, 1 ; 2 uses
  %exitcond204.1.not = icmp eq i64 %indvars.iv.next201.1, %wide.trip.count203
  br i1 %exitcond204.1.not, label %._crit_edge.us.us.1, label %scalar.ph270, !llvm.loop !572

._crit_edge.us.us.1:                              ; preds = %scalar.ph270, %middle.block281
  %.lcssa232 = phi i32 [ %i.av, %middle.block281 ], [ %i.ba, %scalar.ph270 ] ; 2 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 2, ptr noundef %i.k)
  br i1 %min.iters.check255, label %scalar.ph254.preheader, label %vector.body258

vector.body258:                                   ; preds = %._crit_edge.us.us.1, %vector.body258
  %index259 = phi i64 [ %index.next264, %vector.body258 ], [ 0, %._crit_edge.us.us.1 ] ; 2 uses
  %vec.phi260 = phi <4 x i32> [ %i.bh, %vector.body258 ], [ zeroinitializer, %._crit_edge.us.us.1 ]
  %vec.phi261 = phi <4 x i32> [ %i.bi, %vector.body258 ], [ zeroinitializer, %._crit_edge.us.us.1 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 %index259 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %wide.load262 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !35
  %wide.load263 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !35
  %i.bd = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load262, i1 false)
  %i.be = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load263, i1 false)
  %i.bf = zext <4 x i8> %i.bd to <4 x i32>
  %i.bg = zext <4 x i8> %i.be to <4 x i32>
  %i.bh = add <4 x i32> %vec.phi260, %i.bf        ; 2 uses
  %i.bi = add <4 x i32> %vec.phi261, %i.bg        ; 2 uses
  %index.next264 = add nuw i64 %index259, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.bj, label %middle.block265, label %vector.body258, !llvm.loop !573

middle.block265:                                  ; preds = %vector.body258
  %bin.rdx266 = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx266) ; 2 uses
  br i1 %cmp.n267, label %._crit_edge.us.us.2, label %scalar.ph254.preheader

scalar.ph254.preheader:                           ; preds = %._crit_edge.us.us.1, %middle.block265
  %indvars.iv200.2.ph = phi i64 [ 0, %._crit_edge.us.us.1 ], [ %n.vec257, %middle.block265 ]
  %.092182.us.us.2.ph = phi i32 [ 0, %._crit_edge.us.us.1 ], [ %i.bk, %middle.block265 ]
end_hunk_1
