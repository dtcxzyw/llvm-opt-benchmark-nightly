Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/cbs?download=true
inline.NumInlined: 101
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@CBS_skip:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %cbs_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %1
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = sub nuw i64 %i.b, %1
  store i64 %i.f, ptr %i.a, align 8, !tbaa !15
  br label %cbs_get.exit

cbs_get.exit:                                     ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @CBS_data(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @CBS_len(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBS_stow(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  tail call void @OPENSSL_free(ptr noundef %i.a) #17
  store ptr null, ptr %1, align 8, !tbaa !16
  store i64 0, ptr %2, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !14
  %i.f = tail call ptr @OPENSSL_memdup(ptr noundef %i.e, i64 noundef %i.c) #17 ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !16
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8, !tbaa !15
  store i64 %i.h, ptr %2, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #5

declare ptr @OPENSSL_memdup(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBS_strdup(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_free(ptr noundef nonnull %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = tail call ptr @OPENSSL_strndup(ptr noundef %i.b, i64 noundef %i.d) #17 ; 2 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !16
  %i.f = icmp ne ptr %i.e, null
  %i.g = zext i1 %i.f to i32
  ret i32 %i.g
}

declare ptr @OPENSSL_strndup(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @CBS_contains_zero_byte(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %OPENSSL_memchr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14
  %i.e = tail call ptr @memchr(ptr noundef readonly %i.d, i32 noundef 0, i64 noundef %i.b) #18
  %i.f = icmp ne ptr %i.e, null
  %i.g = zext i1 %i.f to i32
  br label %OPENSSL_memchr.exit

OPENSSL_memchr.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBS_mem_equal(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !14
  %i.d = tail call i32 @CRYPTO_memcmp(ptr noundef %i.c, ptr noundef %1, i64 noundef %2) #17
  %i.e = icmp eq i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @CBS_get_u8(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %cbs_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = add i64 %i.b, -1
  store i64 %i.f, ptr %i.a, align 8, !tbaa !15
  %i.g = load i8, ptr %i.d, align 1, !tbaa !18
  store i8 %i.g, ptr %1, align 1, !tbaa !18
  br label %cbs_get.exit.thread

cbs_get.exit.thread:                              ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @CBS_get_u16(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %cbs_get_u.exit.thread, label %cbs_get.exit.i

cbs_get.exit.i:                                   ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = add i64 %i.b, -2
  store i64 %i.f, ptr %i.a, align 8, !tbaa !15
  %i.g = load i8, ptr %i.d, align 1, !tbaa !18
  %i.h = zext i8 %i.g to i16
  %i.i = shl nuw i16 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18
  %i.l = zext i8 %i.k to i16
  %i.m = or disjoint i16 %i.i, %i.l
  store i16 %i.m, ptr %1, align 2, !tbaa !20
  br label %cbs_get_u.exit.thread

cbs_get_u.exit.thread:                            ; preds = %bb.a, %cbs_get.exit.i
  %.0 = phi i32 [ 1, %cbs_get.exit.i ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @CBS_get_u16le(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %CBS_get_u16.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = add i64 %i.b, -2
  store i64 %i.f, ptr %i.a, align 8, !tbaa !15
  %2 = load i16, ptr %i.d, align 1
  store i16 %2, ptr %1, align 2, !tbaa !20
  br label %CBS_get_u16.exit.thread

CBS_get_u16.exit.thread:                          ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @CBS_get_u24(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp ult i64 %i.b, 3
  br i1 %i.c, label %cbs_get_u.exit.thread, label %cbs_get.exit.i

cbs_get.exit.i:                                   ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = add i64 %i.b, -3
  store i64 %i.f, ptr %i.a, align 8, !tbaa !15
  %i.g = load i8, ptr %i.d, align 1, !tbaa !18
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.h, 16
  %i.m = shl nuw nsw i32 %i.k, 8
  %i.n = or disjoint i32 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q
  store i32 %i.r, ptr %1, align 4, !tbaa !21
  br label %cbs_get_u.exit.thread

cbs_get_u.exit.thread:                            ; preds = %bb.a, %cbs_get.exit.i
  %.0 = phi i32 [ 1, %cbs_get.exit.i ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @CBS_get_u32(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp ult i64 %i.b, 4
  br i1 %i.c, label %cbs_get_u.exit.thread, label %cbs_get.exit.i

cbs_get.exit.i:                                   ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = add i64 %i.b, -4
  store i64 %i.f, ptr %i.a, align 8, !tbaa !15
  %i.g = load i8, ptr %i.d, align 1, !tbaa !18
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.h, 16
  %i.m = shl nuw nsw i32 %i.k, 8
  %i.n = or disjoint i32 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q
  %i.s = shl nuw i32 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.s, %i.v
  store i32 %i.w, ptr %1, align 4, !tbaa !21
  br label %cbs_get_u.exit.thread

cbs_get_u.exit.thread:                            ; preds = %bb.a, %cbs_get.exit.i
  %.0 = phi i32 [ 1, %cbs_get.exit.i ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @CBS_get_u32le(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp ult i64 %i.b, 4
  br i1 %i.c, label %CBS_get_u32.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = add i64 %i.b, -4
  store i64 %i.f, ptr %i.a, align 8, !tbaa !15
  %2 = load i16, ptr %i.d, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %i.g = zext i16 %3 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !18
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw i32 %i.g, 16
  %i.l = shl nuw nsw i32 %i.j, 8
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p
  %i.r = tail call noundef i32 @llvm.bswap.i32(i32 %i.q)
  store i32 %i.r, ptr %1, align 4, !tbaa !21
  br label %CBS_get_u32.exit.thread

CBS_get_u32.exit.thread:                          ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @CBS_get_u64(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp ult i64 %i.b, 8
  br i1 %i.c, label %cbs_get_u.exit, label %cbs_get.exit.i

cbs_get.exit.i:                                   ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = add i64 %i.b, -8
  store i64 %i.f, ptr %i.a, align 8, !tbaa !15
  %i.g = load i8, ptr %i.d, align 1, !tbaa !18
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.h, 16
  %i.m = shl nuw nsw i64 %i.k, 8
  %i.n = or disjoint i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18
  %i.q = zext i8 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.r, 16
  %i.w = shl nuw nsw i64 %i.u, 8
  %i.x = or disjoint i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  %i.aa = zext i8 %i.z to i64
  %i.ab = or disjoint i64 %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !18
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ab, 16
  %i.ag = shl nuw nsw i64 %i.ae, 8
  %i.ah = or disjoint i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.ak = zext i8 %i.aj to i64
  %i.al = or disjoint i64 %i.ah, %i.ak
  %i.am = shl nuw i64 %i.al, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !18
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %i.am, %i.ap
  store i64 %i.aq, ptr %1, align 8, !tbaa !17
  br label %cbs_get_u.exit

cbs_get_u.exit:                                   ; preds = %bb.a, %cbs_get.exit.i
  %.011.i = phi i32 [ 1, %cbs_get.exit.i ], [ 0, %bb.a ]
  ret i32 %.011.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @CBS_get_u64le(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp ult i64 %i.b, 8
  br i1 %i.c, label %cbs_get_u.exit.thread, label %cbs_get.exit.i

cbs_get.exit.i:                                   ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = add i64 %i.b, -8
  store i64 %i.f, ptr %i.a, align 8, !tbaa !15
  %i.g = load i8, ptr %i.d, align 1, !tbaa !18
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.h, 16
  %i.m = shl nuw nsw i64 %i.k, 8
  %i.n = or disjoint i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18
  %i.q = zext i8 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.r, 16
  %i.w = shl nuw nsw i64 %i.u, 8
  %i.x = or disjoint i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  %i.aa = zext i8 %i.z to i64
  %i.ab = or disjoint i64 %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !18
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ab, 16
  %i.ag = shl nuw nsw i64 %i.ae, 8
  %i.ah = or disjoint i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.ak = zext i8 %i.aj to i64
  %i.al = or disjoint i64 %i.ah, %i.ak
  %i.am = shl nuw i64 %i.al, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !18
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %i.am, %i.ap
  %i.ar = tail call noundef i64 @llvm.bswap.i64(i64 %i.aq)
  store i64 %i.ar, ptr %1, align 8, !tbaa !17
  br label %cbs_get_u.exit.thread

cbs_get_u.exit.thread:                            ; preds = %bb.a, %cbs_get.exit.i
  %.0 = phi i32 [ 1, %cbs_get.exit.i ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @CBS_get_last_u8(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14
  %i.e = getelementptr i8, ptr %i.d, i64 %i.b
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18
  store i8 %i.g, ptr %1, align 1, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !15
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @CBS_get_bytes(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp ult i64 %i.b, %2
  br i1 %i.c, label %cbs_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = sub nuw i64 %i.b, %2
  store i64 %i.f, ptr %i.a, align 8, !tbaa !15
  store ptr %i.d, ptr %1, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %2, ptr %i.g, align 8, !tbaa !15
  br label %cbs_get.exit.thread

cbs_get.exit.thread:                              ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @CBS_copy_bytes(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp ult i64 %i.b, %2
  br i1 %i.c, label %OPENSSL_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = sub nuw i64 %i.b, %2
  store i64 %i.f, ptr %i.a, align 8, !tbaa !15
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %OPENSSL_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %i.d, i64 %2, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
end_hunk_0
