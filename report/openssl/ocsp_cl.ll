inline.NumInlined: 13
inline.NumDeleted: 4
begin_hunk_0_@OCSP_resp_get0:bb.a

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @OCSP_resp_get0_produced_at(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @OCSP_resp_get0_certs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @OCSP_resp_get0_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67
  switch i32 %i.b, label %bb.c [
    i32 0, label %.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink11 = phi ptr [ %1, %bb.b ], [ %2, %bb.a ]
  %.sink = phi ptr [ %2, %bb.b ], [ %1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  store ptr %i.d, ptr %.sink11, align 8, !tbaa !69
  store ptr null, ptr %.sink, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @OCSP_resp_get1_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67
  switch i32 %i.b, label %.thread12 [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.e = tail call ptr @X509_NAME_dup(ptr noundef %i.d) #8 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !70
  store ptr null, ptr %1, align 8, !tbaa !71
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread12, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = tail call ptr @ASN1_OCTET_STRING_dup(ptr noundef %i.h) #8 ; 2 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !71
  store ptr null, ptr %2, align 8, !tbaa !70
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread12, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %.thread12

.thread12:                                        ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare ptr @X509_NAME_dup(ptr noundef) local_unnamed_addr #2

declare ptr @ASN1_OCTET_STRING_dup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 2147483647) i32 @OCSP_resp_find(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @llvm.smax.i32(i32 %2, i32 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.in = phi i32 [ %i.b, %bb.b ], [ %.0, %bb.d ]
  %.0 = add nsw i32 %.0.in, 1                     ; 4 uses
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef %i.d) #8
  %i.f = icmp slt i32 %.0, %i.e
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef %i.d, i32 noundef %.0) #8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.i = tail call i32 @OCSP_id_cmp(ptr noundef %1, ptr noundef %i.h) #8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !75

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.a
  %.014 = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %.0, %bb.d ]
  ret i32 %.014
}

declare i32 @OCSP_id_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @OCSP_single_get0_status(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !78   ; 3 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68   ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80
  store ptr %i.h, ptr %2, align 8, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not26 = icmp eq ptr %1, null
  br i1 %.not26, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82   ; 2 uses
  %.not27 = icmp eq ptr %i.j, null
  br i1 %.not27, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i64 @ASN1_ENUMERATED_get(ptr noundef nonnull %i.j) #8
  %i.l = trunc i64 %i.k to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g
  %.sink = phi i32 [ %i.l, %bb.g ], [ -1, %bb.f ]
  store i32 %.sink, ptr %1, align 4, !tbaa !83
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.e, %bb.b
  %.not28 = icmp eq ptr %3, null
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84
  store ptr %i.n, ptr %3, align 8, !tbaa !71
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not29 = icmp eq ptr %4, null
  br i1 %.not29, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !85
  store ptr %i.p, ptr %4, align 8, !tbaa !71
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.d, %bb.k ], [ %i.d, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @OCSP_resp_find_status(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %OCSP_resp_find.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.in.i = phi i32 [ -1, %bb.b ], [ %.0.i, %bb.d ]
  %.0.i = add nsw i32 %.0.in.i, 1                 ; 4 uses
  %i.d = tail call i32 @OPENSSL_sk_num(ptr noundef %i.c) #8
  %i.e = icmp slt i32 %.0.i, %i.d
  br i1 %i.e, label %bb.d, label %OCSP_resp_find.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @OPENSSL_sk_value(ptr noundef %i.c, i32 noundef %.0.i) #8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = tail call i32 @OCSP_id_cmp(ptr noundef %1, ptr noundef %i.g) #8
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %OCSP_resp_get0.exit, label %bb.c, !llvm.loop !75

OCSP_resp_get0.exit:                              ; preds = %bb.d
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.j = tail call ptr @OPENSSL_sk_value(ptr noundef %i.i, i32 noundef %.0.i) #8 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %OCSP_single_get0_status.exit, label %bb.e

bb.e:                                             ; preds = %OCSP_resp_get0.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77   ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !78   ; 3 uses
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68   ; 2 uses
  %.not.i17 = icmp eq ptr %4, null
  br i1 %.not.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80
  store ptr %i.r, ptr %4, align 8, !tbaa !71
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not26.i = icmp eq ptr %3, null
  br i1 %.not26.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !82   ; 2 uses
  %.not27.i = icmp eq ptr %i.t, null
  br i1 %.not27.i, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i64 @ASN1_ENUMERATED_get(ptr noundef nonnull %i.t) #8
  %i.v = trunc i64 %i.u to i32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.sink.i = phi i32 [ %i.v, %bb.j ], [ -1, %bb.i ]
  store i32 %.sink.i, ptr %3, align 4, !tbaa !83
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.h, %bb.e
  %.not28.i = icmp eq ptr %5, null
  br i1 %.not28.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !84
  store ptr %i.x, ptr %5, align 8, !tbaa !71
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not29.i = icmp eq ptr %6, null
  br i1 %.not29.i, label %OCSP_single_get0_status.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !85
  store ptr %i.z, ptr %6, align 8, !tbaa !71
  br label %OCSP_single_get0_status.exit

OCSP_single_get0_status.exit:                     ; preds = %OCSP_resp_get0.exit, %bb.m, %bb.n
  %.0.i16 = phi i32 [ -1, %OCSP_resp_get0.exit ], [ %i.n, %bb.n ], [ %i.n, %bb.m ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %OCSP_resp_find.exit.thread, label %bb.o

bb.o:                                             ; preds = %OCSP_single_get0_status.exit
  store i32 %.0.i16, ptr %2, align 4, !tbaa !83
  br label %OCSP_resp_find.exit.thread

OCSP_resp_find.exit.thread:                       ; preds = %bb.c, %bb.a, %OCSP_single_get0_status.exit, %bb.o
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.o ], [ 1, %OCSP_single_get0_status.exit ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @OCSP_check_validity(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tm, align 8                 ; 5 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %2, i64 0) ; 2 uses
  %i.c = tail call i64 @time(ptr noundef null) #8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.d = tail call i32 @ASN1_GENERALIZEDTIME_check(ptr noundef %0) #8
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %gentime_to_posix.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @ASN1_TIME_to_tm(ptr noundef %0, ptr noundef nonnull %5) #8
  %.not3.i = icmp eq i32 %i.e, 0
  br i1 %.not3.i, label %gentime_to_posix.exit.thread, label %gentime_to_posix.exit

gentime_to_posix.exit.thread:                     ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %.sink.split

gentime_to_posix.exit:                            ; preds = %bb.b
  %i.f = call i32 @OPENSSL_tm_to_posix(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #8
  %.not4.i.not = icmp eq i32 %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br i1 %.not4.i.not, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %gentime_to_posix.exit
  %i.g = load i64, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.h = add nsw i64 %i.c, %spec.store.select
  %i.i = icmp sgt i64 %i.g, %i.h
  br i1 %i.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i64 %3, -1
  %i.k = sub nsw i64 %i.c, %3
  %i.l = icmp slt i64 %i.g, %i.k
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not15 = icmp eq ptr %1, null
  br i1 %.not15, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.m = call i32 @ASN1_GENERALIZEDTIME_check(ptr noundef nonnull %1) #8
  %.not.i18 = icmp eq i32 %i.m, 0
  br i1 %.not.i18, label %gentime_to_posix.exit23.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = call i32 @ASN1_TIME_to_tm(ptr noundef nonnull %1, ptr noundef nonnull %4) #8
  %.not3.i19 = icmp eq i32 %i.n, 0
  br i1 %.not3.i19, label %gentime_to_posix.exit23.thread, label %gentime_to_posix.exit23

gentime_to_posix.exit23.thread:                   ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %.sink.split

gentime_to_posix.exit23:                          ; preds = %bb.g
  %i.o = call i32 @OPENSSL_tm_to_posix(ptr noundef nonnull %4, ptr noundef nonnull %i.b) #8
  %.not4.i20.not = icmp eq i32 %i.o, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br i1 %.not4.i20.not, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %gentime_to_posix.exit23
  %i.p = load i64, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.q = sub nsw i64 %i.c, %spec.store.select
  %i.r = icmp slt i64 %i.p, %i.q
  br i1 %i.r, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.a, align 8, !tbaa !86
  %i.t = icmp slt i64 %i.p, %i.s
  br i1 %i.t, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.h, %gentime_to_posix.exit23, %gentime_to_posix.exit23.thread, %bb.d, %bb.c, %gentime_to_posix.exit, %gentime_to_posix.exit.thread
  %.sink31 = phi i32 [ 350, %bb.h ], [ 345, %gentime_to_posix.exit23 ], [ 339, %bb.d ], [ 331, %bb.c ], [ 326, %gentime_to_posix.exit ], [ 326, %gentime_to_posix.exit.thread ], [ 345, %gentime_to_posix.exit23.thread ], [ 355, %bb.i ]
  %.sink = phi i32 [ 126, %bb.h ], [ 122, %gentime_to_posix.exit23 ], [ 127, %bb.d ], [ 126, %bb.c ], [ 123, %gentime_to_posix.exit ], [ 123, %gentime_to_posix.exit.thread ], [ 122, %gentime_to_posix.exit23.thread ], [ 124, %bb.i ]
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink31, ptr noundef nonnull @__func__.OCSP_check_validity) #8
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 39, i32 noundef %.sink, ptr noundef null) #8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.e, %bb.i
  %.0 = phi i32 [ 1, %bb.i ], [ 1, %bb.e ], [ 0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @OCSP_SINGLERESP_get0_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72
  ret ptr %i.a
}

declare i32 @ASN1_GENERALIZEDTIME_check(ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_TIME_to_tm(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OPENSSL_tm_to_posix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"ocsp_one_request_st", !10, i64 0, !12, i64 8}
!10 = !{!"p1 _ZTS15ocsp_cert_id_st", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS23stack_st_X509_EXTENSION", !11, i64 0}
!13 = !{!14, !18, i64 16}
!14 = !{!"ocsp_request_st", !15, i64 0, !19, i64 32}
!15 = !{!"ocsp_req_info_st", !16, i64 0, !17, i64 8, !18, i64 16, !12, i64 24}
!16 = !{!"p1 _ZTS14asn1_string_st", !11, i64 0}
!17 = !{!"p1 _ZTS15GENERAL_NAME_st", !11, i64 0}
!18 = !{!"p1 _ZTS20stack_st_OCSP_ONEREQ", !11, i64 0}
!19 = !{!"p1 _ZTS17ocsp_signature_st", !11, i64 0}
!20 = !{!14, !19, i64 32}
!21 = !{!22, !16, i64 16}
!22 = !{!"ocsp_signature_st", !23, i64 0, !16, i64 16, !26, i64 24}
!23 = !{!"X509_algor_st", !24, i64 0, !25, i64 8}
!24 = !{!"p1 _ZTS14asn1_object_st", !11, i64 0}
!25 = !{!"p1 _ZTS12asn1_type_st", !11, i64 0}
!26 = !{!"p1 _ZTS13stack_st_X509", !11, i64 0}
!27 = !{!28, !40, i64 368}
!28 = !{!"x509_st", !29, i64 0, !23, i64 136, !30, i64 152, !37, i64 176, !38, i64 192, !39, i64 200, !32, i64 216, !32, i64 224, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !16, i64 248, !42, i64 256, !43, i64 264, !44, i64 272, !45, i64 280, !46, i64 288, !47, i64 296, !48, i64 304, !6, i64 312, !49, i64 336, !11, i64 344, !5, i64 352, !16, i64 360, !40, i64 368, !31, i64 376}
!29 = !{!"x509_cinf_st", !16, i64 0, !30, i64 8, !23, i64 32, !33, i64 48, !34, i64 56, !33, i64 72, !35, i64 80, !16, i64 88, !16, i64 96, !12, i64 104, !36, i64 112}
!30 = !{!"asn1_string_st", !5, i64 0, !5, i64 4, !31, i64 8, !32, i64 16}
!31 = !{!"p1 omnipotent char", !11, i64 0}
!32 = !{!"long", !6, i64 0}
!33 = !{!"p1 _ZTS12X509_name_st", !11, i64 0}
!34 = !{!"X509_val_st", !16, i64 0, !16, i64 8}
!35 = !{!"p1 _ZTS14X509_pubkey_st", !11, i64 0}
!36 = !{!"ASN1_ENCODING_st", !31, i64 0, !32, i64 8, !5, i64 16}
!37 = !{!"x509_sig_info_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!38 = !{!"", !6, i64 0}
!39 = !{!"crypto_ex_data_st", !40, i64 0, !41, i64 8}
!40 = !{!"p1 _ZTS15ossl_lib_ctx_st", !11, i64 0}
!41 = !{!"p1 _ZTS13stack_st_void", !11, i64 0}
!42 = !{!"p1 _ZTS18AUTHORITY_KEYID_st", !11, i64 0}
!43 = !{!"p1 _ZTS20X509_POLICY_CACHE_st", !11, i64 0}
!44 = !{!"p1 _ZTS19stack_st_DIST_POINT", !11, i64 0}
!45 = !{!"p1 _ZTS21stack_st_GENERAL_NAME", !11, i64 0}
!46 = !{!"p1 _ZTS19NAME_CONSTRAINTS_st", !11, i64 0}
!47 = !{!"p1 _ZTS24stack_st_IPAddressFamily", !11, i64 0}
!48 = !{!"p1 _ZTS16ASIdentifiers_st", !11, i64 0}
!49 = !{!"p1 _ZTS16x509_cert_aux_st", !11, i64 0}
!50 = !{!28, !31, i64 376}
!51 = !{!22, !26, i64 24}
!52 = !{!53, !16, i64 0}
!53 = !{!"ocsp_response_st", !16, i64 0, !54, i64 8}
!54 = !{!"p1 _ZTS18ocsp_resp_bytes_st", !11, i64 0}
!55 = !{!53, !54, i64 8}
!56 = !{!57, !24, i64 0}
!57 = !{!"ocsp_resp_bytes_st", !24, i64 0, !16, i64 8}
!58 = !{!57, !16, i64 8}
!59 = !{!60, !16, i64 64}
!60 = !{!"ocsp_basic_response_st", !61, i64 0, !23, i64 48, !16, i64 64, !26, i64 72}
!61 = !{!"ocsp_response_data_st", !16, i64 0, !62, i64 8, !16, i64 24, !63, i64 32, !12, i64 40}
!62 = !{!"ocsp_responder_id_st", !5, i64 0, !6, i64 8}
!63 = !{!"p1 _ZTS24stack_st_OCSP_SINGLERESP", !11, i64 0}
!64 = !{!60, !63, i64 32}
!65 = !{!60, !16, i64 24}
end_hunk_0
