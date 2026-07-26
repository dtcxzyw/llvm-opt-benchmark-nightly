inline.NumInlined: 7
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, ptr, ptr }
%struct.v3_ext_method = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@OSSL_ATTRIBUTES_SYNTAX_it.local_it = internal constant { i8, [7 x i8], i64, ptr, i64, ptr, i64, ptr } { i8 0, [7 x i8] zeroinitializer, i64 -1, ptr @OSSL_ATTRIBUTES_SYNTAX_item_tt, i64 0, ptr null, i64 0, ptr @.str }, align 8
@OSSL_ATTRIBUTES_SYNTAX_item_tt = internal constant %struct.ASN1_TEMPLATE_st { i64 4, i64 0, i64 0, ptr @.str.1, ptr @X509_ATTRIBUTE_it }, align 8
@.str = private unnamed_addr constant [23 x i8] c"OSSL_ATTRIBUTES_SYNTAX\00", align 1
@ossl_v3_subj_dir_attrs = dso_local local_unnamed_addr constant %struct.v3_ext_method { i32 769, i32 4, ptr @OSSL_ATTRIBUTES_SYNTAX_it, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2r_ATTRIBUTES_SYNTAX, ptr null, ptr null }, align 8
@ossl_v3_associated_info = dso_local local_unnamed_addr constant %struct.v3_ext_method { i32 1319, i32 4, ptr @OSSL_ATTRIBUTES_SYNTAX_it, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2r_ATTRIBUTES_SYNTAX, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Attributes\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"<No Attributes>\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"<Empty Attributes>\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"%*s<No Values>\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @OSSL_ATTRIBUTES_SYNTAX_it() #0 {
bb.a:
  ret ptr @OSSL_ATTRIBUTES_SYNTAX_it.local_it
}

; Function Attrs: nounwind uwtable
define dso_local ptr @d2i_OSSL_ATTRIBUTES_SYNTAX(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @ASN1_item_d2i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @OSSL_ATTRIBUTES_SYNTAX_it.local_it) #3
  ret ptr %i.a
}

declare ptr @ASN1_item_d2i(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @i2d_OSSL_ATTRIBUTES_SYNTAX(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @ASN1_item_i2d(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @OSSL_ATTRIBUTES_SYNTAX_it.local_it) #3
  ret i32 %i.a
}

declare i32 @ASN1_item_i2d(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @OSSL_ATTRIBUTES_SYNTAX_new() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @ASN1_item_new(ptr noundef nonnull @OSSL_ATTRIBUTES_SYNTAX_it.local_it) #3
  ret ptr %i.a
}

declare ptr @ASN1_item_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OSSL_ATTRIBUTES_SYNTAX_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @ASN1_item_free(ptr noundef %0, ptr noundef nonnull @OSSL_ATTRIBUTES_SYNTAX_it.local_it) #3
  ret void
}

declare void @ASN1_item_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @i2r_ATTRIBUTES_SYNTAX(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #3
  %.not40 = icmp eq i32 %i.a, 0
  br i1 %.not40, label %.critedge.sink.split, label %.preheader44

.preheader44:                                     ; preds = %bb.b
  %i.b = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #3
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph48, label %.critedge

.lr.ph48:                                         ; preds = %.preheader44
  %.not41 = icmp eq i32 %3, 0
  %i.d = add nsw i32 %3, 4                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph48, %.loopexit
  %.03547 = phi i32 [ 0, %.lr.ph48 ], [ %i.ae, %.loopexit ] ; 2 uses
  %i.e = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %1, i32 noundef %.03547) #3 ; 5 uses
  %i.f = tail call ptr @X509_ATTRIBUTE_get0_object(ptr noundef %i.e) #3 ; 2 uses
  %i.g = tail call i32 @OBJ_obj2nid(ptr noundef %i.f) #3 ; 3 uses
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %3, ptr noundef nonnull @.str.5) #3
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = icmp eq i32 %i.g, 0
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @i2a_ASN1_OBJECT(ptr noundef %2, ptr noundef %i.f) #3
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @BIO_puts(ptr noundef %2, ptr noundef nonnull @.str.6) #3
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.o = tail call ptr @OBJ_nid2ln(i32 noundef %i.g) #3
  %i.p = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %i.o) #3
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = tail call i32 @X509_ATTRIBUTE_count(ptr noundef %i.e) #3
  %.not42 = icmp eq i32 %i.r, 0
  br i1 %.not42, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.s = tail call i32 @X509_ATTRIBUTE_count(ptr noundef %i.e) #3
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.loopexit

bb.j:                                             ; preds = %bb.k
  %i.u = add nuw nsw i32 %.03646, 1               ; 2 uses
  %i.v = tail call i32 @X509_ATTRIBUTE_count(ptr noundef %i.e) #3
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %.lr.ph, label %.loopexit, !llvm.loop !10

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.03646 = phi i32 [ %i.u, %bb.j ], [ 0, %.preheader ] ; 2 uses
  %i.x = tail call ptr @X509_ATTRIBUTE_get0_type(ptr noundef %i.e, i32 noundef %.03646) #3
  %i.y = tail call i32 @ossl_print_attribute_value(ptr noundef %2, i32 noundef %i.g, ptr noundef %i.x, i32 noundef %i.d) #3
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.aa = tail call i32 @BIO_puts(ptr noundef %2, ptr noundef nonnull @.str.8) #3
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %.critedge, label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.ac = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %i.d, ptr noundef nonnull @.str.5) #3
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %.critedge, label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.l
  %i.ae = add nuw nsw i32 %.03547, 1              ; 2 uses
  %i.af = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #3
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.c, label %.critedge, !llvm.loop !12

.critedge.sink.split:                             ; preds = %bb.b, %bb.a
  %.str.3.sink = phi ptr [ @.str.2, %bb.a ], [ @.str.3, %bb.b ]
  %i.ah = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %2, ptr noundef nonnull %.str.3.sink) #3
  %i.ai = icmp sgt i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.l, %bb.h, %bb.f, %bb.d, %bb.g, %.lr.ph, %bb.k, %.critedge.sink.split, %.preheader44
  %.2.shrunk = phi i32 [ 1, %.preheader44 ], [ 0, %.lr.ph ], [ %i.aj, %.critedge.sink.split ], [ 0, %bb.k ], [ 1, %.loopexit ], [ 0, %bb.l ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.2.shrunk
}

declare ptr @X509_ATTRIBUTE_it() #2

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @X509_ATTRIBUTE_get0_object(ptr noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_OBJECT(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OBJ_nid2ln(i32 noundef) local_unnamed_addr #2

declare i32 @X509_ATTRIBUTE_count(ptr noundef) local_unnamed_addr #2

declare ptr @X509_ATTRIBUTE_get0_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_print_attribute_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
end_hunk_0
