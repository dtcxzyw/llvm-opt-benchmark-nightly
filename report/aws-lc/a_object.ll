Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/a_object?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@i2d_ASN1_OBJECT:bb.a
  %.0 = phi i32 [ %i.m, %bb.i ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %.0, %bb.j ]
  ret i32 %.1
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @CBB_init(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBB_add_asn1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CBB_add_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @CBB_cleanup(ptr noundef) local_unnamed_addr #1

declare i32 @CBB_finish_i2d(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define i32 @i2t_ASN1_OBJECT(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @OBJ_obj2txt(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 0) #5
  ret i32 %i.a
}

declare i32 @OBJ_obj2txt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @i2a_ASN1_OBJECT(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 4) #5
  %i.g = icmp eq i32 %i.f, 4
  %i.h = select i1 %i.g, i32 4, i32 -1
  br label %write_str.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.i = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.a, i32 noundef 80, ptr noundef nonnull %1, i32 noundef 0) #5 ; 3 uses
  %i.j = icmp sgt i32 %i.i, 79
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw nsw i32 %i.i, 1                  ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = call ptr @OPENSSL_malloc(i64 noundef %i.l) #5 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.m, i32 noundef %i.k, ptr noundef nonnull %1, i32 noundef 0) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.019 = phi ptr [ %i.m, %bb.f ], [ null, %bb.d ]
  %.017 = phi ptr [ %i.m, %bb.f ], [ %i.a, %bb.d ]
  %.016 = phi i32 [ %i.o, %bb.f ], [ %i.i, %bb.d ]
  %i.p = icmp slt i32 %.016, 1
  %spec.select = select i1 %i.p, ptr @.str.2, ptr %.017 ; 2 uses
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #6 ; 2 uses
  %i.r = icmp ugt i64 %i.q, 2147483647
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 48) #5
  br label %write_str.exit25

bb.i:                                             ; preds = %bb.g
  %i.s = trunc nuw nsw i64 %i.q to i32            ; 3 uses
  %i.t = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %spec.select, i32 noundef %i.s) #5
  %i.u = icmp eq i32 %i.t, %i.s
  %i.v = select i1 %i.u, i32 %i.s, i32 -1
  br label %write_str.exit25

write_str.exit25:                                 ; preds = %bb.h, %bb.i
  %.0.i24 = phi i32 [ -1, %bb.h ], [ %i.v, %bb.i ]
  call void @OPENSSL_free(ptr noundef %.019) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %write_str.exit25
  %.0 = phi i32 [ %.0.i24, %write_str.exit25 ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %write_str.exit

write_str.exit:                                   ; preds = %bb.c, %bb.j
  %.1 = phi i32 [ %.0, %bb.j ], [ %i.h, %bb.c ]
  ret i32 %.1
}

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #1

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @d2i_ASN1_OBJECT(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 5 uses
  %4 = alloca %struct.cbs_st, align 8             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.c = load ptr, ptr %1, align 8, !tbaa !13
  call void @CBS_init(ptr noundef nonnull %3, ptr noundef %i.c, i64 noundef %2) #5
  %i.d = call i32 @CBS_get_asn1(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 6) #5
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str, i32 noundef 89) #5
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = call ptr @CBS_data(ptr noundef nonnull %4) #5
  store ptr %i.e, ptr %i.a, align 8, !tbaa !13
  %i.f = call i64 @CBS_len(ptr noundef nonnull %4) #5
  %i.g = call ptr @c2i_ASN1_OBJECT(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.f) ; 2 uses
  %.not8 = icmp eq ptr %i.g, null
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call ptr @CBS_data(ptr noundef nonnull %3) #5
  store ptr %i.h, ptr %1, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.0 = phi ptr [ %i.g, %bb.f ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.1 = phi ptr [ %.0, %bb.g ], [ null, %bb.a ]
  ret ptr %.1
}

declare void @CBS_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBS_get_asn1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CBS_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @c2i_ASN1_OBJECT(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.asn1_object_st, align 8     ; 8 uses
  %4 = alloca %struct.cbs_st, align 8             ; 4 uses
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 146, ptr noundef nonnull @.str, i32 noundef 106) #5
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.b = load ptr, ptr %1, align 8, !tbaa !13
  call void @CBS_init(ptr noundef nonnull %4, ptr noundef %i.b, i64 noundef %2) #5
  %i.c = call i32 @CBS_is_valid_asn1_oid(ptr noundef nonnull %4) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 146, ptr noundef nonnull @.str, i32 noundef 113) #5
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.d = icmp samesign ugt i64 %2, 2147483647
  br i1 %i.d, label %ASN1_OBJECT_create.exit.thread, label %ASN1_OBJECT_create.exit.a

ASN1_OBJECT_create.exit.thread:                   ; preds = %bb.e
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 173, ptr noundef nonnull @.str, i32 noundef 164) #5
  br label %ASN1_OBJECT_create.exit

ASN1_OBJECT_create.exit.a:                        ; preds = %bb.e
  %i.e = load ptr, ptr %1, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !14
  %i.h = trunc nuw nsw i64 %2 to i32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.h, ptr %i.i, align 4, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 13, ptr %i.j, align 8, !tbaa !15
  %i.k = call ptr @OBJ_dup(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %ASN1_OBJECT_create.exit

ASN1_OBJECT_create.exit:                          ; preds = %ASN1_OBJECT_create.exit.thread, %ASN1_OBJECT_create.exit.a
  %.0.i = phi ptr [ null, %ASN1_OBJECT_create.exit.thread ], [ %i.k, %ASN1_OBJECT_create.exit.a ] ; 3 uses
  %5 = icmp eq ptr %.0.i, null
  br i1 %5, label %bb.o, label %bb.f

bb.f:                                             ; preds = %ASN1_OBJECT_create.exit
  %.not16 = icmp eq ptr %0, null
  br i1 %.not16, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %0, align 8, !tbaa !19     ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %ASN1_OBJECT_free.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %i.p = and i32 %i.o, 4
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !16
  call void @OPENSSL_free(ptr noundef %i.q) #5
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  call void @OPENSSL_free(ptr noundef %i.s) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = phi i32 [ %.pre.i, %bb.i ], [ %i.o, %bb.h ] ; 2 uses
  %i.u = and i32 %i.t, 8
  %.not12.i = icmp eq i32 %i.u, 0
  br i1 %.not12.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  call void @OPENSSL_free(ptr noundef %i.w) #5
  store ptr null, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 0, ptr %i.x, align 4, !tbaa !11
  %.pre14.i = load i32, ptr %i.n, align 8, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = phi i32 [ %.pre14.i, %bb.k ], [ %i.t, %bb.j ]
  %i.z = and i32 %i.y, 1
  %.not13.i = icmp eq i32 %i.z, 0
  br i1 %.not13.i, label %ASN1_OBJECT_free.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @OPENSSL_free(ptr noundef nonnull %i.l) #5
  br label %ASN1_OBJECT_free.exit

ASN1_OBJECT_free.exit:                            ; preds = %bb.g, %bb.l, %bb.m
  store ptr %.0.i, ptr %0, align 8, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %ASN1_OBJECT_free.exit, %bb.f
  %i.aa = load ptr, ptr %1, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2
  store ptr %i.ab, ptr %1, align 8, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %ASN1_OBJECT_create.exit, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ %.0.i, %bb.n ], [ null, %ASN1_OBJECT_create.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ %.1, %bb.o ]
  ret ptr %.2
}

declare i64 @CBS_len(ptr noundef) local_unnamed_addr #1

declare i32 @CBS_is_valid_asn1_oid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @ASN1_OBJECT_create(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.asn1_object_st, align 8     ; 9 uses
  %i.a = icmp ugt i64 %2, 2147483647
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 173, ptr noundef nonnull @.str, i32 noundef 164) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store ptr %3, ptr %5, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %0, ptr %i.d, align 8, !tbaa !14
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.e, ptr %i.f, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 13, ptr %i.g, align 8, !tbaa !15
  %i.h = call ptr @OBJ_dup(ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @ASN1_OBJECT_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @OPENSSL_free(ptr noundef %i.e) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  tail call void @OPENSSL_free(ptr noundef %i.g) #5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.i = and i32 %i.h, 8
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  tail call void @OPENSSL_free(ptr noundef %i.k) #5
  store ptr null, ptr %i.j, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !11
  %.pre14 = load i32, ptr %i.b, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i32 [ %.pre14, %bb.e ], [ %i.h, %bb.d ]
  %i.n = and i32 %i.m, 1
  %.not13 = icmp eq i32 %i.n, 0
  br i1 %.not13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @OPENSSL_free(ptr noundef nonnull %0) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @ASN1_OBJECT_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 40) #5 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

declare ptr @OPENSSL_zalloc(i64 noundef) local_unnamed_addr #1

declare ptr @OBJ_dup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"asn1_object_st", !9, i64 0, !9, i64 8, !5, i64 16, !5, i64 20, !9, i64 24, !5, i64 32}
!11 = !{!10, !5, i64 20}
!12 = !{!10, !9, i64 24}
!13 = !{!9, !9, i64 0}
!14 = !{!10, !5, i64 16}
!15 = !{!10, !5, i64 32}
!16 = !{!10, !9, i64 0}
!17 = !{!10, !9, i64 8}
!18 = !{!"p1 _ZTS14asn1_object_st", !8, i64 0}
!19 = !{!18, !18, i64 0}
end_hunk_0
