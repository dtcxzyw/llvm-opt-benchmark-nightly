Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/static?download=true
inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 40
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_free_size:bb.a

bb.g:                                             ; preds = %bb.b
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.r, ptr noundef nonnull %i.d, ptr noundef %0) #57, !inline_history !73
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_free_size_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = and i64 %i.b, -33554432                  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = icmp slt i64 %i.b, 33554432
  br i1 %i.e, label %mi_free_size.exit, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @llvm.thread.pointer.p0()
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = sub i64 %i.a, %i.c
  %i.k = lshr i64 %i.j, 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !67
  %i.p = zext i32 %i.o to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q ; 6 uses
  %i.s = icmp eq i64 %i.i, %i.g
  br i1 %i.s, label %bb.c, label %bb.g, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !69
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = ptrtoint ptr %i.x to i64
  store i64 %i.y, ptr %0, align 8, !tbaa !65
  store ptr %0, ptr %i.w, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !66
  %i.ab = add i16 %i.aa, -1                       ; 2 uses
  store i16 %i.ab, ptr %i.z, align 8, !tbaa !66
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free_size.exit, !prof !61

bb.e:                                             ; preds = %bb.d
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.r) #55, !inline_history !73
  br label %mi_free_size.exit

bb.f:                                             ; preds = %bb.c
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.r, ptr noundef %0) #55, !inline_history !73
  br label %mi_free_size.exit

bb.g:                                             ; preds = %bb.b
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.r, ptr noundef nonnull %i.d, ptr noundef %0) #57, !inline_history !73
  br label %mi_free_size.exit

mi_free_size.exit:                                ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_free_aligned(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = and i64 %i.b, -33554432                  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = icmp slt i64 %i.b, 33554432
  br i1 %i.e, label %mi_free.exit, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @llvm.thread.pointer.p0()
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = sub i64 %i.a, %i.c
  %i.k = lshr i64 %i.j, 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !67
  %i.p = zext i32 %i.o to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q ; 6 uses
  %i.s = icmp eq i64 %i.i, %i.g
  br i1 %i.s, label %bb.c, label %bb.g, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !69
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = ptrtoint ptr %i.x to i64
  store i64 %i.y, ptr %0, align 8, !tbaa !65
  store ptr %0, ptr %i.w, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !66
  %i.ab = add i16 %i.aa, -1                       ; 2 uses
  store i16 %i.ab, ptr %i.z, align 8, !tbaa !66
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free.exit, !prof !61

bb.e:                                             ; preds = %bb.d
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.r) #55, !inline_history !73
  br label %mi_free.exit

bb.f:                                             ; preds = %bb.c
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.r, ptr noundef %0) #55, !inline_history !73
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.b
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.r, ptr noundef nonnull %i.d, ptr noundef %0) #57, !inline_history !73
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_Z18_mi_padding_shrinkPK9mi_page_sPK10mi_block_sm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_Z15_mi_page_mallocP9mi_heap_sP9mi_page_sm(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %2, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !74
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !65
  %i.e = inttoptr i64 %.val.i to ptr
  store ptr %i.e, ptr %i.a, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !66
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %i.f, align 8, !tbaa !66
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %2, i1 noundef zeroext %3, i64 noundef 0) #55
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.b, align 8, !tbaa !65
  %i.e = inttoptr i64 %.val to ptr
  store ptr %i.e, ptr %i.a, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !66
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %i.f, align 8, !tbaa !66
  br i1 %3, label %bb.d, label %bb.g, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 1
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.b, align 8, !tbaa !65
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "align"(ptr %i.b, i64 8) ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.b, i8 0, i64 %i.m, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %2, i1 noundef zeroext true, i64 noundef 0) #55, !inline_history !74
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !65
  %i.e = inttoptr i64 %.val.i to ptr
  store ptr %i.e, ptr %i.a, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !66
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %i.f, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 1
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !65
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "align"(ptr %i.b, i64 8) ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.b, i8 0, i64 %i.m, i1 false)
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.d ], [ %i.b, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_zalloc_small(i64 noundef %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = add i64 %0, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext true, i64 noundef 0) #55, !inline_history !74
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

bb.c:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.i, align 8, !tbaa !65
  %i.l = inttoptr i64 %.val.i.i to ptr
  store ptr %i.l, ptr %i.h, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !66
  %i.o = add i16 %i.n, 1
  store i16 %i.o, ptr %i.m, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.q = load i8, ptr %i.p, align 1
  %i.r = and i8 %i.q, 1
  %.not.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.i, align 8, !tbaa !65
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "align"(ptr %i.i, i64 8) ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.t, i1 false)
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.i, %bb.d ], [ %i.i, %bb.e ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_zalloc(i64 noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = icmp ult i64 %0, 1025
  br i1 %i.c, label %bb.b, label %bb.g, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %0, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext true, i64 noundef 0) #55, !inline_history !74
  br label %mi_heap_zalloc.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !65
  %i.m = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.m, ptr %i.i, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !66
  %i.p = add i16 %i.o, 1
  store i16 %i.p, ptr %i.n, align 8, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.r = load i8, ptr %i.q, align 1
  %i.s = and i8 %i.r, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.j, align 8, !tbaa !65
  br label %mi_heap_zalloc.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "align"(ptr %i.j, i64 8) ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 0, i64 %i.u, i1 false)
  br label %mi_heap_zalloc.exit

bb.g:                                             ; preds = %bb.a
  %i.v = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.b, i64 noundef %0, i1 noundef zeroext true, i64 noundef 0) #55
  br label %mi_heap_zalloc.exit

mi_heap_zalloc.exit:                              ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %i.v, %bb.g ], [ %i.l, %bb.c ], [ %i.j, %bb.e ], [ %i.j, %bb.f ]
  ret ptr %.0.i.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noalias ptr @mi_heap_zalloc(ptr noundef %0, i64 noundef %1) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.g, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext true, i64 noundef 0) #55, !inline_history !74
  br label %_Z20_mi_heap_malloc_zeroP9mi_heap_smb.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !65
  %i.k = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.k, ptr %i.g, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !66
  %i.n = add i16 %i.m, 1
  store i16 %i.n, ptr %i.l, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 1
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.h, align 8, !tbaa !65
  br label %_Z20_mi_heap_malloc_zeroP9mi_heap_smb.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 8) ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.s, i1 false)
  br label %_Z20_mi_heap_malloc_zeroP9mi_heap_smb.exit

bb.g:                                             ; preds = %bb.a
  %i.t = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true, i64 noundef 0) #55
  br label %_Z20_mi_heap_malloc_zeroP9mi_heap_smb.exit

_Z20_mi_heap_malloc_zeroP9mi_heap_smb.exit:       ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.t, %bb.g ], [ %i.j, %bb.c ], [ %i.h, %bb.e ], [ %i.h, %bb.f ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_calloc.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %storemerge.i.ph.i, 1025
  br i1 %i.f, label %bb.d, label %bb.i, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f, !prof !61

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true, i64 noundef 0) #55, !inline_history !74
  br label %mi_heap_calloc.exit

bb.f:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !65
  %i.p = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.p, ptr %i.l, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !66
  %i.s = add i16 %i.r, 1
  store i16 %i.s, ptr %i.q, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 15
  %i.u = load i8, ptr %i.t, align 1
  %i.v = and i8 %i.u, 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.m, align 8, !tbaa !65
  br label %mi_heap_calloc.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.x, i1 false)
  br label %mi_heap_calloc.exit

bb.i:                                             ; preds = %bb.c
  %i.y = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true, i64 noundef 0) #55
  br label %mi_heap_calloc.exit

mi_heap_calloc.exit:                              ; preds = %bb.b, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ null, %bb.b ], [ %i.y, %bb.i ], [ %i.o, %bb.e ], [ %i.m, %bb.g ], [ %i.m, %bb.h ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_mallocn(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = icmp ult i64 %storemerge.i.ph, 1025
  br i1 %i.d, label %bb.d, label %bb.g, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i64 %storemerge.i.ph, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !61

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !74
  br label %_ZL22mi_count_size_overflowmmPm.exit

bb.f:                                             ; preds = %bb.d
  %.val.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !65
  %i.n = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.n, ptr %i.j, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !66
  %i.q = add i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 8, !tbaa !66
  br label %_ZL22mi_count_size_overflowmmPm.exit

bb.g:                                             ; preds = %bb.c
  %i.r = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false, i64 noundef 0) #55
  br label %_ZL22mi_count_size_overflowmmPm.exit

_ZL22mi_count_size_overflowmmPm.exit:             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.r, %bb.g ], [ %i.m, %bb.e ], [ %i.k, %bb.f ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noalias ptr @mi_heap_malloc(ptr noundef %0, i64 noundef %1) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.e, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !74
  br label %_Z20_mi_heap_malloc_zeroP9mi_heap_smb.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !65
  %i.k = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.k, ptr %i.g, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !66
  %i.n = add i16 %i.m, 1
  store i16 %i.n, ptr %i.l, align 8, !tbaa !66
  br label %_Z20_mi_heap_malloc_zeroP9mi_heap_smb.exit

bb.e:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #55
  br label %_Z20_mi_heap_malloc_zeroP9mi_heap_smb.exit

_Z20_mi_heap_malloc_zeroP9mi_heap_smb.exit:       ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.o, %bb.e ], [ %i.j, %bb.c ], [ %i.h, %bb.d ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_mallocn(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_mallocn.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %storemerge.i.ph.i, 1025
  br i1 %i.f, label %bb.d, label %bb.g, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f, !prof !61

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !74
  br label %mi_heap_mallocn.exit

bb.f:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !65
  %i.p = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.p, ptr %i.l, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !66
  %i.s = add i16 %i.r, 1
  store i16 %i.s, ptr %i.q, align 8, !tbaa !66
  br label %mi_heap_mallocn.exit

bb.g:                                             ; preds = %bb.c
  %i.t = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false, i64 noundef 0) #55
  br label %mi_heap_mallocn.exit

mi_heap_mallocn.exit:                             ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.b ], [ %i.t, %bb.g ], [ %i.o, %bb.e ], [ %i.m, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @mi_expand(ptr noundef %0, i64 noundef %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1                         ; 2 uses
  %i.d = icmp slt i64 %i.c, 33554432
  br i1 %i.d, label %_ZL15_mi_usable_sizePKvPKc.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %i.c, 9223372036821221376        ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = sub i64 %i.b, %i.e
  %i.h = lshr i64 %i.g, 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.j = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !67
  %i.m = zext i32 %i.l to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 %i.n ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 14
  %.val.i = load i8, ptr %i.p, align 2
  %i.q = and i8 %.val.i, 2
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.o, i64 40
  %.val12.i = load i64, ptr %i.r, align 8, !tbaa !62
  br label %_ZL15_mi_usable_sizePKvPKc.exit

bb.e:                                             ; preds = %bb.c
  %i.s = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.o, ptr noundef nonnull %0) #55
  br label %_ZL15_mi_usable_sizePKvPKc.exit

_ZL15_mi_usable_sizePKvPKc.exit:                  ; preds = %bb.b, %bb.d, %bb.e
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.e ], [ %.val12.i, %bb.d ]
  %i.t = icmp ugt i64 %1, %.1.i
  %. = select i1 %i.t, ptr null, ptr %0
  br label %bb.f
end_hunk_0
begin_hunk_1_@mi_new_aligned_nothrow:bb.a
_ZL18mi_try_new_handlerb.exit.us.us:              ; preds = %.split.us, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 4 uses
  %.not.i.i.i.i.us.us = icmp ne ptr %i.n, null
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.e, %i.o
  %.not36.i.i.i.i.us.us = icmp eq i64 %i.p, 0
  %or.cond = and i1 %.not.i.i.i.i.us.us, %.not36.i.i.i.i.us.us
  br i1 %or.cond, label %mi_malloc_aligned.exit.thread7, label %mi_malloc_aligned.exit.us.us, !prof !91

mi_malloc_aligned.exit.us.us:                     ; preds = %_ZL18mi_try_new_handlerb.exit.us.us
  %i.q = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef nonnull %i.i, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext false) #55 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %mi_malloc_aligned.exit.thread.us.us, label %.critedge

mi_malloc_aligned.exit.thread.us.us:              ; preds = %mi_malloc_aligned.exit.us.us
  %i.s = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not.us.us = icmp eq ptr %i.s, null
  br i1 %.not.us.us, label %.split17.us, label %bb.b

bb.b:                                             ; preds = %mi_malloc_aligned.exit.thread.us.us
  invoke void %i.s()
          to label %_ZL18mi_try_new_handlerb.exit.us.us unwind label %.loopexit.split.us.split.us, !llvm.loop !255, !inline_history !6

.loopexit.split.us.split.us:                      ; preds = %bb.b
  %lpad.loopexit.us.us = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit

_ZL18mi_try_new_handlerb.exit.us:                 ; preds = %.split.us, %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.u = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.t, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext false) #55 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %mi_malloc_aligned.exit.thread.us, label %.critedge

mi_malloc_aligned.exit.thread.us:                 ; preds = %_ZL18mi_try_new_handlerb.exit.us
  %i.w = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not.us = icmp eq ptr %i.w, null
  br i1 %.not.us, label %.split17.us, label %bb.c

bb.c:                                             ; preds = %mi_malloc_aligned.exit.thread.us
  invoke void %i.w()
          to label %_ZL18mi_try_new_handlerb.exit.us unwind label %.loopexit.split.us.split, !llvm.loop !255, !inline_history !6

.loopexit.split.us.split:                         ; preds = %bb.c
  %lpad.loopexit.us = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit

_ZL18mi_try_new_handlerb.exit:                    ; preds = %bb.a, %bb.d
  %i.x = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.split17.us, label %bb.d

mi_malloc_aligned.exit.thread7:                   ; preds = %_ZL18mi_try_new_handlerb.exit.us.us
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !65
  %i.z = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.z, ptr %i.y, align 8, !tbaa !72
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !66
  %i.ac = add i16 %i.ab, 1
  store i16 %i.ac, ptr %i.aa, align 8, !tbaa !66
  br label %.critedge

.split17.us:                                      ; preds = %_ZL18mi_try_new_handlerb.exit, %mi_malloc_aligned.exit.thread.us, %mi_malloc_aligned.exit.thread.us.us
  invoke void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 12, ptr noundef nonnull @.str.98)
          to label %.critedge unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %_ZL18mi_try_new_handlerb.exit
  invoke void %i.x()
          to label %_ZL18mi_try_new_handlerb.exit unwind label %.loopexit.split, !llvm.loop !255, !inline_history !6

.critedge:                                        ; preds = %_ZL18mi_try_new_handlerb.exit.us, %mi_malloc_aligned.exit.us.us, %.split17.us, %mi_malloc_aligned.exit.thread7
  %.3.i.i.i.i5 = phi ptr [ null, %.split17.us ], [ %i.n, %mi_malloc_aligned.exit.thread7 ], [ %i.q, %mi_malloc_aligned.exit.us.us ], [ %i.u, %_ZL18mi_try_new_handlerb.exit.us ]
  ret ptr %.3.i.i.i.i5

.loopexit.split:                                  ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.split17.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us.split.us, %.loopexit.split.us.split, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us.split ], [ %lpad.loopexit.us.us, %.loopexit.split.us.split.us ]
  %i.ad = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #56
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @mi_new_realloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #55 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %_ZL18mi_try_new_handlerb.exit
  %i.e = tail call noundef ptr @_ZSt15get_new_handlerv() #55 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %_ZL18mi_try_new_handlerb.exit

bb.b:                                             ; preds = %.lr.ph
  tail call void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 12, ptr noundef nonnull @.str.98)
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #55 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !89
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #58
  unreachable

_ZL18mi_try_new_handlerb.exit:                    ; preds = %.lr.ph
  tail call void %i.e(), !inline_history !6
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.h = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.g, ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #55 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.lr.ph, label %.critedge, !llvm.loop !256

.critedge:                                        ; preds = %_ZL18mi_try_new_handlerb.exit, %bb.a
  %.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.h, %_ZL18mi_try_new_handlerb.exit ]
  ret ptr %.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef ptr @mi_new_reallocn(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !61

_ZL22mi_count_size_overflowmmPm.exit:             ; preds = %bb.b
  tail call fastcc void @_ZL18mi_try_new_handlerb(i1 noundef zeroext false)
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ]
  %i.d = tail call ptr @mi_new_realloc(ptr noundef %0, i64 noundef %storemerge.i.ph)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZL22mi_count_size_overflowmmPm.exit
  %.0 = phi ptr [ null, %_ZL22mi_count_size_overflowmmPm.exit ], [ %i.d, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_Z20_mi_heap_malloc_zeroP9mi_heap_smb(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.h, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef 0) #55, !inline_history !74
  br label %_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %i.h, align 8, !tbaa !65
  %i.k = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.k, ptr %i.g, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !66
  %i.n = add i16 %i.m, 1
  store i16 %i.n, ptr %i.l, align 8, !tbaa !66
  br i1 %2, label %bb.e, label %_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm.exit, !prof !61

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 1
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.h, align 8, !tbaa !65
  br label %_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 8) ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.s, i1 false)
  br label %_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm.exit

bb.h:                                             ; preds = %bb.a
  %i.t = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef 0) #55
  br label %_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm.exit

_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm.exit:   ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.t, %bb.h ], [ %i.j, %bb.c ], [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.h, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.h, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef 0) #55, !inline_history !74
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.h, align 8, !tbaa !65
  %i.k = inttoptr i64 %.val.i.i to ptr
  store ptr %i.k, ptr %i.g, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !66
  %i.n = add i16 %i.m, 1
  store i16 %i.n, ptr %i.l, align 8, !tbaa !66
  br i1 %2, label %bb.e, label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit, !prof !61

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 1
  %.not.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.h, align 8, !tbaa !65
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 8) ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.s, i1 false)
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

bb.h:                                             ; preds = %bb.a
  %i.t = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3) #55
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.h
  %.0 = phi ptr [ %i.t, %bb.h ], [ %i.j, %bb.c ], [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.h, %bb.d ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noalias ptr @mi_malloc_small(i64 noundef %0) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = add i64 %0, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !74
  br label %mi_heap_malloc_small.exit

bb.c:                                             ; preds = %bb.a
  %.val.i.i.i = load i64, ptr %i.i, align 8, !tbaa !65
  %i.l = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.l, ptr %i.h, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !66
  %i.o = add i16 %i.n, 1
  store i16 %i.o, ptr %i.m, align 8, !tbaa !66
  br label %mi_heap_malloc_small.exit

mi_heap_malloc_small.exit:                        ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.i, %bb.c ]
  ret ptr %.0.i.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noalias ptr @mi_heap_malloc_small(ptr noundef %0, i64 noundef %1) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7
  %i.b = lshr i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #55, !inline_history !74
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

bb.c:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.g, align 8, !tbaa !65
  %i.j = inttoptr i64 %.val.i.i to ptr
  store ptr %i.j, ptr %i.f, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !66
  %i.m = add i16 %i.l, 1
  store i16 %i.m, ptr %i.k, align 8, !tbaa !66
  br label %_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit

_ZL25mi_heap_malloc_small_zeroP9mi_heap_smb.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i = icmp eq i64 %i.a, 1
  br i1 %or.cond.not.i, label %bb.b, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 1025
  %i.c = icmp ule i64 %2, %1
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %1, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 4 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %2, -1
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = add i64 %3, %i.m
  %i.o = and i64 %i.n, %i.l
  %.not36.i = icmp eq i64 %i.o, 0
  br i1 %.not36.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.k, align 8, !tbaa !65
  %i.p = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.p, ptr %i.j, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !66
  %i.s = add i16 %i.r, 1
  store i16 %i.s, ptr %i.q, align 8, !tbaa !66
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.t = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false) #55
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit: ; preds = %bb.a, %bb.e, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i
  %.3.i = phi ptr [ null, %bb.a ], [ %i.t, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i ], [ %i.k, %bb.e ]
  ret ptr %.3.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_malloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i.i = icmp eq i64 %i.a, 1
  br i1 %or.cond.not.i.i, label %bb.b, label %mi_heap_malloc_aligned_at.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 1025
  %i.c = icmp ule i64 %2, %1
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %1, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 4 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %2, -1
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = and i64 %i.l, %i.m
  %.not36.i.i = icmp eq i64 %i.n, 0
  br i1 %.not36.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !65
  %i.o = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.o, ptr %i.j, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !66
  %i.r = add i16 %i.q, 1
  store i16 %i.r, ptr %i.p, align 8, !tbaa !66
  br label %mi_heap_malloc_aligned_at.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.s = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0, i1 noundef zeroext false) #55
  br label %mi_heap_malloc_aligned_at.exit

mi_heap_malloc_aligned_at.exit:                   ; preds = %bb.a, %bb.e, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i
  %.3.i.i = phi ptr [ null, %bb.a ], [ %i.s, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i ], [ %i.k, %bb.e ]
  ret ptr %.3.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_zalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i = icmp eq i64 %i.a, 1
  br i1 %or.cond.not.i, label %bb.b, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 1025
  %i.c = icmp ule i64 %2, %1
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %1, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 8 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %2, -1
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = add i64 %3, %i.m
  %i.o = and i64 %i.n, %i.l
  %.not36.i = icmp eq i64 %i.o, 0
  br i1 %.not36.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.k, align 8, !tbaa !65
  %i.p = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.p, ptr %i.j, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !66
  %i.s = add i16 %i.r, 1
  store i16 %i.s, ptr %i.q, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.u = load i8, ptr %i.t, align 1
  %i.v = and i8 %i.u, 1
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !65
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 8) ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.x, i1 false)
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.y = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true) #55
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit: ; preds = %bb.a, %bb.f, %bb.g, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i
  %.3.i = phi ptr [ null, %bb.a ], [ %i.y, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i ], [ %i.k, %bb.f ], [ %i.k, %bb.g ]
  ret ptr %.3.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_zalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i.i = icmp eq i64 %i.a, 1
  br i1 %or.cond.not.i.i, label %bb.b, label %mi_heap_zalloc_aligned_at.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 1025
  %i.c = icmp ule i64 %2, %1
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %1, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 8 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %2, -1
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = and i64 %i.l, %i.m
  %.not36.i.i = icmp eq i64 %i.n, 0
  br i1 %.not36.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !65
  %i.o = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.o, ptr %i.j, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !66
  %i.r = add i16 %i.q, 1
  store i16 %i.r, ptr %i.p, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, 1
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !65
  br label %mi_heap_zalloc_aligned_at.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 8) ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.w, i1 false)
  br label %mi_heap_zalloc_aligned_at.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.x = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0, i1 noundef zeroext true) #55
  br label %mi_heap_zalloc_aligned_at.exit

mi_heap_zalloc_aligned_at.exit:                   ; preds = %bb.a, %bb.f, %bb.g, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i
  %.3.i.i = phi ptr [ null, %bb.a ], [ %i.x, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i ], [ %i.k, %bb.f ], [ %i.k, %bb.g ]
  ret ptr %.3.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_calloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond.not.i.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.not.i.i, label %bb.d, label %_ZL22mi_count_size_overflowmmPm.exit, !prof !91

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %storemerge.i.ph, 1025
  %i.f = icmp ule i64 %3, %storemerge.i.ph
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw nsw i64 %storemerge.i.ph, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.o = add i64 %3, -1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = add i64 %4, %i.p
  %i.r = and i64 %i.q, %i.o
  %.not36.i.i = icmp eq i64 %i.r, 0
  br i1 %.not36.i.i, label %bb.g, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !65
  %i.s = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.s, ptr %i.m, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !66
  %i.v = add i16 %i.u, 1
  store i16 %i.v, ptr %i.t, align 8, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 1
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.n, align 8, !tbaa !65
  br label %_ZL22mi_count_size_overflowmmPm.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 8) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.aa, i1 false)
  br label %_ZL22mi_count_size_overflowmmPm.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ab = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %storemerge.i.ph, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true) #55
  br label %_ZL22mi_count_size_overflowmmPm.exit

_ZL22mi_count_size_overflowmmPm.exit:             ; preds = %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, %bb.i, %bb.h, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.ab, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_calloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_heap_calloc_aligned_at.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond.not.i.i.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.not.i.i.i, label %bb.d, label %mi_heap_calloc_aligned_at.exit, !prof !91

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %storemerge.i.ph.i, 1025
  %i.f = icmp ule i64 %3, %storemerge.i.ph.i
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.o = add i64 %3, -1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = and i64 %i.o, %i.p
  %.not36.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not36.i.i.i, label %bb.g, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !65
  %i.r = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.r, ptr %i.m, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !66
  %i.u = add i16 %i.t, 1
  store i16 %i.u, ptr %i.s, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.w = load i8, ptr %i.v, align 1
  %i.x = and i8 %i.w, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.n, align 8, !tbaa !65
  br label %mi_heap_calloc_aligned_at.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 8) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.z, i1 false)
  br label %mi_heap_calloc_aligned_at.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.aa = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef 0, i1 noundef zeroext true) #55
  br label %mi_heap_calloc_aligned_at.exit

mi_heap_calloc_aligned_at.exit:                   ; preds = %bb.b, %bb.c, %bb.h, %bb.i, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.aa, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_malloc_aligned_at(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.not.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not.i.i, label %bb.b, label %mi_heap_malloc_aligned_at.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1025
  %i.e = icmp ule i64 %1, %0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %1, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = add i64 %2, %i.o
  %i.q = and i64 %i.p, %i.n
  %.not36.i.i = icmp eq i64 %i.q, 0
  br i1 %.not36.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !65
  %i.r = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.r, ptr %i.l, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !66
  %i.u = add i16 %i.t, 1
  store i16 %i.u, ptr %i.s, align 8, !tbaa !66
  br label %mi_heap_malloc_aligned_at.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.v = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext false) #55
  br label %mi_heap_malloc_aligned_at.exit

mi_heap_malloc_aligned_at.exit:                   ; preds = %bb.a, %bb.e, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i
  %.3.i.i = phi ptr [ null, %bb.a ], [ %i.v, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i ], [ %i.m, %bb.e ]
  ret ptr %.3.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_zalloc_aligned_at(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.not.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not.i.i, label %bb.b, label %mi_heap_zalloc_aligned_at.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1025
  %i.e = icmp ule i64 %1, %0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 8 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %1, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = add i64 %2, %i.o
  %i.q = and i64 %i.p, %i.n
  %.not36.i.i = icmp eq i64 %i.q, 0
  br i1 %.not36.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !65
  %i.r = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.r, ptr %i.l, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !66
  %i.u = add i16 %i.t, 1
  store i16 %i.u, ptr %i.s, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 15
  %i.w = load i8, ptr %i.v, align 1
  %i.x = and i8 %i.w, 1
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !65
  br label %mi_heap_zalloc_aligned_at.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.z, i1 false)
  br label %mi_heap_zalloc_aligned_at.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.aa = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext true) #55
  br label %mi_heap_zalloc_aligned_at.exit

mi_heap_zalloc_aligned_at.exit:                   ; preds = %bb.a, %bb.f, %bb.g, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i
  %.3.i.i = phi ptr [ null, %bb.a ], [ %i.aa, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  ret ptr %.3.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_zalloc_aligned(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.not.i.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %mi_heap_zalloc_aligned.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1025
  %i.e = icmp ule i64 %1, %0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %1, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = and i64 %i.n, %i.o
  %.not36.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not36.i.i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !65
  %i.q = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.q, ptr %i.l, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !66
  %i.t = add i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 8, !tbaa !66
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 15
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !65
  br label %mi_heap_zalloc_aligned.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.y, i1 false)
  br label %mi_heap_zalloc_aligned.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.z = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext true) #55
  br label %mi_heap_zalloc_aligned.exit

mi_heap_zalloc_aligned.exit:                      ; preds = %bb.a, %bb.f, %bb.g, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i
  %.3.i.i.i = phi ptr [ null, %bb.a ], [ %i.z, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  ret ptr %.3.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_calloc_aligned_at(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_calloc_aligned_at.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i.i.i = icmp eq i64 %i.f, 1
  br i1 %or.cond.not.i.i.i, label %bb.d, label %mi_heap_calloc_aligned_at.exit, !prof !91

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %storemerge.i.ph.i, 1025
  %i.h = icmp ule i64 %2, %storemerge.i.ph.i
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %2, -1
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = add i64 %3, %i.r
  %i.t = and i64 %i.s, %i.q
  %.not36.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not36.i.i.i, label %bb.g, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i, !prof !68

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !65
  %i.u = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.u, ptr %i.o, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !66
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %i.v, align 8, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.p, align 8, !tbaa !65
  br label %mi_heap_calloc_aligned_at.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %i.p, i64 8) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.ac, i1 false)
  br label %mi_heap_calloc_aligned_at.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ad = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true) #55
  br label %mi_heap_calloc_aligned_at.exit

mi_heap_calloc_aligned_at.exit:                   ; preds = %bb.b, %bb.c, %bb.h, %bb.i, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.ad, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_calloc_aligned(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %.not.i.i = icmp eq i64 %0, 1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_calloc_aligned.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i.i.i.i = icmp eq i64 %i.f, 1
  br i1 %or.cond.not.i.i.i.i, label %bb.d, label %mi_heap_calloc_aligned.exit, !prof !91

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %storemerge.i.ph.i.i, 1025
  %i.h = icmp ule i64 %2, %storemerge.i.ph.i.i
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw nsw i64 %storemerge.i.ph.i.i, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %2, -1
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = and i64 %i.q, %i.r
  %.not36.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not36.i.i.i.i, label %bb.g, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i, !prof !68

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !65
  %i.t = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.t, ptr %i.o, align 8, !tbaa !72
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !66
  %i.w = add i16 %i.v, 1
  store i16 %i.w, ptr %i.u, align 8, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  %i.y = load i8, ptr %i.x, align 1
  %i.z = and i8 %i.y, 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.p, align 8, !tbaa !65
  br label %mi_heap_calloc_aligned.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %i.p, i64 8) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.ab, i1 false)
  br label %mi_heap_calloc_aligned.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ac = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i.i, i64 noundef %2, i64 noundef 0, i1 noundef zeroext true) #55
  br label %mi_heap_calloc_aligned.exit

mi_heap_calloc_aligned.exit:                      ; preds = %bb.b, %bb.c, %bb.h, %bb.i, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i
  %.0.i.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.ac, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i.i.i.i ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_realloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false) #55
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %5) #55
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond.not.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.not.i, label %bb.e, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, !prof !91

bb.e:                                             ; preds = %bb.d
  %i.e = icmp ult i64 %2, 1025
  %i.f = icmp ule i64 %3, %2
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.f, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !68

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw nsw i64 %2, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 9 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, label %bb.g, !prof !61

bb.g:                                             ; preds = %bb.f
  %i.o = add i64 %3, -1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = add i64 %4, %i.p
  %i.r = and i64 %i.q, %i.o
  %.not36.i = icmp eq i64 %i.r, 0
  br i1 %.not36.i, label %bb.h, label %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, !prof !68

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i = load i64, ptr %i.n, align 8, !tbaa !65
  %i.s = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.s, ptr %i.m, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !66
  %i.v = add i16 %i.u, 1
  store i16 %i.v, ptr %i.t, align 8, !tbaa !66
  br i1 %5, label %bb.i, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 1
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.n, align 8, !tbaa !65
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 8) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.aa, i1 false)
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ab = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #55
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.l:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ad = add i64 %i.ac, -1                       ; 3 uses
  %i.ae = icmp slt i64 %i.ad, 33554432            ; 2 uses
  br i1 %i.ae, label %mi_usable_size.exit, label %bb.m, !prof !61

bb.m:                                             ; preds = %bb.l
  %i.af = and i64 %i.ad, 9223372036821221376      ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = sub i64 %i.ac, %i.af
  %i.ai = lshr i64 %i.ah, 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 288
  %i.ak = getelementptr inbounds nuw [96 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !67
  %i.an = zext i32 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 14
  %.val.i.i = load i8, ptr %i.aq, align 2
  %i.ar = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i, label %bb.n, label %bb.o, !prof !68

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr i8, ptr %i.ap, i64 40
  %.val12.i.i = load i64, ptr %i.as, align 8, !tbaa !62
  br label %mi_usable_size.exit

bb.o:                                             ; preds = %bb.m
  %i.at = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.ap, ptr noundef nonnull %1) #55
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.l, %bb.n, %bb.o
  %.1.i.i = phi i64 [ 0, %bb.l ], [ %i.at, %bb.o ], [ %.val12.i.i, %bb.n ] ; 5 uses
  %.not = icmp ugt i64 %2, %.1.i.i                ; 2 uses
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %mi_usable_size.exit
  %i.au = lshr i64 %.1.i.i, 1
  %i.av = sub nuw i64 %.1.i.i, %i.au
  %.not50 = icmp ult i64 %2, %i.av
  br i1 %.not50, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add i64 %4, %i.ac
  %i.ax = urem i64 %i.aw, %3
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %mi_usable_size.exit
  %i.az = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond.not.i.i = icmp eq i64 %i.az, 1
  br i1 %or.cond.not.i.i, label %bb.s, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, !prof !91

bb.s:                                             ; preds = %bb.r
  %i.ba = icmp ult i64 %2, 1025
  %i.bb = icmp ule i64 %3, %2
  %i.bc = and i1 %i.ba, %i.bb
  br i1 %i.bc, label %bb.t, label %mi_heap_malloc_aligned_at.exit, !prof !68

bb.t:                                             ; preds = %bb.s
  %i.bd = add nuw nsw i64 %2, 7
  %i.be = lshr i64 %i.bd, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !77 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !72 ; 4 uses
  %.not.i.i52 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i52, label %mi_heap_malloc_aligned_at.exit, label %bb.u, !prof !61

bb.u:                                             ; preds = %bb.t
  %i.bk = add i64 %3, -1
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = add i64 %4, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not36.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not36.i.i, label %mi_heap_malloc_aligned_at.exit.thread55, label %mi_heap_malloc_aligned_at.exit, !prof !68

mi_heap_malloc_aligned_at.exit.thread55:          ; preds = %bb.u
  %.val.i.i.i.i = load i64, ptr %i.bj, align 8, !tbaa !65
  %i.bo = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !72
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 8, !tbaa !66
  %i.br = add i16 %i.bq, 1
  store i16 %i.br, ptr %i.bp, align 8, !tbaa !66
  br label %bb.v

mi_heap_malloc_aligned_at.exit:                   ; preds = %bb.s, %bb.t, %bb.u
  %i.bs = tail call fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false) #55 ; 2 uses
  %.not51 = icmp eq ptr %i.bs, null
  br i1 %.not51, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, label %bb.v

bb.v:                                             ; preds = %mi_heap_malloc_aligned_at.exit.thread55, %mi_heap_malloc_aligned_at.exit
  %.3.i.i58 = phi ptr [ %i.bj, %mi_heap_malloc_aligned_at.exit.thread55 ], [ %i.bs, %mi_heap_malloc_aligned_at.exit ] ; 8 uses
  %or.cond = and i1 %5, %.not
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bt = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i, i64 8) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.3.i.i58, i64 %i.bt
  %i.bv = sub nuw i64 %2, %i.bt
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bu, i8 0, i64 %i.bv, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.assume(i1 true) [ "align"(ptr %.3.i.i58, i64 8), "align"(ptr %1, i64 8) ]
  %6 = tail call i64 @llvm.umin.i64(i64 %2, i64 %.1.i.i)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.3.i.i58, ptr nonnull readonly align 8 %1, i64 %6, i1 false)
  %i.bw = and i64 %i.ad, -33554432                ; 2 uses
  %i.bx = inttoptr i64 %i.bw to ptr               ; 3 uses
  br i1 %i.ae, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, label %bb.y, !prof !61

bb.y:                                             ; preds = %bb.x
  %i.by = tail call ptr @llvm.thread.pointer.p0()
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 280
  %i.cb = load atomic i64, ptr %i.ca monotonic, align 8
  %i.cc = sub i64 %i.ac, %i.bw
  %i.cd = lshr i64 %i.cc, 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 288
  %i.cf = getelementptr inbounds nuw [96 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !67
  %i.ci = zext i32 %i.ch to i64
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.cf, i64 %i.cj ; 6 uses
  %i.cl = icmp eq i64 %i.cb, %i.bz
  br i1 %i.cl, label %bb.z, label %bb.ad, !prof !68

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 14
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !69
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.aa, label %bb.ac, !prof !68

bb.aa:                                            ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !63
  %i.cr = ptrtoint ptr %i.cq to i64
  store i64 %i.cr, ptr %1, align 8, !tbaa !65
  store ptr %1, ptr %i.cp, align 8, !tbaa !63
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 8, !tbaa !66
  %i.cu = add i16 %i.ct, -1                       ; 2 uses
  store i16 %i.cu, ptr %i.cs, align 8, !tbaa !66
  %i.cv = icmp eq i16 %i.cu, 0
  br i1 %i.cv, label %bb.ab, label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit, !prof !61

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.ck) #55, !inline_history !73
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.ac:                                            ; preds = %bb.z
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.ck, ptr noundef nonnull %1) #55, !inline_history !73
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

bb.ad:                                            ; preds = %bb.y
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.bx, ptr noundef nonnull %1) #57, !inline_history !73
  br label %_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit

_ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_smmmb.exit: ; preds = %bb.r, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.x, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i, %bb.k, %bb.j, %bb.h, %bb.d, %bb.q, %mi_heap_malloc_aligned_at.exit, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ null, %mi_heap_malloc_aligned_at.exit ], [ %1, %bb.q ], [ %.3.i.i58, %bb.ad ], [ null, %bb.d ], [ %i.ab, %_Z22_mi_page_malloc_zeroedP9mi_heap_sP9mi_page_sm.exit.i ], [ %i.n, %bb.j ], [ %i.n, %bb.k ], [ %i.n, %bb.h ], [ %.3.i.i58, %bb.x ], [ %.3.i.i58, %bb.aa ], [ %.3.i.i58, %bb.ab ], [ %.3.i.i58, %bb.ac ], [ null, %bb.r ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_realloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false) #55
  br label %_ZL28mi_heap_realloc_zero_alignedP9mi_heap_sPvmmb.exit

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = urem i64 %i.c, %3
  %i.e = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.d, i1 noundef zeroext false) #55
  br label %_ZL28mi_heap_realloc_zero_alignedP9mi_heap_sPvmmb.exit

_ZL28mi_heap_realloc_zero_alignedP9mi_heap_sPvmmb.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_rezalloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true) #55
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_rezalloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true) #55
  br label %_ZL28mi_heap_realloc_zero_alignedP9mi_heap_sPvmmb.exit

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = urem i64 %i.c, %3
  %i.e = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.d, i1 noundef zeroext true) #55
  br label %_ZL28mi_heap_realloc_zero_alignedP9mi_heap_sPvmmb.exit

_ZL28mi_heap_realloc_zero_alignedP9mi_heap_sPvmmb.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_recalloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %3, %bb.a ], [ %i.c, %bb.b ]
  %i.d = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i64 noundef %4, i64 noundef %5, i1 noundef zeroext true) #55
  br label %_ZL22mi_count_size_overflowmmPm.exit

_ZL22mi_count_size_overflowmmPm.exit:             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_heap_recalloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %_ZL22mi_count_size_overflowmmPm.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %3, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = icmp ult i64 %4, 9
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i1 noundef zeroext true) #55
  br label %_ZL22mi_count_size_overflowmmPm.exit

bb.e:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %1 to i64
  %i.g = urem i64 %i.f, %4
  %i.h = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i64 noundef %4, i64 noundef %i.g, i1 noundef zeroext true) #55
  br label %_ZL22mi_count_size_overflowmmPm.exit

_ZL22mi_count_size_overflowmmPm.exit:             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.d ], [ %i.h, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_realloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false) #55
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_realloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = icmp ult i64 %2, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_Z21_mi_heap_realloc_zeroP9mi_heap_sPvmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #55
  br label %mi_heap_realloc_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64
  %i.f = urem i64 %i.e, %2
  %i.g = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.f, i1 noundef zeroext false) #55
  br label %mi_heap_realloc_aligned.exit

mi_heap_realloc_aligned.exit:                     ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @mi_rezalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = tail call fastcc noundef ptr @_ZL31mi_heap_realloc_zero_aligned_atP9mi_heap_sPvmmmb(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true) #55
  ret ptr %i.c
end_hunk_1
begin_hunk_2_@_ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e:bb.a
  br i1 %or.cond.not.i.i.i.i.i, label %.loopexit.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !8

.loopexit.i.i:                                    ; preds = %.preheader.i.i.i.i.i, %bb.an
  %i.ho = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 176), i64 1 monotonic, align 8 ; 0 uses
  %i.hp = atomicrmw add ptr @_ZL12thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_stats_merge.exit

bb.ao:                                            ; preds = %bb.al
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  tail call void @__clang_call_terminate(ptr %i.hr) #56, !inline_history !302
  unreachable

mi_stats_merge.exit:                              ; preds = %bb.am, %.loopexit.i.i
  %i.hs = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !76
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !177
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 952
  tail call fastcc void @_ZL19mi_stats_merge_fromP10mi_stats_s(ptr noundef nonnull %i.hv), !inline_history !304
  br label %bb.ap

bb.ap:                                            ; preds = %_Z23_mi_thread_data_collectv.exit, %mi_stats_merge.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_heap_collect(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %1 to i32
  invoke fastcc void @_ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e(ptr noundef %0, i32 noundef %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #56
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_collect(i1 noundef zeroext %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = zext i1 %0 to i32
  invoke fastcc void @_ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e(ptr noundef %i.b, i32 noundef %i.c)
          to label %mi_heap_collect.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #56
  unreachable

mi_heap_collect.exit:                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @mi_heap_get_default() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @mi_process_init() #55, !inline_history !196
  %i.a = invoke fastcc noundef zeroext i1 @_ZL20_mi_thread_heap_initv()
          to label %bb.b unwind label %bb.d, !inline_history !196

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %mi_thread_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 192), i64 1 monotonic, align 8 ; 3 uses
  %i.c = add nsw i64 %i.b, 1
  %i.d = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184) monotonic, align 8 ; 2 uses
  %.old3.i.i.i.not = icmp sgt i64 %i.d, %i.b
  br i1 %.old3.i.i.i.not, label %.loopexit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.g, %.preheader.i.i.i ], [ %i.d, %bb.c ]
  %i.e = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184), i64 %.0.i.i.i, i64 %i.c release monotonic, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = icmp sgt i64 %i.g, %i.b
  %or.cond.not.i.i.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond.not.i.i.i, label %.loopexit, label %.preheader.i.i.i, !llvm.loop !8

.loopexit:                                        ; preds = %.preheader.i.i.i, %bb.c
  %i.i = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 176), i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr @_ZL12thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_thread_init.exit

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #56, !inline_history !196
  unreachable

mi_thread_init.exit:                              ; preds = %bb.b, %.loopexit
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_thread_init() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @mi_process_init() #55
  %i.a = invoke fastcc noundef zeroext i1 @_ZL20_mi_thread_heap_initv()
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 192), i64 1 monotonic, align 8 ; 3 uses
  %i.c = add nsw i64 %i.b, 1
  %i.d = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184) monotonic, align 8 ; 2 uses
  %.old3.i.i.i.not = icmp sgt i64 %i.d, %i.b
  br i1 %.old3.i.i.i.not, label %.loopexit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.g, %.preheader.i.i.i ], [ %i.d, %bb.c ]
  %i.e = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184), i64 %.0.i.i.i, i64 %i.c release monotonic, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = icmp sgt i64 %i.g, %i.b
  %or.cond.not.i.i.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond.not.i.i.i, label %.loopexit, label %.preheader.i.i.i, !llvm.loop !8

.loopexit:                                        ; preds = %.preheader.i.i.i, %bb.c
  %i.i = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 176), i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr @_ZL12thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.loopexit
  ret void

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #56
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @mi_heap_get_backing() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @mi_process_init() #55, !inline_history !197
  %i.a = invoke fastcc noundef zeroext i1 @_ZL20_mi_thread_heap_initv()
          to label %bb.b unwind label %bb.d, !inline_history !197

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %mi_heap_get_default.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 192), i64 1 monotonic, align 8 ; 3 uses
  %i.c = add nsw i64 %i.b, 1
  %i.d = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184) monotonic, align 8 ; 2 uses
  %.old3.i.i.i.not.i = icmp sgt i64 %i.d, %i.b
  br i1 %.old3.i.i.i.not.i, label %.loopexit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.c, %.preheader.i.i.i.i
  %.0.i.i.i.i = phi i64 [ %i.g, %.preheader.i.i.i.i ], [ %i.d, %bb.c ]
  %i.e = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184), i64 %.0.i.i.i.i, i64 %i.c release monotonic, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = icmp sgt i64 %i.g, %i.b
  %or.cond.not.i.i.i.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond.not.i.i.i.i, label %.loopexit.i, label %.preheader.i.i.i.i, !llvm.loop !8

.loopexit.i:                                      ; preds = %.preheader.i.i.i.i, %bb.c
  %i.i = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 176), i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr @_ZL12thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_heap_get_default.exit

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #56, !inline_history !197
  unreachable

mi_heap_get_default.exit:                         ; preds = %bb.b, %.loopexit.i
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !177
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !187
  ret ptr %i.q
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z13_mi_heap_initP9mi_heap_sP8mi_tld_sibh(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #6 {
bb.a:
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 8) ]
  %5 = zext i1 %3 to i8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3080) %0, ptr noundef nonnull readonly align 64 dereferenceable(3080) @_mi_heap_empty, i64 3080, i1 false)
  store ptr %1, ptr %0, align 8, !tbaa !177
  %i.a = tail call ptr @llvm.thread.pointer.p0()
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.c, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.d, align 8, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %5, ptr %i.e, align 8, !tbaa !188
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 %4, ptr %i.f, align 1, !tbaa !198
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !187  ; 2 uses
  %i.i = icmp eq ptr %0, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @_ZL17mi_random_init_exP15mi_random_cxt_sb(ptr noundef nonnull %i.j, i1 noundef zeroext false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.m = ptrtoint ptr %i.l to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.l, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.k, i64 48, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.m, ptr %i.n, align 8
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %i.l)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 19 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %.pre.i.i = load i32, ptr %i.p, align 8, !tbaa !129
  br label %bb.e

bb.e:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i, %bb.d
  %i.r = phi i32 [ %i.aj, %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.f, label %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %i.o)
  store i32 16, ptr %i.p, align 8, !tbaa !129
  br label %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i

_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i:    ; preds = %bb.f, %bb.e
  %i.t = phi i32 [ 16, %bb.f ], [ %i.r, %bb.e ]
  %i.u = sub nsw i32 16, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !97
  store i32 0, ptr %i.w, align 4, !tbaa !97
  %i.y = load i32, ptr %i.p, align 8, !tbaa !129  ; 2 uses
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.p, align 8, !tbaa !129
  %i.aa = zext i32 %i.x to i64
  %i.ab = shl nuw i64 %i.aa, 32
  %i.ac = icmp slt i32 %i.y, 2
  br i1 %i.ac, label %bb.g, label %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i

bb.g:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %i.o)
  store i32 16, ptr %i.p, align 8, !tbaa !129
  br label %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i

_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i:   ; preds = %bb.g, %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i
  %i.ad = phi i32 [ 16, %bb.g ], [ %i.z, %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i ]
  %i.ae = sub nsw i32 16, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !97
  store i32 0, ptr %i.ag, align 4, !tbaa !97
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !129
  %i.aj = add nsw i32 %i.ai, -1                   ; 3 uses
  store i32 %i.aj, ptr %i.p, align 8, !tbaa !129
  %i.ak = zext i32 %i.ah to i64
  %i.al = or disjoint i64 %i.ab, %i.ak            ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.e, label %_Z20_mi_heap_random_nextP9mi_heap_s.exit, !llvm.loop !7

_Z20_mi_heap_random_nextP9mi_heap_s.exit:         ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i
  %i.an = or i64 %i.al, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !199
  br label %bb.h

bb.h:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i28, %_Z20_mi_heap_random_nextP9mi_heap_s.exit
  %i.ap = phi i32 [ %i.bh, %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i28 ], [ %i.aj, %_Z20_mi_heap_random_nextP9mi_heap_s.exit ] ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %bb.i, label %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i27

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %i.o)
  store i32 16, ptr %i.p, align 8, !tbaa !129
  br label %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i27

_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i27:  ; preds = %bb.i, %bb.h
  %i.ar = phi i32 [ 16, %bb.i ], [ %i.ap, %bb.h ]
  %i.as = sub nsw i32 16, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !97
  store i32 0, ptr %i.au, align 4, !tbaa !97
  %i.aw = load i32, ptr %i.p, align 8, !tbaa !129 ; 2 uses
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.p, align 8, !tbaa !129
  %i.ay = zext i32 %i.av to i64
  %i.az = shl nuw i64 %i.ay, 32
  %i.ba = icmp slt i32 %i.aw, 2
  br i1 %i.ba, label %bb.j, label %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i28

bb.j:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i27
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %i.o)
  store i32 16, ptr %i.p, align 8, !tbaa !129
  br label %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i28

_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i28: ; preds = %bb.j, %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i27
  %i.bb = phi i32 [ 16, %bb.j ], [ %i.ax, %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i27 ]
  %i.bc = sub nsw i32 16, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !97
  store i32 0, ptr %i.be, align 4, !tbaa !97
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !129
  %i.bh = add nsw i32 %i.bg, -1                   ; 3 uses
  store i32 %i.bh, ptr %i.p, align 8, !tbaa !129
  %i.bi = zext i32 %i.bf to i64
  %i.bj = or disjoint i64 %i.az, %i.bi            ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.h, label %_Z20_mi_heap_random_nextP9mi_heap_s.exit29, !llvm.loop !7

_Z20_mi_heap_random_nextP9mi_heap_s.exit29:       ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i28
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !98
  br label %bb.k

bb.k:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i32, %_Z20_mi_heap_random_nextP9mi_heap_s.exit29
  %i.bm = phi i32 [ %i.ce, %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i32 ], [ %i.bh, %_Z20_mi_heap_random_nextP9mi_heap_s.exit29 ] ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 1
  br i1 %i.bn, label %bb.l, label %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i31

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %i.o)
  store i32 16, ptr %i.p, align 8, !tbaa !129
  br label %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i31

_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i31:  ; preds = %bb.l, %bb.k
  %i.bo = phi i32 [ 16, %bb.l ], [ %i.bm, %bb.k ]
  %i.bp = sub nsw i32 16, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !97
  store i32 0, ptr %i.br, align 4, !tbaa !97
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !129 ; 2 uses
  %i.bu = add nsw i32 %i.bt, -1                   ; 2 uses
  store i32 %i.bu, ptr %i.p, align 8, !tbaa !129
  %i.bv = zext i32 %i.bs to i64
  %i.bw = shl nuw i64 %i.bv, 32
  %i.bx = icmp slt i32 %i.bt, 2
  br i1 %i.bx, label %bb.m, label %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i32

bb.m:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i31
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %i.o)
  store i32 16, ptr %i.p, align 8, !tbaa !129
  br label %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i32

_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i32: ; preds = %bb.m, %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i31
  %i.by = phi i32 [ 16, %bb.m ], [ %i.bu, %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i31 ]
  %i.bz = sub nsw i32 16, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !97
  store i32 0, ptr %i.cb, align 4, !tbaa !97
  %i.cd = load i32, ptr %i.p, align 8, !tbaa !129
  %i.ce = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.ce, ptr %i.p, align 8, !tbaa !129
  %i.cf = zext i32 %i.cc to i64
  %i.cg = or disjoint i64 %i.bw, %i.cf            ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.k, label %_Z20_mi_heap_random_nextP9mi_heap_s.exit33, !llvm.loop !7

_Z20_mi_heap_random_nextP9mi_heap_s.exit33:       ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.cg, ptr %i.ci, align 8, !tbaa !98
  %i.cj = load ptr, ptr %0, align 8, !tbaa !177
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !200
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !201
  store ptr %0, ptr %i.ck, align 8, !tbaa !200
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z15_mi_random_initP15mi_random_cxt_s(ptr noundef %0) local_unnamed_addr #6 {
end_hunk_2
begin_hunk_3_@_Z15_mi_heap_by_tagP9mi_heap_sh:bb.a
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !177
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.01014 = load ptr, ptr %i.e, align 8, !tbaa !76 ; 2 uses
  %.not15 = icmp eq ptr %.01014, null
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.01016 = phi ptr [ %.010, %bb.c ], [ %.01014, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01016, i64 241
  %i.g = load i8, ptr %i.f, align 1, !tbaa !198
  %i.h = icmp eq i8 %i.g, %1
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.01016, i64 232
  %.010 = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not = icmp eq ptr %.010, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !21

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %bb.b, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ %.01016, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z22_mi_heap_destroy_pagesP9mi_heap_s(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load i64, ptr %i.b, align 8, !tbaa !190
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1280
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %.preheader.i
  %.02229.i = phi i64 [ 0, %.preheader.i ], [ %i.bi, %.critedge.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.02229.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !191  ; 2 uses
  %.not.i8 = icmp eq ptr %i.g, null
  br i1 %.not.i8, label %.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZL21_mi_heap_page_destroyP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit
  %.0.i9 = phi ptr [ %i.i, %_ZL21_mi_heap_page_destroyP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit ], [ %i.g, %bb.c ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i9, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !192  ; 2 uses
  %i.j = tail call noundef zeroext i1 @_Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb(ptr noundef nonnull %.0.i9, i32 noundef 3, i1 noundef zeroext false)
  br i1 %i.j, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i9, i64 56 ; 10 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.4.i, %.lr.ph.i.i.preheader
  %i.l = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.i2

.critedge.i2:                                     ; preds = %bb.h, %.lr.ph.i.i
  %i.m = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 3
  switch i32 %i.o, label %bb.h [
    i32 1, label %.critedge.outer.1.i
    i32 3, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i
  ], !prof !202

.critedge.outer.1.i:                              ; preds = %.critedge.i2
  %i.p = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.d, %.critedge.outer.1.i
  %i.q = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 3
  switch i32 %i.s, label %bb.d [
    i32 1, label %.critedge.outer.2.i
    i32 3, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i
  ], !prof !202

.critedge.outer.2.i:                              ; preds = %.critedge.1.i
  %i.t = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.2.i

bb.d:                                             ; preds = %.critedge.1.i
  %i.u = or i64 %i.q, 3
  %i.v = cmpxchg weak ptr %i.k, i64 %i.q, i64 %i.u release monotonic, align 8
  %i.w = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.w, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i, label %.critedge.1.i, !llvm.loop !2

.critedge.2.i:                                    ; preds = %bb.e, %.critedge.outer.2.i
  %i.x = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, 3
  switch i32 %i.z, label %bb.e [
    i32 1, label %.critedge.outer.3.i
    i32 3, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i
  ], !prof !202

.critedge.outer.3.i:                              ; preds = %.critedge.2.i
  %i.aa = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.3.i

bb.e:                                             ; preds = %.critedge.2.i
  %i.ab = or i64 %i.x, 3
  %i.ac = cmpxchg weak ptr %i.k, i64 %i.x, i64 %i.ab release monotonic, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i, label %.critedge.2.i, !llvm.loop !2

.critedge.3.i:                                    ; preds = %bb.f, %.critedge.outer.3.i
  %i.ae = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 3
  switch i32 %i.ag, label %bb.f [
    i32 1, label %.critedge.outer.4.i
    i32 3, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i
  ], !prof !202

.critedge.outer.4.i:                              ; preds = %.critedge.3.i
  %i.ah = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.4.i

bb.f:                                             ; preds = %.critedge.3.i
  %i.ai = or i64 %i.ae, 3
  %i.aj = cmpxchg weak ptr %i.k, i64 %i.ae, i64 %i.ai release monotonic, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i, label %.critedge.3.i, !llvm.loop !2

.critedge.4.i:                                    ; preds = %bb.g, %.critedge.outer.4.i
  %i.al = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 3
  switch i32 %i.an, label %bb.g [
    i32 1, label %.lr.ph.i.i
    i32 3, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i
  ], !prof !202, !llvm.loop !17

bb.g:                                             ; preds = %.critedge.4.i
  %i.ao = or i64 %i.al, 3
  %i.ap = cmpxchg weak ptr %i.k, i64 %i.al, i64 %i.ao release monotonic, align 8
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i, label %.critedge.4.i, !llvm.loop !2

bb.h:                                             ; preds = %.critedge.i2
  %i.ar = or i64 %i.m, 3
  %i.as = cmpxchg weak ptr %i.k, i64 %i.m, i64 %i.ar release monotonic, align 8
  %i.at = extractvalue { i64, i1 } %i.as, 1
  br i1 %i.at, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i, label %.critedge.i2, !llvm.loop !2

_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i: ; preds = %.critedge.i2, %bb.h, %.critedge.1.i, %bb.d, %.critedge.2.i, %bb.e, %.critedge.3.i, %bb.f, %.critedge.4.i, %bb.g, %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i9, i64 32
  store i16 0, ptr %i.au, align 8, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.av = load ptr, ptr %0, align 8, !tbaa !177
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 3 uses
  %i.ax = ptrtoint ptr %.0.i9 to i64
  %i.ay = add i64 %i.ax, -1
  %i.az = and i64 %i.ay, -33554432
  %i.ba = inttoptr i64 %i.az to ptr               ; 5 uses
  %i.bb = tail call fastcc noundef ptr @_ZL21mi_segment_page_clearP9mi_page_sP17mi_segments_tld_s(ptr noundef nonnull %.0.i9, ptr noundef nonnull %i.aw) ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 216
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !193 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i
  tail call fastcc void @_ZL15mi_segment_freeP12mi_segment_sbP17mi_segments_tld_s(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.aw)
  br label %_ZL21_mi_heap_page_destroyP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit

bb.j:                                             ; preds = %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 200
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !194
  %i.bh = icmp eq i64 %i.bd, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZL18mi_segment_abandonP12mi_segment_sP17mi_segments_tld_s(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.aw)
  br label %_ZL21_mi_heap_page_destroyP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit

bb.l:                                             ; preds = %bb.j
  tail call fastcc void @_ZL20mi_segment_try_purgeP12mi_segment_sb(ptr noundef nonnull %i.ba, i1 noundef zeroext false)
  br label %_ZL21_mi_heap_page_destroyP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit

_ZL21_mi_heap_page_destroyP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !18

.critedge.i:                                      ; preds = %_ZL21_mi_heap_page_destroyP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit, %bb.c
  %i.bi = add nuw nsw i64 %.02229.i, 1            ; 2 uses
  %exitcond.i = icmp eq i64 %i.bi, 75
  br i1 %exitcond.i, label %_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit, label %bb.c, !llvm.loop !19

_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit: ; preds = %.critedge.i, %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 8) ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bj, i8 0, i64 1032, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %i.bk, ptr noundef nonnull readonly align 64 dereferenceable(1800) getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1280), i64 1800, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store atomic ptr null, ptr %i.bl seq_cst, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.bm, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress uwtable
define void @mi_heap_destroy(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i8, ptr %i.c, align 8, !tbaa !188, !range !113, !noundef !114
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z19_mi_warning_messagePKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull %0)
  tail call void @mi_heap_delete(ptr noundef nonnull %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_Z22_mi_heap_destroy_pagesP9mi_heap_s(ptr noundef nonnull %0)
  tail call fastcc void @_ZL12mi_heap_freeP9mi_heap_s(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @mi_heap_delete(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !177
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !187  ; 6 uses
  %.not = icmp eq ptr %i.e, %0
  br i1 %.not, label %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 241
  %i.g = load i8, ptr %i.f, align 1, !tbaa !198
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.i = load i8, ptr %i.h, align 1, !tbaa !198
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit, label %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread

_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit:  ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !126
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !126
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread

bb.d:                                             ; preds = %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !190
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZL14mi_heap_absorbP9mi_heap_sS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.t = load atomic ptr, ptr %i.s monotonic, align 8 ; 2 uses
  %.old1.not.i.i = icmp eq ptr %i.t, null
  br i1 %.old1.not.i.i, label %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i
  %.023.i.i = phi ptr [ %i.w, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %i.u = cmpxchg weak ptr %i.s, ptr %.023.i.i, ptr null acq_rel acquire, align 8 ; 2 uses
  %i.v = extractvalue { ptr, i1 } %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i, label %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i

_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i: ; preds = %.preheader.i.i
  %i.w = extractvalue { ptr, i1 } %i.u, 0         ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i, label %.preheader.i.i, !llvm.loop !22

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.loopexit.i.i
  %.231.i.i = phi ptr [ %i.y, %.loopexit.i.i ], [ %.023.i.i, %.preheader.i.i ] ; 6 uses
  %.val.i.i = load i64, ptr %.231.i.i, align 8, !tbaa !65 ; 2 uses
  %i.y = inttoptr i64 %.val.i.i to ptr
  %i.z = tail call noundef zeroext i1 @_Z22_mi_free_delayed_blockP10mi_block_s(ptr noundef nonnull %.231.i.i)
  br i1 %i.z, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aa = load atomic ptr, ptr %i.s monotonic, align 8 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  store i64 %i.ab, ptr %.231.i.i, align 8, !tbaa !65
  %i.ac = cmpxchg weak ptr %i.s, ptr %i.aa, ptr %.231.i.i release monotonic, align 8 ; 2 uses
  %i.ad = extractvalue { ptr, i1 } %i.ac, 1
  br i1 %i.ad, label %.loopexit.i.i, label %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i

_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i: ; preds = %bb.f, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i
  %i.ae = phi { ptr, i1 } [ %i.ah, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i ], [ %i.ac, %bb.f ]
  %i.af = extractvalue { ptr, i1 } %i.ae, 0       ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  store i64 %i.ag, ptr %.231.i.i, align 8, !tbaa !65
  %i.ah = cmpxchg weak ptr %i.s, ptr %i.af, ptr %.231.i.i release monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %.loopexit.i.i, label %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i, !llvm.loop !23

.loopexit.i.i:                                    ; preds = %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i, %bb.f, %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i.i, label %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i: ; preds = %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i, %.loopexit.i.i, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 1280
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  tail call void @_Z25_mi_heap_delayed_free_allP9mi_heap_s(ptr noundef nonnull %0)
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 8) ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.am, i8 0, i64 1032, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %i.ak, ptr noundef nonnull readonly align 64 dereferenceable(1800) getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1280), i64 1800, i1 false)
  store atomic ptr null, ptr %i.s seq_cst, align 8
  store i64 0, ptr %i.p, align 8, !tbaa !190
  br label %_ZL14mi_heap_absorbP9mi_heap_sS0_.exit

bb.h:                                             ; preds = %bb.h, %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i
  %.020.i = phi i64 [ 0, %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i ], [ %i.au, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.020.i
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.020.i
  %i.ap = tail call noundef i64 @_Z21_mi_page_queue_appendP9mi_heap_sP15mi_page_queue_sS2_(ptr noundef %i.e, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao) ; 2 uses
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !190
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !190
  %i.as = load i64, ptr %i.p, align 8, !tbaa !190
  %i.at = sub i64 %i.as, %i.ap
  store i64 %i.at, ptr %i.p, align 8, !tbaa !190
  %i.au = add nuw nsw i64 %.020.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, 75
  br i1 %exitcond.not.i, label %bb.g, label %bb.h, !llvm.loop !305

_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread: ; preds = %bb.c, %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit, %bb.b
  tail call fastcc void @_ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e(ptr noundef nonnull %0, i32 noundef 2), !inline_history !306
  br label %_ZL14mi_heap_absorbP9mi_heap_sS0_.exit

_ZL14mi_heap_absorbP9mi_heap_sS0_.exit:           ; preds = %bb.g, %bb.d, %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread
  tail call fastcc void @_ZL12mi_heap_freeP9mi_heap_s(ptr noundef %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZL14mi_heap_absorbP9mi_heap_sS0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12mi_heap_freeP9mi_heap_s(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not21 = icmp eq ptr %0, @_mi_heap_empty
  br i1 %.not21, label %mi_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !177    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 3 uses
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %mi_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.g = icmp eq ptr %0, %i.f
  br i1 %i.g, label %bb.d, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %i.e, align 8, !tbaa !76
  %i.h = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !97 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, -1
  br i1 %.not.i.i, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @pthread_setspecific(i32 noundef %i.h, ptr noundef %i.c) #55 ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !177
  br label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit

_Z27_mi_heap_set_default_directP9mi_heap_s.exit:  ; preds = %bb.e, %bb.d, %bb.c
  %i.j = phi ptr [ %.pre, %bb.e ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_Z27_mi_heap_set_default_directP9mi_heap_s.exit
  %.019 = phi ptr [ null, %_Z27_mi_heap_set_default_directP9mi_heap_s.exit ], [ %.0, %bb.f ] ; 2 uses
  %.0.in = phi ptr [ %i.k, %_Z27_mi_heap_set_default_directP9mi_heap_s.exit ], [ %i.o, %bb.f ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !76  ; 5 uses
  %i.l = icmp ne ptr %.0, %0
  %i.m = icmp ne ptr %.0, null
  %i.n = and i1 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 232
  br i1 %i.n, label %bb.f, label %bb.g, !llvm.loop !307

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq ptr %.0, %0
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %.019, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !201  ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.019, i64 232
  store ptr %i.r, ptr %i.s, align 8, !tbaa !201
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.k, align 8, !tbaa !200
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %i.t = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.u = add i64 %i.t, -1                         ; 2 uses
  %i.v = and i64 %i.u, -33554432                  ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = icmp slt i64 %i.u, 33554432
  br i1 %i.x, label %mi_free.exit, label %bb.l, !prof !61

bb.l:                                             ; preds = %bb.k
  %i.y = tail call ptr @llvm.thread.pointer.p0()
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  %i.ab = load atomic i64, ptr %i.aa monotonic, align 8
  %i.ac = sub i64 %i.t, %i.v
  %i.ad = lshr i64 %i.ac, 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !67
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %i.aj ; 6 uses
  %i.al = icmp eq i64 %i.ab, %i.z
  br i1 %i.al, label %bb.m, label %bb.q, !prof !68

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 2, !tbaa !69
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.n, label %bb.p, !prof !68

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !63
  %i.ar = ptrtoint ptr %i.aq to i64
  store i64 %i.ar, ptr %0, align 8, !tbaa !65
  store ptr %0, ptr %i.ap, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.at = load i16, ptr %i.as, align 8, !tbaa !66
  %i.au = add i16 %i.at, -1                       ; 2 uses
  store i16 %i.au, ptr %i.as, align 8, !tbaa !66
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %bb.o, label %mi_free.exit, !prof !61

bb.o:                                             ; preds = %bb.n
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.ak) #55, !inline_history !73
  br label %mi_free.exit

bb.p:                                             ; preds = %bb.m
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.ak, ptr noundef nonnull %0) #55, !inline_history !73
  br label %mi_free.exit

bb.q:                                             ; preds = %bb.l
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.w, ptr noundef nonnull %0) #57, !inline_history !73
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.k, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z27_mi_heap_unsafe_destroy_allP9mi_heap_s(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !200  ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %mi_heap_destroy.exit
  %.011 = phi ptr [ %i.f, %mi_heap_destroy.exit ], [ %i.d, %bb.b ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.011, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !201  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 240
  %i.h = load i8, ptr %i.g, align 8, !tbaa !188, !range !113, !noundef !114
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %.not9 = icmp eq ptr %.011, @_mi_heap_empty
  br i1 %.not9, label %mi_heap_destroy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z22_mi_heap_destroy_pagesP9mi_heap_s(ptr noundef nonnull %.011)
  tail call fastcc void @_ZL12mi_heap_freeP9mi_heap_s(ptr noundef nonnull %.011)
  br label %mi_heap_destroy.exit

bb.e:                                             ; preds = %.lr.ph
  tail call void @_Z22_mi_heap_destroy_pagesP9mi_heap_s(ptr noundef nonnull %.011)
  br label %mi_heap_destroy.exit

mi_heap_destroy.exit:                             ; preds = %bb.d, %bb.c, %bb.e
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !25

.loopexit:                                        ; preds = %mi_heap_destroy.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_3
begin_hunk_4_@_ZL20_mi_thread_heap_initv:bb.a
  br i1 %.not24.24.i, label %bb.bb, label %.loopexit.i

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.bo = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 200) monotonic, align 8
  %.not.25.i = icmp eq ptr %i.bo, null
  br i1 %.not.25.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.bp = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 200), ptr null acq_rel, align 8 ; 2 uses
  %.not24.25.i = icmp eq ptr %i.bp, null
  br i1 %.not24.25.i, label %bb.bd, label %.loopexit.i

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.bq = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 208) monotonic, align 16
  %.not.26.i = icmp eq ptr %i.bq, null
  br i1 %.not.26.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.br = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 208), ptr null acq_rel, align 8 ; 2 uses
  %.not24.26.i = icmp eq ptr %i.br, null
  br i1 %.not24.26.i, label %bb.bf, label %.loopexit.i

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.bs = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 216) monotonic, align 8
  %.not.27.i = icmp eq ptr %i.bs, null
  br i1 %.not.27.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.bt = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 216), ptr null acq_rel, align 8 ; 2 uses
  %.not24.27.i = icmp eq ptr %i.bt, null
  br i1 %.not24.27.i, label %bb.bh, label %.loopexit.i

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.bu = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 224) monotonic, align 16
  %.not.28.i = icmp eq ptr %i.bu, null
  br i1 %.not.28.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.bv = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 224), ptr null acq_rel, align 8 ; 2 uses
  %.not24.28.i = icmp eq ptr %i.bv, null
  br i1 %.not24.28.i, label %bb.bj, label %.loopexit.i

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.bw = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 232) monotonic, align 8
  %.not.29.i = icmp eq ptr %i.bw, null
  br i1 %.not.29.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.bx = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 232), ptr null acq_rel, align 8 ; 2 uses
  %.not24.29.i = icmp eq ptr %i.bx, null
  br i1 %.not24.29.i, label %bb.bl, label %.loopexit.i

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.by = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 240) monotonic, align 16
  %.not.30.i = icmp eq ptr %i.by, null
  br i1 %.not.30.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.bz = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 240), ptr null acq_rel, align 8 ; 2 uses
  %.not24.30.i = icmp eq ptr %i.bz, null
  br i1 %.not24.30.i, label %bb.bn, label %.loopexit.i

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ca = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 248) monotonic, align 8
  %.not.31.i = icmp eq ptr %i.ca, null
  br i1 %.not.31.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cb = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 248), ptr null acq_rel, align 8 ; 2 uses
  %.not24.31.i = icmp eq ptr %i.cb, null
  br i1 %.not24.31.i, label %bb.bp, label %.loopexit.i

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.cc = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95 ; 5 uses
  %.not.i.i.i = icmp ult i64 %i.cc, -8241
  br i1 %.not.i.i.i, label %bb.bq, label %_Z22_mi_os_good_alloc_sizem.exit.i.i, !prof !68

bb.bq:                                            ; preds = %bb.bp
  %i.cd = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cc)
  %i.ce = icmp samesign ult i64 %i.cd, 2
  %i.cf = add nuw i64 %i.cc, 8239                 ; 3 uses
  br i1 %i.ce, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.cg = sub i64 0, %i.cc
  %i.ch = and i64 %i.cf, %i.cg
  br label %_Z22_mi_os_good_alloc_sizem.exit.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.ci = urem i64 %i.cf, %i.cc
  %i.cj = sub nuw i64 %i.cf, %i.ci
  br label %_Z22_mi_os_good_alloc_sizem.exit.i.i

_Z22_mi_os_good_alloc_sizem.exit.i.i:             ; preds = %bb.bs, %bb.br, %bb.bp
  %.010.i.i.i = phi i64 [ 8240, %bb.bp ], [ %i.ch, %bb.br ], [ %i.cj, %bb.bs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  store i8 0, ptr %i.c, align 1, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  store i8 0, ptr %i.d, align 1, !tbaa !115
  %i.ck = call fastcc noundef ptr @_ZL16mi_os_prim_allocmmbbPbS_(i64 noundef %.010.i.i.i, i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i10, label %bb.bt, label %_Z12_mi_os_allocmP10mi_memid_s.exit.i

_Z12_mi_os_allocmP10mi_memid_s.exit.i:            ; preds = %_Z22_mi_os_good_alloc_sizem.exit.i.i
  %i.cl = load i8, ptr %i.d, align 1, !tbaa !115, !range !113, !noundef !114
  %i.cm = load i8, ptr %i.c, align 1, !tbaa !115, !range !113, !noundef !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %bb.by

bb.bt:                                            ; preds = %_Z22_mi_os_good_alloc_sizem.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  %i.cn = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95 ; 5 uses
  %.not.i.i26.i = icmp ult i64 %i.cn, -8241
  br i1 %.not.i.i26.i, label %bb.bu, label %_Z22_mi_os_good_alloc_sizem.exit.i27.i, !prof !68

bb.bu:                                            ; preds = %bb.bt
  %i.co = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cn)
  %i.cp = icmp samesign ult i64 %i.co, 2
  %i.cq = add nuw i64 %i.cn, 8239                 ; 3 uses
  br i1 %i.cp, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.cr = sub i64 0, %i.cn
  %i.cs = and i64 %i.cq, %i.cr
  br label %_Z22_mi_os_good_alloc_sizem.exit.i27.i

bb.bw:                                            ; preds = %bb.bu
  %i.ct = urem i64 %i.cq, %i.cn
  %i.cu = sub nuw i64 %i.cq, %i.ct
  br label %_Z22_mi_os_good_alloc_sizem.exit.i27.i

_Z22_mi_os_good_alloc_sizem.exit.i27.i:           ; preds = %bb.bw, %bb.bv, %bb.bt
  %.010.i.i28.i = phi i64 [ 8240, %bb.bt ], [ %i.cs, %bb.bv ], [ %i.cu, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i8 0, ptr %i.a, align 1, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i8 0, ptr %i.b, align 1, !tbaa !115
  %i.cv = call fastcc noundef ptr @_ZL16mi_os_prim_allocmmbbPbS_(i64 noundef %.010.i.i28.i, i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %.not.i29.i = icmp eq ptr %i.cv, null
  br i1 %.not.i29.i, label %bb.bx, label %_Z12_mi_os_allocmP10mi_memid_s.exit35.i

_Z12_mi_os_allocmP10mi_memid_s.exit35.i:          ; preds = %_Z22_mi_os_good_alloc_sizem.exit.i27.i
  %i.cw = load i8, ptr %i.b, align 1, !tbaa !115, !range !113, !noundef !114
  %i.cx = load i8, ptr %i.a, align 1, !tbaa !115, !range !113, !noundef !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.by

bb.bx:                                            ; preds = %_Z22_mi_os_good_alloc_sizem.exit.i27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  tail call void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 12, ptr noundef nonnull @.str.111, i64 noundef 8240)
  br label %bb.bz

bb.by:                                            ; preds = %_Z12_mi_os_allocmP10mi_memid_s.exit35.i, %_Z12_mi_os_allocmP10mi_memid_s.exit.i
  %.sroa.7.0.ph.i = phi i8 [ %i.cm, %_Z12_mi_os_allocmP10mi_memid_s.exit.i ], [ %i.cx, %_Z12_mi_os_allocmP10mi_memid_s.exit35.i ]
  %.sroa.11.0.ph.i = phi i8 [ %i.cl, %_Z12_mi_os_allocmP10mi_memid_s.exit.i ], [ %i.cw, %_Z12_mi_os_allocmP10mi_memid_s.exit35.i ] ; 2 uses
  %.3.ph.i = phi ptr [ %i.ck, %_Z12_mi_os_allocmP10mi_memid_s.exit.i ], [ %i.cv, %_Z12_mi_os_allocmP10mi_memid_s.exit35.i ] ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 8216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !tbaa.struct !175
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 8232
  store i8 %.sroa.7.0.ph.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !115
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 8233
  store i8 1, ptr %.sroa.9.0..sroa_idx.i, align 1, !tbaa !115
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 8234
  store i8 %.sroa.11.0.ph.i, ptr %.sroa.11.0..sroa_idx.i, align 2, !tbaa !115
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 8235
  store i8 0, ptr %.sroa.14.0..sroa_idx.i, align 1
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 8236
  store i32 3, ptr %.sroa.16.0..sroa_idx.i, align 4, !tbaa !152
  %i.cz = trunc nuw i8 %.sroa.11.0.ph.i to i1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.362.i = phi ptr [ %.3.ph.i, %bb.by ], [ null, %bb.bx ]
  %.016.i = phi i1 [ %i.cz, %bb.by ], [ false, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bz, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.117.i = phi i1 [ %.016.i, %bb.bz ], [ false, %bb.bo ], [ false, %bb.bm ], [ false, %bb.bk ], [ false, %bb.bi ], [ false, %bb.bg ], [ false, %bb.be ], [ false, %bb.bc ], [ false, %bb.ba ], [ false, %bb.ay ], [ false, %bb.aw ], [ false, %bb.au ], [ false, %bb.as ], [ false, %bb.aq ], [ false, %bb.ao ], [ false, %bb.am ], [ false, %bb.ak ], [ false, %bb.ai ], [ false, %bb.ag ], [ false, %bb.ae ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.w ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.q ], [ false, %bb.o ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.e ]
  %.4.i = phi ptr [ %.362.i, %bb.bz ], [ %i.cb, %bb.bo ], [ %i.bz, %bb.bm ], [ %i.bx, %bb.bk ], [ %i.bv, %bb.bi ], [ %i.bt, %bb.bg ], [ %i.br, %bb.be ], [ %i.bp, %bb.bc ], [ %i.bn, %bb.ba ], [ %i.bl, %bb.ay ], [ %i.bj, %bb.aw ], [ %i.bh, %bb.au ], [ %i.bf, %bb.as ], [ %i.bd, %bb.aq ], [ %i.bb, %bb.ao ], [ %i.az, %bb.am ], [ %i.ax, %bb.ak ], [ %i.av, %bb.ai ], [ %i.at, %bb.ag ], [ %i.ar, %bb.ae ], [ %i.ap, %bb.ac ], [ %i.an, %bb.aa ], [ %i.al, %bb.y ], [ %i.aj, %bb.w ], [ %i.ah, %bb.u ], [ %i.af, %bb.s ], [ %i.ad, %bb.q ], [ %i.ab, %bb.o ], [ %i.z, %bb.m ], [ %i.x, %bb.k ], [ %i.v, %bb.i ], [ %i.t, %bb.g ], [ %i.r, %bb.e ] ; 14 uses
  %i.da = icmp eq ptr %.4.i, null                 ; 2 uses
  %or.cond.i = select i1 %i.da, i1 true, i1 %.117.i
  br i1 %or.cond.i, label %_ZL21mi_thread_data_zallocv.exit, label %_ZL21mi_thread_data_zallocv.exit.thread

_ZL21mi_thread_data_zallocv.exit.thread:          ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "align"(ptr %.4.i, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8216) %.4.i, i8 0, i64 3080, i1 false)
  br label %bb.ca

_ZL21mi_thread_data_zallocv.exit:                 ; preds = %.loopexit.i
  br i1 %i.da, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZL21mi_thread_data_zallocv.exit.thread, %_ZL21mi_thread_data_zallocv.exit
  call void @llvm.assume(i1 true) [ "align"(ptr %.4.i, i64 8) ]
  %0 = getelementptr inbounds nuw i8, ptr %.4.i, i64 3080 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5136) %0, ptr noundef nonnull readonly align 64 dereferenceable(5136) @_ZL9tld_empty, i64 5136, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %.4.i, i64 3096
  store ptr %.4.i, ptr %i.db, align 8, !tbaa !187
  %i.dc = getelementptr inbounds nuw i8, ptr %.4.i, i64 3104
  store ptr null, ptr %i.dc, align 8, !tbaa !200
  %i.dd = getelementptr inbounds nuw i8, ptr %.4.i, i64 4016
  store ptr @_ZL18mi_subproc_default, ptr %i.dd, align 8, !tbaa !204
  %i.de = getelementptr inbounds nuw i8, ptr %.4.i, i64 4032
  %i.df = getelementptr inbounds nuw i8, ptr %.4.i, i64 4024
  store ptr %i.de, ptr %i.df, align 8, !tbaa !205
  tail call void @_Z13_mi_heap_initP9mi_heap_sP8mi_tld_sibh(ptr noundef nonnull %.4.i, ptr noundef nonnull %0, i32 noundef 0, i1 noundef zeroext false, i8 noundef zeroext 0)
  store ptr %.4.i, ptr %i.e, align 8, !tbaa !76
  %i.dg = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !97 ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.dg, -1
  br i1 %.not.i.i11, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.dh = tail call i32 @pthread_setspecific(i32 noundef %i.dg, ptr noundef nonnull %.4.i) #55 ; 0 uses
  br label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit

_Z27_mi_heap_set_default_directP9mi_heap_s.exit:  ; preds = %bb.cb, %bb.ca, %bb.c, %_Z18_mi_is_main_threadv.exit.thread, %_ZL21mi_thread_data_zallocv.exit, %bb.a
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_thread_done() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_Z15_mi_thread_doneP9mi_heap_s(ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #56
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z15_mi_thread_doneP9mi_heap_s(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 3 uses
  %.not7 = icmp eq ptr %.0, @_mi_heap_empty
  br i1 %.not7, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = atomicrmw sub ptr @_ZL12thread_count, i64 1 monotonic, align 8 ; 0 uses
  %i.f = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 192), i64 1 monotonic, align 8
  %i.g = add nsw i64 %i.f, -1                     ; 3 uses
  %i.h = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184) monotonic, align 8 ; 2 uses
  %.old3.i.i.i = icmp slt i64 %i.h, %i.g
  br i1 %.old3.i.i.i, label %.preheader.i.i.i, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.k, %.preheader.i.i.i ], [ %i.h, %bb.d ]
  %i.i = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184), i64 %.0.i.i.i, i64 %i.g release monotonic, align 8 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.l = icmp sge i64 %i.k, %i.g
  %or.cond.not.i.i.i = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond.not.i.i.i, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit, label %.preheader.i.i.i, !llvm.loop !8

_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit:    ; preds = %.preheader.i.i.i, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !186  ; 2 uses
  %i.o = tail call ptr @llvm.thread.pointer.p0()
  %i.p = ptrtoint ptr %i.o to i64
  %.not = icmp eq i64 %i.n, %i.p
  br i1 %.not, label %bb.e, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit

bb.e:                                             ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 16), align 16, !tbaa !186 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_Z18_mi_is_main_threadv.exit.thread.i, label %_Z18_mi_is_main_threadv.exit.i

_Z18_mi_is_main_threadv.exit.i:                   ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, %i.n
  %cond.fr.i = freeze i1 %i.s
  br i1 %cond.fr.i, label %_Z18_mi_is_main_threadv.exit.thread.i, label %bb.f

_Z18_mi_is_main_threadv.exit.thread.i:            ; preds = %_Z18_mi_is_main_threadv.exit.i, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %_Z18_mi_is_main_threadv.exit.thread.i, %_Z18_mi_is_main_threadv.exit.i
  %i.t = phi ptr [ @_mi_heap_main, %_Z18_mi_is_main_threadv.exit.thread.i ], [ @_mi_heap_empty, %_Z18_mi_is_main_threadv.exit.i ] ; 2 uses
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr %i.t, ptr %i.u, align 8, !tbaa !76
  %i.v = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !97 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.v, -1
  br i1 %.not.i.i.i, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @pthread_setspecific(i32 noundef %i.v, ptr noundef nonnull %i.t) #55, !inline_history !318 ; 0 uses
  br label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit.i

_Z27_mi_heap_set_default_directP9mi_heap_s.exit.i: ; preds = %bb.g, %bb.f
  %i.x = load ptr, ptr %.0, align 8, !tbaa !177
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !187  ; 42 uses
  %i.aa = icmp ne ptr %i.z, null
  %i.ab = icmp ne ptr %i.z, @_mi_heap_empty
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %bb.h, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit

bb.h:                                             ; preds = %_Z27_mi_heap_set_default_directP9mi_heap_s.exit.i
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !177
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !200 ; 2 uses
  %.not22.i = icmp eq ptr %i.af, null
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.j
  %.023.i = phi ptr [ %i.ah, %bb.j ], [ %i.af, %bb.h ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.023.i, i64 232
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !201 ; 2 uses
  %.not19.i = icmp eq ptr %.023.i, %i.z
  br i1 %.not19.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  tail call void @mi_heap_delete(ptr noundef nonnull %.023.i), !inline_history !318
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !319

._crit_edge.i:                                    ; preds = %bb.j, %bb.h
  %.not18.i = icmp eq ptr %i.z, @_mi_heap_main
  br i1 %.not18.i, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  tail call fastcc void @_ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e(ptr noundef nonnull %i.z, i32 noundef 2), !inline_history !320
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !177
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 952
  tail call fastcc void @_ZL19mi_stats_merge_fromP10mi_stats_s(ptr noundef nonnull %i.aj), !inline_history !318
  %i.ak = load atomic ptr, ptr @_ZL8td_cache monotonic, align 16
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.l, label %.critedge.i.i

bb.l:                                             ; preds = %bb.k
  %i.am = cmpxchg weak ptr @_ZL8td_cache, ptr null, ptr %i.z acq_rel acquire, align 8
  %i.an = extractvalue { ptr, i1 } %i.am, 1
  br i1 %i.an, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.l, %bb.k
  %i.ao = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 8) monotonic, align 8
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %.critedge.1.i.i

bb.m:                                             ; preds = %.critedge.i.i
  %i.aq = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 8), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.ar = extractvalue { ptr, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.1.i.i

.critedge.1.i.i:                                  ; preds = %bb.m, %.critedge.i.i
  %i.as = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 16) monotonic, align 16
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %.critedge.2.i.i

bb.n:                                             ; preds = %.critedge.1.i.i
  %i.au = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 16), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.av = extractvalue { ptr, i1 } %i.au, 1
  br i1 %i.av, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.2.i.i

.critedge.2.i.i:                                  ; preds = %bb.n, %.critedge.1.i.i
  %i.aw = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 24) monotonic, align 8
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.o, label %.critedge.3.i.i

bb.o:                                             ; preds = %.critedge.2.i.i
  %i.ay = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 24), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.az = extractvalue { ptr, i1 } %i.ay, 1
  br i1 %i.az, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.3.i.i

.critedge.3.i.i:                                  ; preds = %bb.o, %.critedge.2.i.i
  %i.ba = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 32) monotonic, align 16
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.p, label %.critedge.4.i.i

bb.p:                                             ; preds = %.critedge.3.i.i
  %i.bc = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 32), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.bd = extractvalue { ptr, i1 } %i.bc, 1
  br i1 %i.bd, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.4.i.i

.critedge.4.i.i:                                  ; preds = %bb.p, %.critedge.3.i.i
  %i.be = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 40) monotonic, align 8
  %i.bf = icmp eq ptr %i.be, null
end_hunk_4
begin_hunk_5_@_Z24_mi_heap_collect_retiredP9mi_heap_sb:bb.a
  %i.p = load i8, ptr %i.o, align 2
  %i.q = and i8 %i.p, -3
  store i8 %i.q, ptr %i.o, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !177
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  tail call fastcc void @_ZL20mi_page_queue_removeP15mi_page_queue_sP9mi_page_s(ptr noundef nonnull %i.f, ptr noundef %i.n)
  store atomic i64 0, ptr %i.r release, align 8
  %i.w = ptrtoint ptr %i.n to i64
  %i.x = add i64 %i.w, -1
  %i.y = and i64 %i.x, -33554432
  %i.z = inttoptr i64 %i.y to ptr                 ; 5 uses
  %i.aa = tail call fastcc noundef ptr @_ZL21mi_segment_page_clearP9mi_page_sP17mi_segments_tld_s(ptr noundef %i.n, ptr noundef nonnull %i.v) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 216
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !193 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZL15mi_segment_freeP12mi_segment_sbP17mi_segments_tld_s(ptr noundef nonnull %i.z, ptr noundef nonnull %i.v)
  br label %_Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !194
  %i.ag = icmp eq i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @_ZL18mi_segment_abandonP12mi_segment_sP17mi_segments_tld_s(ptr noundef nonnull %i.z, ptr noundef nonnull %i.v)
  br label %_Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.exit

bb.j:                                             ; preds = %bb.h
  tail call fastcc void @_ZL20mi_segment_try_purgeP12mi_segment_sb(ptr noundef nonnull %i.z, i1 noundef zeroext false)
  br label %_Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.exit

bb.k:                                             ; preds = %bb.e
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.036, i64 %.02734)
  %spec.select32 = tail call i64 @llvm.umax.i64(i64 %.036, i64 %.02635)
  br label %_Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.exit

bb.l:                                             ; preds = %bb.d
  %i.ah = and i8 %i.i, 1
  store i8 %i.ah, ptr %i.h, align 1
  br label %_Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.exit

_Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.exit: ; preds = %bb.j, %bb.i, %bb.g, %bb.k, %bb.l, %bb.c, %bb.b
  %.2 = phi i64 [ %.02734, %bb.c ], [ %.02734, %bb.b ], [ %spec.select, %bb.k ], [ %.02734, %bb.l ], [ %.02734, %bb.g ], [ %.02734, %bb.i ], [ %.02734, %bb.j ] ; 2 uses
  %.1 = phi i64 [ %.02635, %bb.c ], [ %.02635, %bb.b ], [ %spec.select32, %bb.k ], [ %.02635, %bb.l ], [ %.02635, %bb.g ], [ %.02635, %bb.i ], [ %.02635, %bb.j ] ; 2 uses
  %i.ai = add i64 %.036, 1                        ; 2 uses
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !218
  %.not = icmp ugt i64 %i.ai, %i.aj
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !350
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z17_mi_deferred_freeP9mi_heap_sb(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !177    ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !184
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !184
  %i.d = load volatile ptr, ptr @_ZL13deferred_free, align 8, !tbaa !96
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !185, !range !113, !noundef !114
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 8, !tbaa !185
  %i.h = load volatile ptr, ptr @_ZL13deferred_free, align 8, !tbaa !96
  %i.i = load atomic ptr, ptr @_ZL12deferred_arg.0 monotonic, align 8
  tail call void %i.h(i1 noundef zeroext %1, i64 noundef %i.c, ptr noundef %i.i)
  %i.j = load ptr, ptr %0, align 8, !tbaa !177
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 0, ptr %i.k, align 8, !tbaa !185
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @mi_register_deferred_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 {
bb.a:
  store volatile ptr %0, ptr @_ZL13deferred_free, align 8, !tbaa !96
  store atomic ptr %1, ptr @_ZL12deferred_arg.0 release, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @mi_heap_get_default()     ; 3 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %i.d, @_mi_heap_empty
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.ac, !prof !68

bb.c:                                             ; preds = %bb.b, %bb.a
  %.041 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]  ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.041, i64 216 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !351  ; 2 uses
  %i.j = add nsw i64 %i.i, 1                      ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !351
  %i.k = icmp sgt i64 %i.i, 98
  br i1 %i.k, label %bb.d, label %mi_heap_collect.exit, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.041, i64 224 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !352
  %i.n = add nsw i64 %i.m, %i.j
  store i64 %i.n, ptr %i.l, align 8, !tbaa !352
  store i64 0, ptr %i.h, align 8, !tbaa !351
  invoke void @_Z17_mi_deferred_freeP9mi_heap_sb(ptr noundef nonnull %.041, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.ad

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef zeroext i1 @_Z29_mi_heap_delayed_free_partialP9mi_heap_s(ptr noundef nonnull %.041)
          to label %bb.f unwind label %bb.ad      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 1160), align 8, !tbaa !135
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.h, !prof !61

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 1152))
          to label %bb.h unwind label %bb.ad

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 1152), align 16, !tbaa !137
  %i.s = tail call i64 @llvm.smax.i64(i64 %i.r, i64 1)
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1000000)
  %i.u = load i64, ptr %i.l, align 8, !tbaa !352
  %.not = icmp slt i64 %i.u, %i.t
  br i1 %.not, label %mi_heap_collect.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.l, align 8, !tbaa !352
  invoke fastcc void @_ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e(ptr noundef nonnull %.041, i32 noundef 0)
          to label %mi_heap_collect.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #56
  unreachable

mi_heap_collect.exit:                             ; preds = %bb.i, %bb.h, %bb.c
  %i.x = tail call fastcc noundef ptr @_ZL12mi_find_pageP9mi_heap_smm(ptr noundef nonnull %.041, i64 noundef %1, i64 noundef %3) #55 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.k, label %.thread, !prof !61

bb.k:                                             ; preds = %mi_heap_collect.exit
  invoke fastcc void @_ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e(ptr noundef nonnull %.041, i32 noundef 1)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #56
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ab = tail call fastcc noundef ptr @_ZL12mi_find_pageP9mi_heap_smm(ptr noundef nonnull %.041, i64 noundef %1, i64 noundef %3) #55 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.n, label %.thread, !prof !353

bb.n:                                             ; preds = %bb.m
  invoke void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 12, ptr noundef nonnull @.str.43, i64 noundef %1)
          to label %bb.ac unwind label %bb.ad

.thread:                                          ; preds = %mi_heap_collect.exit, %bb.m
  %.03947 = phi ptr [ %i.ab, %bb.m ], [ %i.x, %mi_heap_collect.exit ] ; 14 uses
  br i1 %2, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.thread
  %i.ad = getelementptr i8, ptr %.03947, i64 8
  %.039.val = load i8, ptr %i.ad, align 8
  %i.ae = and i8 %.039.val, 4
  %.not48 = icmp eq i8 %i.ae, 0
  br i1 %.not48, label %.critedge, label %bb.p, !prof !68

bb.p:                                             ; preds = %bb.o
  %i.af = tail call noundef ptr @_Z15_mi_page_mallocP9mi_heap_sP9mi_page_sm(ptr noundef nonnull %.041, ptr noundef nonnull %.03947, i64 noundef %1) #55 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.af, i64 8) ]
  %i.ag = getelementptr i8, ptr %.03947, i64 40
  %.039.val44 = load i64, ptr %i.ag, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %.039.val44, i1 false)
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

.critedge:                                        ; preds = %.thread, %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %.03947, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !72 ; 8 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.q, label %bb.r, !prof !61

bb.q:                                             ; preds = %.critedge
  %i.ak = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %.041, i64 noundef %1, i1 noundef zeroext %2, i64 noundef 0) #55, !inline_history !74
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

bb.r:                                             ; preds = %.critedge
  %.val.i = load i64, ptr %i.ai, align 8, !tbaa !65
  %i.al = inttoptr i64 %.val.i to ptr
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !72
  %i.am = getelementptr inbounds nuw i8, ptr %.03947, i64 32 ; 2 uses
  %i.an = load i16, ptr %i.am, align 8, !tbaa !66
  %i.ao = add i16 %i.an, 1
  store i16 %i.ao, ptr %i.am, align 8, !tbaa !66
  br i1 %2, label %bb.s, label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit, !prof !61

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %.03947, i64 15
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = and i8 %i.aq, 1
  %.not.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %i.ai, align 8, !tbaa !65
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

bb.u:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ai, i64 8) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.03947, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ai, i8 0, i64 %i.at, i1 false)
  br label %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit

_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit: ; preds = %bb.u, %bb.t, %bb.r, %bb.q, %bb.p
  %.0 = phi ptr [ %i.af, %bb.p ], [ %i.ak, %bb.q ], [ %i.ai, %bb.t ], [ %i.ai, %bb.u ], [ %i.ai, %bb.r ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03947, i64 12
  %i.av = load i16, ptr %i.au, align 4, !tbaa !141
  %i.aw = getelementptr inbounds nuw i8, ptr %.03947, i64 32
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !66
  %i.ay = icmp eq i16 %i.av, %i.ax
  br i1 %i.ay, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.03947, i64 64
  %i.ba = load atomic i64, ptr %i.az monotonic, align 8
  %i.bb = getelementptr i8, ptr %.03947, i64 14
  %.val3.i.i.i = load i8, ptr %i.bb, align 2
  %i.bc = trunc i8 %.val3.i.i.i to i1
  br i1 %i.bc, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = getelementptr i8, ptr %.03947, i64 8
  %.val4.i.i.i = load i8, ptr %i.bd, align 8
  %i.be = and i8 %.val4.i.i.i, 4
  %.not.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr i8, ptr %.03947, i64 40
  %.val.i.i.i = load i64, ptr %i.bf, align 8, !tbaa !62
  %i.bg = add i64 %.val.i.i.i, 7                  ; 4 uses
  %i.bh = lshr i64 %i.bg, 3                       ; 2 uses
  %i.bi = icmp ult i64 %i.bg, 72
  br i1 %i.bi, label %bb.y, label %bb.z, !prof !68

bb.y:                                             ; preds = %bb.x
  %i.bj = add nuw nsw i64 %i.bh, 1
  %i.bk = and i64 %i.bj, 30
  %.inv.i.i.i.i = icmp samesign ugt i64 %i.bg, 15
  %i.bl = select i1 %.inv.i.i.i.i, i64 %i.bk, i64 1
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.bm = icmp ugt i64 %i.bg, 65543
  br i1 %i.bm, label %bb.ab, label %bb.aa, !prof !61

bb.aa:                                            ; preds = %bb.z
  %i.bn = add nsw i64 %i.bh, -1                   ; 2 uses
  %i.bo = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false) ; 2 uses
  %i.bp = sub nuw nsw i64 61, %i.bo
  %i.bq = lshr i64 %i.bn, %i.bp
  %i.br = and i64 %i.bq, 3
  %i.bs = shl nuw nsw i64 %i.bo, 2
  %reass.sub = sub nsw i64 %i.br, %i.bs
  %i.bt = add nsw i64 %reass.sub, 249
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v
  %i.bu = phi i64 [ 74, %bb.v ], [ 73, %bb.w ], [ %i.bl, %bb.y ], [ %i.bt, %bb.aa ], [ 73, %bb.z ]
  %i.bv = inttoptr i64 %i.ba to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1280
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bu
  invoke fastcc void @_ZL15mi_page_to_fullP9mi_page_sP15mi_page_queue_s(ptr noundef %.03947, ptr noundef nonnull %i.bx)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.n, %bb.ab, %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.n ], [ %.0, %bb.ab ], [ %.0, %_Z20_mi_page_malloc_zeroP9mi_heap_sP9mi_page_smb.exit ]
  ret ptr %.1

bb.ad:                                            ; preds = %bb.g, %bb.ab, %bb.n, %bb.e, %bb.d
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  tail call void @__clang_call_terminate(ptr %i.bz) #56
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL12mi_find_pageP9mi_heap_smm(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 65536
  %i.b = icmp ne i64 %2, 0
  %i.c = or i1 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.e, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 281474976579584
  br i1 %i.d, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  invoke void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 75, ptr noundef nonnull @.str.176, i64 noundef %1)
          to label %_ZL17mi_find_free_pageP9mi_heap_sm.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  %i.e = invoke fastcc noundef ptr @_ZL24mi_large_huge_page_allocP9mi_heap_smm(ptr noundef %0, i64 noundef %1, i64 noundef %2)
          to label %_ZL17mi_find_free_pageP9mi_heap_sm.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.a
  %i.f = add nuw nsw i64 %1, 7
  %i.g = lshr i64 %i.f, 3                         ; 2 uses
  %i.h = icmp samesign ult i64 %1, 65
  br i1 %i.h, label %bb.f, label %bb.g, !prof !68

bb.f:                                             ; preds = %bb.e
  %i.i = add nuw nsw i64 %i.g, 1
  %i.j = and i64 %i.i, 30
  %.inv.i.i.i.i = icmp samesign ugt i64 %1, 8
  %i.k = select i1 %.inv.i.i.i.i, i64 %i.j, i64 1
  br label %_ZL13mi_page_queuePK9mi_heap_sm.exit.i

bb.g:                                             ; preds = %bb.e
  %i.l = add nsw i64 %i.g, -1                     ; 2 uses
  %i.m = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 false) ; 2 uses
  %i.n = sub nuw nsw i64 61, %i.m
  %i.o = lshr i64 %i.l, %i.n
  %i.p = and i64 %i.o, 3
  %i.q = shl nuw nsw i64 %i.m, 2
  %reass.sub = sub nsw i64 %i.p, %i.q
  %i.r = add nsw i64 %reass.sub, 249
  br label %_ZL13mi_page_queuePK9mi_heap_sm.exit.i

_ZL13mi_page_queuePK9mi_heap_sm.exit.i:           ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i64 [ %i.k, %bb.f ], [ %i.r, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.0.i.i.i.i ; 8 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !191  ; 11 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZL13mi_page_queuePK9mi_heap_sm.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 4 uses
  %i.w = load atomic i64, ptr %i.v monotonic, align 8
  %.not.i.i = icmp ult i64 %i.w, 4
  br i1 %.not.i.i, label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load atomic i64, ptr %i.v monotonic, align 8 ; 3 uses
  %i.y = and i64 %i.x, 3
  %i.z = cmpxchg weak ptr %i.v, i64 %i.x, i64 %i.y acq_rel acquire, align 8 ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %._crit_edge.i.i.i, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i

_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i: ; preds = %bb.i, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i
  %i.ab = phi { i64, i1 } [ %i.ae, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i ], [ %i.z, %bb.i ]
  %i.ac = extractvalue { i64, i1 } %i.ab, 0       ; 3 uses
  %i.ad = and i64 %i.ac, 3
  %i.ae = cmpxchg weak ptr %i.v, i64 %i.ac, i64 %i.ad acq_rel acquire, align 8 ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %._crit_edge.i.i.i, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i, !llvm.loop !0

._crit_edge.i.i.i:                                ; preds = %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i, %bb.i
  %.025.lcssa.i.i.i = phi i64 [ %i.x, %bb.i ], [ %i.ac, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i.i ]
  %i.ag = and i64 %.025.lcssa.i.i.i, -4           ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !71 ; 2 uses
  %i.al = zext i16 %i.ak to i64                   ; 2 uses
  %.0.val30.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !65 ; 2 uses
  %i.am = icmp ne i64 %.0.val30.i.i.i, 0
  %i.an = icmp ne i16 %i.ak, 0
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph.i.i.i, label %._crit_edge34.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %.0.val32.i.i.i = phi i64 [ %.0.val.i.i.i, %.lr.ph.i.i.i ], [ %.0.val30.i.i.i, %bb.j ]
  %.02031.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i ], [ 1, %bb.j ] ; 2 uses
  %i.ap = inttoptr i64 %.0.val32.i.i.i to ptr     ; 2 uses
  %i.aq = add nuw nsw i64 %.02031.i.i.i, 1        ; 2 uses
  %.0.val.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !65 ; 2 uses
  %i.ar = icmp ne i64 %.0.val.i.i.i, 0
  %i.as = icmp samesign ult i64 %.02031.i.i.i, %i.al
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %.lr.ph.i.i.i, label %._crit_edge34.i.i.i, !llvm.loop !1

._crit_edge34.i.i.i:                              ; preds = %.lr.ph.i.i.i, %bb.j
  %.020.lcssa.i.i.i = phi i64 [ 1, %bb.j ], [ %i.aq, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi ptr [ %i.ah, %bb.j ], [ %i.ap, %.lr.ph.i.i.i ]
  %i.au = icmp samesign ugt i64 %.020.lcssa.i.i.i, %i.al
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge34.i.i.i
  invoke void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 14, ptr noundef nonnull @.str.175)
          to label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %._crit_edge34.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !63
  %i.ax = ptrtoint ptr %i.aw to i64
  store i64 %i.ax, ptr %.0.lcssa.i.i.i, align 8, !tbaa !65
  store ptr %i.ah, ptr %i.av, align 8, !tbaa !63
  %i.ay = trunc nuw i64 %.020.lcssa.i.i.i to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !66
  %i.bb = sub i16 %i.ba, %i.ay
  store i16 %i.bb, ptr %i.az, align 8, !tbaa !66
  br label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i.i
end_hunk_5
begin_hunk_6_@_ZL24mi_free_block_delayed_mtP9mi_page_sP10mi_block_s:bb.a

_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit: ; preds = %bb.e, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit
  %i.w = phi { ptr, i1 } [ %i.z, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit ], [ %i.u, %bb.e ]
  %i.x = extractvalue { ptr, i1 } %i.w, 0         ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  store i64 %i.y, ptr %1, align 8, !tbaa !65
  %i.z = cmpxchg weak ptr %i.r, ptr %i.x, ptr %1 release monotonic, align 8 ; 2 uses
  %i.aa = extractvalue { ptr, i1 } %i.z, 1
  br i1 %i.aa, label %.loopexit, label %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit, !llvm.loop !381

.loopexit:                                        ; preds = %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit, %bb.e, %bb.d
  %i.ab = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.ac = and i64 %i.ab, -4
  %i.ad = or disjoint i64 %i.ac, 2
  %i.ae = cmpxchg weak ptr %i.a, i64 %i.ab, i64 %i.ad release monotonic, align 8 ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %.thread36, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit21

_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit21: ; preds = %.loopexit, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit21
  %i.ag = phi { i64, i1 } [ %i.ak, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit21 ], [ %i.ae, %.loopexit ]
  %i.ah = extractvalue { i64, i1 } %i.ag, 0       ; 2 uses
  %i.ai = and i64 %i.ah, -4
  %i.aj = or disjoint i64 %i.ai, 2
  %i.ak = cmpxchg weak ptr %i.a, i64 %i.ah, i64 %i.aj release monotonic, align 8 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  br i1 %i.al, label %.thread36, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit21, !llvm.loop !382

.thread36:                                        ; preds = %.thread, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit21, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.thread.pointer.p0() #44

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #45 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.g = load i8, ptr %i.f, align 2, !tbaa !60    ; 2 uses
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i8 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = and i64 %i.e, %i.i
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 40
  %.val.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !62
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 40
  %.val.i = load i64, ptr %i.k, align 8, !tbaa !62 ; 2 uses
  %i.l = urem i64 %i.e, %.val.i
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.val = phi i64 [ %.val.pre, %bb.b ], [ %.val.i, %bb.c ]
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.l, %bb.c ]
  %i.m = sub i64 %.val, %.0.i
  ret i64 %i.m
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #46

; Function Attrs: nounwind
declare noundef ptr @_ZSt15get_new_handlerv() local_unnamed_addr #41

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #41

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #47

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 281474976579584
  br i1 %i.a, label %bb.r, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %3, 0
  %i.c = icmp ugt i64 %2, %1
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i64 %2, 17
  br i1 %i.d, label %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ult i64 %1, 65537
  br i1 %i.e, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw nsw i64 %1, 7
  %i.g = lshr i64 %i.f, 3                         ; 2 uses
  %i.h = icmp samesign ult i64 %1, 65
  br i1 %i.h, label %bb.f, label %bb.g, !prof !68

bb.f:                                             ; preds = %bb.e
  %i.i = add nuw nsw i64 %i.g, 1
  %i.j = and i64 %i.i, 30
  br label %_ZL6mi_binm.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.k = add nsw i64 %i.g, -1                     ; 2 uses
  %i.l = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 false) ; 2 uses
  %i.m = sub nuw nsw i64 61, %i.l
  %i.n = lshr i64 %i.k, %i.m
  %i.o = and i64 %i.n, 3
  %i.p = shl nuw nsw i64 %i.l, 2
  %reass.sub = sub nsw i64 %i.o, %i.p
  %i.q = add nsw i64 %reass.sub, 249
  br label %_ZL6mi_binm.exit.i.i

_ZL6mi_binm.exit.i.i:                             ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i64 [ %i.j, %bb.f ], [ %i.q, %bb.g ]
  %i.r = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1280), i64 %.0.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !93
  br label %_ZL30mi_malloc_is_naturally_alignedmm.exit

bb.h:                                             ; preds = %bb.d
  %i.u = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95 ; 4 uses
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.u)
  %i.w = icmp samesign ult i64 %i.v, 2
  %i.x = add nsw i64 %1, -1
  %i.y = add i64 %i.x, %i.u                       ; 3 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = sub i64 0, %i.u
  %i.aa = and i64 %i.y, %i.z
  br label %_ZL30mi_malloc_is_naturally_alignedmm.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = urem i64 %i.y, %i.u
  %i.ac = sub nuw i64 %i.y, %i.ab
  br label %_ZL30mi_malloc_is_naturally_alignedmm.exit

_ZL30mi_malloc_is_naturally_alignedmm.exit:       ; preds = %_ZL6mi_binm.exit.i.i, %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.t, %_ZL6mi_binm.exit.i.i ], [ %i.aa, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ad = icmp ult i64 %.0.i.i, 65537
  %i.ae = add nsw i64 %2, -1
  %i.af = and i64 %.0.i.i, %i.ae
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread, label %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22

_ZL30mi_malloc_is_naturally_alignedmm.exit.thread: ; preds = %bb.c, %_ZL30mi_malloc_is_naturally_alignedmm.exit
  %i.ai = icmp samesign ult i64 %1, 1025
  br i1 %i.ai, label %bb.k, label %bb.q, !prof !68

bb.k:                                             ; preds = %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread
  %i.aj = add nuw nsw i64 %1, 7
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !77 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !72 ; 8 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.l, label %bb.m, !prof !61

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef nonnull %0, i64 noundef range(i64 -1, 281474993356800) %1, i1 noundef zeroext %4, i64 noundef 0) #55, !inline_history !74
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit

bb.m:                                             ; preds = %bb.k
  %.val.i.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !65
  %i.as = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !72
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.au = load i16, ptr %i.at, align 8, !tbaa !66
  %i.av = add i16 %i.au, 1
  store i16 %i.av, ptr %i.at, align 8, !tbaa !66
  br i1 %4, label %bb.n, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, !prof !61

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 15
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = and i8 %i.ax, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %i.ap, align 8, !tbaa !65
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ap, i64 8) ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ap, i8 0, i64 %i.ba, i1 false)
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit

bb.q:                                             ; preds = %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread
  %i.bb = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef range(i64 -1, 281474993356800) %1, i1 noundef zeroext %4, i64 noundef 0) #55
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit

_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit: ; preds = %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  %.0.i.i.i20 = phi ptr [ %i.bb, %bb.q ], [ %i.ar, %bb.l ], [ %i.ap, %bb.o ], [ %i.ap, %bb.p ], [ %i.ap, %bb.m ] ; 3 uses
  %i.bc = ptrtoint ptr %.0.i.i.i20 to i64
  %i.bd = add nsw i64 %2, -1
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.r, label %.thread, !prof !68

.thread:                                          ; preds = %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit
  tail call void @mi_free(ptr noundef %.0.i.i.i20) #55
  br label %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22

_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22: ; preds = %.thread, %_ZL30mi_malloc_is_naturally_alignedmm.exit, %bb.b
  %i.bg = tail call fastcc noundef ptr @_ZL40mi_heap_malloc_zero_aligned_at_overallocP9mi_heap_smmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #55
  br label %bb.r

bb.r:                                             ; preds = %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, %bb.a, %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22
  %.1 = phi ptr [ null, %bb.a ], [ %i.bg, %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22 ], [ %.0.i.i.i20, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZL40mi_heap_malloc_zero_aligned_at_overallocP9mi_heap_smmmb(ptr noundef %0, i64 noundef range(i64 0, 281474976579585) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %2, 16777216                ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d, !prof !61

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.p, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @llvm.umax.i64(i64 %1, i64 1025)
  %i.c = tail call noundef ptr @_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm(ptr noundef %0, i64 noundef %i.b, i1 noundef zeroext false, i64 noundef %2) #55 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.p, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.e = tail call i64 @llvm.umax.i64(i64 %1, i64 16)
  %i.f = add nuw nsw i64 %i.e, %2                 ; 3 uses
  %i.g = add nsw i64 %i.f, -1
  %i.h = icmp samesign ult i64 %i.f, 1026
  br i1 %i.h, label %bb.e, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw nsw i64 %i.f, 6
  %i.j = lshr i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72   ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !65
  %i.q = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.q, ptr %i.n, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !66
  %i.t = add i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 8, !tbaa !66
  br i1 %4, label %bb.g, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread, !prof !61

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 15
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.o, align 8, !tbaa !65
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 8) ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.y, i1 false)
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread

_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit: ; preds = %bb.d, %bb.e
  %i.z = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef range(i64 -1, 281474993356800) %i.g, i1 noundef zeroext %4, i64 noundef 0) #55 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.p, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread

_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread: ; preds = %bb.f, %bb.i, %bb.h, %bb.c, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit
  %.0 = phi ptr [ %i.c, %bb.c ], [ %i.z, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit ], [ %i.o, %bb.h ], [ %i.o, %bb.i ], [ %i.o, %bb.f ] ; 2 uses
  %i.ab = ptrtoint ptr %.0 to i64                 ; 4 uses
  %i.ac = add i64 %2, -1
  %i.ad = add i64 %3, %i.ab
  %i.ae = and i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = sub i64 %2, %i.ae
  %i.ah = select i1 %i.af, i64 0, i64 %i.ag
  %i.ai = add i64 %i.ah, %i.ab                    ; 3 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 6 uses
  %.not44 = icmp eq ptr %.0, %i.aj
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread
  %i.ak = add i64 %i.ab, -1                       ; 2 uses
  %i.al = icmp slt i64 %i.ak, 33554432
  %i.am = and i64 %i.ak, -33554432
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = select i1 %i.al, ptr null, ptr %i.an    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 288
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ab, %i.aq
  %i.as = lshr i64 %i.ar, 16
  %i.at = getelementptr inbounds nuw [96 x i8], ptr %i.ap, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !67
  %i.aw = zext i32 %i.av to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 14 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = or i8 %i.ba, 2
  store i8 %i.bb, ptr %i.az, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread
  %or.cond = and i1 %i.a, %4
  br i1 %or.cond, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bc = add i64 %i.ai, -1                       ; 2 uses
  %i.bd = icmp slt i64 %i.bc, 33554432
  br i1 %i.bd, label %mi_usable_size.exit, label %bb.m, !prof !61

bb.m:                                             ; preds = %bb.l
  %i.be = and i64 %i.bc, 9223372036821221376      ; 2 uses
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = sub i64 %i.ai, %i.be
  %i.bh = lshr i64 %i.bg, 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 288
  %i.bj = getelementptr inbounds nuw [96 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !67
  %i.bm = zext i32 %i.bl to i64
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 %i.bn ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 14
  %.val.i.i = load i8, ptr %i.bp, align 2
  %i.bq = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i, label %bb.n, label %bb.o, !prof !68

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr i8, ptr %i.bo, i64 40
  %.val12.i.i = load i64, ptr %i.br, align 8, !tbaa !62
  br label %mi_usable_size.exit

bb.o:                                             ; preds = %bb.m
  %i.bs = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.bo, ptr noundef %i.aj) #55
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.l, %bb.n, %bb.o
  %.1.i.i = phi i64 [ 0, %bb.l ], [ %i.bs, %bb.o ], [ %.val12.i.i, %bb.n ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %.1.i.i, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %mi_usable_size.exit, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, %bb.c, %bb.b
  %.040 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ null, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit ], [ %i.aj, %mi_usable_size.exit ], [ %i.aj, %bb.k ]
  ret ptr %.040
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #41

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #41

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #48

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef ptr @_ZL21mi_arena_try_alloc_atP10mi_arena_smmbP10mi_memid_s(ptr nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !131
  %i.i = call noundef zeroext i1 @_Z37_mi_bitmap_try_find_from_claim_acrossPSt6atomicImEmmmPm(ptr noundef nonnull %i.f, i64 noundef %i.h, i64 noundef 0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noundef nonnull %i.a)
  br i1 %i.i, label %bb.b, label %_ZL18mi_arena_try_claimP10mi_arena_smPm.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i64, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.l = lshr i64 %i.k, 6
  store atomic i64 %i.l, ptr %i.j monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic ptr, ptr %i.m seq_cst, align 8
  %i.o = shl i64 %i.k, 25
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 4 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !157
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.s = load i8, ptr %i.r, align 4, !tbaa !158, !range !113, !noundef !114
  %i.t = load i64, ptr %i.a, align 8, !tbaa !98   ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, i8 0, i64 7, i1 false)
  store i64 %i.t, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %i.s, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 6, ptr %.sroa.775.0..sroa_idx, align 4, !tbaa !152
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !161, !range !113, !noundef !114
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.v, ptr %i.w, align 8, !tbaa !174
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !171  ; 3 uses
  %.not45 = icmp eq ptr %i.y, null
  br i1 %.not45, label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = lshr i64 %i.t, 6                         ; 2 uses
  %i.aa = and i64 %i.t, 63                        ; 5 uses
  %i.ab = add nuw nsw i64 %i.aa, %1
  %i.ac = icmp samesign ult i64 %i.ab, 65
  br i1 %i.ac, label %bb.d, label %_ZL15mi_bitmap_mask_mm.exit24.i.i, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp samesign ugt i64 %1, 63
  br i1 %i.ad, label %._crit_edge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %1, 0
  br i1 %i.ae, label %._crit_edge.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %notmask.i.i.i = shl nsw i64 -1, %1
  %i.af = xor i64 %notmask.i.i.i, -1
  %i.ag = shl i64 %i.af, %i.aa
  %i.ah = xor i64 %i.ag, -1
  br label %._crit_edge.thread.i

_ZL15mi_bitmap_mask_mm.exit24.i.i:                ; preds = %bb.c
  %i.ai = sub nuw nsw i64 64, %i.aa               ; 2 uses
  %i.aj = icmp eq i64 %i.aa, 0
  %notmask.i22.i.i = shl nsw i64 -1, %i.ai
  %i.ak = xor i64 %notmask.i22.i.i, -1
  %i.al = shl i64 %i.ak, %i.aa
  %i.am = sub nuw nsw i64 %1, %i.ai               ; 3 uses
  %i.an = lshr i64 %i.am, 6                       ; 4 uses
  %i.ao = and i64 %i.am, 63                       ; 2 uses
  %notmask.i25.i.i = shl nsw i64 -1, %i.ao
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.aq = xor i64 %i.al, -1
  %i.ar = select i1 %i.aj, i64 0, i64 %i.aq
  %i.as = atomicrmw and ptr %i.ap, i64 %i.ar acq_rel, align 8 ; 0 uses
  %.032.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %.not1633.i = icmp eq i64 %i.an, 0
  br i1 %.not1633.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZL15mi_bitmap_mask_mm.exit24.i.i
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.036.i.prol = phi ptr [ %.0.i.prol, %.lr.ph.i.prol ], [ %.032.i, %.lr.ph.i.preheader ] ; 2 uses
  %.01434.i.prol = phi i64 [ %i.at, %.lr.ph.i.prol ], [ %i.an, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.at = add nsw i64 %.01434.i.prol, -1          ; 2 uses
  %i.au = atomicrmw xchg ptr %.036.i.prol, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.prol = getelementptr inbounds nuw i8, ptr %.036.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
end_hunk_6
