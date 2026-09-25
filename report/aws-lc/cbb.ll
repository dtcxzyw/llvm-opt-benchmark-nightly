Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/cbb?download=true
inline.NumInlined: 69
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@CBB_did_write:bb.a
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !13
  %.not = icmp ne ptr %i.h, null
  %i.i = icmp ult i64 %i.g, %i.f
  %or.cond = select i1 %.not, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %cbb_get_base.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23
  %i.l = icmp ugt i64 %i.g, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.g, ptr %i.e, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %cbb_get_base.exit, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %cbb_get_base.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_u16(ptr nofree noundef captures(address_is_null) %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %cbb_add_u.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.d = trunc i16 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !14
  %i.f = lshr i16 %1, 8
  %i.g = trunc nuw i16 %i.f to i8
  store i8 %i.g, ptr %i.c, align 1, !tbaa !14
  br label %cbb_add_u.exit

cbb_add_u.exit:                                   ; preds = %.lr.ph.i, %bb.a
  %.011.i = phi i32 [ 1, %.lr.ph.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.011.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_u16le(ptr nofree noundef captures(address_is_null) %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %CBB_add_u16.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = call noundef i16 @llvm.bswap.i16(i16 %1) ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.e = trunc i16 %i.c to i8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.e, ptr %i.f, align 1, !tbaa !14
  %i.g = lshr i16 %i.c, 8
  %i.h = trunc nuw i16 %i.g to i8
  store i8 %i.h, ptr %i.d, align 1, !tbaa !14
  br label %CBB_add_u16.exit

CBB_add_u16.exit:                                 ; preds = %bb.a, %.lr.ph.i.i
  %.011.i.i = phi i32 [ 1, %.lr.ph.i.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.011.i.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_u24(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 3)
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %cbb_add_u.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.d = trunc i32 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.d, ptr %i.e, align 1, !tbaa !14
  %i.f = lshr i32 %1, 8
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !14
  %i.i = lshr i32 %1, 16
  %i.j = trunc i32 %i.i to i8
  store i8 %i.j, ptr %i.c, align 1, !tbaa !14
  %.not13.i = icmp ult i32 %1, 16777216
  br i1 %.not13.i, label %cbb_add_u.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !12
  %.not.i.i.i = icmp eq i8 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not.i.i.i, label %cbb_on_error.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  br label %cbb_on_error.exit.i

cbb_on_error.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = or i8 %i.p, 2
  store i8 %i.q, ptr %i.o, align 8
  store ptr null, ptr %0, align 8, !tbaa !13
  br label %cbb_add_u.exit

cbb_add_u.exit:                                   ; preds = %bb.a, %.lr.ph.i, %cbb_on_error.exit.i
  %.011.i = phi i32 [ 0, %cbb_on_error.exit.i ], [ 0, %bb.a ], [ 1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.011.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_u32(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4)
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %cbb_add_u.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.d = trunc i32 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.d, ptr %i.e, align 1, !tbaa !14
  %i.f = lshr i32 %1, 8
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.g, ptr %i.h, align 1, !tbaa !14
  %i.i = lshr i32 %1, 16
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !14
  %i.l = lshr i32 %1, 24
  %i.m = trunc nuw i32 %i.l to i8
  store i8 %i.m, ptr %i.c, align 1, !tbaa !14
  br label %cbb_add_u.exit

cbb_add_u.exit:                                   ; preds = %.lr.ph.i, %bb.a
  %.011.i = phi i32 [ 1, %.lr.ph.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.011.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_u32le(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4)
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %CBB_add_u32.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = call noundef i32 @llvm.bswap.i32(i32 %1) ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.e = trunc i32 %i.c to i8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.e, ptr %i.f, align 1, !tbaa !14
  %i.g = lshr i32 %i.c, 8
  %i.h = trunc i32 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.h, ptr %i.i, align 1, !tbaa !14
  %i.j = lshr i32 %i.c, 16
  %i.k = trunc i32 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !14
  %i.m = lshr i32 %i.c, 24
  %i.n = trunc nuw i32 %i.m to i8
  store i8 %i.n, ptr %i.d, align 1, !tbaa !14
  br label %CBB_add_u32.exit

CBB_add_u32.exit:                                 ; preds = %bb.a, %.lr.ph.i.i
  %.011.i.i = phi i32 [ 1, %.lr.ph.i.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.011.i.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_u64(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 8)
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %cbb_add_u.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !16
  %2 = bitcast i64 %1 to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %i.c, align 1, !tbaa !14
  br label %cbb_add_u.exit

cbb_add_u.exit:                                   ; preds = %.lr.ph.i, %bb.a
  %.011.i = phi i32 [ 1, %.lr.ph.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.011.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_u64le(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 8)
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %CBB_add_u64.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = call noundef i64 @llvm.bswap.i64(i64 %1)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16
  %2 = bitcast i64 %i.c to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %i.d, align 1, !tbaa !14
  br label %CBB_add_u64.exit

CBB_add_u64.exit:                                 ; preds = %bb.a, %.lr.ph.i.i
  %.011.i.i = phi i32 [ 1, %.lr.ph.i.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.011.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @CBB_discard_child(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !12
  %.not.i = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not.i, label %cbb_get_base.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  br label %cbb_get_base.exit

cbb_get_base.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !14
  store ptr null, ptr %0, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %cbb_get_base.exit
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_asn1_uint64(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @CBB_add_asn1_uint64_with_tag(ptr noundef %0, i64 noundef %1, i32 noundef 2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CBB_add_asn1_uint64_with_tag(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 33 uses
  %i.c = alloca ptr, align 8                      ; 33 uses
  %3 = alloca %struct.cbb_st, align 8             ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.d = call i32 @CBB_add_asn1(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %2)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %1, 56                          ; 2 uses
  %i.f = trunc nuw i64 %i.e to i8
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not21 = icmp sgt i64 %1, -1
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.h = call i32 @CBB_add_space(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef 1)
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %CBB_add_u8.exit.thread, label %CBB_add_u8.exit

CBB_add_u8.exit.thread:                           ; preds = %bb.ag, %bb.ac, %bb.y, %bb.u, %bb.q, %bb.m, %bb.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.al

CBB_add_u8.exit:                                  ; preds = %bb.d
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !16
  store i8 0, ptr %i.i, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.e

bb.e:                                             ; preds = %CBB_add_u8.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.j = call i32 @CBB_add_space(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 1)
  %.not.i.i26 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i26, label %bb.f, label %.preheader.1

bb.f:                                             ; preds = %bb.ah, %bb.ad, %bb.z, %bb.v, %bb.r, %bb.n, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.al

.preheader.1:                                     ; preds = %bb.e
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  store i8 %i.f, ptr %i.k, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.l = lshr i64 %1, 48
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.m = lshr i64 %1, 48                          ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not21.1 = icmp ult i64 %1, 36028797018963968
  br i1 %.not21.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.o = call i32 @CBB_add_space(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef 1)
  %.not.i.i.1 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.1, label %CBB_add_u8.exit.thread, label %CBB_add_u8.exit.1

CBB_add_u8.exit.1:                                ; preds = %bb.i
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !16
  store i8 0, ptr %i.p, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.j

bb.j:                                             ; preds = %.preheader.1, %CBB_add_u8.exit.1, %bb.h
  %.in = phi i64 [ %i.m, %CBB_add_u8.exit.1 ], [ %i.m, %bb.h ], [ %i.l, %.preheader.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.q = call i32 @CBB_add_space(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 1)
  %.not.i.i26.1 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i26.1, label %bb.f, label %.preheader.2

.preheader.2:                                     ; preds = %bb.j
  %i.r = trunc i64 %.in to i8
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !16
  store i8 %i.r, ptr %i.s, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.t = lshr i64 %1, 40
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.u = lshr i64 %1, 40                          ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not21.2 = icmp ult i64 %1, 140737488355328
  br i1 %.not21.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.w = call i32 @CBB_add_space(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef 1)
  %.not.i.i.2 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.2, label %CBB_add_u8.exit.thread, label %CBB_add_u8.exit.2

CBB_add_u8.exit.2:                                ; preds = %bb.m
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !16
  store i8 0, ptr %i.x, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.n

bb.n:                                             ; preds = %.preheader.2, %CBB_add_u8.exit.2, %bb.l
  %.in58 = phi i64 [ %i.u, %CBB_add_u8.exit.2 ], [ %i.u, %bb.l ], [ %i.t, %.preheader.2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.y = call i32 @CBB_add_space(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 1)
  %.not.i.i26.2 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i26.2, label %bb.f, label %.preheader.3

.preheader.3:                                     ; preds = %bb.n
  %i.z = trunc i64 %.in58 to i8
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !16
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.ab = lshr i64 %1, 32
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  %i.ac = lshr i64 %1, 32                         ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not21.3 = icmp ult i64 %1, 549755813888
  br i1 %.not21.3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.ae = call i32 @CBB_add_space(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef 1)
  %.not.i.i.3 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.3, label %CBB_add_u8.exit.thread, label %CBB_add_u8.exit.3

CBB_add_u8.exit.3:                                ; preds = %bb.q
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !16
  store i8 0, ptr %i.af, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.r

bb.r:                                             ; preds = %.preheader.3, %CBB_add_u8.exit.3, %bb.p
  %.in59 = phi i64 [ %i.ac, %CBB_add_u8.exit.3 ], [ %i.ac, %bb.p ], [ %i.ab, %.preheader.3 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ag = call i32 @CBB_add_space(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 1)
end_hunk_0
