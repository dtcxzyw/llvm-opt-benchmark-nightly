inline.NumInlined: 27
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cbs_st = type { ptr, i64 }

@.str = private unnamed_addr constant [83 x i8] c"/opt-bench/work/grpc/grpc/third_party/boringssl-with-bazel/crypto/x509/x509name.cc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"name=\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define range(i32 -1, -2147483648) i32 @X509_NAME_get_text_by_NID(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OBJ_nid2obj(i32 noundef %1) #6 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @X509_NAME_get_text_by_OBJ(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define range(i32 -1, -2147483648) i32 @X509_NAME_get_text_by_OBJ(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.cbs_st, align 8             ; 4 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %X509_NAME_get_index_by_OBJ.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.d = tail call i64 @OPENSSL_sk_num(ptr noundef %i.c) #6
  %sext.i = shl i64 %i.d, 32
  %i.e = ashr exact i64 %sext.i, 32               ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.e, i64 0)
  %exitcond.not41 = icmp slt i64 %i.e, 1
  br i1 %exitcond.not41, label %X509_NAME_get_index_by_OBJ.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = add nsw i64 %smax, -2
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %indvars.iv.i42, %i.f
  br i1 %exitcond.not, label %X509_NAME_get_index_by_OBJ.exit.thread, label %.lr.ph, !llvm.loop !17

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i, %bb.c ], [ -1, %.lr.ph.preheader ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i42, 1 ; 4 uses
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef %i.c, i64 noundef %indvars.iv.next.i) #6
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = tail call i32 @OBJ_cmp(ptr noundef %i.h, ptr noundef %1) #6
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %X509_NAME_get_index_by_OBJ.exit, label %bb.c, !llvm.loop !17

X509_NAME_get_index_by_OBJ.exit:                  ; preds = %.lr.ph
  %5 = icmp slt i64 %indvars.iv.i42, -1
  br i1 %5, label %X509_NAME_get_index_by_OBJ.exit.thread, label %bb.d

bb.d:                                             ; preds = %X509_NAME_get_index_by_OBJ.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = tail call i64 @OPENSSL_sk_num(ptr noundef %i.j) #6
  %.not.i25 = icmp ugt i64 %i.k, %indvars.iv.next.i
  br i1 %.not.i25, label %X509_NAME_get_entry.exit, label %X509_NAME_ENTRY_get_data.exit

X509_NAME_get_entry.exit:                         ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !11
  %i.m = tail call ptr @OPENSSL_sk_value(ptr noundef %i.l, i64 noundef %indvars.iv.next.i) #6 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %X509_NAME_ENTRY_get_data.exit, label %bb.e

bb.e:                                             ; preds = %X509_NAME_get_entry.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23
  br label %X509_NAME_ENTRY_get_data.exit

X509_NAME_ENTRY_get_data.exit:                    ; preds = %bb.d, %X509_NAME_get_entry.exit, %bb.e
  %.0.i26 = phi ptr [ %i.p, %bb.e ], [ null, %X509_NAME_get_entry.exit ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !24
  %i.q = call i32 @ASN1_STRING_to_UTF8(ptr noundef nonnull %i.a, ptr noundef %.0.i26) #6 ; 5 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.k, label %bb.f

bb.f:                                             ; preds = %X509_NAME_ENTRY_get_data.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.t = zext nneg i32 %i.q to i64                ; 3 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !28
  %i.v = call i32 @CBS_contains_zero_byte(ptr noundef nonnull %4) #6
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not31 = icmp slt i32 %i.q, %3
  br i1 %.not31, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = call i32 @CBS_copy_bytes(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef %i.t) #6
  %.not24 = icmp eq i32 %i.w, 0
  br i1 %.not24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  store i8 0, ptr %i.x, align 1, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.h, %bb.i, %bb.f, %X509_NAME_ENTRY_get_data.exit
  %.019 = phi i32 [ -1, %X509_NAME_ENTRY_get_data.exit ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.i ], [ %i.q, %bb.j ], [ %i.q, %bb.g ]
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !24
  call void @OPENSSL_free(ptr noundef %i.y) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %X509_NAME_get_index_by_OBJ.exit.thread

X509_NAME_get_index_by_OBJ.exit.thread:           ; preds = %bb.c, %bb.b, %bb.a, %X509_NAME_get_index_by_OBJ.exit, %bb.k
  %.0 = phi i32 [ %.019, %bb.k ], [ -1, %X509_NAME_get_index_by_OBJ.exit ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define range(i32 -1, 2147483647) i32 @X509_NAME_get_index_by_OBJ(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.c = tail call i64 @OPENSSL_sk_num(ptr noundef %i.b) #6
  %i.d = tail call i32 @llvm.smax.i32(i32 %2, i32 -1)
  %smax = sext i32 %i.d to i64
  %sext = shl i64 %i.c, 32
  %i.e = ashr exact i64 %sext, 32                 ; 2 uses
  %indvars.iv.next20 = add nsw i64 %smax, 1       ; 2 uses
  %i.f = icmp slt i64 %indvars.iv.next20, %i.e
  br i1 %i.f, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next21, 1 ; 2 uses
  %i.g = icmp slt i64 %indvars.iv.next, %i.e
  br i1 %i.g, label %.lr.ph, label %.loopexit, !llvm.loop !17

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv.next21 = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next20, %bb.b ] ; 3 uses
  %i.h = tail call ptr @OPENSSL_sk_value(ptr noundef %i.b, i64 noundef %indvars.iv.next21) #6
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = tail call i32 @OBJ_cmp(ptr noundef %i.i, ptr noundef %1) #6
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit.loopexit.split.loop.exit17, label %bb.c, !llvm.loop !17

.loopexit.loopexit.split.loop.exit17:             ; preds = %.lr.ph
  %i.k = trunc nuw nsw i64 %indvars.iv.next21 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %.loopexit.loopexit.split.loop.exit17, %bb.a
  %.3 = phi i32 [ -1, %bb.a ], [ %i.k, %.loopexit.loopexit.split.loop.exit17 ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_NAME_ENTRY_get_data(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @X509_NAME_get_entry(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  %i.d = tail call i64 @OPENSSL_sk_num(ptr noundef %i.c) #6
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.e
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !11
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef %i.f, i64 noundef %i.e) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare i32 @ASN1_STRING_to_UTF8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CBS_contains_zero_byte(ptr noundef) local_unnamed_addr #2

declare i32 @CBS_copy_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define i32 @X509_NAME_entry_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !11
  %i.c = tail call i64 @OPENSSL_sk_num(ptr noundef %i.b) #6
  %i.d = trunc i64 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 -2, 2147483647) i32 @X509_NAME_get_index_by_NID(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OBJ_nid2obj(i32 noundef %1) #6 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %X509_NAME_get_index_by_OBJ.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %X509_NAME_get_index_by_OBJ.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.e = tail call i64 @OPENSSL_sk_num(ptr noundef %i.d) #6
  %i.f = tail call i32 @llvm.smax.i32(i32 %2, i32 -1)
  %smax.i = sext i32 %i.f to i64
  %sext.i = shl i64 %i.e, 32
  %i.g = ashr exact i64 %sext.i, 32               ; 2 uses
  %indvars.iv.next.i12 = add nsw i64 %smax.i, 1   ; 2 uses
  %i.h = icmp slt i64 %indvars.iv.next.i12, %i.g
  br i1 %i.h, label %.lr.ph, label %X509_NAME_get_index_by_OBJ.exit

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i13, 1 ; 2 uses
  %i.i = icmp slt i64 %indvars.iv.next.i, %i.g
  br i1 %i.i, label %.lr.ph, label %X509_NAME_get_index_by_OBJ.exit, !llvm.loop !17

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.next.i13 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %indvars.iv.next.i12, %bb.c ] ; 3 uses
  %i.j = tail call ptr @OPENSSL_sk_value(ptr noundef %i.d, i64 noundef %indvars.iv.next.i13) #6
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = tail call i32 @OBJ_cmp(ptr noundef %i.k, ptr noundef nonnull %i.a) #6
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %.loopexit.loopexit.split.loop.exit17.i, label %bb.d, !llvm.loop !17

.loopexit.loopexit.split.loop.exit17.i:           ; preds = %.lr.ph
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i13 to i32
  br label %X509_NAME_get_index_by_OBJ.exit

X509_NAME_get_index_by_OBJ.exit:                  ; preds = %bb.d, %bb.c, %.loopexit.loopexit.split.loop.exit17.i, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ -1, %bb.b ], [ %i.m, %.loopexit.loopexit.split.loop.exit17.i ], [ -1, %bb.c ], [ -1, %bb.d ]
  ret i32 %.0
}

declare i32 @OBJ_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define ptr @X509_NAME_delete_entry(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  %i.d = tail call i64 @OPENSSL_sk_num(ptr noundef %i.c) #6
  %i.e = zext nneg i32 %1 to i64                  ; 6 uses
  %.not = icmp ugt i64 %i.d, %i.e
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !11     ; 5 uses
  %i.g = tail call ptr @OPENSSL_sk_delete(ptr noundef %i.f, i64 noundef %i.e) #6 ; 4 uses
  %i.h = tail call i64 @OPENSSL_sk_num(ptr noundef %i.f) #6 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !30
  %i.j = icmp eq i64 %i.h, %i.e
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not34 = icmp eq i32 %1, 0
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %1, -1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call ptr @OPENSSL_sk_value(ptr noundef %i.f, i64 noundef %i.l) #6
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31
  %i.p = add nsw i32 %i.o, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
end_hunk_0
