Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ares_buf?download=true
inline.NumInlined: 91
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ares_buf_tag_fetch_constbuf:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 18) i32 @ares_buf_tag_fetch_string(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ares_buf_tag_fetch_bytes.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, -1
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %ares_buf_tag_fetch_bytes.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !12   ; 4 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %ares_buf_tag_fetch_bytes.exit.thread, label %ares_buf_tag_fetch.exit.i

ares_buf_tag_fetch.exit.i:                        ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.j = sub i64 %i.i, %i.f                       ; 4 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.m = icmp eq ptr %i.k, null
  %i.n = icmp ult i64 %i.c, %i.j
  %or.cond27 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond27, label %ares_buf_tag_fetch_bytes.exit.thread, label %bb.d

bb.d:                                             ; preds = %ares_buf_tag_fetch.exit.i
  %.not.i = icmp eq i64 %i.i, %i.f
  br i1 %.not.i, label %ares_buf_tag_fetch_bytes.exit.thread36, label %.lr.ph.preheader

ares_buf_tag_fetch_bytes.exit.thread36:           ; preds = %bb.d
  store i8 0, ptr %1, align 1, !tbaa !19
  br label %ares_buf_tag_fetch_bytes.exit.thread

.lr.ph.preheader:                                 ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.l, i64 %i.j, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  store i8 0, ptr %i.o, align 1, !tbaa !19
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.p = add nuw i64 %.028, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.j
  br i1 %exitcond.not, label %ares_buf_tag_fetch_bytes.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.028 = phi i64 [ %i.p, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.028
  %i.r = load i8, ptr %i.q, align 1, !tbaa !19
  %i.s = add i8 %i.r, -32
  %or.cond20 = icmp ult i8 %i.s, 95
  br i1 %or.cond20, label %bb.e, label %ares_buf_tag_fetch_bytes.exit.thread

ares_buf_tag_fetch_bytes.exit.thread:             ; preds = %.lr.ph, %bb.e, %ares_buf_tag_fetch_bytes.exit.thread36, %bb.b, %bb.c, %ares_buf_tag_fetch.exit.i, %bb.a
  %.015 = phi i32 [ 2, %ares_buf_tag_fetch.exit.i ], [ 2, %bb.a ], [ 2, %bb.c ], [ 2, %bb.b ], [ 0, %ares_buf_tag_fetch_bytes.exit.thread36 ], [ 17, %.lr.ph ], [ 0, %bb.e ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define range(i32 0, 18) i32 @ares_buf_tag_fetch_strdup(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_tag_fetch.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %ares_buf_tag_fetch.exit.thread, label %ares_buf_tag_fetch.exit

ares_buf_tag_fetch.exit:                          ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = sub i64 %i.f, %i.c                       ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c ; 2 uses
  %i.j = icmp eq ptr %i.h, null
  %i.k = icmp eq ptr %1, null
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %ares_buf_tag_fetch.exit.thread, label %bb.c

bb.c:                                             ; preds = %ares_buf_tag_fetch.exit
  %i.l = tail call i32 @ares_str_isprint(ptr noundef nonnull %i.i, i64 noundef %i.g) #15
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %ares_buf_tag_fetch.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add i64 %i.g, 1
  %i.n = tail call ptr @ares_malloc(i64 noundef %i.m) #15 ; 4 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !22
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %ares_buf_tag_fetch.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14 = icmp eq i64 %i.f, %i.c
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.i, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = phi ptr [ %.pre, %bb.f ], [ %i.n, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !19
  br label %ares_buf_tag_fetch.exit.thread

ares_buf_tag_fetch.exit.thread:                   ; preds = %bb.a, %bb.b, %bb.d, %bb.c, %ares_buf_tag_fetch.exit, %bb.g
  %.0 = phi i32 [ 2, %ares_buf_tag_fetch.exit ], [ 17, %bb.c ], [ 0, %bb.g ], [ 15, %bb.d ], [ 2, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

declare i32 @ares_str_isprint(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ares_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 11) i32 @ares_buf_consume(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_len.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  %i.f = sub i64 %i.c, %i.e
  br label %ares_buf_len.exit

ares_buf_len.exit:                                ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.g = icmp ult i64 %.0.i, %1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ares_buf_len.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16
  %i.j = add i64 %i.i, %1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %ares_buf_len.exit, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 10, %ares_buf_len.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ares_buf_len(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  %i.f = sub i64 %i.c, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 11) i32 @ares_buf_fetch_be16(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_consume.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ares_buf_consume.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %ares_buf_consume.exit, label %ares_buf_fetch.exit

ares_buf_fetch.exit:                              ; preds = %bb.c
  %i.i = sub i64 %i.e, %i.g
  %i.j = icmp eq ptr %1, null
  %i.k = icmp ult i64 %i.i, 2
  %or.cond3 = or i1 %i.j, %i.k
  br i1 %or.cond3, label %ares_buf_consume.exit, label %bb.d

bb.d:                                             ; preds = %ares_buf_fetch.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %2 = load i16, ptr %i.l, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  store i16 %3, ptr %1, align 2, !tbaa !27
  %i.m = add i64 %i.g, 2
  store i64 %i.m, ptr %i.f, align 8, !tbaa !16
  br label %ares_buf_consume.exit

ares_buf_consume.exit:                            ; preds = %bb.c, %bb.b, %bb.a, %bb.d, %ares_buf_fetch.exit
  %.0 = phi i32 [ 10, %bb.c ], [ 10, %ares_buf_fetch.exit ], [ 0, %bb.d ], [ 10, %bb.a ], [ 10, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 11) i32 @ares_buf_fetch_be32(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_consume.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ares_buf_consume.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %ares_buf_consume.exit, label %ares_buf_fetch.exit

ares_buf_fetch.exit:                              ; preds = %bb.c
  %i.i = sub i64 %i.e, %i.g
  %i.j = icmp eq ptr %1, null
  %i.k = icmp ult i64 %i.i, 4
  %or.cond3 = or i1 %i.j, %i.k
  br i1 %or.cond3, label %ares_buf_consume.exit, label %bb.d

bb.d:                                             ; preds = %ares_buf_fetch.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.m = load i32, ptr %i.l, align 1
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  store i32 %i.n, ptr %1, align 4, !tbaa !23
  %i.o = add i64 %i.g, 4
  store i64 %i.o, ptr %i.f, align 8, !tbaa !16
  br label %ares_buf_consume.exit

ares_buf_consume.exit:                            ; preds = %bb.c, %bb.b, %bb.a, %bb.d, %ares_buf_fetch.exit
  %.0 = phi i32 [ 10, %bb.c ], [ 10, %ares_buf_fetch.exit ], [ 0, %bb.d ], [ 10, %bb.a ], [ 10, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 11) i32 @ares_buf_fetch_bytes(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_consume.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ares_buf_fetch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 3 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp eq i64 %i.e, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %spec.select25 = select i1 %i.i, ptr null, ptr %i.j
  br label %ares_buf_fetch.exit

ares_buf_fetch.exit:                              ; preds = %bb.c, %bb.b
  %.019 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %.0.i = phi ptr [ %spec.select25, %bb.c ], [ null, %bb.b ]
  %i.k = icmp eq ptr %1, null
  %i.l = icmp eq i64 %2, 0
  %or.cond3 = or i1 %i.k, %i.l
  %i.m = icmp ult i64 %.019, %2
  %or.cond17 = select i1 %or.cond3, i1 true, i1 %i.m
  br i1 %or.cond17, label %ares_buf_consume.exit, label %ares_buf_len.exit.i

ares_buf_len.exit.i:                              ; preds = %ares_buf_fetch.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %.0.i, i64 %2, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp ult i64 %i.r, %2
  br i1 %i.s, label %ares_buf_consume.exit, label %bb.d

bb.d:                                             ; preds = %ares_buf_len.exit.i
  %i.t = add i64 %i.q, %2
  store i64 %i.t, ptr %i.p, align 8, !tbaa !16
  br label %ares_buf_consume.exit

ares_buf_consume.exit:                            ; preds = %bb.a, %bb.d, %ares_buf_len.exit.i, %ares_buf_fetch.exit
  %.0 = phi i32 [ 10, %ares_buf_len.exit.i ], [ 10, %ares_buf_fetch.exit ], [ 0, %bb.d ], [ 10, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 16) i32 @ares_buf_fetch_bytes_dup(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_consume.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ares_buf_fetch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 3 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp eq i64 %i.e, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %spec.select34 = select i1 %i.i, ptr null, ptr %i.j
  br label %ares_buf_fetch.exit

ares_buf_fetch.exit:                              ; preds = %bb.c, %bb.b
  %.028 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %.0.i = phi ptr [ %spec.select34, %bb.c ], [ null, %bb.b ]
  %i.k = icmp eq ptr %3, null
  %i.l = icmp eq i64 %1, 0
  %or.cond3 = or i1 %i.l, %i.k
  %i.m = icmp ult i64 %.028, %1
  %or.cond26 = select i1 %or.cond3, i1 true, i1 %i.m
  br i1 %or.cond26, label %ares_buf_consume.exit, label %bb.d

bb.d:                                             ; preds = %ares_buf_fetch.exit
  %.not = icmp ne i32 %2, 0                       ; 2 uses
  %i.n = zext i1 %.not to i64
  %i.o = add i64 %1, %i.n
  %i.p = tail call ptr @ares_malloc(i64 noundef %i.o) #15 ; 3 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !22
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %ares_buf_consume.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %.0.i, i64 %1, i1 false)
  br i1 %.not, label %bb.f, label %ares_buf_len.exit.i

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %3, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %1
  store i8 0, ptr %i.s, align 1, !tbaa !19
  br label %ares_buf_len.exit.i

ares_buf_len.exit.i:                              ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16   ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ult i64 %i.x, %1
  br i1 %i.y, label %ares_buf_consume.exit, label %bb.g

bb.g:                                             ; preds = %ares_buf_len.exit.i
  %i.z = add i64 %i.w, %1
  store i64 %i.z, ptr %i.v, align 8, !tbaa !16
  br label %ares_buf_consume.exit

ares_buf_consume.exit:                            ; preds = %bb.a, %bb.g, %ares_buf_len.exit.i, %bb.d, %ares_buf_fetch.exit
  %.0 = phi i32 [ 10, %ares_buf_len.exit.i ], [ 10, %ares_buf_fetch.exit ], [ 15, %bb.d ], [ 0, %bb.g ], [ 10, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 18) i32 @ares_buf_fetch_str_dup(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_consume.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ares_buf_fetch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 3 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp eq i64 %i.e, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %spec.select41 = select i1 %i.i, ptr null, ptr %i.j
  br label %ares_buf_fetch.exit

ares_buf_fetch.exit:                              ; preds = %bb.c, %bb.b
  %.035 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %.0.i = phi ptr [ %spec.select41, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.k = icmp eq ptr %2, null
  %i.l = icmp eq i64 %1, 0
  %or.cond3 = or i1 %i.l, %i.k
  %i.m = icmp ult i64 %.035, %1
end_hunk_0
begin_hunk_1_@ares_buf_hexdump:bb.a
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !14
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn
  store i8 %i.ck, ptr %i.co, align 1
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %.loopexit.loopexit.i, %bb.m
  %.sink117.i = phi i64 [ 1, %.loopexit.loopexit.i ], [ %i.bq, %bb.m ]
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !14
  %i.cq = add i64 %i.cp, %.sink117.i
  store i64 %i.cq, ptr %i.b, align 8, !tbaa !14
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.sink.split.i, %bb.k
  %i.cr = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %.not.i.i61.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i61.i, label %bb.p, label %ares_buf_hexdump_line.exit.thread

bb.p:                                             ; preds = %.loopexit.i
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ct = load i64, ptr %i.b, align 8, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  store i8 32, ptr %i.cu, align 1
  %i.cv = load i64, ptr %i.b, align 8, !tbaa !14
  %i.cw = add i64 %i.cv, 1
  store i64 %i.cw, ptr %i.b, align 8, !tbaa !14
  %i.cx = add nuw nsw i64 %.03784.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cx, 16
  br i1 %exitcond.not.i, label %bb.q, label %ares_buf_append_str.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cy = tail call i64 @ares_strlen(ptr noundef nonnull @.str.1) #15 ; 4 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %ares_buf_append_str.exit64.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef nonnull %0, i64 noundef %i.cy) ; 2 uses
  %.not.i.i62.i = icmp eq i32 %i.da, 0
  br i1 %.not.i.i62.i, label %bb.s, label %ares_buf_hexdump_line.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !14
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr nonnull readonly align 1 @.str.1, i64 %i.cy, i1 false)
  %i.de = load i64, ptr %i.b, align 8, !tbaa !14
  %i.df = add i64 %i.de, %i.cy
  store i64 %i.df, ptr %i.b, align 8, !tbaa !14
  br label %ares_buf_append_str.exit64.i

ares_buf_append_str.exit64.i:                     ; preds = %bb.s, %bb.q
  %invariant.umin.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 16)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ares_buf_append_str.exit64.i, %bb.t
  %.186.i = phi i64 [ %i.dq, %bb.t ], [ 0, %ares_buf_append_str.exit64.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 %.186.i
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !19  ; 2 uses
  %i.di = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %.not.i.i65.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i65.i, label %bb.t, label %ares_buf_hexdump_line.exit.thread

bb.t:                                             ; preds = %.lr.ph.i
  %i.dj = add i8 %i.dh, -32
  %or.cond52.i = icmp ult i8 %i.dj, 95
  %i.dk = select i1 %or.cond52.i, i8 %i.dh, i8 46
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.dm = load i64, ptr %i.b, align 8, !tbaa !14
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dm
  store i8 %i.dk, ptr %i.dn, align 1
  %i.do = load i64, ptr %i.b, align 8, !tbaa !14
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr %i.b, align 8, !tbaa !14
  %i.dq = add nuw nsw i64 %.186.i, 1              ; 2 uses
  %exitcond95.not.i = icmp eq i64 %i.dq, %invariant.umin.i
  br i1 %exitcond95.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %bb.t
  %i.dr = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %.not.i.i67.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i67.i, label %bb.u, label %ares_buf_hexdump_line.exit.thread

bb.u:                                             ; preds = %._crit_edge.i.loopexit
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !14
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dt
  store i8 10, ptr %i.du, align 1
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !14
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %i.b, align 8, !tbaa !14
  %i.dx = add i64 %.01223, 16                     ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %2
  br i1 %i.dy, label %bb.b, label %ares_buf_hexdump_line.exit.thread

ares_buf_hexdump_line.exit.thread:                ; preds = %bb.u, %bb.i, %._crit_edge.i.loopexit, %bb.d, %bb.g, %bb.r, %bb.e, %bb.f, %bb.b, %bb.c, %.loopexit.i, %bb.o, %bb.n, %bb.l, %.lr.ph.i, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ %i.cr, %.loopexit.i ], [ %i.di, %.lr.ph.i ], [ %i.bs, %bb.l ], [ %i.cc, %bb.n ], [ %i.cl, %bb.o ], [ %i.da, %bb.r ], [ %i.am, %bb.e ], [ 0, %bb.u ], [ %i.aw, %bb.f ], [ %i.i, %bb.b ], [ %i.bk, %bb.i ], [ %i.bc, %bb.g ], [ %i.ac, %bb.d ], [ %i.s, %bb.c ], [ %i.dr, %._crit_edge.i.loopexit ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 16) i32 @ares_buf_load_file(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str) ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @fseek(ptr noundef nonnull %i.d, i64 noundef 0, i32 noundef 2)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @ftell(ptr noundef nonnull %i.d) ; 6 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @fseek(ptr noundef nonnull %i.d, i64 noundef 0, i32 noundef 0)
  %.not32 = icmp eq i32 %i.i, 0
  br i1 %.not32, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.g, ptr %i.a, align 8, !tbaa !18
  %i.k = call ptr @ares_buf_append_start(ptr noundef nonnull %1, ptr noundef nonnull %i.a) ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = call i64 @fread(ptr noundef nonnull %i.k, i64 noundef 1, i64 noundef %i.g, ptr noundef nonnull %i.d)
  %.not33 = icmp eq i64 %i.m, %i.g
  br i1 %.not33, label %ares_buf_append_finish.exit, label %bb.j

ares_buf_append_finish.exit:                      ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  %i.p = add i64 %i.o, %i.g
  store i64 %i.p, ptr %i.n, align 8, !tbaa !14
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.q = tail call ptr @__errno_location() #17
  %i.r = load i32, ptr %i.q, align 4, !tbaa !23
  %i.s = and i32 %i.r, -2
  %switch = icmp eq i32 %i.s, 2
  %. = select i1 %switch, i32 4, i32 14
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %ares_buf_append_finish.exit
  %.1.ph = phi i32 [ 14, %bb.h ], [ 15, %bb.g ], [ 0, %bb.f ], [ 14, %bb.e ], [ 14, %bb.d ], [ 14, %bb.c ], [ 0, %ares_buf_append_finish.exit ]
  %i.t = call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.a
  %.026 = phi i32 [ 2, %bb.a ], [ %.1.ph, %bb.j ], [ %., %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.026
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #11

declare ptr @ares_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ares_memeq_ci(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ares_memeq(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"ares_buf", !9, i64 0, !10, i64 8, !9, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!12 = !{!11, !10, i64 40}
!13 = !{!11, !9, i64 0}
!14 = !{!11, !10, i64 8}
!15 = !{!11, !9, i64 16}
!16 = !{!11, !10, i64 32}
!17 = !{!11, !10, i64 24}
!18 = !{!10, !10, i64 0}
!19 = !{!4, !4, i64 0}
!20 = !{!"p1 _ZTS8ares_buf", !8, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!9, !9, i64 0}
!23 = !{!5, !5, i64 0}
!24 = !{!"p1 _ZTS10ares_array", !8, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"short", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!8, !8, i64 0}
!29 = !{!"any p2 pointer", !8, i64 0}
!30 = !{!"p2 omnipotent char", !29, i64 0}
!31 = !{!30, !30, i64 0}
end_hunk_1
